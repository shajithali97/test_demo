import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:test_demo/counter/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Consumer<CounterProvider>(builder: (context, pro, _) {
              return FloatingActionButton(
                onPressed: () {
                  pro.increment();
                },
                child: Icon(Icons.add),
              );
            }),
            Consumer<CounterProvider>(builder: (context, pro, _) {
              return Text(pro.value.toString());
            }),
            Consumer<CounterProvider>(builder: (context, pro, _) {
              return FloatingActionButton(
                onPressed: () {
                  pro.decrement();
                },
                child: Icon(Icons.remove),
              );
            }),
          ],
        ),
      ),
    );
  }
}
