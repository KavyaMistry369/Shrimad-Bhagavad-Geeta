import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_One.dart';
import 'package:shrimad_bhagvad_geeta_app/modals/chapter_modals.dart';
import 'package:shrimad_bhagvad_geeta_app/utils/route_utils.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adhyays"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(Myroutes.favorite);
          }, icon: Icon(Icons.favorite_outline_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<Hari_Controller>(
          builder: (context,provider, child) {
            return provider.All_Chapters.isNotEmpty?ListView.builder(itemCount:provider.All_Chapters.length,itemBuilder: (context, index) {
              Chapters data = provider.All_Chapters[index];
              return Card(
                child: ListTile(
                  leading: Text(data.chapter_number.toString(),style: GoogleFonts.poppins(),),
                  title: Text(data.name,style: GoogleFonts.poppins(),),
                  subtitle: Text(data.name_meaning,style: GoogleFonts.poppins(),),
                  trailing: IconButton(onPressed: (){
                    Navigator.of(context).pushNamed(Myroutes.chapters,arguments: index);
                  }, icon: Icon(Icons.arrow_forward_ios)),
                ),
              );
            }):Center(child: CircularProgressIndicator(),);
          },
        ),
      ),
    );
  }
}
