import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),

      body: Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: ShaderMask(
                  shaderCallback: (rect){
                    return const LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter
                        ,colors: [Colors.black, Colors.transparent])
                        .createShader
                      (Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assests/hero.jpg',
                    height: 600,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.55),
              child: Column(
                children: [
                  const Text(
                    'Hi, I am ',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'NITISH KUMAR(Niraj),',
                    style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'a passionate programmer & web developer.',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 10,),
                  const Center(
                    child: Text(
                      'Experienced frontend developer eager to contribute skills and passion to innovative projects.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center, // Optionally, you can center-align the text itself.
                    ),
                  ),

                  const SizedBox(height: 20,),

                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: (){
                        launch('https://nirucoaching.netlify.app/contact');
                      },
                      child: const Text('Hire me'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white, primary: Colors.black),
                        ),
                    ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launch('https://www.instagram.com/niru.nny/');
                        },
                        child: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15,),

                      GestureDetector(
                        onTap: () {
                          launch('https://www.facebook.com/people/Nitish-Niraj-Yadav/pfbid02Kmw83RHukkyEfTNgpo7n6jo8vXxtwEFd58m46R8E3x56E2n1rBXp6sqXybBMVtzul/');
                        },
                        child: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15,),

                      GestureDetector(
                        onTap: () {
                          launch('https://www.linkedin.com/in/niru-nny/');
                        },
                        child: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15,),

                      GestureDetector(
                        onTap: () {
                          launch('https://theniraj.tech/');
                        },
                        child: const Icon(
                          FontAwesomeIcons.globe,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15,),

                      GestureDetector(
                        onTap: () {
                          launch('https://github.com/nitish-niraj');
                        },
                        child: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15,),

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
