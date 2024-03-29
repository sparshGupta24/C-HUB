import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';
import 'bottom nav.dart';


class SplaashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff595959),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: (height-200)/2,
            left: (width-400)/2,
            child: Center(

              child: Container(
                color: Color(0xff595959),
                height: 400,
                width: 400,
                child: SplashScreen(
                    seconds: 5,
                    navigateAfterSeconds: HomePage(destoP: DestoP(0),),
                    image: new Image.asset("assets/fastsplash.gif",width:400.0,fit: BoxFit.contain,),

                    backgroundColor: Color(0xff595959),
                    styleTextUnderTheLoader: new TextStyle(),
                    photoSize: 100.0,
                    loaderColor: Color(0x00000000)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
