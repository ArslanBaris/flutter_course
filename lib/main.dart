import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu", style: TextStyle(color: Colors.white)),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                color: Colors.green,
                margin: const EdgeInsets.only(bottom: 20.0),
                child: const Text("Containe 1"),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
                color: Colors.green,
                 margin: const EdgeInsets.only(bottom: 20.0),
                child: const Text("Container 2"),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal:5.0),
                color: Colors.green,
                  margin: const EdgeInsets.only(bottom: 20.0),
                child: const Text("Container 3"),
              ),
               Container(
                color: Colors.green,
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text("Container 3"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value++;
            });
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}
