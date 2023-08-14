import 'package:flutter/material.dart';

class ImageWithTextWidget extends StatefulWidget {
  const ImageWithTextWidget({super.key});

  @override
  State<ImageWithTextWidget> createState() => _ImageWithTextWidgetState();
}

class _ImageWithTextWidgetState extends State<ImageWithTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/img3.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Hello World'),
            )
          ],
        ),
      ),
    );
  }
}
