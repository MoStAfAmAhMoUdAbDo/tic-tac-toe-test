import 'package:flutter/material.dart';
import 'package:tic_tac/core/utils/custom_text_style.dart';

class TicTacHeaderSection extends StatelessWidget {
  const TicTacHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: Text(
        "TIC TAC TOE",
        style: CustomTextStyle.myNewFontWhite.copyWith(fontSize: 30),
      ),
    ));
  }
}
