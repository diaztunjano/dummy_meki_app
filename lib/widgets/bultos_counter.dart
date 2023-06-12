import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--; // counter doesn't go below zero
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(3.0), // Add some padding
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Add border
        borderRadius:
            BorderRadius.circular(8.0), // Add border radius if you need
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextButton(
            onPressed: _decrementCounter,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: const Size(36, 36),
            ),
            child: const Text('-',
                style: TextStyle(fontSize: 24, color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: Text(
              '$_counter',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: _incrementCounter,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: const Size(36, 36),
            ),
            child: const Text('+',
                style: TextStyle(fontSize: 24, color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
