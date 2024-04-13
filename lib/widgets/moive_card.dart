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
          if (snapshot.hasData) {
          var data = snapshot.data?.results;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headLineText,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data!.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        "$imgurl${data[index].posterPath}",
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }}
        );
  }
}
