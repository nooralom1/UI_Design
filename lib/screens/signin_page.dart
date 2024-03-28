import 'package:flutter/material.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  bool noor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                "Sing in",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  width: 340,
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.yellow,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.yellow,width: 2),
                      ),
                      hintText: 'E-mail',
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  width: 340,
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.yellow,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.yellow,width: 2),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Checkbox(
                      checkColor: Colors.green,
                      value: noor,
                      onChanged: (val) {
                        setState(() {
                          noor = val!;
                        });
                      },
                      activeColor: Colors.yellow,
                    ),
                  ),
                  const Text(
                    "Remember",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.black54, fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 60,
                width: 250,
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Center(
                  child: Text(
                    "SING IN",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Or",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.yellow),
                          borderRadius: const BorderRadius.all(Radius.circular(50))),
                      child: const Center(
                        child: Text(
                          "LOREM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.yellow),
                          borderRadius: const BorderRadius.all(Radius.circular(50))),
                      child: const Center(
                        child: Text(
                          "LOREM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 45, left: 20),
              child: Row(
                children: [
                  Text(
                    "Don't have Account?",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Create Account",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
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
