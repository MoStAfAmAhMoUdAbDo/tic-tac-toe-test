import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:tic_tac/feature/onboarding/presentation/function/check_winer.dart';
part 'game_xo_event.dart';
part 'game_xo_state.dart';

class GameXoBloc extends Bloc<GameXoEvent, GameXoState> {
  List<String> displayExOh2 = ["", "", "", "", "", "", "", "", ""];
  bool trun = true; //this to spacify which o or x i will write
  int playerXScore = 0;
  int playerOScore = 0;
  int fillBoard = 0;
  GameXoBloc() : super(OnClick()) {
    on<GameXoEvent>((event, emit) {
      if (event is ClickOnCell) {
        if (trun == true && displayExOh2[event.index] == "") {
          displayExOh2[event.index] = "X";
          fillBoard += 1;
          trun = !trun;
        } else if (trun == false && displayExOh2[event.index] == "") {
          displayExOh2[event.index] = "O";
          fillBoard += 1;
          trun = !trun;
        }
        checkTheWinner(event.context);
        emit(OnClick());
      } else if (event is OnClickReset) {
        for (int i = 0; i < 9; i++) {
          displayExOh2[i] = "";
        }
        emit(OnClick());
      }
    });
  }
}
