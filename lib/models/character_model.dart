class CharacterModel {
  int id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  // Location origin;
  // Location location;
  // String image;
  // List<String> episode;
  // String url;
  // String created;

  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    // required this.origin,
    // required this.location,
    // required this.image,
    // required this.episode,
    // required this.url,
    // required this.created,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'status': this.status,
      'species': this.species,
      'type': this.type,
      'gender': this.gender,
      // 'origin': this.origin,
      // 'location': this.location,
      // 'image': this.image,
      // 'episode': this.episode,
      // 'url': this.url,
      // 'created': this.created,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is CharacterModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              status == other.status &&
              species == other.species &&
              type == other.type
              // origin == other.origin &&
              // location == other.location &&
              // image == other.image &&
              // episode == other.episode &&
              // url == other.url &&
              // created == other.created
          );

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ status.hashCode ^ species.hashCode ^ type.hashCode ;
      // ^ image.hashCode ^ episode.hashCode ^ url.hashCode ^ created.hashCode;

  @override
  String toString() {
    return 'UserModel{ id: $id, name: $name, status: $status, species: $species, type: $type';
        // ', image: $image, episode: $episode, url: $url, created: $created,}';
  }

  CharacterModel copyWith({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    // Location origin;
    // Location location;
    // required  image,
    // required List<String> episode,
    // required String url,
    // required String created,
  }) {
    return CharacterModel(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      // image: image ?? this.image,
      // episode: episode ?? this.episode,
      // url: url ?? this.url,
      // created: created ?? this.created,
    );
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      id: map['id'] as int,
      name: map['name'] as String,
      status: map['status'] as String,
      species: map['species'] as String,
      type: map['type'] as String,
      gender: map['gender'] as String,
      // origin: map['origin'] as Location,
      // location: map['location'] as Location,
      // image: map['image'] as String,
      // episode: map['episode'] as List<String>,
      // url: map['url'] as String,
      // created: map['created'] as String,
    );
  }
}