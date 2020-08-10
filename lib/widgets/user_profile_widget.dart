import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

class UserProfileWidget extends StatelessWidget {
  final User _user;

  UserProfileWidget({Key key, @required User user})
      : assert(user != null),
        _user = user,
        super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue[100], Colors.blue[400]],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  _user.photoUrl,
//                  '${_user.photoUrl ?? ''}',
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 40),
              Text(
                'NAME',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                '${_user.displayName ?? ''}',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                '${_user.email ?? ''}',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
//              RaisedButton(
//                onPressed: () {
//                  _userRepository.signOut(); // .signOutGoogle();
//                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginScreen(userRepository: _userRepository);}), ModalRoute.withName('/'));
//                },
//                color: Colors.deepPurple,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text(
//                    'Sign Out',
//                    style: TextStyle(fontSize: 25, color: Colors.white),
//                  ),
//                ),
//                elevation: 5,
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(40)),
//              )
            ],
          ),
        ),
      ),
    );
  }
}