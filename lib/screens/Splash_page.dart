import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff25c29d),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 75,
            ),
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                "images/png-clipart-science-education-scientist-knowledge-biology-science-biology-scientist-thumbnail-removebg-preview.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: Text(
              "WELCOME!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              "you can study various",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          const Text(
            "sciences right at home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 86),
            child: Container(
              height: 220,
              width: 360,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Center(
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(40))
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                      ),
                      Icon(Icons.chevron_right,size: 60,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
