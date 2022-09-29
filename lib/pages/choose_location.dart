import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Text('Choose location screen'),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
