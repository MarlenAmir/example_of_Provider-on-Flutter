import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/home_page.dart';


List<String> b = ['Привет', 'Здравствуйте'];

void main() {
  runApp(MultiProvider(providers: [
    Provider(create: (context) => b),
    ChangeNotifierProvider(create: (context) => Temperature()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class Temperature extends ChangeNotifier{
  int temp = 20;

  void plusTemp(){
    temp++;
    notifyListeners();
  }
}