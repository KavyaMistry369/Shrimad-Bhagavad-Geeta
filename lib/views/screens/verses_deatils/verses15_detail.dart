import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shrimad_bhagvad_geeta_app/controllers/Provider_One.dart';
import 'package:tcard/tcard.dart';

import '../../../controllers/Provider_Three.dart';
import '../../../controllers/Provider_two.dart';
import '../../../utils/route_utils.dart';

class Verses15_Deatils extends StatelessWidget {
  const Verses15_Deatils({super.key});

  @override
  Widget build(BuildContext context) {
    int index=ModalRoute.of(context)!.settings.arguments as int;
    TCardController cardController = TCardController();
    return Consumer<Hari_Controller>(
        builder: (context,pro,_) {
          return Consumer<Hari_Controller>(
              builder: (context,provider,_) {
                return Scaffold(
                  appBar: AppBar(
                  ),
                  body:TCard(controller: cardController,
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
                                          child: Image.asset("${provider.bg[index%20]}",fit: BoxFit.fitHeight,))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(child: Text("${Provider.of<Hindi_Controller>(context).H15[index].description}",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),)),
                                      Center(child: Text("${Provider.of<English_Controller>(context).E15[index].description}",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      })),
                  bottomNavigationBar:   Row(
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
    );
  }
}
