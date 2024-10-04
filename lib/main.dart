import 'package:flutter/material.dart';
import 'package:flutter_app_3/cubits/theme_cubit.dart';
import 'package:flutter_app_3/pages/intro_page.dart';
import 'package:flutter_app_3/themes/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, MaterialColor>(
          builder: (context, state) =>
              MyApp(myTheme: MyAppTheme(color: state)))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.myTheme});

  final MyAppTheme myTheme;

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme.lightTheme,
      darkTheme: myTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Flutter My app',
      home: const IntroPage(),
    );
  }
}
