import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';
import 'package:ft_bloc_firebase_login2/register/register.dart';

class RegisterScreen extends StatelessWidget {
  final UserRepository _userRepository;

  RegisterScreen({Key key, @required UserRepository userRepository})
    : assert(userRepository != null),
    _userRepository = userRepository,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(title: Text('Register'),),
        body: Center(
          child: BlocProvider<RegisterBloc>(
            create: (context) => RegisterBloc(userRepository: _userRepository),
            child: RegisterForm(),
          ),
        ),
      ),
    );
  }
}
