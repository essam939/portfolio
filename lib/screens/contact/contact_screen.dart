import 'package:flutter/material.dart';
import 'package:portfolio/screens/base/base_screen.dart';
import 'package:portfolio/style/custom_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({Key key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends BaseScreenLayout<ContactScreen> {
  @override
  Widget buildLargeLayout(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Text("Contact",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "GoogleSans",
                          color: Colors.white),),
                  Container(
                    width: 80,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF6C63FF),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ..._buildContentView(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildSmallLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text("Contact",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GoogleSans",
                    color: Colors.white),),
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF6C63FF),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ..._buildContentView(context),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _buildContentView(BuildContext context) {
  List<Widget> res = [];

  res.add(_buildRow(
      context, FontAwesomeIcons.locationArrow, "Alexandria, Egypt"));
  res.add(InkWell(
      onTap: () {
        launch("tel:+201271258570");
      },
      child:
          _buildRow(context, FontAwesomeIcons.phone, "(+20) 1271258570")));
  res.add(InkWell(
    onTap: () {
      launch("https://www.linkedin.com/in/mohamed-essam-554a6690/");
    },
    child: _buildRow(
        context, FontAwesomeIcons.linkedin, "in/mohamed-essam"),
  ));
   res.add(InkWell(
    onTap: () {
      launch("https://www.github.com/mido9000");
    },
    child: _buildRow(
        context, FontAwesomeIcons.github, "mohamedessam"),
  ));

  return res;
}

Widget _buildRow(
    BuildContext context, IconData iconData, String value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          iconData,
          color: Color(0xFF6C63FF),
        ),
        SizedBox(
          width: 40,
        ),
        Text(value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),),
      ],
    ),
  );
}
