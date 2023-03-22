import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const ImageUrl =
        "https://th.bing.com/th/id/R.00602b953d1c56e9750282b4bb9b6b26?rik=rvWSIrXuxNQoqQ&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2ft%2fe%2fE%2fn%2fD%2fI%2fa-system-user-hi.png&ehk=JAv3dXXzSMxDSACDyW4QyzWTajgyq0wxXZlNctkmW3U%3d&risl=&pid=ImgRaw&r=0";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                accountName: Text("Sumit Sonar"),
                accountEmail: Text("sonar02sumit@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageUrl),
                ),
              )),
           ListTile(
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: const Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () => Navigator.pushReplacementNamed(context, "/home"),
          ),
           ListTile(
            leading: const Icon(
              CupertinoIcons.person_add,
              color: Colors.black,
            ),
            title: const Text(
              "Login Page",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () => Navigator.pushReplacementNamed(context, "/login"),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.black,
            ),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.add,
              color: Colors.black,
            ),
            title: Text(
              "Add Account",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
