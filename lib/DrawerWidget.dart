import 'package:flutter/material.dart';
import 'package:flutter_app/globals.dart';
import 'HomePage.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(Globals.user.name),
            accountEmail: Directionality(
                textDirection: TextDirection.ltr,
                child: Text(Globals.user.mobile)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              backgroundImage: NetworkImage(
                  'https://scontent-ams4-1.cdninstagram.com/vp/3ff885a29ace753d1858dae9304ef6d3/5DF59D0E/t51.2885-19/15802428_558772877660255_7059637022880694272_a.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com'),
              // child: Text(
              //  "د",
              //  style: TextStyle(fontSize: 40.0),
              //),
            ),
          ),
          ListTile(
            title: Text("صفحه اصلی"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            title: Text("قراردادهای فعال"),
            leading: Icon(Icons.whatshot),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            title: Text("قراردادهای گذشته"),
            leading: Icon(Icons.timer_off),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            title: Text("تنظیمات"),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            title: Text("سوالات پرتکرار"),
            leading: Icon(Icons.help_outline),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ],
      ),
    );
  }
}
