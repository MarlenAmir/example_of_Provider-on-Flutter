import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/info_page.dart';
import 'package:provider_example/main.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({super.key});

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    var b = Provider.of<List<String>>(context)[1];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 238, 46),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(b.toString()),
            SizedBox(height: 10,),
            Center(
              child: Text('Это, Экран настройки'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyInfoPage()));
              },
              child: Text('Go to Info Page'),
            ),
            SizedBox(
              height: 20,
            ),
            
            TextButton(onPressed: (){
              var tempPlus = Provider.of<Temperature>(context, listen: false).plusTemp();
            }, child: Text('Увеличить температуру'))
          ],
        ));
  }
}
