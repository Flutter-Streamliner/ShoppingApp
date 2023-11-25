import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/singin/bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;

  const SignInController({
    required this.context
  });

  void handleSignIn(String type) {
    try {
      final state = context.read<SignInBloc>().state;
      final String email = state.email;
      final String password = state.password;
    } catch (e) {
      print('dbg: error $e');
    }
  }
}