import 'package:bai_tap_tuan_6/error.dart';
import 'package:bai_tap_tuan_6/loading.dart';
import 'package:bai_tap_tuan_6/menu.dart';
import 'package:bai_tap_tuan_6/notification.dart';
import 'package:bai_tap_tuan_6/profile.dart';
import 'package:bai_tap_tuan_6/watch.dart';
import 'package:flutter/material.dart';
import 'friendsrequest.dart';
import 'newspage.dart';

void main() {
  runApp(const Zola());
}

class Zola extends StatelessWidget {
  const Zola({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/profile": (context) => const Profile(),
        "/main": (context) => const SocialMediaApp(),
        "/menu": (context) => const Menu()
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late TextEditingController _username;
  late TextEditingController _pass;
  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _pass = TextEditingController();
  }

  @override
  void dispose() {
    _username.dispose();
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 141, 251, 0.41),
        body: Stack(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 250, 20, 50),
                    child: Column(
                      children: [
                        TextField(
                            controller: _username,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                labelText: 'Tên đăng nhập',
                                labelStyle: TextStyle(color: Colors.black))),
                        const Padding(padding: EdgeInsets.only(bottom: 10)),
                        TextField(
                          controller: _pass,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Mật khẩu',
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SizedBox(
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                setState(() {});
                                if (_username.text == "a" &&
                                    _pass.text == "a") {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (BuildContext context,
                                          Animation animation,
                                          Animation secondaryAnimation) {
                                        return const LoadingScreen();
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
                                } else {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (BuildContext context,
                                          Animation animation,
                                          Animation secondaryAnimation) {
                                        return const ErrorPage();
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
                                }
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Colors.black)),
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.supervisor_account_outlined)),
                Tab(icon: Icon(Icons.tv)),
                Tab(icon: Icon(Icons.notifications_none_rounded)),
                Tab(icon: Icon(Icons.menu))
              ],
            ),
            title: const Text('FakeBook'),
          ),
          body: const TabBarView(
            children: [NewsPage(), FriendsRq(), Watch(), ThongBao(), Menu()],
          ),
        ),
      ),
    );
  }
}