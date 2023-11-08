part of 'welcome_bloc.dart';

abstract class WelcomeEvent {
  const WelcomeEvent();
}

class UpdateWelcomePageEvent extends WelcomeEvent {
  final int page;

  const UpdateWelcomePageEvent({required this.page});

}

