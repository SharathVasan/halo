import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return PixelPerfect(
      assetPath: 'assets/images/getstartedscreen.png',
      scale: 1, //  default bottom distance (optional)
      offset: Offset.zero, // default image offset (optional)
      initOpacity: 0.4,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        Container(
            height: height * 0.90,
            width: width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50.0),
                Image.asset('assets/images/haloblack.png', width: width * 0.26),
                const SizedBox(height: 20.0),
                const Text(
                  "say hello to halo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'OgnoekBold'),
                ),
                const SizedBox(height: 45.0),
                Image.asset('assets/images/getstarted.png',
                    width: width * 0.13),
                const SizedBox(height: 8.0),
                Text(
                  "get started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: HexColor("#1B2D5B"),
                      fontSize: 10.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'OgnoekBold'),
                ),
              ],
            )),
        Container(
            height: height * 0.10,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Powered by ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'OgnoekBold'),
                ),
                Image.asset('assets/images/oureyeblack.png',
                    width: width * 0.15),
              ],
            ))
      ]),
    );
  }
}
