import 'package:toktik_210562/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.formJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'no name',
        videoUrl: json['videoUrl'],
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  VideoPost toVideoPostEntety() => VideoPost(
    caption: name, 
    videoUrl: videoUrl, 
    likes: likes, 
    views: views);
}
