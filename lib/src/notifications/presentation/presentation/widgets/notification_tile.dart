import 'package:tunceducation/core/common/widgets/time_text.dart';
import 'package:tunceducation/src/notifications/domain/entities/notification.dart';
import 'package:flutter/material.dart' hide Notification;

class NotificationTile extends StatelessWidget {
  const NotificationTile(this.notification, {super.key});

  final Notification notification;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(notification.id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) {
        // context.read<NotificationCubit>().clear(notification.id);
      },
      child: ListTile(
        onTap: () {
          // context.read<NotificationCubit>().markAsRead(notification.id);
        },
        leading: CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(notification.category.image),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          notification.title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        subtitle: TimeText(notification.sentAt),
      ),
    );
  }
}
