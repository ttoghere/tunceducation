part of 'injection_container.dart';

final s1 = GetIt.instance;

Future<void> init() async {
  await _onBoardingInit();
  await _authInit();
  await _initCourse();
}

Future<void> _initCourse() async {
  s1
    ..registerFactory(
      () => CourseCubit(
        addCourse: s1(),
        getCourses: s1(),
      ),
    )
    ..registerLazySingleton(() => AddCourse(s1()))
    ..registerLazySingleton(() => GetCourses(s1()))
    ..registerLazySingleton<CourseRepo>(() => CourseRepoImpl(s1()))
    ..registerLazySingleton<CourseRemoteDataSrc>(
      () => CourseRemoteDataSrcImpl(
        firestore: s1(),
        storage: s1(),
        auth: s1(),
      ),
    );
}

Future<void> _authInit() async {
  s1
    ..registerFactory(
      () => AuthBloc(
        signIn: s1(),
        signUp: s1(),
        forgotPassword: s1(),
        updateUser: s1(),
      ),
    )
    ..registerLazySingleton(() => SignIn(s1()))
    ..registerLazySingleton(() => SignUp(s1()))
    ..registerLazySingleton(() => ForgotPassword(s1()))
    ..registerLazySingleton(() => UpdateUser(s1()))
    ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(s1()))
    ..registerLazySingleton<AuthRemoteDataSource>(() =>
        AuthRemoteDataSourceImpl(
            authClient: s1(), cloudStoreClient: s1(), dbClient: s1()))
    ..registerLazySingleton(() => FirebaseAuth.instance)
    ..registerLazySingleton(() => FirebaseFirestore.instance)
    ..registerLazySingleton(() => FirebaseStorage.instance);
}

Future<void> _onBoardingInit() async {
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
