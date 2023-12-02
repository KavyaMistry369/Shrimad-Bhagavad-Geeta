import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../modals/translation-modal.dart';

class Hindi_Controller extends ChangeNotifier{

  List<Translation>H1=[];
  List<Translation>H2=[];
  List<Translation>H3=[];
  List<Translation>H4=[];
  List<Translation>H5=[];
  List<Translation>H6=[];
  List<Translation>H7=[];
  List<Translation>H8=[];
  List<Translation>H9=[];
  List<Translation>H10=[];
  List<Translation>H11=[];
  List<Translation>H12=[];
  List<Translation>H13=[];
  List<Translation>H14=[];
  List<Translation>H15=[];
  List<Translation>H16=[];
  List<Translation>H17=[];
  List<Translation>H18=[];


  Hindi_Controller(){
    load_JSON();
  }

  load_JSON()async{

    String respone1=await rootBundle.loadString("lib/views/assets/json/translation/translation1H.json");
    String respone2=await rootBundle.loadString("lib/views/assets/json/translation/translation2H.json");
    String respone3=await rootBundle.loadString("lib/views/assets/json/translation/translation3H.json");
    String respone4=await rootBundle.loadString("lib/views/assets/json/translation/translation4H.json");
    String respone5=await rootBundle.loadString("lib/views/assets/json/translation/translation5H.json");
    String respone6=await rootBundle.loadString("lib/views/assets/json/translation/translation6H.json");
    String respone7=await rootBundle.loadString("lib/views/assets/json/translation/translation7H.json");
    String respone8=await rootBundle.loadString("lib/views/assets/json/translation/translation8H.json");
    String respone9=await rootBundle.loadString("lib/views/assets/json/translation/translation9H.json");
    String respone10=await rootBundle.loadString("lib/views/assets/json/translation/translation10H.json");
    String respone11=await rootBundle.loadString("lib/views/assets/json/translation/translation11H.json");
    String respone12=await rootBundle.loadString("lib/views/assets/json/translation/translation12H.json");
    String respone13=await rootBundle.loadString("lib/views/assets/json/translation/translation13H.json");
    String respone14=await rootBundle.loadString("lib/views/assets/json/translation/translation14H.json");
    String respone15=await rootBundle.loadString("lib/views/assets/json/translation/translation15H.json");
    String respone16=await rootBundle.loadString("lib/views/assets/json/translation/translation16H.json");
    String respone17=await rootBundle.loadString("lib/views/assets/json/translation/translation17H.json");
    String respone18=await rootBundle.loadString("lib/views/assets/json/translation/translation18H.json");

    List All_Data1=jsonDecode(respone1);
    List All_Data2=jsonDecode(respone2);
    List All_Data3=jsonDecode(respone3);
    List All_Data4=jsonDecode(respone4);
    List All_Data5=jsonDecode(respone5);
    List All_Data6=jsonDecode(respone6);
    List All_Data7=jsonDecode(respone7);
    List All_Data8=jsonDecode(respone8);
    List All_Data9=jsonDecode(respone9);
    List All_Data10=jsonDecode(respone10);
    List All_Data11=jsonDecode(respone11);
    List All_Data12=jsonDecode(respone12);
    List All_Data13=jsonDecode(respone13);
    List All_Data14=jsonDecode(respone14);
    List All_Data15=jsonDecode(respone15);
    List All_Data16=jsonDecode(respone16);
    List All_Data17=jsonDecode(respone17);
    List All_Data18=jsonDecode(respone18);


    H1=All_Data1.map((e) => Translation.fromMap(Data: e)).toList();
    H2=All_Data2.map((e) => Translation.fromMap(Data: e)).toList();
    H3=All_Data3.map((e) => Translation.fromMap(Data: e)).toList();
    H4=All_Data4.map((e) => Translation.fromMap(Data: e)).toList();
    H5=All_Data5.map((e) => Translation.fromMap(Data: e)).toList();
    H6=All_Data6.map((e) => Translation.fromMap(Data: e)).toList();
    H7=All_Data7.map((e) => Translation.fromMap(Data: e)).toList();
    H8=All_Data8.map((e) => Translation.fromMap(Data: e)).toList();
    H9=All_Data9.map((e) => Translation.fromMap(Data: e)).toList();
    H10=All_Data10.map((e) => Translation.fromMap(Data: e)).toList();
    H11=All_Data11.map((e) => Translation.fromMap(Data: e)).toList();
    H12=All_Data12.map((e) => Translation.fromMap(Data: e)).toList();
    H13=All_Data13.map((e) => Translation.fromMap(Data: e)).toList();
    H14=All_Data14.map((e) => Translation.fromMap(Data: e)).toList();
    H15=All_Data15.map((e) => Translation.fromMap(Data: e)).toList();
    H16=All_Data16.map((e) => Translation.fromMap(Data: e)).toList();
    H17=All_Data17.map((e) => Translation.fromMap(Data: e)).toList();
    H18=All_Data18.map((e) => Translation.fromMap(Data: e)).toList();


    notifyListeners();
  }

}