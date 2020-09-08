import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/cupertino.dart';
void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _thumbPercent = 0.1;
  double _thumbPercent2 = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios, color: Color(0xFFFE1483),
          ),
          onPressed: () {},
        ),
        title: Text('Up Next',
            style: TextStyle(
              color: Colors.white,
            )
        ),
        actions: [IconButton(
          icon: Icon(Icons.menu, color: Color(0xFFFE1483),),
          onPressed: (){},
        )
        ],
      ),
      body: Stack(
        children:[
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFF0A6C), Color(0xFF2D27FF)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    stops: [0.0,1.0],
                    tileMode: TileMode.clamp
                )
              ),
              child: Stack(
                children:[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                      margin: EdgeInsets.all(5.0),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 300,
                        height: 300,
                        padding: const EdgeInsets.all(3.0),
                        child: ClipOval(
                            clipper: MClipper(),
                            child: Image.asset('Assets/Chris_Brown_-_Indigo.png', fit: BoxFit.cover,)),
                      ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 110, 0, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios, color: Color(0xFF2D27FF),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 110, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Colors.red
                            ),
                            padding: EdgeInsets.all(15),
                            child: Image.asset('Assets/Changes_Justin Bieber.jpg', width:60.0,height:60.0,),
                          ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 110, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Colors.red
                            ),
                            padding: EdgeInsets.all(30),

                            child: Image.asset('Assets/Chris_Brown_-_Indigo.png', width:60.0,height:60.0,),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 110, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Colors.red
                            ),
                            padding: EdgeInsets.all(15),

                            child: Image.asset('Assets/ungodly-hour.jpeg', width:60.0,height:60.0,),
                          )
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 110, 0, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios, color: Color(0xFF2D27FF),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],

                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(180, 240, 0, 0),
                    child: Text('Indigo', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                       
                    ),),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(150, 265, 0, 0),
                    child: Text('Chris Brown', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,


                    ),),
                  )
      ]
              ),
              ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 610, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.shuffle, color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.share, color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border, color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete, color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.playlist_add, color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(45, 660, 0, 0),
                width:330,
                child: CupertinoSlider(

                  activeColor: Colors.white,
                  thumbColor: Colors.white,
                  value: _thumbPercent,

                  divisions: 10,
                  onChanged: (double percent) {
                    setState(() {
                      _thumbPercent = percent;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 720, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 90.0,
                ),
                Icon(
                  Icons.skip_next,
                  color: Colors.white,
                  size: 40.0,
                ),
              ],
            ),
          ),

//          Row(
//            children: [
//              Container(
//                margin: EdgeInsets.fromLTRB(20, 820, 0, 0),
//                child: Icon(
//                  Icons.volume_mute,
//                  color: Colors.white,
//                  size: 20.0,
//                ),
//              ),
//              Container(
//                margin: EdgeInsets.fromLTRB(2, 820, 0, 0),
//                width:330,
//                child: CupertinoSlider(
//                  activeColor: Colors.white,
//                  thumbColor: Colors.white,
//                  value: _thumbPercent2,
//
//                  divisions: 10,
//                  onChanged: (double percent) {
//                    setState(() {
//                      _thumbPercent2 = percent;
//                    });
//                  },
//                ),
//              ),
//              Container(
//                margin: EdgeInsets.fromLTRB(0, 820, 20, 0),
//                child: Icon(
//                  Icons.volume_up,
//                  color: Colors.white,
//                  size: 20.0,
//                ),
//              )
//            ],
//          ),
        ]
      ),
      );
  }
}



class MClipper extends CustomClipper<Rect>{
  @override
  Rect getClip( Size size) {
    return Rect.fromCircle(
        center: Offset(size.width/2, size.height/2),
        radius: min(size.width, size.height) / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }

}