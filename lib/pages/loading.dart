import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');

    await instance.getTime();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'time': instance.time,
      'location': instance.location,
      'flag': instance.flag,
    });
  }

  @override
  void initState() {
    super.initState();

    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SpinKitFoldingCube(color: Colors.white, size: 80.0),
      )
    );
  }
}
