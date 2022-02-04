import 'dart:convert';
import 'package:flutter_api/models/Movie.dart';
import 'package:http/http.dart';

class ApiService {
  final String apiUrl = "http://127.0.0.1:5000/api/allmovie";

  Future<List<Movie>> getMovie() async {
    Response res = await get(apiUrl);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Movie> movies =
          body.map((dynamic item) => Movie.fromJson(item)).toList();
      return movies;
    } else {
      throw "Failed to load cases list";
    }
  }
}
