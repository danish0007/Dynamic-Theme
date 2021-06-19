import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dynamicthemecubit_state.dart';

class DynamicthemecubitCubit extends Cubit<DynamicThemeState> {
  DynamicthemecubitCubit() : super(DynamicThemeState(isDarkTheme: true));

  Future<void> toggleTheme() async {
    emit(state.copyWith(isDarkTheme: !state.isDarkTheme));
  }

  Future<void> setDarkTheme() async {
    emit(state.copyWith(isDarkTheme: true));
  }

  Future<void> setLightTheme() async {
    emit(state.copyWith(isDarkTheme: false));
  }
}
