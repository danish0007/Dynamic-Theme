part of 'dynamicthemecubit_cubit.dart';

class DynamicThemeState extends Equatable {
  DynamicThemeState({required this.isDarkTheme});

  final bool isDarkTheme;

  @override
  List<Object?> get props => [isDarkTheme];

  DynamicThemeState copyWith({
    required bool isDarkTheme,
  }) {
    return DynamicThemeState(
      isDarkTheme: isDarkTheme,
    );
  }
}
