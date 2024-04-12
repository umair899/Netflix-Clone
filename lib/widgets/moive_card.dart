import 'package:flutter/material.dart';

import '../common/utilies.dart';
import '../services/upcomingMovies_services.dart';

class MovieCard extends StatelessWidget {
  final Future<UpcomingMovieModel> upcomingFuture;
  final String headLineText;

  const MovieCard(
      {super.key, required this.upcomingFuture, required this.headLineText});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: upcomingFuture,
        builder: (context, snapshot) {
          var data = snapshot.data?.results;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  headLineText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network("${imgurl}$data[index].posterpath"),
                  );
                },
              ),
            ],
          );
        });
  }
}
