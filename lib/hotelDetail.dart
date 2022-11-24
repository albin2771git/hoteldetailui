import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Image.network(
                    'https://images.pexels.com/photos/2030119/pexels-photo-2030119.jpeg?auto=compress&cs=tinysrgb&w=600',
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        "DETAIL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 240),
                    child: Text(
                      "Crown Plaza \n Kochi,Kerala",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300, left: 30),
                    child: Container(
                      width: 110,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        "8.4/85 reviews",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  Positioned(
                      bottom: 30,
                      right: 18,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          size: 23,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 35, right: 35),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.purple,
                                  size: 17,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "8 km to lulu mall",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money,
                                  size: 16,
                                  color: Colors.purple,
                                ),
                                Text(
                                  "200",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              "/per night",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                              left: 120,
                              right: 120,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                // color: Colors.black87,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 320),
                      child: Text(
                        "DESCRIPTION",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Crowne Plaza Kochi is ideally located on the new business district of city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.The hotel offers 269 spacious business rooms and suites with excellent views of the backwaters and the city. Our variety of authentic culinary outlets, extensive spa and leisure facilities, and high-tech meeting spaces that can accommodate up to 900 people, all within a tranquil waterfront setting, makes Crowne Plaza Kochi the preferred international brand for business, leisure and events.")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: 0,
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "favorites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ]),
    );
  }
}
