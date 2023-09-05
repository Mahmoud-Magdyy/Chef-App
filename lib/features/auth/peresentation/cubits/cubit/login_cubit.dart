import 'package:chef_app/core/database/api/end_points.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/features/auth/data/models/login_model.dart';
import 'package:chef_app/features/auth/data/reposatiry/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/service_locator.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authrepo) : super(LoginInitial());
  final AuthRepository authrepo;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoginPasswordsShowing = true;
  IconData suffixIcon = Icons.visibility;
  void changeLoginPasswordSuffixIcon() {
    isLoginPasswordsShowing = !isLoginPasswordsShowing;
    suffixIcon =
        isLoginPasswordsShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeLoginPasswordSuffixIcon());
  }

  LoginModel? loginModel;
  // login method
  void login() async {
    emit(LoginLoadingState());
    final result = await authrepo.login(
      email: emailController.text,
      password: passwordController.text,
    );
    result.fold((l) => emit(LoginErrorState(l)), (r) async {
      loginModel = r;
      await sl<CacheHelper>().saveData(
        key: Apikeys.token,
        value: r.token,
      );
      emit(LoginSuccessState());
    });
  }

  // void login() async {
  //   try {
  //     emit(LoginLoadingState());
  //     final result = await Dio().post(
  //       EndPoint.baseUrl + EndPoint.chefSignIn,
  //       data: {
  //         "email": emailController.text,
  //         "password": passwordController.text,
  //       },
  //     ).then((value) => print(value));
  //   } on ServerException catch (e) {
  //     print(e.errorModel.errorMessage);
  //     emit(LoginErrorState(e.errorModel.errorMessage));
  //   }
  // }
}
