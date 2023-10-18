// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hungryhands_flutter/widgets/menu-list-row.dart';
// import 'package:hungryhands_flutter/widgets/side-menu.dart';

// import '../palatte.dart';

// class MenuScreen extends StatefulWidget {
//   const MenuScreen({super.key});

//   @override
//   State<MenuScreen> createState() => _MenuScreenState();
// }

// class _MenuScreenState extends State<MenuScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Row(
//         children: [
//           //Side Menu -------------------
//           SideMenu(),
//           // Manin Content --------------
//           Flexible(
//             flex: 1,
//             fit: FlexFit.tight,
//             child: Container(
//                 padding: EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     color: Colors.grey[300]),
//                 child: MenuRowItem()),
//           )
//         ],
//       )),
//     );
//   }
// }
