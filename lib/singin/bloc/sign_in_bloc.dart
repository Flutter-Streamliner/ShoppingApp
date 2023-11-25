import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/singin/bloc/sign_in_events.dart';
import 'package:shop_app/singin/bloc/sign_in_states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {

  SignInBloc(): super(SignInState.initial()) {

    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  FutureOr<void> _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password));
  }
}