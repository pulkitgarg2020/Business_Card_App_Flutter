import 'package:flutter/material.dart';

// 1. For hotreload to work our changes should be inside a stateful or stateless
//    widget
// 2. Hot restart - restarts the state of the app
// 3. Hot reload and hot restart looks at only changes that you made and then
//    push that to your testing device
void main() {
  runApp(MyApp());
}

// 1. type in stless and press enter
// 2. Contains a build method, which is called everytime we change something
// 3. hot reload is launched as soon as you save the file
// 4. hot reload reduces the time for development cycle by a lot
//
// Container widget
// 1. Very similar to div in web dev
// 2. Whenever you use a new widget, always start with the documentation
// 3. Allows us to poition and size and out widgets
// 4. Containers with no children takes the max size
// 5. Containers can have only one widget
//
// Safe Area
// 1. A widget that makes sure that elements are inside a safe area - away from
//    the UI elements
//
// Edge insets in margin
// 1. To give margins around
// 2. symmetric just for horizontal and vertical
// 3. fromTRLB - for all the sides
// 4. margin is for outside of the widget
//
// Padding
// 1. For inside of the widget
//
// Column (Same properties apply to a Row as well)
// 1. For multiple children
// 2. Tries to take all the vertical space that is available
// 3. You can let it take it min space by mainAxisSize: MainAxisSize.min
// 4. Cross axis alignment in crossAxisAlignment would strech them as much
//    as you want
// 5. Sizedbox to give space between widgets
//
// Resource - check Flutter Layout cheat Sheet
// Resource - materialpalette.com
//
// Icons
// 1. Better than images, since they are drawn on the fly
//
// Divider
// 1. Puts a 1 pixel line on our screen
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/my_photo.jpg'),
              ),
              Text(
                'Pulkit Garg',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Sans',
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+1 000 000 000',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'Sans',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'pulkit.garg@dal.ca',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'Sans',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.code,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'github.com/pulkitgarg2020',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'Sans',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
