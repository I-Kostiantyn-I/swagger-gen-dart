part of swagger.api;

class Breed {
  /* Breed */
  String? breed = null;
/* Country */
  String? country = null;
/* Origin */
  String? origin = null;
/* Coat */
  String? coat = null;
/* Pattern */
  String? pattern = null;

  Breed();

  @override
  String toString() {
    return 'Breed[breed=$breed, country=$country, origin=$origin, coat=$coat, pattern=$pattern, ]';
  }

  Breed.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    breed = json['breed'];
    country = json['country'];
    origin = json['origin'];
    coat = json['coat'];
    pattern = json['pattern'];
  }

  Map<String, dynamic> toJson() {
    return {
      'breed': breed,
      'country': country,
      'origin': origin,
      'coat': coat,
      'pattern': pattern
    };
  }

  static List<Breed> listFromJson(List<dynamic>? json) {
    return json == null
        ? List<Breed>.empty()
        : json.map((value) => new Breed.fromJson(value)).toList();
  }

  static Map<String, Breed> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Breed>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Breed.fromJson(value));
    }
    return map;
  }
}
