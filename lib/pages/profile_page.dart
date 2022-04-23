import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:photography_app/pages/message_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: ClipOval(
                child: Material(
                  color: Color(0xff93e0ee), // button color
                  child: InkWell(
                    splashColor: Colors.grey.shade100, // inkwell color
                    child: SizedBox(
                        width: 35,
                        height: 35,
                        child: Image.network(
                            'https://img.icons8.com/office/344/user-male-skin-type-5.png')),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MessagePage()),
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 4),
              child: ClipOval(
                child: Material(
                  color: Colors.white, // button color
                  child: InkWell(
                    splashColor: Colors.grey.shade100, // inkwell color
                    child: SizedBox(
                        width: 35,
                        height: 35,
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                    onTap: () {},
                  ),
                ),
              ),
            )
          ],
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text('Explore',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            color: Color(0xfff3f5f7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://mooreks.co.uk/wp-content/uploads/2018/09/KS_Media_DIgitalInstallation_LR.jpg'),
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                right: 0, left: 20, top: 15),
                                            child: Text(
                                              'Mesh Gradient',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 25,
                                                margin: EdgeInsets.only(
                                                  right: 5,
                                                  top: 10,
                                                ),
                                                child: GFAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://img.icons8.com/color/344/circled-user-male-skin-type-1-2--v1.png'),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 0, top: 7),
                                                child: Text(
                                                  'Anosha Gul',
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 20, right: 15),
                                        child: Icon(
                                          Icons.save,
                                          color: Color(0xffa29cac),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ], ////////////////////
        ),
      ),
    );
  }
}
