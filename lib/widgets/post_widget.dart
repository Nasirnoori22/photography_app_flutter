// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';

// class PostWidget extends StatelessWidget {
//   const PostWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 20, top: 20),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: AspectRatio(
//           aspectRatio: 1.5 / 1,
//           child: Column(
//             children: [
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.only(right: 20),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(
//                             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrIlqy3Qh5LfVMp4OfjakBspkJHLwqrA2BEw&usqp=CAU"),
//                         fit: BoxFit.cover),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(14.0),
//                     child: Container(
//                       margin: EdgeInsets.only(bottom: 0),
//                       child: Stack(
//                         alignment: AlignmentDirectional.bottomCenter,
//                         children: <Widget>[
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: BackdropFilter(
//                               filter:
//                                   ImageFilter.blur(sigmaX: 100, sigmaY: 100),
//                               child: Container(
//                                 height: 70,
//                                 padding: EdgeInsets.symmetric(horizontal: 20),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       child: Icon(
//                                         IconlyBold.heart,
//                                         color: Colors.red,
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.only(left: 8),
//                                       child: Text(
//                                         ' 192',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.only(left: 20),
//                                       child: Icon(
//                                         IconlyBold.chat,
//                                         color: Colors.black38,
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.only(left: 10),
//                                       child: Text(
//                                         '92',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.only(left: 130),
//                                       child: Icon(
//                                         IconlyBold.bookmark,
//                                         color: Colors.black38,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
