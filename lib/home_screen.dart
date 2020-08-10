import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ft_bloc_firebase_login2/authentication_bloc/authentication_bloc.dart';
import 'package:ft_bloc_firebase_login2/widgets/user_profile_widget.dart';
import 'package:user_repository/user_repository.dart';

class HomeScreen extends StatelessWidget {
  final String _name;
  final User _user;

  HomeScreen({Key key,  @required name, @required User user}) :
        assert(user != null),
        assert(name != null),
        _name = name,
        _user = user,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context).add(AuthenticationLoggedOut());
            },
          ),
        ],
      ),
      body: UserProfileWidget(user: _user),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: [
//          Center(
//            child: Text('Welcome $_name! hey ${_user.displayName} ##'),
//
//          ),
//        ],
//      ),
    );
  }
}
