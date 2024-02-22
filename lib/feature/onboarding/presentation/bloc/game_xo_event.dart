part of 'game_xo_bloc.dart';

sealed class GameXoEvent {}

class OnClickReset extends GameXoEvent {}

class ClickOnCell extends GameXoEvent {
  final int index;
  final BuildContext context;

  ClickOnCell({required this.index, required this.context});
}
