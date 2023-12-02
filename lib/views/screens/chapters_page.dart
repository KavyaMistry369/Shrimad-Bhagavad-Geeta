import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_One.dart';


class Chapters_Page extends StatelessWidget {
  const Chapters_Page({super.key});

  @override
  Widget build(BuildContext context) {
    int index=ModalRoute.of(context)?.settings.arguments as int;
    Size size=MediaQuery.of(context).size;
    return Consumer<Hari_Controller>(
      builder: (context,pro,_) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
          title: Text("Adhyay - ${pro.All_Chapters[index].chapter_number}"),
          ),
          body: Container(
            child: Padding(padding: EdgeInsets.all(16),child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(child: Transform.scale(scale:1.5,child: Image.asset("${pro.images[index]}",width: 250,fit: BoxFit.cover,))),
                  SizedBox(height: 100,),
                  Container(
                    height: 100,
                    width: 400,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("${pro.All_Chapters[index].name}",style: GoogleFonts.poppins(fontSize: 20),),
                        SingleChildScrollView(scrollDirection:Axis.horizontal,child: Text("${pro.All_Chapters[index].name_meaning}",style: GoogleFonts.poppins(fontSize: 18),)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    height: 700,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${pro.All_Chapters[index].chapter_summary}",style: GoogleFonts.poppins(fontSize: 16),),
                    ),
                  ),
                ],
              ),
            ),),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            Navigator.of(context).pushNamed(pro.Routes[index]);
          },child: Icon(Icons.arrow_forward_ios)),
        );
      }
    );
  }
}
