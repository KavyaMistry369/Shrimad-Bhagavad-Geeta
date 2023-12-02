import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../modals/translation-modal.dart';

class English_Controller extends ChangeNotifier{

  List<Translation>E1=[];
  List<Translation>E2=[];
  List<Translation>E3=[];
  List<Translation>E4=[];
  List<Translation>E5=[];
  List<Translation>E6=[];
  List<Translation>E7=[];
  List<Translation>E8=[];
  List<Translation>E9=[];
  List<Translation>E10=[];
  List<Translation>E11=[];
  List<Translation>E12=[];
  List<Translation>E13=[];
  List<Translation>E14=[];
  List<Translation>E15=[];
  List<Translation>E16=[];
  List<Translation>E17=[];
  List<Translation>E18=[];


  English_Controller(){
    load_JSON();
  }

  load_JSON()async{

    String respone1=await rootBundle.loadString("lib/views/assets/json/translation/translation1E.json");
    String respone2=await rootBundle.loadString("lib/views/assets/json/translation/translation2E.json");
    String respone3=await rootBundle.loadString("lib/views/assets/json/translation/translation3E.json");
    String respone4=await rootBundle.loadString("lib/views/assets/json/translation/translation4E.json");
    String respone5=await rootBundle.loadString("lib/views/assets/json/translation/translation5E.json");
    String respone6=await rootBundle.loadString("lib/views/assets/json/translation/translation6E.json");
    String respone7=await rootBundle.loadString("lib/views/assets/json/translation/translation7E.json");
    String respone8=await rootBundle.loadString("lib/views/assets/json/translation/translation8E.json");
    String respone9=await rootBundle.loadString("lib/views/assets/json/translation/translation9E.json");
    String respone10=await rootBundle.loadString("lib/views/assets/json/translation/translation10E.json");
    String respone11=await rootBundle.loadString("lib/views/assets/json/translation/translation11E.json");
    String respone12=await rootBundle.loadString("lib/views/assets/json/translation/translation12E.json");
    String respone13=await rootBundle.loadString("lib/views/assets/json/translation/translation13E.json");
    String respone14=await rootBundle.loadString("lib/views/assets/json/translation/translation14E.json");
    String respone15=await rootBundle.loadString("lib/views/assets/json/translation/translation15E.json");
    String respone16=await rootBundle.loadString("lib/views/assets/json/translation/translation16E.json");
    String respone17=await rootBundle.loadString("lib/views/assets/json/translation/translation17E.json");
    String respone18=await rootBundle.loadString("lib/views/assets/json/translation/translation18E.json");


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


    E1=All_Data1.map((e) => Translation.fromMap(Data: e)).toList();
    E2=All_Data2.map((e) => Translation.fromMap(Data: e)).toList();
    E3=All_Data3.map((e) => Translation.fromMap(Data: e)).toList();
    E4=All_Data4.map((e) => Translation.fromMap(Data: e)).toList();
    E5=All_Data5.map((e) => Translation.fromMap(Data: e)).toList();
    E6=All_Data6.map((e) => Translation.fromMap(Data: e)).toList();
    E7=All_Data7.map((e) => Translation.fromMap(Data: e)).toList();
    E8=All_Data8.map((e) => Translation.fromMap(Data: e)).toList();
    E9=All_Data9.map((e) => Translation.fromMap(Data: e)).toList();
    E10=All_Data10.map((e) => Translation.fromMap(Data: e)).toList();
    E11=All_Data11.map((e) => Translation.fromMap(Data: e)).toList();
    E12=All_Data12.map((e) => Translation.fromMap(Data: e)).toList();
    E13=All_Data13.map((e) => Translation.fromMap(Data: e)).toList();
    E14=All_Data14.map((e) => Translation.fromMap(Data: e)).toList();
    E15=All_Data15.map((e) => Translation.fromMap(Data: e)).toList();
    E16=All_Data16.map((e) => Translation.fromMap(Data: e)).toList();
    E17=All_Data17.map((e) => Translation.fromMap(Data: e)).toList();
    E18=All_Data18.map((e) => Translation.fromMap(Data: e)).toList();

    notifyListeners();
  }

}