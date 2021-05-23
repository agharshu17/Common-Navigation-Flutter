import 'package:flutter/material.dart';
import 'package:commonNavigation/screens/navigation/sideNavigation.dart';
import 'package:commonNavigation/screens/navigation/topNavigation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    print(_scaffoldKey);
    return Scaffold(
      key: _scaffoldKey,
      appBar: screenwidth <= 600
          ? AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () => {
                        _scaffoldKey.currentState!.openDrawer(),
                      }))
          : null,
      drawer: customDrawer(context),
      drawerEnableOpenDragGesture: false,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              screenwidth > 600
                  ? Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: TopNavigation())
                  : SizedBox(
                      height: 0,
                    ),
              //ADD BODY HERE
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  'HOME PAGE',
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
