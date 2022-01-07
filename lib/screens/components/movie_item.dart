import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_movies/movie_color.dart';

Widget movieItem(context, constraints, imgUrl, name, ratings){
  return Container(
    decoration: BoxDecoration(
        color: MovieColor.appBarBlue,
        borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          child: Image.asset("$imgUrl",
            height: constraints.maxHeight*0.22,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: constraints.maxHeight*0.01,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$name',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
             Card(
               elevation: 0,
               color: MovieColor.backgroundBlue,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                 child: Text('$ratings',
                   style: const TextStyle(
                     fontSize: 11,
                     color: Colors.white,
                     fontFamily: 'Poppins',
                   ),
                 ),
               ),
             )
            ],
          ),
        ),
      ],
    ),
  );
}