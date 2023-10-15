import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunceducation/src/on_boarding/data/data.dart';
import 'package:tunceducation/src/on_boarding/domain/domain.dart';
import 'package:tunceducation/src/on_boarding/presentation/cubit/on_boarding/on_boarding_cubit.dart';

final s1 = GetIt.instance;

Future<void> init() async {
  final prefs = await SharedPreferences.getInstance();
  // Initialize the dependency injection container

  // Register the OnBoardingCubit and its dependencies
  s1
    ..registerFactory(
      () => OnBoardingCubit(
        cacheFirstTimer: s1(),
        checkIfUserIsFirstTimer: s1(),
      ),
    )
    ..registerLazySingleton(() => CacheFirstTimer(s1()))
    ..registerLazySingleton(() => CheckIfUserIsFirstTimer(s1()))

    // Register the OnBoarding repository and its dependencies
    ..registerLazySingleton<OnBoardingRepo>(
        () => OnBoardingRepoImplementation(s1()))
    ..registerLazySingleton<OnBoardingLocalDataSource>(
        () => OnBoardingLocalDataSrcImpl(s1()))

    // Register the SharedPreferences instance as a lazy singleton
    ..registerLazySingleton(() => prefs);
}
