// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class LocalUser extends Equatable {
  final String uid;
  final String email;
  final String? profilePic;
  final String? bio;
  final int points;
  final String fullName;
  final List<String> enrolledCourseIds;
  final List<String> following;
  final List<String> groupId;
  final List<String> followers;
  const LocalUser({
    required this.uid,
    required this.email,
    this.profilePic,
    this.bio,
    required this.points,
    required this.fullName,
    this.enrolledCourseIds = const [],
    this.following = const [],
    this.groupId = const [],
    this.followers = const [],
  });

  @override
  List<Object?> get props {
    return [
      uid,
      email,
      profilePic,
      bio,
      points,
      fullName,
      enrolledCourseIds,
      following,
      groupId,
      followers,
    ];
  }

  @override
  bool get stringify => true;

  @override
  String toString() {
    return "LocalUser(uid: $uid, email: $email, profilePic: $profilePic, bio: $bio, points: $points, fullName: $fullName, enrolledCourseIds: $enrolledCourseIds, following: $following, followers: $followers, groupIds: $groupId)";
  }

  LocalUser.empty()
      : this(
          uid: "",
          email: "",
          points: 0,
          fullName: "",
          profilePic: "",
          bio: "",
          groupId: const [],
          enrolledCourseIds: const [],
          followers: const [],
          following: const [],
        );
}
