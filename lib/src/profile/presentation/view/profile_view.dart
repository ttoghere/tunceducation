// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tunceducation/core/common/widgets/gradient_background.dart';
import 'package:tunceducation/core/core.dart';
import 'package:tunceducation/core/enums/notification_enum.dart';
import 'package:tunceducation/core/services/injection_container.dart';
import 'package:tunceducation/src/notifications/data/models/notification_model.dart';
import 'package:tunceducation/src/notifications/presentation/cubit/notification_cubit.dart';
import 'package:tunceducation/src/profile/presentation/refactors/profile_body.dart';
import 'package:tunceducation/src/profile/presentation/refactors/profile_header.dart';
import 'package:tunceducation/src/profile/presentation/widgets/profile_appbar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(),
      body: GradientBackground(
        image: MediaRes.profileGradientBackground,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: const [
            ProfileHeader(),
            ProfileBody(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          s1<NotificationCubit>().sendNotification(
            NotificationModel.empty().copyWith(
              title: 'Test Notification',
              body: 'body',
              category: NotificationCategory.NONE,
            ),
          );
        },
        child: const Icon(IconlyLight.notification),
      ),
    );
  }
}
