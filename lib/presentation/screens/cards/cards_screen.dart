import 'package:flutter/material.dart';

final List<Map<String, dynamic>> cards = [
  {'elevation': 0.0, 'label': 'elevation 0'},
  {'elevation': 1.0, 'label': 'elevation 1'},
  {'elevation': 2.0, 'label': 'elevation 2'},
  {'elevation': 3.0, 'label': 'elevation 3'},
  {'elevation': 4.0, 'label': 'elevation 4'},
  {'elevation': 5.0, 'label': 'elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => _CartType1(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          ...cards.map(
            (card) => _CartType2(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          ...cards.map(
            (card) => _CartType3(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          ...cards.map(
            (card) => _CartType4(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class _CartType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CartType1({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(label),
              ),
            ],
          )),
    );
  }
}

class _CartType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CartType2({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: color.outline,
        ),
      ),
      elevation: elevation,
      child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('$label - outline'),
              ),
            ],
          )),
    );
  }
}

class _CartType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CartType3({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Card(
      color: color.surfaceVariant,
      elevation: elevation,
      child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('$label - Filled'),
              ),
            ],
          )),
    );
  }
}

class _CartType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CartType4({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/250',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
