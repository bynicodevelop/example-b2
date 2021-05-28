import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/mock.dart';
import 'package:flutter_application_2/repositories/post_repository.dart';

class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);

  final PostRepository _postRepository = PostRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: _postRepository.getpost().length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: 20.0,
          ),
          child: Card(
            child: Column(
              children: [
                Image.network(_postRepository.getPostByIndex(index).url),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(_postRepository.getPostByIndex(index).title),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
