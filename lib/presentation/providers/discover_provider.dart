import 'package:flutter/material.dart';

import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infraestructure/repositories/video_post_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  final List<VideoPost> videoList = [];

  final VideoPostRepositoryImpl videoPostRepository;

  bool initialLoading = true;

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videoList.addAll(newVideos);

    notifyListeners();

    initialLoading = false;
  }
}
