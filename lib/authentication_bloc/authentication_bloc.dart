import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:user_repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;

  AuthenticationBloc({@required UserRepository userRepository}) :
        assert(userRepository != null),
        _userRepository = userRepository,
        super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if(event is AuthenticationStarted) {
      yield* _mapAuthenticationStartedToState();
    } else if(event is AuthenticationLoggedIn) {
      yield* _mapAuthenticationLoggedInToState();
    } else if(event is AuthenticationLoggedOut) {
      yield* _mapAuthenticationLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAuthenticationStartedToState() async* {
    final isSignedIn = await _userRepository.isSignedIn();
    if(isSignedIn) {
      final fbsUser = await _userRepository.getFirebaseUser();
      final name = fbsUser.displayName;
      yield AuthenticationSuccess(name, fbsUser);
    } else {
      yield AuthenticationFailure();
    }
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedInToState() async* {
    final fbsUser = await _userRepository.getFirebaseUser();
    final name = fbsUser.displayName;
    yield AuthenticationSuccess(name, fbsUser);
  }

  Stream<AuthenticationState> _mapAuthenticationLoggedOutToState() async* {
    yield AuthenticationFailure();
    _userRepository.signOut();
  }
}
