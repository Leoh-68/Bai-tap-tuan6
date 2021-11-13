import 'dart:html';
import 'package:flutter/material.dart';

class ThongBao extends StatelessWidget {
  const ThongBao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BuildList(),
      ),
    );
  }
}

class BuildList extends StatefulWidget {
  const BuildList({Key? key}) : super(key: key);
  @override
  State<BuildList> createState() => _BuildList();
}

class _BuildList extends State<BuildList> {
  @override
  Widget build(BuildContext context) {
    Widget BuildPost(String Name, String PathAvt, String Group, String Time) {
      return Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 5, color: Colors.black))),
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 40,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(PathAvt))),
              ),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
              title: Text(
                  Name + " đã nhắc đến bạn ở một bình luận trong " + Group),
              subtitle: Row(
                children: [
                  Text(Time),
                  Icon(
                    Icons.public,
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    ;

    return ListView(
      children: [
        BuildPost("Huy", "images/5.jpg", "Động mòe", "6 giờ trước"),
        BuildPost("Khánh", "images/6.jpg", "Động woof", "7 giờ trước"),
        BuildPost("Bạch", "images/3.jpg", "Động cáo", "2 giờ trước"),
        BuildPost("Raiden Shotgun", "images/1.jpg", "Động thõ", "1 giờ trước"),
        BuildPost("Ayaya", "images/2.jpg", "Động cá", "30 phút trước"),
        BuildPost("WoW", "images/4.jpg", "Động giun", "7 giờ trước"),
        BuildPost("Bạch", "images/5.jpg", "Động Chim", "5 giờ trước"),
        BuildPost("Bạch", "images/1.jpg", "Động Cú", "6 giờ trước"),
        BuildPost("Bạch", "images/5.jpg", "Động Voi", "Mới đây"),
        BuildPost("Bạch", "images/6.jpg", "Động Sư tủ", "2 giờ trước")
      ],
    );
  }
}
