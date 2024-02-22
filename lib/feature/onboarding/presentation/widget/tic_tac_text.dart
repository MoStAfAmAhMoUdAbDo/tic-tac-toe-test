import 'package:flutter/material.dart';
import 'package:tic_tac/core/utils/custom_text_style.dart';

class TicTacText extends StatelessWidget {
  const TicTacText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Column(
        children: [
          Center(
            child: Text(
              "TIC TAC TOE",
              style: CustomTextStyle.myNewFontWhite,
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
