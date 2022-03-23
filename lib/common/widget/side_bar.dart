import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //
      child: Column(
        children: <Widget>[
          //
          // 슬라이드바 - 상단
          DrawerHeader(
            //
            // 색상지정
            decoration: const BoxDecoration(
              color: Colors.indigo,
            ),

            //
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                //
                // 아이콘
                Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),

                // 사용자명
                Center(
                  child: Text(
                    "HI",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),

          // 메뉴1
          ListTile(
            leading: const Icon(Icons.read_more),
            title: const Text('menu1'),
            onTap: () {
              Get.back();
            },
          ),

          // 메뉴2
          ListTile(
            leading: const Icon(Icons.pets),
            title: const Text('menu2'),
            onTap: () {
              Get.back();
            },
          ),

          // 메뉴3
          ListTile(
            leading: const Icon(Icons.recent_actors_rounded),
            title: const Text('menu3'),
            onTap: () {
              Get.back();
            },
          ),

          //
        ],
      ),
    );
  }
}
