import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/full_screen_player.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: videos.length,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final video = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: video.caption,
                videoUrl: video.videoUrl,
              ),
            ),
            // Video player + gradient
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: video),
            ),
          ],
        );
      },
    );
  }
}
