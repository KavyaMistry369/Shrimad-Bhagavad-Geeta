import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_One.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_Three.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_two.dart';
import 'package:shrimad_bhagvad_geeta_app/utils/route_utils.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/chapters_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/favorites_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/home_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses10_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses11_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses12_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses13_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses14_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses15_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses16_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses17_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses18_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses1_deatil.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses2_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses3_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses4_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses5_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses6_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses7_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses8_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_deatils/verses9_detail.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses10_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses11_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses12_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses13_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses14_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses15_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses16_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses17_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses18_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses1_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses2_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses3_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses4_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses5_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses6_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses7_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses8_page.dart';
import 'package:shrimad_bhagvad_geeta_app/views/screens/verses_page/verses9_page.dart';

void main() {
  runApp(
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Hari_Controller(),),
    ChangeNotifierProvider(create: (context) => English_Controller(),),
    ChangeNotifierProvider(create: (context) => Hindi_Controller(),),
  ],child: MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Hari_Controller>(
      builder: (context,provider,_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
            theme: provider.isDark?ThemeData(
                brightness: Brightness.light,
                colorSchemeSeed: Colors.blue,
                useMaterial3: true,
            ): ThemeData(
                brightness: Brightness.dark,
                useMaterial3: true,
            ),
          routes: {
            '/':(context) => Home_Page(),
            Myroutes.chapters:(context) => Chapters_Page(),
            Myroutes.verses1:(context) => Verses1_Page(),
            Myroutes.verses2:(context) => Verses2_Page(),
            Myroutes.verses3:(context) => Verses3_Page(),
            Myroutes.verses4:(context) => Verses4_Page(),
            Myroutes.verses5:(context) => Verses5_Page(),
            Myroutes.verses6:(context) => Verses6_Page(),
            Myroutes.verses7:(context) => Verses7_Page(),
            Myroutes.verses8:(context) => Verses8_Page(),
            Myroutes.verses9:(context) => Verses9_Page(),
            Myroutes.verses10:(context) => Verses10_Page(),
            Myroutes.verses11:(context) => Verses11_Page(),
            Myroutes.verses12:(context) => Verses12_Page(),
            Myroutes.verses13:(context) => Verses13_Page(),
            Myroutes.verses14:(context) => Verses14_Page(),
            Myroutes.verses15:(context) => Verses15_Page(),
            Myroutes.verses16:(context) => Verses16_Page(),
            Myroutes.verses17:(context) => Verses17_Page(),
            Myroutes.verses18:(context) => Verses18_Page(),
            Myroutes.favorite:(context) => Favorites(),
            Myroutes.verse1:(context) => Verses1_Deatils(),
            Myroutes.verse2:(context) => Verses2_Deatils(),
            Myroutes.verse3:(context) => Verses3_Deatils(),
            Myroutes.verse4:(context) => Verses4_Deatils(),
            Myroutes.verse5:(context) => Verses5_Deatils(),
            Myroutes.verse6:(context) => Verses6_Deatils(),
            Myroutes.verse7:(context) => Verses7_Deatils(),
            Myroutes.verse8:(context) => Verses8_Deatils(),
            Myroutes.verse9:(context) => Verses9_Deatils(),
            Myroutes.verse10:(context) => Verses10_Deatils(),
            Myroutes.verse11:(context) => Verses11_Deatils(),
            Myroutes.verse12:(context) => Verses12_Deatils(),
            Myroutes.verse13:(context) => Verses13_Deatils(),
            Myroutes.verse14:(context) => Verses14_Deatils(),
            Myroutes.verse15:(context) => Verses15_Deatils(),
            Myroutes.verse16:(context) => Verses16_Deatils(),
            Myroutes.verse17:(context) => Verses17_Deatils(),
            Myroutes.verse18:(context) => Verses18_Deatils(),
          },

          );
      }
    );
  }
}

