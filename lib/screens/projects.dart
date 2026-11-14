import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CharactfolioAppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 35.0,
            ),
            CharactfolioCardAsset1(
              ch_image: 'assets/images/projectsTitle.png', 
              ch_description: '',
              width: 250.0,
              height: 55.0,
            ),
            SizedBox(
              height: 25.0,
            ),
            CharactfolioCardAsset1(
              ch_image: 'assets/images/projectsParagraph.png', 
              ch_description: '',
              width: 380.0,
              height: 320.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            CharactfolioButton(
              ch_imageBtton_normal: 'assets/images/bttonBackOff.png', 
              ch_imageBtton_pressed: 'assets/images/bttonBackOn.png',
              ch_labelBtton: 'Back',
              width: 225.0,
              height: 70.0, 
              onPressed: (){
                Navigator.pop(context, CharactfolioRoutes.home);
              }
            ),
            SizedBox(
              height: 10.0,
            ),
            CharactfolioButton(
              ch_imageBtton_normal: 'assets/images/bttonBackOff.png', 
              ch_imageBtton_pressed: 'assets/images/bttonBackOn.png',
              ch_labelBtton: 'Calcuneitor App',
              width: 255.0,
              height: 70.0, 
              onPressed: (){
                urlFinder('https://github.com/deerfoster/Calcuneitor-3000.git');
              }
            ),
            const Spacer(),
            CharactfolioAnimateSprites(
              images: ['assets/images/dozy1.png', 'assets/images/dozy2.png'],
              width: 200.0,
              height: 140.0,
            )
          ],
        ),
      ),
    );
  }
}