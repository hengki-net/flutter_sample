import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/global/method.dart';
import '../common/widget/side_bar.dart';
import './menu_provider.dart';

class MenuView extends StatelessWidget {
  MenuView({Key? key}) : super(key: key);

  String today = getToday();

  late List<dynamic> data;

  @override
  Widget build(BuildContext context) {
    //
    // 데이터 가져오기
    MenuProvider().getMenu('gotohome').then((result) {
      data = result.body;
    }, onError: (err) {});

    //
    // 화면 크기 가져오기
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //
      // 상단바
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black54,
        elevation: 0,
      ),

      // 사이드바
      drawer: SideBar(),

      backgroundColor: Colors.white,

      // 내용
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              //
              // 하단 움직이는 그림
              Positioned(
                child: Lottie.asset('assets/images/waves.json'),
                bottom: -55,
                width: 500,
              ),

              // 메인 영역
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                //
                // 환영 메시지
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                      height: 40.0,
                      margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.centerLeft,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // 아이콘
                            const Icon(
                              Icons.people,
                              color: Colors.black26,
                              size: 20.0,
                            ),
                            // 간격
                            const SizedBox(
                              width: 10,
                            ),
                            // 가운데
                            Text(
                              '홍현기',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),

                        // --
                        Text(
                          today,
                          style: const TextStyle(fontSize: 12),
                        ),

                        //
                      ])),
                ),

                // 메뉴
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 15, top: 20),
                  child: const Text(
                    'dd',
                  ),
                ),

                //
              ]),
            ],
          )),
    );
  }
}
