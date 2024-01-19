import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slides = <SlidesInfo>[
  SlidesInfo(
      "Busca la comida",
      "Eu culpa Lorem nulla amet ut ullamco magna magna aliqua magna consequat cupidatat enim.",
      "assets/Images/1.png"),
  SlidesInfo(
      "Entrega rapida",
      "Ipsum et qui ipsum veniam tempor aliquip cillum fugiat reprehenderit occaecat dolore dolor incididunt.",
      "assets/Images/2.png"),
  SlidesInfo(
      "Disfruta la comida",
      "Nostrud dolor ex quis commodo deserunt dolore exercitation dolore adipisicing velit nulla adipisicing.",
      "assets/Images/3.png"),
];

class SlidesInfo {
  final String title;
  final String capation;
  final String imageUrl;

  SlidesInfo(
    this.title,
    this.capation,
    this.imageUrl,
  );
}

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageviewController.addListener(() {
      print('${pageviewController.page}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: BouncingScrollPhysics(),
            children: [
              ...slides.map((slideData) => _Slide(
                  title: slideData.title,
                  caption: slideData.capation,
                  imageUrl: slideData.imageUrl)),
            ],
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text('Saltar'),
            ),
          ),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FilledButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text('Comenzar'),
                  ),
                )
              : Text('data'),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          SizedBox(height: 20),
          Text(
            title,
            style: titleStyle,
          ),
          SizedBox(height: 20),
          Text(
            caption,
            style: captionStyle,
          ),
        ],
      )),
    );
  }
}
