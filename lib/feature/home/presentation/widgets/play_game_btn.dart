import 'package:flutter/material.dart';
import 'package:tic_tac/core/utils/custom_text_style.dart';
import 'package:tic_tac/feature/onboarding/presentation/view/home_page.dart';

class PlayGameBtnSection extends StatelessWidget {
  const PlayGameBtnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 50, bottom: 60, top: 100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text(
                "PLAY GAME",
                style: CustomTextStyle.myNewFont,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
