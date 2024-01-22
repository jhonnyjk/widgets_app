import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
  static const name = 'infinite_screen';

  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imagesId = [1, 2, 3, 4, 5];

    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll infinito y pull to refresh'),
      ),
      body: ListView.builder(
        itemCount: imagesId.length,
        itemBuilder: (context, index) {
          return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: AssetImage('assets/Images/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/id/${imagesId[index]}/500/300'));
        },
      ),
    );
  }
}
