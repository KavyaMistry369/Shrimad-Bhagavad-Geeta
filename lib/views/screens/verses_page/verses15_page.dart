import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_One.dart';
import 'package:shrimad_bhagvad_geeta_app/modals/verses_modal.dart';
import 'package:tcard/tcard.dart';

import '../../../utils/route_utils.dart';

class Verses15_Page extends StatelessWidget {
  const Verses15_Page({super.key});

  @override
  Widget build(BuildContext context) {
    TCardController cardController = TCardController();
    return Consumer<Hari_Controller>(
        builder: (context, provider, _) {
          return Scaffold(
            appBar: AppBar(
            ),
            body: TCard(
                controller: cardController,
                onForward: (index, info) {
                  print(index);
                },
                onBack: (index, info) {
                  print(index);
                },
                onEnd: () {
                  print('end');
                },
                size: Size(700, 700),
                cards: List.generate(provider.All_Verses15.length, (index) {
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
                                        onTap: () {
                                          Navigator.of(context).pushNamed(
                                              Myroutes.verse15,
                                              arguments: index);
                                        },
                                        child: Image.asset(
                                          "${provider.bg[index % 20]}",
                                          fit: BoxFit.fitHeight,)))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text(
                              "${provider.All_Verses15[index].text}",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.bold),)),
                            SizedBox(height: 20,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
                          ],
                        ),
                      ),
                    ],
                  );
                })),
            bottomNavigationBar: Row(
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
