import 'package:flutter/material.dart';



class NoorPage extends StatefulWidget {
  const NoorPage({super.key});

  @override
  State<NoorPage> createState() => _NoorPageState();
}

class _NoorPageState extends State<NoorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.cyan,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 245),
                  child: Icon(Icons.notification_add_outlined,size: 30,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5,color: Colors.greenAccent),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.search,size: 30,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Search",style: TextStyle(fontSize: 22),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 130,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/noor.png"),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text("All categories"),
                  Padding(
                    padding: EdgeInsets.only(left: 180),
                    child: Text("See more"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.deepPurple,width: 3),
                        top: BorderSide(color: Colors.cyan,width: 3),
                        right: BorderSide(color: Colors.lightGreen,width: 3),
                        bottom: BorderSide(color: Colors.redAccent,width: 3),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.deepPurple,width: 3),
                            top: BorderSide(color: Colors.cyan,width: 3),
                            right: BorderSide(color: Colors.lightGreen,width: 3),
                            bottom: BorderSide(color: Colors.redAccent,width: 3),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.deepPurple,width: 3),
                            top: BorderSide(color: Colors.cyan,width: 3),
                            right: BorderSide(color: Colors.lightGreen,width: 3),
                            bottom: BorderSide(color: Colors.redAccent,width: 3),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.deepPurple,width: 3),
                            top: BorderSide(color: Colors.cyan,width: 3),
                            right: BorderSide(color: Colors.lightGreen,width: 3),
                            bottom: BorderSide(color: Colors.redAccent,width: 3),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("popular Products"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKKfsI53Vxq7VO08NskTUm0KRY53Pap1yjzw&usqp=CAU")
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 56),
                    child: Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.1),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://www.shutterstock.com/image-photo/phatthalung-thailand-november-18-2018-260nw-1235430298.jpg")
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://i.ebayimg.com/thumbs/images/g/IgYAAOSwe5RlFs84/s-l640.jpg")
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 56),
                    child: Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.1),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://i.pngimg.me/image_by_url?url=https://mir-s3-cdn-cf.behance.net/project_modules/1400/c5ad10134021433.61cc147529186.jpg")
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
