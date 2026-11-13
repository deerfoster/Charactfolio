import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class AboutMeScreen extends StatelessWidget{
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CharactfolioAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: 
          Column(
            children: [
              const SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CharactfolioCardAsset1(
                    ch_image: 'assets/images/iconXariAboutMe.png', 
                    ch_description: '',
                    width: 200.0,
                    height: 220.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      CharactfolioCardAsset1(
                        ch_image: 'assets/images/userChariName.png',
                        ch_description: '',
                        width: 150.0,
                        height: 50.0,
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      CharactfolioCardAsset1(
                        ch_image: 'assets/images/levelsTraitsBox.png', 
                        ch_description: '',
                        width: 175.0,
                        height: 120.0,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Column(
                children: [
                  CharactfolioCardAsset1(
                    ch_image: 'assets/images/aboutMeParagraph.png',
                    ch_description: '',
                    width: 520.0,
                    height: 320.0,
                  ),
                  CharactfolioButton(
                    ch_imageBtton_normal: 'assets/images/bttonBackOff.png', 
                    ch_imageBtton_pressed: 'assets/images/bttonBackOn.png',
                    ch_labelBtton: 'Back',
                    width: 235.0,
                    height: 90.0, 
                    onPressed: (){
                      Navigator.pop(context, CharactfolioRoutes.home);
                    }
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}