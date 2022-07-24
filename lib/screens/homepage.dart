// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:campusacademy_app/constants.dart';
import 'package:campusacademy_app/models/Product.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:campusacademy_app/widget_function.dart';
import 'package:campusacademy_app/components/ItemCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// pagecontroller
  final _controller = PageController();
  card(
      {required String webinar,
      required String timewebinar,
      required Color Color}) {}
  get index => null;

  @override
  Widget build(BuildContext context) {
    const double padding = 25;
    final sidepadding = EdgeInsets.symmetric(horizontal: padding);
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(children: [
              //app bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Row(
                  children: const [
                    Text("Upcoming Webinar",
                        style: TextStyle(
                            color: kTexttitle,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 25),
              //cards
              Container(
                height: 170,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    card(
                      webinar: "How to create Website for business",
                      timewebinar:
                          "learn how to make a website that is useful for business and increase company sales",
                      Color: kcontainer,
                    ),
                    card(
                      webinar: "Learning Python for data analysis",
                      timewebinar:
                          "Python can be used on a server to create web applications",
                      Color: kcontainer2,
                    ),
                    card(
                      webinar: "How to become Digital Marketing",
                      timewebinar:
                          "Digital marketing can be a crucial tool to grow a business.",
                      Color: kcontainer,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
              addVerticalSpace(padding),
              Row(
                children: [
                  Padding(
                    padding: sidepadding,
                    child: Text(
                      "Recommended Webinar",
                      style: TextStyle(
                          color: kTexttitle,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              addVerticalSpace(padding),
              // 4 card -> Recommended websinar
              Column(
                children: [
                  Item_Card(
                    images: products[0].image,
                    timewebinarhome: products[0].times,
                    titlewebinar: products[0].title,
                    shortestdes: products[0].Shortdescription,
                    product: products[0],
                  ),
                ],
              ),

              addVerticalSpace(padding),
              Item_Card(
                images: products[1].image,
                timewebinarhome: products[1].times,
                titlewebinar: products[1].title,
                shortestdes: products[1].Shortdescription,
                product: products[1],
              ),
              addVerticalSpace(padding),
              Item_Card(
                images: products[2].image,
                timewebinarhome: products[2].times,
                titlewebinar: products[2].title,
                shortestdes: products[2].Shortdescription,
                product: products[2],
              ),
              addVerticalSpace(padding),
              Item_Card(
                images: products[3].image,
                timewebinarhome: products[3].times,
                titlewebinar: products[3].title,
                shortestdes: products[3].Shortdescription,
                product: products[3],
              ),

              // Design thinking fundamental

              // Figma prototyping

              // User Behavior research

              // How to market products
            ]),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.lightBlue[400],
              activeColor: Colors.white,
              tabBackgroundColor: Colors.lightBlue,
              padding: EdgeInsets.all(10),
              gap: 8,
              onTabChange: (index) {
                print(index);
              },
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.checklist_rounded,
                  text: "Category",
                ),
                GButton(
                  icon: Icons.people_alt_outlined,
                  text: "Profile",
                ),
              ],
            ),
          ),
        ));
  }
}
