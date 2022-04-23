import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  String? path;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f2ed),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xfff5f2ed),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.1, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.only(left: 2),
                child: ClipOval(
                  child: Material(
                    color: Color(0xffedece8), // button color
                    child: InkWell(
                      splashColor: Colors.grey.shade100, // inkwell color
                      child: SizedBox(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black38,
                            size: 18,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.only(left: 0),
                child: ClipOval(
                  child: Material(
                    color: Color(0xff83c7bc),
                    // button color
                    child: InkWell(
                      splashColor: Colors.grey.shade100, // inkwell color
                      child: SizedBox(
                        child: IconButton(
                          icon: Icon(
                            Icons.add_call,
                            color: Colors.white,
                            size: 25,
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
      body: Container(
        color: Color(0xfff5f2ed),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                children: [
                  ClipOval(
                    child: Material(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.only(top: 0, left: 0),
                          child: ClipOval(
                            child: Material(
                              color: Color(0xffb5d4db), // button color
                              child: InkWell(
                                splashColor:
                                    Colors.grey.shade100, // inkwell color
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                      width: 35,
                                      height: 35,
                                      child: Image.network(
                                          'https://img.icons8.com/external-avatar-andi-nur-abdillah/344/external-avatar-business-avatar-avatar-andi-nur-abdillah-4.png')),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      'Jack Harris',
                      style: TextStyle(fontSize: 20, color: Color(0xff4a3d3b)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45)),
              ),
              height: 558,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: EdgeInsets.only(top: 40, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(''),
                          ),
                          Container(
                            height: 60,
                            width: 190,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff81cfa2),
                                    Color(0xff74b2d2)
                                  ]),
                              // color: Color(0xff83c7bc),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 17),
                              child: Text(
                                'Hey How are you?',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 70,
                              width: 260,
                              decoration: BoxDecoration(
                                color: Color(0xffededec),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffe3e6e3),
                                      Color(0xfffcfcfb)
                                    ]),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 20),
                                child: Text(
                                  'Photography new designs',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.black87),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(''),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(''),
                            ),
                            Container(
                              height: 60,
                              width: 190,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff81cfa2),
                                      Color(0xff74b2d2)
                                    ]),
                                // color: Color(0xff83c7bc),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 45, top: 17),
                                child: Text(
                                  'Awesome !',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 70,
                              width: 260,
                              decoration: BoxDecoration(
                                color: Color(0xffededec),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffe3e6e3),
                                      Color(0xfffcfcfb)
                                    ]),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 20),
                                child: Text(
                                  'Photography new designs',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.black87),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 80,
                                  width: 372,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff8f8f2),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(50),
                                        bottomLeft: Radius.circular(50),
                                        bottomRight: Radius.circular(50),
                                        topLeft: Radius.circular(50)),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, top: 0),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  IconlyBroken.camera,
                                                  size: 25,
                                                  color: Color(0xff737877),
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 0),
                                              child: Text(
                                                '|',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xffb9bab8)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 5, top: 5),
                                              width: 200,
                                              child: TextFormField(
                                                cursorColor: Color(0xff),
                                                style: TextStyle(
                                                    color: Color(0xffb6b6b6)),
                                                initialValue:
                                                    "Type Something ...",
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color(
                                                    0xfff8f8f2,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20.0),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(IconlyBold.send),
                                                  color: Color(0xff7ac0bc),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
