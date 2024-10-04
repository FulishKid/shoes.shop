import 'package:flutter_bloc/flutter_bloc.dart';

class MyBottomNavigationBarCubit extends Cubit<int> {
  MyBottomNavigationBarCubit() : super(0);

  void onTabChange(int index) {
    emit(index);
  }
}
