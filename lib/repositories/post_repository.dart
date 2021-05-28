import 'package:flutter_application_2/config/mock.dart';
import 'package:flutter_application_2/models/post_model.dart';

class PostRepository {
  List<PostModel> getpost() {
    return kData
        .map(
          (e) => PostModel(
            title: e["title"]!,
            url: e["url"]!,
          ),
        )
        .toList();
  }

  PostModel getPostByIndex(int id) {
    return PostModel(
      title: kData[id]["title"]!,
      url: kData[id]["url"]!,
    );
  }
}
