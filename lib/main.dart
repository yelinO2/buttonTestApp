import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textBox = 'press any button';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.amber,
                child: Text(textBox),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      textBox = '>>Elevated Button<<';
                    },
                  );
                },
                child: const Text('Elevated Button'),
              ),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      textBox = '>>Text Button<<';
                    },
                  );
                },
                child: const Text('Text Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      textBox = '>>Outline Button<<';
                    },
                  );
                },
                child: const Text('Outline Button'),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      textBox = '>>Gesture Detector<<';
                    },
                  );
                },
                child: const Text('Gesture Dector'),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    textBox = '>>InkWell';
                  });
                },
                child: Container(
                  color: Colors.lightBlue,
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, top: 10, bottom: 10),
                  child: const Text('InkWell'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                textBox = ">>Floating Action Button<<";
              },
            );
          },
          child: const Text('FAB'),
        ),
      ),
    );
  }
}
