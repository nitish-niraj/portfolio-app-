import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {

  mypro(language, title, description, star, link){
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(language, style: TextStyle(color: Colors.white, fontSize: 18),),
              SizedBox(height: 10,),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text(description, style: TextStyle(color: Colors.white70, fontSize: 16),),
              SizedBox(height: 7,),

              Row(children: [
                Icon(Icons.star,
                  color: Colors.white70,
                  size: 18,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  star.toString(), // Convert star to a string
                  style: TextStyle(color: Colors.white70),
                ),
                Expanded(child: Container()),
                IconButton(onPressed: () async {
                  await launch(link); // Launch the specified URL in a web browser
                },
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white ,
                    ))
              ],)
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
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mypro('Android', 'BMI-calculator', 'Get quick BMI insights with the Android BMI Calculator!', '15', 'https://github.com/nitish-niraj/BMI-calculator'),
              mypro('Android', 'tic-tac-toe', 'Play Tic-Tac-Toe with a friend on your Android device!', '10', 'https://github.com/nitish-niraj/tic-tac-toe'),
              mypro('web development', 'portfolio', 'My portfolio website show my skills, projects, blog, and contact me for collaboration.', '10', 'https://github.com/nitish-niraj/portfolio.github.io'),
              mypro('web development', 'temp-converter', 'Temperature Converter is a user-friendly web app for converting temperature in real-time.', '15', 'https://github.com/nitish-niraj/temperature-converter'),
              mypro('web development', 'niru-coaching', 'Designed modern, scalable, user-friendly frontend for educational website.', '10', 'https://github.com/nitish-niraj/niru-coaching'),
              mypro('web development', 'netflix-homepage', 'a front page clone of the netflix', '10', 'https://github.com/nitish-niraj/netflix-homepage'),
              mypro('web development', 'monkey-login', 'a monkey track your email and password typing', '10', 'https://github.com/nitish-niraj/monkey-login'),
              mypro('java', 'analog-clock-java', 'Java analog clock GUI with JFrames, JPanel, JLabel, and Graphics2D.', '15', 'https://github.com/nitish-niraj/analog-clock-java'),
            ],
          ),
        ),
      ),
    );
  }
}
