import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdeneme/anasayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false, create: (context) => Counter()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Anasayfa(),
      ),
    );
  }
}
