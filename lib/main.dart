import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(DigitalPictureFrameApp());
}

class DigitalPictureFrameApp extends StatefulWidget {
  @override
  _DigitalPictureFrameAppState createState() => _DigitalPictureFrameAppState();
}

class _DigitalPictureFrameAppState extends State<DigitalPictureFrameApp> {
  int _currentImageIndex = 0;
  bool _isPaused = false;
  List<String> _imageUrls = [
    'https://www.wwe.com/f/styles/wwe_16_9_s/public/all/2025/03/037_NXT_03042025BR_35715--cb98f184997533471c5aa953203a245e.jpg',
    'https://www.wwe.com/f/styles/wwe_16_9_s/public/all/2025/03/153_1ELIM_03012025GD_47734--ef831999e081e13b362f51aa564a76f1.jpg',
    'https://www.wwe.com/f/styles/wwe_16_9_s/public/all/2025/03/ELIM_03012025GD_45673--129bf8ffd08ba2d2833d982b84184fc0.jpg',
    'https://www.wwe.com/f/styles/wwe_16_9_s/public/all/2025/03/ELIM_03012025RF_78364--2dc406c5013332d7c0f41a9c2059b4ab.jpg',
  ];

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startImageRotation();
  }

  void _startImageRotation() {
    _timer = Timer.periodic(Duration(seconds: 10), (timer) {
      if (!_isPaused) {
        setState(() {
          _currentImageIndex = (_currentImageIndex + 1) % _imageUrls.length;
        });
      }
    });
  }

  void _togglePauseResume() {
    setState(() {
      _isPaused = !_isPaused;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Digital Picture Frame')),
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              _imageUrls[_currentImageIndex],
              fit: BoxFit.cover,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _togglePauseResume,
          child: Icon(_isPaused ? Icons.play_arrow : Icons.pause),
        ),
      ),
    );
  }
}
