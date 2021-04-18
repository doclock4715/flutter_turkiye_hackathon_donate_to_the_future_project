import 'package:flutter/material.dart';
import 'package:flutter_turkiye_hackathon/core/constants/application_strings.dart';

class LeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          buildDrawerHeader(context),
          buildMenuItem(context,
              icon: Icon(Icons.local_activity),
              stringTitle: ApplicationStrings.instance.activites,
              toWhichPage: '/activities'),
          buildMenuItem(context,
              icon: Icon(Icons.help),
              stringTitle: ApplicationStrings.instance.areYouNeedy,
              toWhichPage: '/areYouNeedy'),
        ],
      ),
    );
  }

  DrawerHeader buildDrawerHeader(BuildContext context) {
    return DrawerHeader(
      child: Text(ApplicationStrings.instance.menu,
          style: Theme.of(context).textTheme.headline3),
    );
  }

  ListTile buildMenuItem(BuildContext context,
      {@required Icon icon,
      @required String stringTitle,
      @required String toWhichPage}) {
    return ListTile(
        leading: icon,
        title: Text(stringTitle),
        onTap: () => Navigator.pushNamed(context, toWhichPage));
  }
}
