class Word {
  late final String _term;
  late final String _definition;

  Word(this._term, this._definition);

  Word.noneWord(String term) {
    _term = "none";
    _definition = "This word is not in the dictionary.😥 word: $term";
  }

  String getTerm() {
    return _term;
  }

  String getDefinition() {
    return _definition;
  }

  bool isNoneWord() {
    return _term == "none";
  }

  @override
  String toString() {
    return "{\"$_term\":\"$_definition\"}";
  }
}

typedef dictionaryType = List<Word?>;
typedef termtype = Map<String, String>;

class Dictionary {
  late final dictionaryType dic;

  Dictionary() {
    this.dic = [];
  }

  void add({required String term, required String definition}) {
    dic.add(Word(term, definition));
    print("add : $dic");
  }

  String get(String word) {
    final find = _find(word);
    return find.getDefinition();
  }

  void delete(String word) {
    final find = _find(word);
    if (find.isNoneWord()) {
      throw find.getDefinition();
    }

    dic.remove(find);

    print(dic);
  }

  void update({required String term, required String definition}) {
    final find = _find(term);
    if (find.isNoneWord()) {
      throw find.getDefinition();
    }

    var idx = dic.indexOf(find);
    dic[idx] = Word(term, definition);
    print("update $dic");
  }

  void showAll() {
    print(dic);
  }

  int count() {
    return dic.length;
  }

  void upsert({required String term, required String definition}) {
    final find = _find(term);
    if (find.isNoneWord()) {
      dic.add(Word(term, definition));
      return;
    }

    update(term: term, definition: definition);
  }

  bool exists(String word) {
    final find = _find(word);
    if (find.isNoneWord()) {
      return false;
    }
    return true;
  }

  void bulkAdd(List<termtype> list) {
    list.forEach((element) {
      upsert(
          term: element["term"] ?? "", definition: element["definition"] ?? "");
    });
  }

  void bulkDelete(List<String> list) {
    list.forEach((element) {
      delete(element);
    });
  }

  Word _find(String word) {
    if (_isEmptyList()) {
      throw "Dictionary is Empty!!😳";
    }

    final find =
        dic.firstWhere((element) => element?.getTerm() == word, orElse: () {
      return null;
    });
    return find ?? Word.noneWord(word);
  }

  bool _isEmptyList() {
    return dic.length <= 0;
  }
}

void main() {
  Dictionary dictionary = Dictionary();

  // add: 단어를 추가함.
  dictionary.add(term: "김치", definition: "맛있네");
  dictionary.add(term: "아파트", definition: "비싸!");

  // get: 단어의 정의를 리턴함.
  print(dictionary.get("김치"));
  print(dictionary.get("물김치"));

  // delete: 단어를 삭제함.
  try {
    dictionary.delete("물김치");
  } catch (e) {
    print(e);
  }
  dictionary.delete("김치");

  // update: 단어를 업데이트 함.
  try {
    dictionary.update(term: "아파트", definition: "비싸");
    dictionary.update(term: "물김치", definition: "시원해!!");
  } catch (e) {
    print(e);
  }

  // showAll: 사전 단어를 모두 보여줌.
  dictionary.showAll();

  // count: 사전 단어들의 총 갯수를 리턴함.
  print(dictionary.count());

  // upsert 단어를 업데이트 함. 존재하지 않을시. 이를 추가함. (update + insert = upsert)
  dictionary.upsert(term: "김치", definition: "맛있어");
  dictionary.showAll();
  dictionary.upsert(term: "김치", definition: "존맛탱!!");
  dictionary.showAll();

  // exists: 해당 단어가 사전에 존재하는지 여부를 알려줌.
  print(dictionary.exists("김치"));
  print(dictionary.exists("물김치"));

  // bulkAdd: 다음과 같은 방식으로. 여러개의 단어를 한번에 추가할 수 있게 해줌. [{"term":"김치", "definition":"대박이네~"}, {"term":"아파트", "definition":"비싸네~"}]
  dictionary.bulkAdd([
    {"term": "김치", "definition": "대박이네~"},
    {"term": "아파트", "definition": "비싸네~"},
    {"term": "내이름", "definition": "바이올렛"},
  ]);
  dictionary.showAll();

  // bulkDelete: 다음과 같은 방식으로. 여러개의 단어를 한번에 삭제할 수 있게 해줌. ["김치", "아파트"]
  dictionary.bulkDelete(["김치", "아파트"]);
  dictionary.showAll();
}
