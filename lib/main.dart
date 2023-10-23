import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tunceducation/core/common/app/providers/course_of_the_day_notifier.dart';
import 'package:tunceducation/core/common/app/providers/user_provider.dart';
import 'package:tunceducation/core/core.dart';
import 'package:tunceducation/core/services/injection_container.dart';
import 'package:tunceducation/src/course/features/videos/presentation/cubit/video_cubit.dart';
import 'package:tunceducation/src/dashboard/presentation/providers/dashboard_controller.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseUIAuth.configureProviders([EmailAuthProvider()]);
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DashboardController(),
        ),
        ChangeNotifierProvider(
          create: (_) => CourseOfTheDayNotifier(),
        ),
        BlocProvider(
          create: (_) => VideoCubit(
            addVideo: s1(),
            getVideos: s1(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'TuncEducation',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: Fonts.poppins,
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
          ),
          colorScheme:
              ColorScheme.fromSwatch(accentColor: Colours.primaryColour),
        ),
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
