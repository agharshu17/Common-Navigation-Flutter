import 'package:flutter/material.dart';
import 'package:commonNavigation/screens/navigation/commonCode.dart';

tileFunc(context, text) {
  return () {
    navFunction(context, text);
  };
}

Widget customDrawer(context) {
  return Theme(
    data: ThemeData(canvasColor: Colors.white),
    child: Container(
      width: 270,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              trailing: IconButton(
                icon: Icon(
                  Icons.close,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            for (int i = 0; i < nav.length; i++)
              Container(
                child: Column(children: [
                  ListTile(
                      title: Text(nav[i]), onTap: tileFunc(context, nav[i]))
                ]),
              ),
          ],
        ),
      ),
    ),
  );
}
