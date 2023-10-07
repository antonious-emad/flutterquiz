import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quiz/providers/settings_provider.dart';

class Screen3 extends StatefulWidget {
  static const String routeName = "Screen3";

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int index = 0;
  bool test1=false;
  bool test2=false;
  bool test3=false;
  bool test4=false;
  Color color=Colors.white;
  List imageList = [
    {"id": 1, "image_path": 'assets/images/Frame screen3.png'},
    {"id": 2, "image_path": 'assets/images/Frame screen3 2.png'},
  ];

  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  late SettingsProvider settingsProvider;

  @override
  Widget build(BuildContext context) {
    settingsProvider=Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/imageonscrenn3.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "AliceCare",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                labelText: 'Articles, Video, Audio and More,...',
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChipTheme(
                    data: ChipTheme.of(context).copyWith(backgroundColor:Color(0xffE4E7EC)),
                    child:  ChoiceChip(
                      label: const Text(
                        'Discover',
                        style: TextStyle(color: Colors.purple),
                      ),
                      selectedColor: Color(0xffF4EBFF ),
                      backgroundColor: Color(0xffE4E7EC),
                      onSelected: (bool value){
                        setState(() {
                          test1=value;
                        });
                      },
                      selected:test1,

                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: Text(
                      'News',
                      style: TextStyle(color: Colors.purple),
                    ),
                    selectedColor: Color(0xffF4EBFF ),
                    backgroundColor: Color(0xffE4E7EC),
                    onSelected: (bool value){
                      setState(() {
                        test2=value;
                      });
                    },
                    selected:test2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: Text(
                      'Most Viewed',
                      style: TextStyle(color: Colors.purple),
                    ),
                    selectedColor: Color(0xffF4EBFF ),
                    backgroundColor: Color(0xffE4E7EC),
                    onSelected: (bool value){
                      setState(() {
                        test3=value;
                      });
                    },
                    selected:test3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: Text(
                      'Saved',
                      style: TextStyle(color: Colors.purple),
                    ),
                    selectedColor: Color(0xffF4EBFF ),
                    backgroundColor: Color(0xffE4E7EC),
                    onSelected: (bool value){
                      setState(() {
                        test4=value;
                      });
                    },
                    selected:test4,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot topics",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.purple,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 1.7,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  // setState(() {
                  //   currentIndex = index;
                  // });
                  settingsProvider.changescreenthreeindex(index);
                  currentIndex=settingsProvider.screenthreeindex;
                },
              ),
              items: imageList
                  .map(
                      (item) =>Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 5.0, color: Colors.transparent),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child:  Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  )

              )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController?.animateToPage(entry.key),
                  child: Container(
                    width: 6.0,
                    height: 6.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness ==
                            Brightness.dark
                            ? Colors.white
                            : const Color(0XFF98A2B3))
                            .withOpacity(currentIndex == entry.key ? 1.0 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10,),
            const Row(children: [
              Text(
                'Get Tips',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ]),
            const SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset('assets/images/Frame dpc.png',fit: BoxFit.fitHeight,)),
                ],
              ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cycle Phases and Period",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey[400],
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.today_outlined), label: 'Today'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/Icon.png'), label: 'Insights'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_outlined), label: 'Chat'),
        ],
      ),
    );
  }
}
