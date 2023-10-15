import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunceducation/core/common/views/view.dart';
import 'package:tunceducation/core/services/injection_container.dart';
import 'package:tunceducation/src/on_boarding/presentation/cubit/on_boarding/on_boarding_cubit.dart';
import 'package:tunceducation/src/src.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingScreen.routeName:
      return _pageBuilder(
        (_) => BlocProvider(
          create: (context) => s1<OnBoardingCubit>(),
          child: OnBoardingScreen(),
        ),
        settings: settings,
      );
    default:
      return _pageBuilder(
        (_) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, _, __) => page(context),
  );
}
