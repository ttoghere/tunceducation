import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunceducation/src/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tunceducation/src/auth/data/repos/auth_repo_impl.dart';
import 'package:tunceducation/src/auth/domain/repositories/auth_repo.dart';
import 'package:tunceducation/src/auth/domain/usecases/forgot_password.dart';
import 'package:tunceducation/src/auth/domain/usecases/sign_in.dart';
import 'package:tunceducation/src/auth/domain/usecases/sign_up.dart';
import 'package:tunceducation/src/auth/domain/usecases/update_user.dart';
import 'package:tunceducation/src/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:tunceducation/src/on_boarding/data/data.dart';
import 'package:tunceducation/src/on_boarding/domain/domain.dart';
import 'package:tunceducation/src/on_boarding/presentation/cubit/on_boarding/on_boarding_cubit.dart';

part 'injection_container.main.dart';
