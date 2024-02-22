import 'package:flutter/material.dart';

import 'package:tic_tac/feature/onboarding/presentation/widget/score_section.dart';
import 'package:tic_tac/feature/onboarding/presentation/widget/tic_tac_text.dart';
import 'package:tic_tac/feature/onboarding/presentation/widget/x_0_board.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: const Column(
        children: [
          ScoreSectionWidget(),
          XOBoardWidget(),
          TicTacText(),
        ],
      ),
    );
  }
}
