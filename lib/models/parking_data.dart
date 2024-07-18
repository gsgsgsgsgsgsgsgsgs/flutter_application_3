import 'package:latlong2/latlong.dart';

class ParkingData {
  final String id;
  final LatLng location;
  final int parkingDifficulty;
  final double averageRating;
  final int ratingCount;

  ParkingData({
    required this.id,
    required this.location,
    required this.parkingDifficulty,
    required this.averageRating,
    required this.ratingCount,
  });

  factory ParkingData.fromJson(Map<String, dynamic> json) {
    return ParkingData(
      id: json['_id'].toString(),
      location: LatLng(json['location'][1], json['location'][0]),
      parkingDifficulty: json['parking_difficulty'],
      averageRating: json['average_rating'].toDouble(),
      ratingCount: json['rating_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'location': [location.longitude, location.latitude],
      'parking_difficulty': parkingDifficulty,
      'average_rating': averageRating,
      'rating_count': ratingCount,
    };
  }
}