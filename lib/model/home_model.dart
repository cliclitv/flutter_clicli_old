import 'package:flutter_clicli/model/post_model.dart';

class HomeModel {
  final List<PostModel> recommend;
  final List<PostModel> latest;

  HomeModel({this.recommend, this.latest});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    var recommendJson = json['recommend'] as List;
    var latestJson = json['latest'] as List;
    List<PostModel> recommend =
        recommendJson.map((i) => PostModel.fromJson(i)).toList();
    List<PostModel> latest =
        latestJson.map((i) => PostModel.fromJson(i)).toList();

    return HomeModel(recommend: recommend, latest: latest);
  }
}
