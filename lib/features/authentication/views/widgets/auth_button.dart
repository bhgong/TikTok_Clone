import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';

typedef TapRouteFunction = void Function();
// typedef GestureTapCallback = void Function();

class AuthButton extends StatelessWidget {
  final String text;
  final FaIcon icon;
  // final TapRouteFunction? onTapRoute; // for Code Challenge
  // final GestureDetector onTap;

  const AuthButton({
    super.key,
    required this.text,
    required this.icon,
    // this.onTapRoute, // for Code Challenge
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.all(
          Sizes.size14,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
            width: Sizes.size2,
          ),
        ),
        child: Stack(
          alignment: Alignment.center, // layout 들을 center로 align하겠다는 의미
          children: [
            Align(
              // Align하는 위젯인데 icon에 대해서 centerLeft정렬 해주도록 설정
              alignment: Alignment.centerLeft,
              child: icon,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
