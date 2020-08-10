part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final String displayName;
  final User user;

  const AuthenticationSuccess(this.displayName, this.user);

  @override
  List<Object> get props => [displayName, user];

  @override
  String toString() => 'AuthenticationSuccess { displayName: $displayName, user: $user }';
}

class AuthenticationFailure extends AuthenticationState {}
