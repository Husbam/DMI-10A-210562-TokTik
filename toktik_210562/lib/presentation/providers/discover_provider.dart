import 'package:flutter/material.dart';
import 'package:toktik_210562/domain/entities/video_post.dart';
import 'package:toktik_210562/infraestructure/models/local_video_model.dart';
import 'package:toktik_210562/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //Todo: repósitory, DataSource

  bool initialloading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo:pregunta de examen
    //todo: cargar los videos
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.formJson(video).toVideoPostEntety())
        .toList();
      

    videos.addAll(newVideos);
    initialloading = false;
    notifyListeners();
  }
}
