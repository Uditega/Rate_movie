import 'package:flutter/material.dart';

class MovieStructure {

  @required late final String? id;
  @required late final String? imgUrl;
  @required late final String? name;
  @required late final double? ratings;
  late final String? descriptions;

  MovieStructure({
    this.id,
    this.imgUrl,
    this.name,
    this.descriptions,
    this.ratings
  });

}

 final List<MovieStructure> movieList = [
   MovieStructure(
     id: '1',
     imgUrl: 'images/movie1.jpg',
     name: 'Dune ',
     ratings: 7.8,
     descriptions: 'my movie is the best'
   ),
   MovieStructure(
       id: '2',
       imgUrl: 'images/movie2.jpg',
       name: 'Reminiscence',
       ratings: 4.8,
       descriptions: 'my movie is the best'
   ),
   MovieStructure(
       id: '3',
       imgUrl: 'images/movie3.jpg',
       name: 'Run Hide Fight',
       ratings: 8.2,
       descriptions: 'my movie is the best'
   ),
   MovieStructure(
       id: '4',
       imgUrl: 'images/movie4.jpg',
       name: 'Jungle Cruisers ',
       ratings: 7.0,
       descriptions: 'my movie is the best'
   ),
 ];