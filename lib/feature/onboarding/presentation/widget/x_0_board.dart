import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac/feature/onboarding/presentation/bloc/game_xo_bloc.dart';

class XOBoardWidget extends StatelessWidget {
  const XOBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: BlocBuilder<GameXoBloc, GameXoState>(
        builder: (context, state) {
          if (state is OnClick) {
            return GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      BlocProvider.of<GameXoBloc>(context)
                          .add(ClickOnCell(index: index, context: context));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[700]!,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          BlocProvider.of<GameXoBloc>(context)
                              .displayExOh2[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
