import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomVideoButton(
          value: video.likes,
          iconData: Icons.favorite,
          color: Colors.red,
        ),
        const SizedBox(height: 5),
        _CustomVideoButton(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
        ),
        const SizedBox(height: 30),
        SpinPerfect(
          duration: const Duration(seconds: 2),
          child: _CustomVideoButton(
            iconData: Icons.play_circle_outline,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class _CustomVideoButton extends StatelessWidget {
  final int? value;
  final double? iconSize;
  final IconData iconData;
  final Color color;
  final VoidCallback? onPressed;

  const _CustomVideoButton({
    this.value,
    required this.iconData,

    // ignore: unused_element
    this.iconSize,
    this.onPressed,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        iconSize: iconSize ?? 40,
        icon: Icon(
          iconData,
          color: color,
          size: iconSize ?? 40,
        ),
        onPressed: onPressed,
      ),
      if (value != null) Text(HumanFormats.humanReadableNumber(value!)),
    ]);
  }
}
