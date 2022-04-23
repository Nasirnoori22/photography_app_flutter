import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:photography_app/pages/message_page.dart';
import 'package:photography_app/widgets/post_widget.dart';

class SingleProfile extends StatefulWidget {
  const SingleProfile({Key? key}) : super(key: key);

  @override
  State<SingleProfile> createState() => _SingleProfileState();
}

class _SingleProfileState extends State<SingleProfile> {
  int count = 100;

  void likeCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Color(0xFFF8F8F8),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: ClipOval(
                            child: Material(
                              color: Color(0xff93e0ee), // button color
                              child: InkWell(
                                splashColor:
                                    Colors.grey.shade100, // inkwell color
                                child: SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Image.network(
                                        'https://img.icons8.com/external-color-for-better-life-royyan-wijaya/344/external-avatar-avatar-ii-color-for-better-life-royyan-wijaya-20.png')),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Wang Yibo',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Member for 2 years',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5, right: 40),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          '10.5K',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Followers',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  color: Colors.black87,
                                  endIndent: 10,
                                  indent: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5, left: 40),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          '1.5K',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Following',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                height: 47,
                                width: 150,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Color(0xff2db3cd);
                                        return Color(0xffabe1eb);
                                      },
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MessagePage()),
                                    );
                                  },
                                  child: Text(
                                    "Message",
                                    style: new TextStyle(
                                        fontSize: 16.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                height: 47,
                                width: 150,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Color(0xff2db3cd);
                                        return Color(0xffabe1eb);
                                      },
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Follow",
                                    style: new TextStyle(
                                        fontSize: 16.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 1.5 / 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrIlqy3Qh5LfVMp4OfjakBspkJHLwqrA2BEw&usqp=CAU"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 0),
                                  child: Stack(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 100, sigmaY: 100),
                                          child: Container(
                                            height: 70,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: IconButton(
                                                    onPressed: () {
                                                      likeCount();
                                                    },
                                                    icon: Icon(
                                                      IconlyBold.heart,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 8),
                                                  child: Text(
                                                    '${count}',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 20),
                                                  child: Icon(
                                                    IconlyBold.chat,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    '92',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 110),
                                                  child: Icon(
                                                    IconlyBold.bookmark,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 1.5 / 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrIlqy3Qh5LfVMp4OfjakBspkJHLwqrA2BEw&usqp=CAU"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 0),
                                  child: Stack(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 100, sigmaY: 100),
                                          child: Container(
                                            height: 70,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    IconlyBold.heart,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 8),
                                                  child: Text(
                                                    ' 192',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 20),
                                                  child: Icon(
                                                    IconlyBold.chat,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    '92',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 130),
                                                  child: Icon(
                                                    IconlyBold.bookmark,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
