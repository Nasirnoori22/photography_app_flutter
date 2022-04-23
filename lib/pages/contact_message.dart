import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ContactMessages extends StatefulWidget {
  const ContactMessages({Key? key}) : super(key: key);

  @override
  State<ContactMessages> createState() => _ContactMessagesState();
}

class _ContactMessagesState extends State<ContactMessages> {
  bool show_and_hide = false;
  bool selector = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Text(
                'Message',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 15),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  IconlyLight.search,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 15, bottom: 0, right: 30),
                child: Slidable(
                  key: const ValueKey(0),

                  // The start action pane is the one at the left or the top side.
                  startActionPane: ActionPane(
                    // A motion is a widget used to control how the pane animates.
                    motion: const ScrollMotion(),

                    // A pane can dismiss the Slidable.
                    dismissible: DismissiblePane(onDismissed: () {}),

                    // All actions are defined in the children parameter.
                    children: const [
                      // A SlidableAction can have an icon and/or a label.
                      SlidableAction(
                        flex: 1,
                        spacing: 2,
                        onPressed: doNothing,
                        backgroundColor: Color(0xFF83d795),
                        foregroundColor: Colors.white,
                        icon: Icons.share,
                      ),
                    ],
                  ),

                  child: Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          show_and_hide = !show_and_hide;
                        });
                      },
                      child: show_and_hide
                          ? Container(
                              decoration: show_and_hide
                                  ? BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade400,
                                            width: 0),
                                      ),
                                    )
                                  : BoxDecoration(
                                      color: Color(0xfff6f8f2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                        top: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                        right: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                        left: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                      ),
                                    ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: AdvancedAvatar(
                                        size: 70,
                                        statusColor: Color(0xff11b940),
                                        statusAngle: 45,
                                        image: NetworkImage(
                                            'https://img.icons8.com/color/344/administrator-male--v1.png'),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xfff2f2f2),
                                            width: 2.0,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xfffbc6be),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 15),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          Text(
                                            'Sofia lee',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              ' sure lets play',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 28, bottom: 30),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, left: 30),
                                        child: Text(
                                          '09:20AM',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(
                              decoration: show_and_hide
                                  ? BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade400,
                                            width: 0),
                                      ),
                                    )
                                  : BoxDecoration(
                                      color: Color(0xfff6f8f2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                        top: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                        right: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                        left: BorderSide(
                                            color: Color(0xff81aec2), width: 1),
                                      ),
                                    ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: AdvancedAvatar(
                                        size: 70,
                                        statusColor: Color(0xff11b940),
                                        statusAngle: 45,
                                        image: NetworkImage(
                                            'https://img.icons8.com/color/344/administrator-male--v1.png'),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xfff2f2f2),
                                            width: 2.0,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xfffbc6be),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, bottom: 15),
                                      child: Container(
                                          child: Column(
                                        children: [
                                          Text(
                                            'Sofia lee',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              ' sure lets play',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w200),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 20, bottom: 30),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0, left: 0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        width: 0.1,
                                                        color: Colors.white),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50))),
                                                padding: EdgeInsets.all(1),
                                                margin:
                                                    EdgeInsets.only(left: 2),
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Color(
                                                        0xffedece8), // button color
                                                    child: InkWell(
                                                      splashColor: Colors.grey
                                                          .shade100, // inkwell color
                                                      child: SizedBox(
                                                        child: IconButton(
                                                          icon: Icon(
                                                            IconlyLight
                                                                .volume_up,
                                                            color: Color(
                                                                0xff83c7bc),
                                                            size: 22,
                                                          ),
                                                          onPressed: () {},
                                                        ),
                                                      ),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Container(
                                                padding: EdgeInsets.all(1),
                                                margin:
                                                    EdgeInsets.only(left: 0),
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Color(0xff83c7bc),
                                                    // button color
                                                    child: InkWell(
                                                      splashColor: Colors.grey
                                                          .shade100, // inkwell color
                                                      child: SizedBox(
                                                        child: IconButton(
                                                          icon: Icon(
                                                            IconlyLight.calling,
                                                            color: Colors.white,
                                                          ),
                                                          onPressed: () {},
                                                        ),
                                                      ),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
              );
            },
          ),
          Container(
            child: Positioned(
              bottom: 30,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff8f8f2),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                ),
                height: 80,
                width: 372,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 40, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconlyBold.message,
                          size: 35,
                          color: Color(0xff79beb9),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconlyLight.calling,
                          size: 35,
                          color: Color(0xff79beb9),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconlyLight.setting,
                          size: 35,
                          color: Color(0xff79beb9),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
