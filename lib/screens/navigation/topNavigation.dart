import 'package:flutter/material.dart';
import 'package:commonNavigation/screens/navigation/commonCode.dart';

class TopNavigation extends StatefulWidget {
  @override
  _TopNavigationState createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < nav.length; i++)
            Flexible(
              child: ListTile(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Text(
                          nav[i],
                        ),
                      ),
                    ],
                  ),
                  onTap: () => navFunction(context, nav[i])),
            ),
        ],
      ),
    );
  }
}
