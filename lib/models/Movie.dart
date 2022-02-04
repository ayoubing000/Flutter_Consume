class Movie {
  final String id;
  final String name;
  final String desciption;

  Movie({this.id, this.name, this.desciption});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['_id'] as String,
      name: json['name'] as String,
      desciption: json['gender'] as String,
    );
  }

  @override
  String toString() {
    return 'Movies{id: $id, name: $name, desciption: $desciption}';
  }
}
