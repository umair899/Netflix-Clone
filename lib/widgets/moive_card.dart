import 'package:flutter/material.dart';

import '../common/utilies.dart';
import '../services/upcomingMovies_services.dart';

class MovieCard extends StatelessWidget {
  final Future<UpcomingMovieModel> future;
  final String headLineText;

  const MovieCard(
      {super.key, required this.future, required this.headLineText});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          var data = snapshot.data?.results;
          return Column(
            children: [
              Text(
                headLineText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: data?.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
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
