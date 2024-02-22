import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac/core/utils/custom_text_style.dart';
import 'package:tic_tac/feature/onboarding/presentation/bloc/game_xo_bloc.dart';

showDialogForSuccess(context, String winner) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: ((context) {
      return AlertDialog(
        title: Text("Winner is $winner"),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
              ),
              onPressed: () {
                BlocProvider.of<GameXoBloc>(context).add(OnClickReset());
                Navigator.of(context).pop();
              },
              child: const Text(
                "Play Again",
                style: CustomTextStyle.myTextStyle,
              )),
        ],
      );
    }),
  );
  if (winner.toLowerCase() == "o") {
    BlocProvider.of<GameXoBloc>(context).playerOScore =
        BlocProvider.of<GameXoBloc>(context).playerOScore + 1;
  } else if (winner.toLowerCase() == "x") {
    BlocProvider.of<GameXoBloc>(context).playerXScore =
        BlocProvider.of<GameXoBloc>(context).playerXScore + 1;
  }
}
