part of 'service_locator.dart';

Future<void> setupCoreServices() async {
  locator.registerSingleton<AppRouter>(AppRouter());
  locator.registerSingleton<ThemeCubit>(
    ThemeCubit(
      colors: AppColorsLight(),
      spacers: AppBaseSpacers(),
      texts: AppBaseTexts(),
      data: lightThemeData(
        colors: AppColorsLight(),
        texts: AppBaseTexts(),
      ),
    ),
  );
}
