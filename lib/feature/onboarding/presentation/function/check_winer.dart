import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac/core/utils/custom_text_style.dart';
import 'package:tic_tac/feature/onboarding/presentation/bloc/game_xo_bloc.dart';
import 'package:tic_tac/feature/onboarding/presentation/function/show_dialog_for_winner.dart';

checkTheWinner(context) {
  GameXoBloc check = BlocProvider.of<GameXoBloc>(context);

  if (check.displayExOh2[0] == check.displayExOh2[1] &&
      check.displayExOh2[0] == check.displayExOh2[2] &&
      check.displayExOh2[0] != "") {
    showDialogForSuccess(context, check.displayExOh2[0]);
  } else if (check.displayExOh2[0] == check.displayExOh2[3] &&
      check.displayExOh2[0] == check.displayExOh2[6] &&
      check.displayExOh2[0] != "") {
    showDialogForSuccess(context, check.displayExOh2[0]);
  } else if (check.displayExOh2[3] == check.displayExOh2[4] &&
      check.displayExOh2[3] == check.displayExOh2[5] &&
      check.displayExOh2[3] != "") {
    showDialogForSuccess(context, check.displayExOh2[3]);
  } else if (check.displayExOh2[6] == check.displayExOh2[7] &&
      check.displayExOh2[6] == check.displayExOh2[8] &&
      check.displayExOh2[6] != "") {
    showDialogForSuccess(context, check.displayExOh2[6]);
  } else if (check.displayExOh2[1] == check.displayExOh2[4] &&
      check.displayExOh2[1] == check.displayExOh2[7] &&
      check.displayExOh2[1] != "") {
    showDialogForSuccess(context, check.displayExOh2[1]);
  } else if (check.displayExOh2[2] == check.displayExOh2[5] &&
      check.displayExOh2[2] == check.displayExOh2[8] &&
      check.displayExOh2[2] != "") {
    showDialogForSuccess(context, check.displayExOh2[2]);
  } else if (check.displayExOh2[0] == check.displayExOh2[4] &&
      check.displayExOh2[0] == check.displayExOh2[8] &&
      check.displayExOh2[0] != "") {
    showDialogForSuccess(context, check.displayExOh2[0]);
  } else if (check.displayExOh2[2] == check.displayExOh2[4] &&
      check.displayExOh2[2] == check.displayExOh2[6] &&
      check.displayExOh2[2] != "") {
    showDialogForSuccess(context, check.displayExOh2[2]);
  } else if (BlocProvider.of<GameXoBloc>(context).fillBoard == 9) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("DRAW"),
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
        });
  }
}
