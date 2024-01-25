import 'package:flutter/material.dart';
import 'package:flutter_course/constants/colors.dart';
import 'package:hexcolor/hexcolor.dart';

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
          title: const Text("Widget Detail"),
          centerTitle: false,
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
               Text("Barış Arslan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                    color: HexColor(primaryColor)
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { setState(() {
            value++;
          }); },
          child: const Text("+"),
        ),
      ),
    );
  }
}
