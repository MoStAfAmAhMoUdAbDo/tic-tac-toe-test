import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomeLogoSectin extends StatelessWidget {
  const HomeLogoSectin({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: AvatarGlow(
        duration: const Duration(seconds: 2),
        glowColor: Colors.white,
        repeat: true,
        glowShape: BoxShape.circle,
        startDelay: const Duration(seconds: 1),
        glowRadiusFactor: 0.4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: Image.asset(
            "assets/images/tic-tac-toe.png",
            fit: BoxFit.scaleDown,
            height: 50,
          ),
        ),
      ),
    ));
  }
}
