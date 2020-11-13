import 'package:flutter/material.dart';
import 'package:portfolio/screens/base/base_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends BaseScreenLayout<AboutScreen> {
  @override
  Widget buildLargeLayout(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildLeftContent(),
              ),
            ),
          ),
          Flexible(
            child: AvatarGlow(
              startDelay: Duration(milliseconds: 1000),
              glowColor: Colors.black12,
              endRadius: 280.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Image.network(
                    'https://avatars0.githubusercontent.com/u/22743432?s=400&u=b8703200188756a4fdf54563da182a1fd71a658c&v=4',
                  ),
                  radius: 160.0,
                  // shape: BoxShape.circle
                ),
              ),
              shape: BoxShape.circle,
              animate: true,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildSmallLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ..._buildLeftContent(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildLeftContent() {
    return [
      Text(
        "About",
        style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            fontFamily: "GoogleSans",
            color: Colors.white),
      ),
      Container(
        width: 80,
        height: 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xFF6C63FF),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
              text: "My name is ",
              style: TextStyle(
                  fontSize: 40, fontFamily: "GoogleSans", color: Colors.white),
              children: [
                TextSpan(
                    text: "Mohamed Essam",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "GoogleSans",
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6C63FF)))
              ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
            "I'm an Mobile Application Developer who focuses on writing clean, elegant & efficent code. Currently Fluttering with Dart.",
            style: TextStyle(
                fontSize: 22, fontFamily: "GoogleSans", color: Colors.white)),
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                launch(
                    "https://drive.google.com/file/d/1O42kF9STb6Kmh5uQstNoB9JWgoMgB7oL/view?usp=sharing");
              },
              color: Color(0xFF6C63FF),
              child: Text(
                "Resume",
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: "GoogleSans",
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                launch("https://www.linkedin.com/in/mohamed-essam-554a6690/");
              },
              color: Colors.white,
              child: Text(
                "Connect",
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: "GoogleSans",
                    color: Color(0xFF6C63FF)),
              ),
            ),
          ),
        ],
      ),
      Text(
        "Skills",
        style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            fontFamily: "GoogleSans",
            color: Colors.white),
      ),
      Container(
        width: 80,
        height: 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xFF6C63FF),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            skillAvatar(
                'https://d2eip9sf3oo6c2.cloudfront.net/tags/images/000/001/245/landscape/flutterlogo.png'),
            skillAvatar(
                'https://cdn.dribbble.com/users/528264/screenshots/3140440/firebase_logo.png'),
            skillAvatar(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1280px-React-icon.svg.png'),
            skillAvatar(
                'https://i1.wp.com/ionicacademy.com/wp-content/uploads/2017/06/ionic-logo-portrait.png?fit=1024%2C1024&ssl=1'),
            skillAvatar(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1024px-Unofficial_JavaScript_logo_2.svg.png'),
            skillAvatar(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/768px-Python-logo-notext.svg.png'),
          ],
        ),
      ),
    ];
  }

  Widget skillAvatar(String imgUrl) {
    return AvatarGlow(
      startDelay: Duration(milliseconds: 1000),
      glowColor: Colors.black12,
      endRadius: 64.0,
      duration: Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundColor: Colors.grey[100],
          child: Image.network(
            imgUrl,
          ),
          radius: 32.0,
          // shape: BoxShape.circle
        ),
      ),
      shape: BoxShape.circle,
      animate: true,
      curve: Curves.fastOutSlowIn,
    );
  }
}
