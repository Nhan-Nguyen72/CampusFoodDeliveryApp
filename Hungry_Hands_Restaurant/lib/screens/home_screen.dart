import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hungryhands_flutter/screens/orders_screen.dart';
import 'package:hungryhands_flutter/widgets/side-menu.dart';
import 'analystics_screen.dart';
import '../palatte.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final List<Widget> _pages = [HomeScreen(), AnalyticsScreen()];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        //Side Menu
        SideMenu(),
        //Main Content ------------------------------------------------------
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Dashboard",
                        style: GoogleFonts.lemon(textStyle: kHeaderText)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Text("Order Name", style: kBodyText),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Total", style: kBodyText),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Status", style: kBodyText),
                          SizedBox(
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(2),
                      child: ListView(),
                    ),
                  )
                ],
              )),
        )
      ],
    )));
  }
}
