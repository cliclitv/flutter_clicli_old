class PostModel {
  final String title;

  PostModel({this.title});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(title: json['title']);
  }
}
