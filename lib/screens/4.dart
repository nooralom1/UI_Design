import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class LoremIpsumPage extends StatefulWidget {
  const LoremIpsumPage({super.key});

  @override
  State<LoremIpsumPage> createState() => _LoremIpsumPageState();
}

class _LoremIpsumPageState extends State<LoremIpsumPage> {
  @override
  Widget build(BuildContext context) {
    late int index = 0;
    List items = ["Physics", "Literature", "Management"];
    List items1 = ["24Courses", "24Courses", "24Courses"];
    List items2 = [
      "images/1111111-removebg-preview.png",
      "images/222222-removebg-preview.png",
      "images/333333-removebg-preview.png",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20, right: 20),
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
                  label: Icon(
                    Icons.search,
                    size: 40,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 160),
              child: Container(
                height: 35,
                width: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xff25c29d),
                ),
                child: const Center(
                  child: Text(
                    "Popular physics",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "The most important",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "principles of physics",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, right: 40),
              child: Text(
                "One of the most popular physics",
                style: TextStyle(fontSize: 19),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "course with over 2000 positive reviews",
                style: TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, right: 15),
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xff25c29d),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    items[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    items1[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  items2[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white12,
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.notifications,
            ),
            title: const Text("Notification"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.account_circle_outlined,
            ),
            title: const Text("Account"),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            title: const Text("Settings"),
            selectedColor: Colors.yellow,
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.menu_outlined,
            ),
            title: const Text("Menu"),
            selectedColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
