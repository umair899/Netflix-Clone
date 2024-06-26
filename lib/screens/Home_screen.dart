import 'package:flutter/material.dart';
import 'package:netflix_clone/common/utilies.dart';
import 'package:netflix_clone/services/api_services.dart';
import '../services/upcomingMovies_services.dart';
import '../widgets/moive_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<UpcomingMovieModel> upcomingFuture;
  late Future<UpcomingMovieModel> nowPlayingFuture;

  ApiServices apiServices = ApiServices();
  @override
  void initState() {
    super.initState();
    upcomingFuture = apiServices.getUpcomingMovies();
    nowPlayingFuture = apiServices.getNowPlayingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbackgroundcolor,
        title: Image.asset(
          "assets/img1.png",
          height: 120,
          width: 120,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.blue,
              height: 27,
              width: 27,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 220,
                child: MovieCard(
                  future: nowPlayingFuture,
                  headLineText: 'Now Playing Movies',
                ),
              ),
              SizedBox(
                height: 220,
                child: MovieCard(
                  future: upcomingFuture,
                  headLineText: 'Upcoming Movies',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
