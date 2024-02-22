import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac/core/utils/custom_text_style.dart';
import 'package:tic_tac/feature/onboarding/presentation/bloc/game_xo_bloc.dart';

class ScoreSectionWidget extends StatelessWidget {
  const ScoreSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<GameXoBloc, GameXoState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Player X", style: CustomTextStyle.myNewFontWhite),
                Text(
                    BlocProvider.of<GameXoBloc>(context)
                        .playerXScore
                        .toString(),
                    style: CustomTextStyle.myNewFontWhite),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Player O", style: CustomTextStyle.myNewFontWhite),
                Text(
                    BlocProvider.of<GameXoBloc>(context)
                        .playerOScore
                        .toString(),
                    style: CustomTextStyle.myNewFontWhite),
              ],
            ),
          ],
        );
      },
    ));
  }
}
