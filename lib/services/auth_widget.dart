import 'package:flutter/material.dart';
import 'package:flutter_application_1/dataModels/CurrentUser.dart';
import 'package:flutter_application_1/providers/authProvider.dart';
import 'package:provider/provider.dart';

/*
* This class is mainly to help with creating user dependent object that
* need to be available by all downstream widgets.
* Thus, this widget builder is a must to live above [MaterialApp].
* As we rely on uid to decide which main screen to display (eg: Home or Sign In),
* this class will helps to create all providers needed that depends on
* the user logged data uid.
 */
class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder({Key key, @required this.builder}) : super(key: key);
  final Widget Function(BuildContext, AsyncSnapshot<CurrentUser>) builder;

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthProvider>(context);
    return StreamBuilder<CurrentUser>(
      stream: authService.user,
      builder: (BuildContext context, AsyncSnapshot<CurrentUser> snapshot) {
        final CurrentUser user = snapshot.data;
        if (user != null) {
          Provider.of<CurrentUser>(context).updateWith(updatedUserModel: user);
        }
        return builder(context, snapshot);
      },
    );
  }
}
