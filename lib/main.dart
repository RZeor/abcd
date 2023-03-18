import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ridho/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        )
      ], child: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Consumer<CounterProvider>(
        builder: (context, value, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${value.counter}'),
            ElevatedButton(
                onPressed: () {
                  value.increment();
                },
                child: Text('tekan'))
          ],
        ),
      )),
    );
  }
}
