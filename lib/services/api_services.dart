import 'dart:convert';
import 'dart:developer';

import 'upcomingMovies_services.dart';
import "package:http/http.dart" as http;

const baseurl = "https://api.themoviedb.org/3/";
var key = "?api_key=0c9d262503042f8352955846e77b3f97";
late String endpoint;

class ApiServices {
  Future<UpcomingMovieModel> getUpcomingMovies() async {
    endpoint = "movie/upcoming";
    final url = "$baseurl$endpoint$key";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      log("Data loaded successfully");
      return UpcomingMovieModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to load data");
  }

  Future<UpcomingMovieModel> getNowPlayingMovies() async {
    endpoint = "movie/upcoming";
    final url = "$baseurl$endpoint$key";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      log("Data loaded successfully");
      return UpcomingMovieModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to load data");
  }

}
