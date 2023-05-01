import 'package:flutter/material.dart';
import 'package:fllearn/utils/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/44196146?v=4";
    return Drawer(
      child: Container(
        color: AppColors.appPrimaryColor,
        child: ListView(children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Arun"),
              accountEmail: Text("arun@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Inbox",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
