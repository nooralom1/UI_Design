import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late int index = 0;
  List item = [
    "Start Preparing",
    "Discuse",
    'Olympied',
    'Your Careee Path',
    'Cradite',
    'settings',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 100),
          child: Container(
            height: 600,
            width: 300,
            decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "MENU",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: SizedBox(
                    height: 532,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: item.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              height: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xff25c29d),
                              ),
                              child: Center(
                                child: Text(item[index],style: const TextStyle(color: Colors.white,fontSize: 25,),),
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
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
