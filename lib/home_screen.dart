import 'package:design_workout/header_container.dart';
import 'package:design_workout/view_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait?Column(
        mainAxisSize: MainAxisSize.max,
        children: body(),
      ):Row(
        mainAxisSize: MainAxisSize.max,
        children: body(),
      ),
    );
  }

  List<Widget> body(){
    return [
      Flexible(
          flex: 4,
          child: HeaderContainer()
      ),
      Flexible(
        flex: 3,
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                flex:3,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      flex:5,
                      child: ViewContainer(
                        text: 'MY STATUS',
                        icon: Icons.timeline,
                        color: Colors.white,
                        textColor: Color(0xff010D24),
                      ),
                    ),

                    Flexible(
                      flex: 5,
                      child: ViewContainer(
                        text: 'COMPETITION',
                        icon: Icons.album,
                        color: Color(0xff24445E),
                        textColor: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),
              Flexible(
                flex: 3,
                child: ViewContainer(
                  text: 'WORKOUT',
                  icon: Icons.group_work,
                  color: Color(0xff0FDDBB),
                  textColor: Color(0xff010D24),
                ),
              ),
            ],
          ),

        ),
      )

    ];
  }
}