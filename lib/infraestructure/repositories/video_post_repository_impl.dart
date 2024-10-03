import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource datasource;

  VideoPostRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return datasource.getTrendingVideosByPage(page);
  }
}
