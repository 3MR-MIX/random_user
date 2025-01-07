import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomDetails extends StatelessWidget {
  final String email, name, image;

  RandomDetails({
    super.key,
    required this.image,
    required this.email,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Random Details"),
      ),
      body: GestureDetector(
        onTap: () {
          // Add your onTap functionality here
        },
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(image),
              const SizedBox(height: 10),
              Text(email, style: const TextStyle(fontSize: 16)),
              Text(name, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
