import 'package:bai_tap_tuan_6/main.dart';
import 'package:bai_tap_tuan_6/profile.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Menu",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  iconSize: 50,
                )
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context, Animation animation,
                        Animation secondaryAnimation) {
                      return const Profile();
                    },
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    },
                  ),
                );
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.black,
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('Images/avatar.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Trần Phước Khánh",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Xem trang cá nhân",
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 3, color: Colors.grey.shade300),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          PageRouteBuilder(pageBuilder: (BuildContext context,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return const LoginPage();
                          }, transitionsBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          }),
                          (Route route) => false);
                    },
                    child: const Text("Đăng Xuất"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
