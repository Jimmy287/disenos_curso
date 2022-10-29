import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental_outlined,
              text: 'Transport'),
        ]),
        TableRow(children: [
          SingleCard(
              color: Colors.green,
              icon: Icons.shopping_bag_outlined,
              text: 'Shopping'),
          SingleCard(
              color: Colors.purple,
              icon: Icons.document_scanner_outlined,
              text: 'Bill'),
        ]),
        TableRow(children: [
          SingleCard(
              color: Colors.yellow,
              icon: Icons.movie_filter_outlined,
              text: 'Entertainment'),
          SingleCard(
              color: Colors.orange,
              icon: Icons.local_grocery_store_outlined,
              text: 'Grocery'),
        ]),
        TableRow(children: [
          SingleCard(
              color: Colors.yellow,
              icon: Icons.movie_filter_outlined,
              text: 'Entertainment'),
          SingleCard(
              color: Colors.orange,
              icon: Icons.local_grocery_store_outlined,
              text: 'Grocery'),
        ]),
      ],
    );
  }
}

class SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const SingleCard(
      {super.key, required this.icon, required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: this.color,
        child: Icon(this.icon, size: 35),
        radius: 30,
      ),
      const SizedBox(height: 10),
      Text(
        this.text,
        style: TextStyle(color: this.color, fontSize: 18),
      )
    ]));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
