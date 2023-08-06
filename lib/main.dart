import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  // 이걸로 해서 아이패드 있으면 원격으로 코딩할 수 있겠어.. 야스..

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
      ),
      home: Padding(
        padding: const EdgeInsets.all(Sizes.size14),
        child: Container(
          child: const Row(
            children: [
              Text('hello'),
              Gaps.h20,
              Text('hello2'),
            ],
          ),
        ),
      ),
    );
  }
}
