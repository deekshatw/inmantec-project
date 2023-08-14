import 'package:flutter/material.dart';
import 'package:trial_project/widgets/image_widget.dart';
import 'package:trial_project/widgets/image_with_text_widget.dart';
import 'package:trial_project/widgets/video_widget.dart';
import 'package:trial_project/widgets/video_with_text_widget.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bools to check what data is present in database
  bool isPicturePresent = false;
  bool isVideoPresent = false;
  bool isTextPresent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            if (isPicturePresent) const ImageWidget(),
            if (isPicturePresent && isTextPresent) const ImageWithTextWidget(),
            if (isVideoPresent) const VideoWidget(),
            if (isVideoPresent && isTextPresent) const VideoWithTextWidget(),
          ],
        ),
      ),
    );
  }
}
