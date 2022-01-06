import 'package:flutter/material.dart';
import 'package:rate_movies/model/movie_model.dart';
import 'package:rate_movies/screens/components/movie_item.dart';

Widget gridItem(context, constraints){
  return GridView.count(
    crossAxisCount: 2,
    childAspectRatio: 0.8,
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    children: List.generate(
        movieList.length,
            (index) => movieItem(context, constraints,
                movieList[index].imgUrl,
                movieList[index].name,
                movieList[index].ratings
            ),
    ),
  );
}