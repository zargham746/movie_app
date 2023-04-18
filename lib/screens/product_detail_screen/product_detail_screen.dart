import 'package:flutter/material.dart';

import '../MainScreen/components/recommended_movies.dart';
import 'components/dummy_video.dart';
import 'components/list_of_actors.dart';
import 'components/middle_icons.dart';
import 'components/movie_description.dart';
import 'components/movie_poster.dart';
import 'components/photo_gallery.dart';
import 'components/share_row.dart';
import 'components/story_line.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            mini: true,
            elevation: 0,
            backgroundColor: Colors.black.withAlpha(50),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/avatar.jpg",
                      )),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  border: Border.all(
                    width: 0.7,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const MoviePoster(),
            const MiddleIcons(),
            const SizedBox(
              height: 10,
            ),
            const MovieDescription(),
            const SizedBox(
              height: 15,
            ),
            const PhotoGallery(),
            const VideoApp(),
            const ShareRow(),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "What else to watch",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const RecommendedMovies(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                "Actors",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListOfActors(),
            const StoryLine(),
          ],
        ),
      ),
    );
  }
}
