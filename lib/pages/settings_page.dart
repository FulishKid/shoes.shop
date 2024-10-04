import 'package:flutter/material.dart';
import 'package:flutter_app_3/cubits/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  final List<MaterialColor> themeColors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.yellow,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text(
              'Choose Color Theme',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () =>
                    context.read<ThemeCubit>().setNewTheme(themeColors[index]),
                child: Container(
                  color: themeColors[index],
                ),
              ),
              itemCount: themeColors.length,
            ),
          ],
        ),
      ),
    );
  }
}
