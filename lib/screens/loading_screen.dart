import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


/*
* The geolocator is a widget that allows
* Lifecycle methods allow us to inject actions at different times over the life
* of the widget. initState() is one way to inject an action when the page loads.
*
* By taking it out of the build method we prevent it from lloading every time
* the widget updates just when it loads initially.
*
* */


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy:
    LocationAccuracy.low);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
