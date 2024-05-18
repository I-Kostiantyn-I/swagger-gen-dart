part of swagger.api;

class CatFact {
  /* Fact */
  String fact = null;
/* Length */
  int length = null;

  CatFact();

  @override
  String toString() {
    return 'CatFact[fact=$fact, length=$length, ]';
  }

  CatFact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    return {
      'fact': fact,
      'length': length
     };
  }

  static List<CatFact> listFromJson(List<dynamic> json) {
    return json == null ? new List<CatFact>() : json.map((value) => new CatFact.fromJson(value)).toList();
  }

  static Map<String, CatFact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CatFact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CatFact.fromJson(value));
    }
    return map;
  }
}
