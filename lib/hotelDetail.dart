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
                  right: 20,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 35, right: 35),
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
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
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
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 320),
                    child: Text(
                      "DESCRIPTION",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
              "A great hotel with all modern functionality and with a huge comfortable bed to give our guest a luxurious stay experience in a budget range of price. Our rooms are delightful, impeccably clean, high quality furnishing and fittings. All the rooms of our property are designed with a balcony to have a great city view. We mainly focus on guest satisfaction during their stay by providing on the time services as the time promised.")
        ],
      ),
    ));
  }
}
