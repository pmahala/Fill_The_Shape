import 'package:fill_the_shape/ActualGame.dart';
import 'package:fill_the_shape/AppBarSection.dart';
import 'package:flutter/material.dart';
import 'AppBarSection.dart';

List<Widget> initial = [
  Expanded(
    child: Icon(
      Icons.brightness_1_outlined,
      size: 15.0,
    ),
  ),
  Expanded(
    child: Icon(
      Icons.brightness_1_outlined,
      size: 15.0,
    ),
  ),
  Expanded(
    child: Icon(
      Icons.brightness_1_outlined,
      size: 15.0,
    ),
  ),
  Expanded(
    child: Icon(
      Icons.brightness_1_outlined,
      size: 15.0,
    ),
  ),
  Expanded(
    child: Icon(
      Icons.brightness_1_outlined,
      size: 15.0,
    ),
  ),
];

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<Widget> widgetList = initial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 100,
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: AppBarSection(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: AppBarSection(
                  color: Colors.red,
                  appBarSecChild: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: widgetList,
                  ),
                ),
              ),
              Expanded(
                child: AppBarSection(
                  color: Colors.purple,
                ),
              ),
              Expanded(
                child: AppBarSection(
                  color: Colors.lightGreen,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ActualGame(onClick: (val, val2) {
        if (val == true) {
          print('Size Matched!!');
        } else {
          print('Size Did not match');
        }
        print(val2);

        setState(() {
          widgetList = initial;
          for (int i = 0; i < val2.length; i++) {
            if (val2[i]) {
              widgetList[i] = Expanded(
                child: Icon(
                  Icons.check_circle,
                  size: 15.0,
                ),
              );
            } else if (!val2[i]) {
              widgetList[i] = Expanded(
                child: Icon(
                  Icons.cancel_rounded,
                  size: 15.0,
                ),
              );
            }
          }
        });
        //widgetList = [];
      }),
    );
  }
}
