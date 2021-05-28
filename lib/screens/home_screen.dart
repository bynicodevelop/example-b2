import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/list_screen.dart';
import 'package:flutter_application_2/widgets/avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _container(
    Color color,
    String label,
  ) =>
      Container(
        color: color,
        // padding: const EdgeInsets.all(50.0),
        child: Text(label),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ma super app"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Avatar(
                    url:
                        "https://images.pexels.com/photos/1317712/pexels-photo-1317712.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                        child: Text("John Doe"),
                      ),
                      Text("@johndoe"),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () => print("c'est cliqué"),
                    icon: Icon(
                      Icons.edit,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.amberAccent,
              child: Text(
                "coucou",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListScreen(),
                  ),
                ),
                child: Text("List"),
              ),
            ),
          ],
        )

        // Container(
        //   height: 100.0,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //       _container(Colors.amberAccent, "Coucou 1"),
        //     ],
        //   ),
        // ),
        // body: SingleChildScrollView(
        //     child:

        //     // Column(
        //     //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //     //   children: [
        //     //     _container(Colors.amberAccent, "Coucou 1"),
        //     //     _container(Colors.blueAccent, "Coucou 1"),
        //     //     _container(Colors.amberAccent, "Coucou 1"),
        //     //     _container(Colors.blueAccent, "Coucou 1"),
        //     //     _container(Colors.amberAccent, "Coucou 1"),
        //     //     _container(Colors.blueAccent, "Coucou 1"),
        //     //     _container(Colors.amberAccent, "Coucou 1"),
        //     //     _container(Colors.blueAccent, "Coucou 1"),
        //     //     _container(Colors.amberAccent, "Coucou 1"),
        //     //   ],
        //     // ),
        //     ),
        );
  }
}
