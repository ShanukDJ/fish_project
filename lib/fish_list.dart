import 'package:fish/view_fish.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FishList extends StatefulWidget {
  const FishList({Key? key}) : super(key: key);


  @override
  State<FishList> createState() => _FishListState();
}

class _FishListState extends State<FishList> {

  int _counter = 0;

  late List<String?> cardImages = [
    "assets/images/camallanus/camallanus_worm.png",
    "assets/images/columnaris/columnaris.jpg",
    "assets/images/finTail/fin_tail_rot.jpg",
    "assets/images/holeInHead/hole_in_head_body_hexamitiasis.jpeg",
    "assets/images/fishTuberculosis/fish_tuberculosis.jpg",
    "assets/images/maleDropsy/dropsy.jpg",
    "assets/images/redBlood/Guppy-Red-Blood-Spot_.jpg",
    "assets/images/whiteSpots/White-spots-on-freshwater-fish-scales-from-ich.jpg",
  ];

  late List<String?> names = [
   "Camallanus",
    "Columnaris",
    "Fin Tail",
    "Fish Tuberculosis",
    "Hole In Head",
    "Dropsy",
    "Red Blood",
    "White Spots",

  ];


  late List<String?> camallanus = [
    "assets/images/camallanus/camallanus_worm.png",
    "assets/images/camallanus/Camallanus-Worms.jpg",
  ];

  late List<String?> columnaris = [
    "assets/images/columnaris/columnaris.jpg",
    "assets/images/columnaris/columnaris2.jpg",
    "assets/images/columnaris/columnaris_fungus_infection.jpg",
  ];

  late List<String?> finTail = [
    "assets/images/finTail/fin_tail_rot.jpg",
    "assets/images/finTail/Guppy-Fin-Rot.jpeg",
    "assets/images/finTail/Mild-Guppy-Fin-Rot.jpg",
  ];

  late List<String?> holeInHead = [
    "assets/images/holeInHead/hole_in_head_body_hexamitiasis.jpeg",
  ];

  late List<String?> fishTuberculosis = [
    "assets/images/fishTuberculosis/fish_tuberculosis.jpg",
    "assets/images/fishTuberculosis/guppy-fish-tuberculosis.jpg",
  ];

  late List<String?> maleDropsy = [
    "assets/images/maleDropsy/dropsy.jpg",
    "assets/images/maleDropsy/Guppy-Fish-Dropsy-Disease.jpg",
    "assets/images/maleDropsy/guppy-male-dropsy.jpg",
  ];

  late List<String?> redBlood = [
    "assets/images/redBlood/Guppy-Red-Blood-Spot_.jpg",
    "assets/images/redBlood/red spot.jpg",
    "assets/images/redBlood/red_blood_spots.jpg",
    "assets/images/redBlood/Red-Blood-Spot.jpg",
  ];

  late List<String?> whiteSpots = [
    "assets/images/whiteSpots/white-spots-swordtail-fish.jpg",
    "assets/images/whiteSpots/White-spots-on-freshwater-fish-scales-from-ich.jpg",
    "assets/images/whiteSpots/white_spots.jpg",
  ];

  late List<String?> descriptions = [
    "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    "2. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    "3. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    "4. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    "5. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    "6. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    "7. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    "8. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fish List"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        itemCount: 8,
        // physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 11,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ViewFish(
                            images: index == 0 ? camallanus : index == 1
                                ? columnaris
                                : index == 2 ? finTail : index == 3
                                ? fishTuberculosis
                                : index == 4 ? holeInHead : index == 5
                                ? maleDropsy
                                : index == 6 ? redBlood : index == 7
                                ? whiteSpots:camallanus,
                            description: descriptions[index].toString(),
                          name: names[index].toString(),
                ),
              ),);
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Text(
                      names[index].toString(),
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Image.asset(
                        cardImages[index].toString(),
                        fit: BoxFit.cover,
                        height: 150,
                        width: 200,
                      ),
                      title: Column(
                        children: [
                          Text(
                            'Symptoms',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            descriptions[index].toString(),
                            style: TextStyle(
                                fontSize: 12
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}