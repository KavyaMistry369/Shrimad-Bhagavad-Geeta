import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_One.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    int index=ModalRoute.of(context)!.settings.arguments as int;
    return Consumer<Hari_Controller>(
      builder: (context,provider,_) {
        return Scaffold(
          body: Padding(padding: EdgeInsets.all(16),child: ListView.builder(itemCount:provider.Favorites_list.length,itemBuilder:(context, index) => ListTile(
            leading: Text("${index+1}"),
            title: Text("${provider.All_Verses1[index]}"),
          ),)),
        );
      }
    );
  }
}
