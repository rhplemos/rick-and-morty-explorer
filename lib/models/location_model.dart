class LocationModel {
  int id;
  String name;
  String type;
  String dimension;
  List<String> residents;
  String url;
  String created;

  LocationModel({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.url,
    required this.created,
  });

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
      dimension: map['dimension'] as String,
      residents: List<String>.from(map['residents'] as List),
      url: map['url'] as String,
      created: map['created'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'type': this.type,
      'dimension': this.dimension,
      'residents': this.residents,
      'url': this.url,
      'created': this.created,
    };
  }
}
