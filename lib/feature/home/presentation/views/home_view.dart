import 'package:flutter/material.dart';
import 'package:tic_tac/feature/home/presentation/widgets/home_logo_widget.dart';
import 'package:tic_tac/feature/home/presentation/widgets/play_game_btn.dart';
import 'package:tic_tac/feature/home/presentation/widgets/tic_tac_header.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TicTacHeaderSection(),
            HomeLogoSectin(),
            PlayGameBtnSection(),
          ],
        ),
      ),
    );
  }
}
