import 'package:charactfolio_/widgets/developerMenu.dart';
import 'package:charactfolio_/widgets/w_video_player.dart';
import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CharactfolioAppBar(),
      body:
      Stack(
        children: [
          // const ChVideoPlayer(
          //   videoPath: 'assets/videos/scaffoldBackground.mp4'
          // ),
          Container(
            color: CharactfolioColorsApp.color5.withValues(alpha: 0.2),
          ),
          SingleChildScrollView(
            child: Center(
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Image.asset(
                      'assets/images/iconDeveloper.png',
                      width: 250.0,
                      height: 250.0,
                    ),
                    ChDeveloperMenu(),
                    SizedBox(
                      height: 20.0,
                    ),
                    CharactfolioButton(
                      ch_imageBtton_normal: 'assets/images/bttonBackOff.png', 
                      ch_imageBtton_pressed: 'assets/images/bttonBackOn.png',
                      ch_labelBtton: 'Back',
                      width: 200.0,
                      height: 60.0, 
                      onPressed: (){
                        Navigator.pushNamed(context, CharactfolioRoutes.home);
                      }
                    )
                  ],
              ),
            )
          )
        ],
      )
    );
  }
}