import 'package:flutter/material.dart';

class JokeTypeCard extends StatelessWidget {
  final String type;

  const JokeTypeCard({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(type.toUpperCase()),
        onTap: () {
          Navigator.pushNamed(context, '/jokes', arguments: type);
        },
      ),
    );
  }
}
