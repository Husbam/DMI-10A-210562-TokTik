import 'package:flutter/material.dart';
import 'package:toktik_210562/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialloading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {//todo:pregunta de examen
    //todo: cargar los videos

    notifyListeners();
  }
}
