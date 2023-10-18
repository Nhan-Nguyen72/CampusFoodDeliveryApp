// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class Food {
//   final String name;
//   final int price;

//   Food({required this.name, required this.price});

//   factory Food.fromFirestore(DocumentSnapshot doc) {
//     Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

//     return Food(
//       name: data['food'],
//       price: data['price'],
//     );
//   }
// }

// Stream<List<Food>> getFoodStream() {
//   return FirebaseFirestore.instance
//       .collection('AbarGrill')
//       .snapshots()
//       .map((QuerySnapshot query) {
//     return query.docs.map((doc) => Food.fromFirestore(doc)).toList();
//   });
// }

// class MenuRowItem extends StatelessWidget {
//   const MenuRowItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<Food>>(
//       stream: getFoodStream(),
//       builder: (BuildContext context, AsyncSnapshot<List<Food>> snapshot) {
//         if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         }

//         switch (snapshot.connectionState) {
//           case ConnectionState.waiting:
//             return Text('Loading...');
//           default:
//             return ListView(
//               children: snapshot.data!.map((Food food) {
//                 return Row(
//                   children: [
//                     Text(food.name),
//                     SizedBox(width: 10),
//                     Text('${food.price}'),
//                   ],
//                 );
//               }).toList(),
//             );
//         }
//       },
//     );
//   }
// }
