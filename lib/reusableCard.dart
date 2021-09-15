

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReuseCardWomenTops extends StatelessWidget {
  String title;
  String company;
  String price;
  String adress;



  final textStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'Atiga-Medium',
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  ReuseCardWomenTops ({
    @required this.title,
    @required  this.company,
    @required  this.price,
    @required  this.adress,

  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(

                  fit: BoxFit.fill,
                  image: AssetImage(adress)),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          RatingBar.builder(

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
          Container(
            padding: EdgeInsets.only(left: 12, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(company, style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Atiga-Medium',
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),),
                Text(title, style: textStyle),

                SizedBox(height: 5),


                // SizedBox(width: 66),



                SizedBox(height: 8),
                Text(price, style:TextStyle(
                    fontSize: 18,
                    fontFamily: 'Atiga-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.normal
                ),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
