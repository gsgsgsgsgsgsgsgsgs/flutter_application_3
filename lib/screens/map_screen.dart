import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _controller;

  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Map'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          print("map work");
          setState(() {
            _controller = controller;
          });
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(31.7514, 35.2024), // Coordinates for Jerusalem Bayt Vegan on Perets Berenshtein Street
          zoom: 14,
        ),
        markers: _createMarkers(), // Add markers with colors
      ),
    );
  }

  Set<Marker> _createMarkers() {
    // Fetch data from MongoDB and create markers
    // Placeholder for markers
    return {};
  }
}
