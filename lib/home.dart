import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}


class _MyHomeState extends State<MyHome> {


  MyAchive(num, type){
    return Row(
      children: [
        Text(num, style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold
        )),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(type)
        ) ],
    );
  }


  mySpec(icon, tech){
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                tech,
                style: TextStyle(
                    color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.grey,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(child: TextButton(
              child: Text('About me', style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.pushNamed(context, 'about');
              },
            ),
            value: 1,
            ),
            PopupMenuItem(child: TextButton(
              child: Text('Projects', style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.pushNamed(context, 'projects');
              },
            ),
              value: 2,
            ),
          ],
        ),
      elevation: 0,
        backgroundColor: Colors.transparent,
      ),

        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect){
                    return LinearGradient(
                      begin: Alignment.center,
                    end: Alignment.bottomCenter
                    ,colors: [Colors.black, Colors.transparent])
                        .createShader
                      (Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                        'assests/hero2.jpg',
                    height: 600,
                    fit: BoxFit.contain,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.49),
                child: Column(
                  children: [
                    Text(
                        'Nitish Kumar',
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Software developer',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 600,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyAchive('10+', ' Blogs'),
                    MyAchive('11+', ' Projects'),
                    MyAchive('1+', ' Internship')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Specilized in',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.android, 'Android'),
                        mySpec(FontAwesomeIcons.html5, 'HTML'),
                        mySpec(FontAwesomeIcons.css3Alt, 'CSS')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.jsSquare, 'JavaScript'),
                        mySpec(FontAwesomeIcons.database, 'Database'),
                        mySpec(FontAwesomeIcons.robot, 'IoT')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.linux, 'Linux'),
                        mySpec(FontAwesomeIcons.java, 'Java'),
                        mySpec(FontAwesomeIcons.python, 'Python')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.rProject, 'R Language'),
                      ],
                    ),


                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
