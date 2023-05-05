import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/main.dart';
import 'package:provider_example/settings_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var a = Provider.of<Temperature>(context).temp.toString();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Главный экран'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MySettingsPage()));
              },
              child: Text('Go to Setting Page'),
            ),
            SizedBox(
              height: 20,
            ),
            Text( "Текущая температура: ${a}"),
            
          ],
        ));
  }
}
