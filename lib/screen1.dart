import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/providers/settings_provider.dart';
import 'package:quiz/shared/constant/image_slider.dart';
import 'package:quiz/widgets/my_exercise_widget.dart';

import 'botton_navigatorbar.dart';

class Screen1 extends StatefulWidget {

  static const String routeName = "Screen1";

   Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  late SettingsProvider settingsProvider;
  CarouselController? controller;
  int current = 0;

  @override
  Widget build(BuildContext context) {
    settingsProvider=Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35.0),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/Group.png',),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Moody',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    const Spacer(),
                    const Badge(
                        child: Image(
                          image: AssetImage('assets/images/notficationIcon.png'),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Sara Rose',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                "How are you feeling today?",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                alignment: Alignment.topCenter,
                'assets/images/Frame 19.png',
                width: 500,
                height: 100,
              ),
              const SizedBox(height: 40,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 150,),
                  Text(
                    "See More",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.green,),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  onPageChanged: (index, reason) {
                    settingsProvider.changescreenoneindex(index);
                    current=settingsProvider.screenoneindex;
                  },
                  aspectRatio: 2,
                ),
                items: imgList
                    .map((item) => Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 5.0, color: Colors.transparent),
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                        width: 1000,
                        height: 600,
                      ),
                    ),
                  ),
                ))
                    .toList(),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller?.animateToPage(entry.key),
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
                              .withOpacity(current == entry.key ? 1.0 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercise',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more >',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.green[700],),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              MyExerciseWidget.myFirstExerciseWidget(),
              const SizedBox(
                height: 16.0,
              ),
              MyExerciseWidget.mySecondExerciseWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottonNavigator(),
    );
  }
}
