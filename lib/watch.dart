import 'dart:html';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class Watch extends StatelessWidget {
  const Watch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body: BuildList()
            //         Row(children: [
            //   TabBar(tabs: [
            //     Tab(text: "Dành cho bạn"),
            //     Tab(text: "Trực tiếp"),
            //     Tab(text: "Đang theo dõi"),
            //     TabBarView(children: [
            //       BuildList(),
            //       ThongBaoNe(),
            //       ThongBaoNe1(),
            //     ]),
            //   ])
            // ])
            ));
  }
}

//

class BuildList extends StatefulWidget {
  const BuildList({Key? key}) : super(key: key);
  @override
  State<BuildList> createState() => _BuildList();
}

class _BuildList extends State<BuildList> {
  @override
  Widget build(BuildContext context) {
    Widget BuildImg(String Path) {
      return CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(Path),
      );
    }

    int Textt = 1;
    Widget BuildPost(String PathImgAvt, String Name, String Time, String Tus,
        String PathImgTus) {
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
                        fit: BoxFit.cover, image: AssetImage(PathImgAvt))),
              ),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
              title: Text(
                Name,
                style: TextStyle(fontFamily: 'Roboto'),
              ),
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
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ExpandableText(
                  Tus,
                  expandText: 'show more',
                  collapseText: 'show less',
                  maxLines: 1,
                  linkColor: Colors.blue,
                ),
              ),
            ),
            Image.asset(PathImgTus),
            Row(
              children: [
                Icon(Icons.favorite_border_outlined),
                Text(Textt.toString())
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () => setState(() => Textt++),
                          icon: Icon(Icons.beach_access)),
                      Text("Like")
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      Text("Comment")
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                      Text("Share")
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      );
    }

    ;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Hoạt động gần đây',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: SizedBox(
              height: 70,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/1.jpg'),
                          Text(
                            "Aether Gaming",
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/4.jpg'),
                          Text(
                            "Lumine Gaming",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/1.jpg'),
                          Text(
                            "Raiden Gaming",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/5.jpg'),
                          Text(
                            "Ayaya Gaming",
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/6.jpg'),
                          Text(
                            "Zhonglee Gaming",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/5.jpg'),
                          Text(
                            "Childe Gaming",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/3.jpg'),
                          Text(
                            "Kazuhu Gaming",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/1.jpg'),
                          Text(
                            "Yoimiya Gaming",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          BuildImg('images/2.jpg'),
                          Text(
                            "Yoimiya Gaming",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 1))),
            padding: EdgeInsets.only(left: 15, right: 18),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Watch',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
            ),
          ),
          BuildPost(
              "images/ei.jpg",
              "Raiden Shotgun",
              "16:30",
              "This example shows a message that was posted by a user. The username is always visible right before the text and tapping on it opens the user profile. The text is truncated after two lines and can be expanded by tapping on the link show more at the end or the text itself. After the text was expanded it cannot be collapsed again as no collapseText was provided. Links, @mentions and #hashtags in the text are styled differently and can be tapped to open the browser or the user profile.",
              "images/simp.jpg"),
          BuildPost("images/1.jpg", "DapMachine's Teyvat", "03:30",
              "Paimon đâu có ai thấy không?", "images/simp.jpg"),
          BuildPost("images/2.jpg", "Scare's Klee", "05:00",
              "Where r Kleeeeeeeeeeeeeeeeeeeeeeeeeeeee", "images/simp.jpg"),
          BuildPost("images/3.jpg", "White Kitsune", "hôm qua",
              "Im Fox not Cat FAQ", "images/simp.jpg")
        ],
      ),
    );

//     SingleChildScrollView(
//         child: Expanded(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text("Dành cho bạn"),
//           SizedBox(
//               height: 200,
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   physics: ClampingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (_, i) => ListTile(title: Text("Item ${i}")))),
//           BuildPost(),
//           BuildPost()
//         ],
//       ),
//     ));
//   }
// }

//     ListView(
//       shrinkWrap: true,
//       children: [
//         Expanded(
//             child: Container(
//           height: 200,
//           color: Colors.teal,
//           child: ,
//         )),
//
//       ],
//     );
//   }
// }

// class BuildPost extends StatefulWidget {
//   const BuildPost({Key? key}) : super(key: key);
//   @override
//   State<BuildPost> createState() => _BuildPost();
// }

// class _BuildPost extends State<BuildPost> {
//   @override
//   Widget build(BuildContext context) {
//     return );
//   }
// }
  }
}
