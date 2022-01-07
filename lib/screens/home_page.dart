import 'package:flutter/material.dart';
import 'package:rate_movies/movie_color.dart';
import 'package:rate_movies/screens/components/arrow_card.dart';
import 'package:rate_movies/screens/components/grid_item.dart';
import 'package:rate_movies/screens/components/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: MovieColor.backgroundBlue,
        appBar: homeAppBar(constraints),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.86,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                  child: gridItem(context, constraints),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            color: MovieColor.appBarBlue,
            height: MediaQuery.of(context).size.height*0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonArrowCard(Icons.chevron_left_rounded),
                const SizedBox( width: 50),
                buttonArrowCard(Icons.chevron_right_rounded),
              ],
            ),
          ),
        ),
      );
    });
  }
}
