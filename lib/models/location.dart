class Location {
  double long;
  double lat;
  String hour;
  String userSend;

  Location({
    required this.long,
    required this.lat,
    required this.hour,
    required this.userSend,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      long: json['long'],
      lat: json['lat'],
      hour: json['hour'],
      userSend: json['userSend'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'long': long,
      'lat': lat,
      'hour': hour,
      'userSend': userSend,
    };
  }
}
