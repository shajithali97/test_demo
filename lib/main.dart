import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_demo/counter/counter_provider.dart';
import 'package:test_demo/counter/counter_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CounterProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );
  }
}
