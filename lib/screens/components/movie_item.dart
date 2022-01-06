import 'package:flutter/material.dart';
import 'package:rate_movies/movie_color.dart';

Widget movieItem(context, constraints, imgUrl, name, ratings){
  return Container(
    decoration: BoxDecoration(
        color: MovieColor.appBarBlue,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 90,
          ),
        ]
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(7, 12, 7, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {

            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("$imgUrl",
                height: constraints.maxHeight*0.55,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight*0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$name',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff555555),
                  fontFamily: 'Poppins',
                ),
              ),
             Card(
               elevation: 0,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                 child: Text('$ratings',
                   style: const TextStyle(
                     fontSize: 11,
                     color: Color(0xff555555),
                     fontFamily: 'Poppins',
                   ),
                 ),
               ),
             )
            ],
          ),
        ],
      ),
    ),);
}