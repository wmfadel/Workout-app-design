import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              color: Color(0xff010D24),
              image: DecorationImage(
                  image: AssetImage('assets/image.jpg'), fit: BoxFit.cover)),
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Color(0xff010D24).withOpacity(0.9),
        ),
        buildAppVar(),
        Padding(
          padding: EdgeInsets.all(25),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'ATLAS\nWORKOUT\nPROGRAM',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: buildSideText(),
        )
      ],
    );
  }

  Widget buildSideText(){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(width: 30,height: 3,color: Color(0xff37BCB0),),
        SizedBox(width: 8),
        Text('MOST POPULAR', style: TextStyle(color: Colors.white,fontSize: 16),)
      ],
    );
  }

  Widget buildAppVar() {
    return Container(
      width: double.maxFinite,
      height: 60,
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            Icons.menu,
            color: Color(0xff0FDDBB),
            size: 30,
          ),
          Expanded(
              child: Text(
            'TRAINER CENTER',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
