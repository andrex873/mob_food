import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTab extends StatefulWidget {
  @override
  _FoodTabState createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildListItem('Sweet hot dog', 4.0, '6', 'assets/hotdog.png'),
          _buildListItem('Peperoni Pizza', 12.0, '6', 'assets/pizza.png'),
        ],
      ),
    );
  }

  _buildListItem(String foodName, double rating, String price, String imagePath) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 210.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Color(0XFFFFE3DF)
                    ),
                    child: Center(child: Image.asset(imagePath, height: 50.0, width: 50.0,)),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: GoogleFonts.notoSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400
                      )),
                      Row(
                        children: <Widget>[
                          Text('\$ $price', style: GoogleFonts.notoSans(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(
                              color: Color(0XFFF68D7F)
                            )
                          ),),
                          SizedBox(width: 3.0),
                          Text(
                            '18',
                            style: GoogleFonts.notoSans(
                              fontSize: 12.0,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w600,
                              textStyle: TextStyle(color: Colors.grey.withOpacity(0.4))
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              heroTag: foodName,
              mini: true,
              backgroundColor: Color(0XFFFE7D6A),
              onPressed: () {},
              child: Center(
                child: Icon(Icons.add, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
