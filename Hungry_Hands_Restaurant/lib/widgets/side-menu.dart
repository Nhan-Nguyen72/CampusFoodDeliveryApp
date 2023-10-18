import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../palatte.dart';
import '../screens/home_screen.dart';
import '../screens/orders_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.loose,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            //Title
            Text("Restaurant Name",
                style: GoogleFonts.lemon(textStyle: kHeaderText)),
            //Item 1 ------------------------------------------------------
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(children: [
                  Icon(
                    FontAwesomeIcons.chartLine,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "DashBoard",
                    style: kBodyTextalt,
                  )
                ]),
              ),
            ),
            //item 2 ------------------------------------------------------
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrdersScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(children: [
                  Icon(
                    FontAwesomeIcons.receipt,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Orders",
                    style: kBodyTextalt,
                  )
                ]),
              ),
            ),
            //item 3 ------------------------------------------------------
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(children: [
                  Icon(
                    FontAwesomeIcons.utensils,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Menu",
                    style: kBodyTextalt,
                  )
                ]),
              ),
            ),
            //item 4 ------------------------------------------------------
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(children: [
                  Icon(
                    FontAwesomeIcons.chartLine,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Analytics",
                    style: kBodyTextalt,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
