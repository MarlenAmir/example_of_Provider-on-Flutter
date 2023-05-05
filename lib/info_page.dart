import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/main.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var a = Provider.of<Temperature>(context).temp.toString();
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Экран инфо'),
            Center(
              child: Text(a.toString()),
            ),
          ],
        ));
  }
}
