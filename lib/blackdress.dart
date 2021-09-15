

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled1/reusableCard.dart';

class BlackSaree extends StatelessWidget {
  final List<String> imagesList = [

    'https://images.unsplash.com/photo-1552109871-72a6d9bc2c56?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1610030469668-8e9f641aaf27?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
    'https://images.unsplash.com/photo-1552109871-65411bb81b4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE0fHx3b21hbiUyMGluJTIwc2FyZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1552109871-72a6d9bc2c56?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1610030469668-8e9f641aaf27?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
    'https://images.unsplash.com/photo-1552109871-65411bb81b4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE0fHx3b21hbiUyMGluJTIwc2FyZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Center(
            child: const Text(
              'Black Dress',
              style: TextStyle(
                fontFamily: 'Atiga-Medium',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Share')));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.45,
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: imagesList
                  .map(
                    (item) => Center(
                  child: Image.network(

                    item,
                    height: 600,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              )
                  .toList(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Filter',
                            style: TextStyle(
                              fontFamily: 'Atiga-Medium',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),

                  // SizedBox(
                  //   width: 35,
                  // ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Black',
                            style: TextStyle(
                              fontFamily: 'Atiga-Medium',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  FavoriteButton(
                    iconSize: 40,
                    //_iconSize = iconSize ?? 60.0,
                    isFavorite: true,
                    // iconDisabledColor: Colors.white,
                    valueChanged: (_isFavorite) {
                      print('Is Favorite : $_isFavorite');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Black Saree',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Atiga-Medium'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      '₹ 1999',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Atiga-Medium'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                ' Legends',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    //    fontWeight: FontWeight.w200,
                    fontFamily: 'Atiga-Medium'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 28),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 28),
              child: Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sedLorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sedDui vulputate malesuada cursus sed .Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed',
                  style: TextStyle(
                    //color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Atiga-Medium',
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),   SizedBox(
              height: 20,
            ),

            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.80,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Atiga-Medium',
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  style: ButtonStyle(
                    // elevation: MaterialStateProperty.all(8),
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text(
                    'Shipping info',
                    style: TextStyle(
                      fontFamily: 'Atiga-Medium',
                      // fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Icon(Icons.arrow_forward_ios,
                    size: 18,),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text(
                    'Support',
                    style: TextStyle(
                      fontFamily: 'Atiga-Medium',
                      // fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Icon(Icons.arrow_forward_ios,
                    size: 18,),
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                'You may also like',
                style: TextStyle(
                  fontFamily: 'Atiga-Medium',
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReuseCardWomenTops(
                    adress: 'assets/images/black saree.JPG',
                    title: 'Black Saree',
                    company: 'Legends',
                    price: '₹ 15',
                  ),
                  ReuseCardWomenTops(
                    adress: 'assets/images/pic4.JPG',
                    title: 'Golden Saree',
                    company: 'Legends',
                    price: '₹ 14',
                  ),
                  ReuseCardWomenTops(
                    adress: 'assets/images/nnew.jpg',
                    title: 'Orange Saree',
                    company: 'Legends',
                    price: '₹ 14 ',
                  ),
                  ReuseCardWomenTops(
                    adress: 'assets/images/black saree.JPG',
                    title: 'Black Saree',
                    company: 'Legends',
                    price: '₹ 15',
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
