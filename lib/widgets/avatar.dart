import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String url;

  const Avatar({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20.0,
      ),
      child: CircleAvatar(
        radius: 40.0,
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}
