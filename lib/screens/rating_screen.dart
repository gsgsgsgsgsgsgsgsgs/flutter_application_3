import 'package:flutter/material.dart';
import '../widgets/rating_widget.dart';
import '../services/database_service.dart';
import '../services/location_service.dart';

class RatingScreen extends StatelessWidget {
  final LocationService _locationService = LocationService();
  final DatabaseService _databaseService = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rate Parking Availability')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Rate the parking availability in your area:'),
            SizedBox(height: 20),
           //  RatingWidget(
              // onRatingChanged: (rating) {
              //   _databaseService.updateParkingRating(
              //     _locationService.currentPosition,
              //     rating,
              //   );
              //   Navigator.pop(context);
              // },
           //  ),
          ],
        ),
      ),
    );
  }
}