import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            body: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: _height / 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/user_avatar.png'),
                          radius: _height / 10,
                        ),
                        SizedBox(
                          height: _height / 30,
                        ),
                        const Text(
                          'username',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _height / 2.2),
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _height / 2.6,
                      left: _width / 20,
                      right: _width / 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 2.0,
                                  offset: Offset(0.0, 2.0))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: DefaultTextStyle(
                            style: const TextStyle(color: Colors.black),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                headerChild('Photos', 114),
                                headerChild('Followers', 1205),
                                headerChild('Following', 360),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: _height / 20),
                        child: DefaultTextStyle(
                          style: const TextStyle(color: Colors.black),
                          child: Column(
                            children: <Widget>[
                              infoChild(30, Icons.email, 'google@gmail.com'),
                              infoChild(30, Icons.call, '98988998'),
                              infoChild(30, Icons.group_add, 'Add to group'),
                              infoChild(
                                  30, Icons.chat_bubble, 'Show all comments'),
                              Padding(
                                padding: EdgeInsets.only(top: _height / 30),
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(_height / 40)),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black87,
                                            blurRadius: 2.0,
                                            offset: Offset(0.0, 1.0))
                                      ]),
                                  child: const Center(
                                    child: Text('FOLLOW ME',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget headerChild(String header, int value) => Expanded(
        child: Column(
      children: <Widget>[
        Text(header),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          '$value',
          style: const TextStyle(
              fontSize: 14.0,
              color: Color(0xFF26CBE6),
              fontWeight: FontWeight.bold),
        )
      ],
    ));

Widget infoChild(double width, IconData icon, data) => Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: width / 10,
            ),
            Icon(
              icon,
              color: const Color(0xFF26CBE6),
              size: 36.0,
            ),
            SizedBox(
              width: width / 20,
            ),
            Text(data)
          ],
        ),
        onTap: () {},
      ),
    );
