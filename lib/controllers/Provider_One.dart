import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:shrimad_bhagvad_geeta_app/modals/chapter_modals.dart';
import 'package:shrimad_bhagvad_geeta_app/modals/translation-modal.dart';
import 'package:shrimad_bhagvad_geeta_app/modals/verses_modal.dart';

class Hari_Controller extends ChangeNotifier{


  List<String>bg=[
    "lib/views/assets/images/101.jpg",
    "lib/views/assets/images/102.jpg",
    "lib/views/assets/images/103.jpg",
    "lib/views/assets/images/104.jpeg",
    "lib/views/assets/images/105.jpeg",
    "lib/views/assets/images/106.jpeg",
    "lib/views/assets/images/107.jpeg",
    "lib/views/assets/images/108.jpeg",
    "lib/views/assets/images/109.jpeg",
    "lib/views/assets/images/110.jpeg",
    "lib/views/assets/images/111.jpeg",
    "lib/views/assets/images/112.jpeg",
    "lib/views/assets/images/113.jpeg",
    "lib/views/assets/images/114.jpeg",
    "lib/views/assets/images/115.jpeg",
    "lib/views/assets/images/116.jpeg",
    "lib/views/assets/images/117.jpeg",
    "lib/views/assets/images/118.jpeg",
    "lib/views/assets/images/119.jpeg",
    "lib/views/assets/images/120.jpeg",
  ];

  List<Chapters>All_Chapters=[];
  List<Verses>All_Verses1=[];
  List<Verses>All_Verses2=[];
  List<Verses>All_Verses3=[];
  List<Verses>All_Verses4=[];
  List<Verses>All_Verses5=[];
  List<Verses>All_Verses6=[];
  List<Verses>All_Verses7=[];
  List<Verses>All_Verses8=[];
  List<Verses>All_Verses9=[];
  List<Verses>All_Verses10=[];
  List<Verses>All_Verses11=[];
  List<Verses>All_Verses12=[];
  List<Verses>All_Verses13=[];
  List<Verses>All_Verses14=[];
  List<Verses>All_Verses15=[];
  List<Verses>All_Verses16=[];
  List<Verses>All_Verses17=[];
  List<Verses>All_Verses18=[];

  List Favorites_list=[];


  bool isDark=false;

  List<String>Routes=[
    "Verses1_Page",
    "Verses2_Page",
    "Verses3_Page",
    "Verses4_Page",
    "Verses5_Page",
    "Verses6_Page",
    "Verses7_Page",
    "Verses8_Page",
    "Verses9_Page",
    "Verses10_Page",
    "Verses11_Page",
    "Verses12_Page",
    "Verses13_Page",
    "Verses14_Page",
    "Verses15_Page",
    "Verses16_Page",
    "Verses17_Page",
    "Verses18_Page",
  ];

  List images=[
    "lib/views/assets/images/1.jpg",
    "lib/views/assets/images/2.jpg",
    "lib/views/assets/images/3.jpg",
    "lib/views/assets/images/4.jpg",
    "lib/views/assets/images/5.jpg",
    "lib/views/assets/images/6.jpg",
    "lib/views/assets/images/7.jpg",
    "lib/views/assets/images/8.jpg",
    "lib/views/assets/images/9.jpg",
    "lib/views/assets/images/10.jpg",
    "lib/views/assets/images/11.jpg",
    "lib/views/assets/images/12.jpg",
    "lib/views/assets/images/13.jpg",
    "lib/views/assets/images/14.jpg",
    "lib/views/assets/images/15.jpg",
    "lib/views/assets/images/16.jpg",
    "lib/views/assets/images/17.jpg",
    "lib/views/assets/images/18.jpg",
  ];

  change_theme(){
    isDark=!isDark;
    notifyListeners();
  }

  Hari_Controller(){
    load_my_JSON();
    print("*****************Load******************");
  }

  load_my_JSON()async{

    String res=await rootBundle.loadString("lib/views/assets/json/chapters.json") ;
    String res1=await rootBundle.loadString("lib/views/assets/json/verses/verses1.json") ;
    String res2=await rootBundle.loadString("lib/views/assets/json/verses/verses2.json") ;
    String res3=await rootBundle.loadString("lib/views/assets/json/verses/verses3.json") ;
    String res4=await rootBundle.loadString("lib/views/assets/json/verses/verses4.json") ;
    String res5=await rootBundle.loadString("lib/views/assets/json/verses/verses5.json") ;
    String res6=await rootBundle.loadString("lib/views/assets/json/verses/verses6.json") ;
    String res7=await rootBundle.loadString("lib/views/assets/json/verses/verses7.json") ;
    String res8=await rootBundle.loadString("lib/views/assets/json/verses/verses8.json") ;
    String res9=await rootBundle.loadString("lib/views/assets/json/verses/verses9.json") ;
    String res10=await rootBundle.loadString("lib/views/assets/json/verses/verses10.json") ;
    String res11=await rootBundle.loadString("lib/views/assets/json/verses/verses11.json") ;
    String res12=await rootBundle.loadString("lib/views/assets/json/verses/verses12.json") ;
    String res13=await rootBundle.loadString("lib/views/assets/json/verses/verses13.json") ;
    String res14=await rootBundle.loadString("lib/views/assets/json/verses/verses14.json") ;
    String res15=await rootBundle.loadString("lib/views/assets/json/verses/verses15.json") ;
    String res16=await rootBundle.loadString("lib/views/assets/json/verses/verses16.json") ;
    String res17=await rootBundle.loadString("lib/views/assets/json/verses/verses17.json") ;
    String res18=await rootBundle.loadString("lib/views/assets/json/verses/verses18.json") ;


    List allData=jsonDecode(res);
    List allData1=jsonDecode(res1);
    List allData2=jsonDecode(res2);
    List allData3=jsonDecode(res3);
    List allData4=jsonDecode(res4);
    List allData5=jsonDecode(res5);
    List allData6=jsonDecode(res6);
    List allData7=jsonDecode(res7);
    List allData8=jsonDecode(res8);
    List allData9=jsonDecode(res9);
    List allData10=jsonDecode(res10);
    List allData11=jsonDecode(res11);
    List allData12=jsonDecode(res12);
    List allData13=jsonDecode(res13);
    List allData14=jsonDecode(res14);
    List allData15=jsonDecode(res15);
    List allData16=jsonDecode(res16);
    List allData17=jsonDecode(res17);
    List allData18=jsonDecode(res18);


    All_Chapters=allData.map((e) => Chapters.fromMap(data: e)).toList();
    All_Verses1=allData1.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses2=allData2.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses3=allData3.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses4=allData4.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses5=allData5.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses6=allData6.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses7=allData7.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses8=allData8.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses9=allData9.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses10=allData10.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses11=allData11.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses12=allData12.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses13=allData13.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses14=allData14.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses15=allData15.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses16=allData16.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses17=allData17.map((e) => Verses.fromMap(data: e)).toList();
    All_Verses18=allData18.map((e) => Verses.fromMap(data: e)).toList();

    notifyListeners();
  }

}