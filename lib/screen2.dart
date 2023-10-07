import 'package:flutter/material.dart';
import 'package:quiz/screen3.dart';

class Screen2 extends StatefulWidget {
  static const String routeName = "Screen2";

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
     TabController tabController=TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35.0),
                child:  Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/Ellipse 10.png',),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Hello, Jade',
                     style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 16
                        ),
                        ),
                        Text(
                          'Ready to workout?',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ],
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Frame 3466506.png'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Workout Programs",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              TabBar(
                  labelColor: Colors.black,
                 indicatorColor: Colors.blueGrey,
                  controller: tabController,
                  tabs: const [
                    Tab(text: "All Type"),
                    Tab(text: "FullBody",),
                    Tab(text: "Upper",),
                    Tab(text:"Lower"),
                  ]
              ),
              Container(
                width: double.maxFinite,
                height: 800,
                child: TabBarView(
                  controller: tabController,
                  children:  [
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 25,),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ChoiceChip(
                                        label: Text("7 Days"),
                                        selected: true,
                                        backgroundColor: Colors.white,
                                        selectedColor: Colors.white,

                                      ),
                                      SizedBox(height: 5),
                                      Text('Morning Yoga\n'
                                          'Improve mental focus\n'
                                          '30 mins'),
                                    ],
                                  ),
                                  const SizedBox(width: 40),
                                  Image.asset("assets/images/[removal 2.png"),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25,),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ChoiceChip(
                                        label: Text("3 Days"),
                                        selected: true,
                                        backgroundColor: Colors.white,
                                        selectedColor: Colors.white,
                                      ),
                                      SizedBox(height: 5),
                                      Text('Plank Exercise\n''Improve posture and\n stability.\n''30 mins'),
                                    ],
                                  ),
                                  Image.asset("assets/images/pngwing 1.png"),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25,),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ChoiceChip(
                                        label: Text("7 Days"),
                                        selected: true,
                                        backgroundColor: Colors.white,
                                        selectedColor: Colors.white,
                                      ),
                                      SizedBox(height: 5),
                                      Text('Morning Yoga\n'
                                          'Improve mental focus\n'
                                          '30 mins'),
                                    ],
                                  ),
                                  const SizedBox(width: 40),
                                  Image.asset("assets/images/[removal 2.png"),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25,),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ChoiceChip(
                                        label: Text("3 Days"),
                                        selected: true,
                                        backgroundColor: Colors.white,
                                        selectedColor: Colors.white,
                                      ),
                                      SizedBox(height: 5),
                                      Text('Plank Exercise\n''Improve posture and\n stability.\n''30 mins'),
                                    ],
                                  ),
                                  Image.asset("assets/images/pngwing 1.png"),
                                ],
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return  Screen3();
                                }));
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.blue),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text('Go To Screen 3',style: TextStyle( color: Colors.pink,),),
                            ),
                          ],
                        ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 25,),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ChoiceChip(
                                      label: Text("7 Days"),
                                      selected: true,
                                      backgroundColor: Colors.white,
                                      selectedColor: Colors.white,

                                    ),
                                    SizedBox(height: 5),
                                    Text('Morning Yoga\n'
                                        'Improve mental focus\n'
                                        '30 mins'),
                                  ],
                                ),
                                const SizedBox(width: 40),
                                Image.asset("assets/images/[removal 2.png"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25,),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ChoiceChip(
                                      label: Text("3 Days"),
                                      selected: true,
                                      backgroundColor: Colors.white,
                                      selectedColor: Colors.white,
                                    ),
                                    SizedBox(height: 5),
                                    Text('Plank Exercise\n''Improve posture and\n stability.\n''30 mins'),
                                  ],
                                ),
                                Image.asset("assets/images/pngwing 1.png"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25,),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ChoiceChip(
                                      label: Text("7 Days"),
                                      selected: true,
                                      backgroundColor: Colors.white,
                                      selectedColor: Colors.white,
                                    ),
                                    SizedBox(height: 5),
                                    Text('Morning Yoga\n'
                                        'Improve mental focus\n'
                                        '30 mins'),
                                  ],
                                ),
                                const SizedBox(width: 40),
                                Image.asset("assets/images/[removal 2.png"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25,),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return  Screen3();
                              }));
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Go To Screen 3',style: TextStyle( color: Colors.pink,),),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 25,),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ChoiceChip(
                                      label: Text("7 Days"),
                                      selected: true,
                                      backgroundColor: Colors.white,
                                      selectedColor: Colors.white,

                                    ),
                                    SizedBox(height: 5),
                                    Text('Morning Yoga\n'
                                        'Improve mental focus\n'
                                        '30 mins'),
                                  ],
                                ),
                                const SizedBox(width: 40),
                                Image.asset("assets/images/[removal 2.png"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25,),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ChoiceChip(
                                      label: Text("3 Days"),
                                      selected: true,
                                      backgroundColor: Colors.white,
                                      selectedColor: Colors.white,
                                    ),
                                    SizedBox(height: 5),
                                    Text('Plank Exercise\n''Improve posture and\n stability.\n''30 mins'),
                                  ],
                                ),
                                Image.asset("assets/images/pngwing 1.png"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25,),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return  Screen3();
                              }));
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Go To Screen 3',style: TextStyle( color: Colors.pink,),),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 25,),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ChoiceChip(
                                      label: Text("7 Days"),
                                      selected: true,
                                      backgroundColor: Colors.white,
                                      selectedColor: Colors.white,

                                    ),
                                    SizedBox(height: 5),
                                    Text('Morning Yoga\n'
                                        'Improve mental focus\n'
                                        '30 mins'),
                                  ],
                                ),
                                const SizedBox(width: 40),
                                Image.asset("assets/images/[removal 2.png"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25,),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return  Screen3();
                              }));
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Go To Screen 3',style: TextStyle( color: Colors.pink,),),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey[400],
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: '•',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/navigation-pointer-01.png'),
              label: '•',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/bar-chart-07.png'),
            label: '•',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: '•',
          ),
        ],
      ),
    );
  }
}
