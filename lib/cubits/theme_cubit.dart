import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<MaterialColor> {
  ThemeCubit() : super(Colors.green);

  void setNewTheme(MaterialColor color) {
    emit(color);
  }
}
