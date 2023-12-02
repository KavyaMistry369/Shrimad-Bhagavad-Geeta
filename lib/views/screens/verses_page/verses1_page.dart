import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_One.dart';
import 'package:shrimad_bhagvad_geeta_app/utils/route_utils.dart';
import 'package:tcard/tcard.dart';

class Verses1_Page extends StatelessWidget {
  const Verses1_Page({super.key});

  @override
  Widget build(BuildContext context) {
    TCardController cardController = TCardController();
    return Consumer<Hari_Controller>(
      builder: (context,provider,_) {
        return Scaffold(
          appBar: AppBar(
          ),
          body:TCard(
            controller: cardController,
              onForward: (index,info){
                print(index);
              },
              onBack: (index,info){
                print(index);
              },
              onEnd: (){
                print('end');
              },
              size: Size(700, 700),
              cards: List.generate(provider.All_Verses1.length, (index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          height: 700,
                          width: 700,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Opacity(
                                  opacity: 0.4,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pushNamed(Myroutes.verse1,arguments: index);
                                    },
                                      child: Image.asset("${provider.bg[index%20]}",fit: BoxFit.fitHeight,)))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text("${provider.All_Verses1[index].text}",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 20,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
                        ],
                      ),
                    ),
                  ],
                );
              })),
          bottomNavigationBar:       Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  print(cardController);
                  cardController.back();
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              IconButton(
                onPressed: () {
                  print(cardController);
                  cardController.reset();
                },
                icon: Icon(Icons.lock_reset),
              ),
              IconButton(
                onPressed: () {
                  print(cardController);
                  cardController.forward();
                },
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        );
      }
    );
  }
}

// Padding(padding: EdgeInsets.all(16),child: Consumer<Hari_Controller>(
// builder: (context,provider,_) {
// return (provider.All_Verses1.isNotEmpty)?ListView.builder(itemCount:provider.All_Verses1.length,itemBuilder: (context, index) {
// Verses data=provider.All_Verses1[index];
// return GestureDetector(
// onDoubleTap: (){
// ScaffoldMessenger.of(context).showSnackBar(
// SnackBar(content: Text("you ❤️ the verse ${data.title}",style: TextStyle(fontSize: 16,color: Colors.white),),backgroundColor: Colors.green),
// );
// provider.Favorites_list.add(index);
// },
// child: Card(
// child:ListTile(
// leading: Text(data.verse_number.toString()),
// title: Text(data.title),
// trailing: IconButton(onPressed: (){
// Navigator.of(context).pushNamed(Myroutes.verse1,arguments: index);
// }, icon: Icon(Icons.arrow_forward_ios)),
// ),
// ),
// );
// }):Center(child: CircularProgressIndicator(),);
// }
// ),),
