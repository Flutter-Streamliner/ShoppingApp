import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'package:shop_app/pages/welcome/bloc/welcome_events.dart';
part 'package:shop_app/pages/welcome/bloc/welcome_states.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc(): super(const WelcomeState()) {

    on<UpdateWelcomePageEvent>(_updateWelcomePage);
  }


  FutureOr<void> _updateWelcomePage(UpdateWelcomePageEvent event, Emitter<WelcomeState> emit) {
    emit(WelcomeState(page: event.page));
  }
}