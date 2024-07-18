import 'dart:convert';
import 'package:http/http.dart' as http;

class DatabaseService {
  final String apiUrl = 'https://eu-central-1.aws.data.mongodb-api.com/app/data-gbgeqjr/endpoint/data/v1';
  
  final String cluster = 'Cluster0';
  final String database = 'parken';
  final String apiKey = 'HQpdnJiRX7pY8BIZMWzEjgnx74nMfmIz0SzjuQkDuDGumuV7dtrpb86K4KUOseZR';

  Future<List<dynamic>> getDocuments(String collection) async {
          print("before tofjfhg");

    final response = await http.post(
      Uri.parse('$apiUrl/action/find'),
      headers: {
        'Content-Type': 'application/json',
        'api-key': apiKey,
      },
      body: jsonEncode({
        'dataSource': cluster,
        'database': database,
        'collection': collection,
      }),
    );

    if (response.statusCode == 200) {
      print("succed tofjfhg");
      return jsonDecode(response.body)['documents'];
    } else {
      throw Exception('Failed to load documents');
    }
  }

  Future<void> insertDocument(String collection, Map<String, dynamic> document) async {
    final response = await http.post(
      Uri.parse('$apiUrl/action/insertOne'),
      headers: {
        'Content-Type': 'application/json',
        'api-key': apiKey,
      },
      body: jsonEncode({
        'dataSource': cluster,
        'database': database,
        'collection': collection,
        'document': document,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to insert document: ' + response.statusCode.toString() + " - " + response.body);
    }
  }

  // Other CRUD operations can be added here
}
