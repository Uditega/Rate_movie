import 'package:flutter/material.dart';
import 'package:rate_movies/movie_color.dart';

PreferredSizeWidget homeAppBar(constraints){
  return AppBar(
    elevation: 0,
    backgroundColor: MovieColor.appBarBlue,
    automaticallyImplyLeading: false,
    actions: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 15, 12),
        child: Container(
          height: constraints.maxHeight*0.03,
          width: constraints.maxWidth*0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Padding(
            padding:  EdgeInsets.only(left: 10),
            child: TextField(
              style: TextStyle(fontSize: 14, fontFamily: 'Karma_Regular',
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle:  TextStyle(fontSize: 13, color: Colors.black,),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}