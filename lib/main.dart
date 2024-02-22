import 'package:flutter/material.dart';
import 'package:tic_tac/feature/home/presentation/views/home_view.dart';
import 'package:tic_tac/feature/onboarding/presentation/bloc/game_xo_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameXoBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePageView(),
      ),
    );
  }
}
