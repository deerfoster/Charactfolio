import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class CharactfolioAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CharactfolioAppBar({super.key});

  @override
  Widget build(BuildContext context){
    return AppBar(
        backgroundColor: CharactfolioColorsApp.color5,
        foregroundColor: CharactfolioColorsApp.color3,
        toolbarHeight: 70.0,
        elevation: 2.5,
        shadowColor: CharactfolioColorsApp.color6,
        title: SizedBox(
          child: 
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/Logo.png',
                width: 110.0,
                height: 100.0,
                ),
            ],
          ),
        ),
        leading:
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
        child: 
        CharactfolioButton(
          ch_imageBtton_normal: 'assets/images/landingAppBarBttonOff.png', 
          ch_imageBtton_pressed: 'assets/images/landingAppBarBttonOn.png', 
          onPressed: (){
            showMenu<String>(
          context: context,
          position: RelativeRect.fromLTRB(16.0, 75.0, 150.0, 0.0),
          shape:
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(
                color: CharactfolioColorsApp.color5,
                width: 6.0
              )
            ),
          items: 
          const [
            const PopupMenuItem<String>(
              value: CharactfolioRoutes.home,
              child: Text(
                'Home'
              )
            ),
            const PopupMenuItem<String>(
              value: CharactfolioRoutes.aboutMe,
              child: Text(
                'About Me'
              )
            ),
            const PopupMenuItem<String>(
              value: CharactfolioRoutes.projects,
              child: Text(
                'Projects'
              )
            ),
            const PopupMenuItem<String>(
              value: CharactfolioRoutes.developer,
              child: Text(
                'Developer'
                )
              ),
            ],
          ).then((String? selectedRoute) {
            if(selectedRoute != null &&
            context.mounted &&
            ModalRoute.of(context)?.settings.name != selectedRoute) {
              Navigator.pushNamed(context, selectedRoute);
            }
          });
        },
      ),
    ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CharactfolioButton(
              ch_imageBtton_normal: 'assets/images/developerBttonOff.png', 
              ch_imageBtton_pressed: 'assets/images/developerBttonOn.png',
              width: 145.0,
              height: 90.0, 
              onPressed: (){
                Navigator.pushNamed(context, CharactfolioRoutes.developer);
              }
            ),
          )
        ],
      );
    }
    @override
    Size get preferredSize => const Size.fromHeight(70.0);
  }