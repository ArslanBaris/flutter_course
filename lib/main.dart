import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: false,
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu"),
        ),
        body: const Center(
          child: const Text("Hello Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text("+"),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value = value + 1;
                  });
                },
                child: const Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
