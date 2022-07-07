import 'package:flutter/material.dart';
import 'package:flutter_base_listtile/base_list_tile/base_list_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                BaseListTile(
                  title: Text('title'),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.access_time),
                  subtitle: Text('subtitle'),
                  isBorder: true,
                  radius: BorderRadius.circular(10),
                  borderColor: Colors.white,
                  elevation: 2.0,
                  onTap: () {
                    print("hello");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
