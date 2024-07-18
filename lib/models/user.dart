class User {
  String name;
  int points;

  User({required this.name, required this.points});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      points: json['points'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'points': points,
    };
  }
}
