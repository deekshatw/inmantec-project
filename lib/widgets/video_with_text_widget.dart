import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWithTextWidget extends StatefulWidget {
  final String videoAssetPath = 'assets/videos/video3.mp4';
  const VideoWithTextWidget({
    super.key,
  });

  @override
  State<VideoWithTextWidget> createState() => VideoWithTextWidgetState();
}

class VideoWithTextWidgetState extends State<VideoWithTextWidget> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.videoAssetPath)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : const CircularProgressIndicator(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text('Hello World'),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
