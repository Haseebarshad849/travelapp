import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/flag.png',
                    width: 28.0,
                    height: 25.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    'Pakistan',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cardo',
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    width: 18.0,
                    height: 18.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
              //==================FOR SPACING=================
              SizedBox(
                height: 20.0,
              ),

              //=================PARAGRAPH===================
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text('Minar-e-Pakistan',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cardo',
                    )),
              ),

              //==================FOR SPACING=================
              SizedBox(
                height: 12.0,
              ),
              //=================PARAGRAPH===================
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Minar-e-Pakistan is a minar which was built to commerate the day, when the pakistan resolution was passed on Minto Park. \nThe Location was originally known as Minto Park.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Cardo',
                    color: Colors.grey[600],
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Stack(
                  children: [
                    SizedBox(
                      width: 350.0,
                      height: 280.0,
                    ),
                    Container(
                      width: 250.0,
                      height: 280.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/paklogo.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160.0,
                      left: 200.0,
                      child: Material(
                        elevation: 8.0,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              Text(
                                'Like',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              //=================PARAGRAPH===================
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Beautiful Spots',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cardo',
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 18.0, top: 18.0),
                child: SizedBox(
                  height: 250.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      cardItemWidget(context, "assets/pic1.jpg",
                          "Faisal Masjid", "30 Booking"),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, "assets/pic3.jpg", "Kyber pass",
                          "28 Booking"),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                      cardItemWidget(context, "assets/pic4.jpg",
                          "Badshahi Masjid", "110 Booking"),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardItemWidget(
      BuildContext context, String img, String loc, String booking) {
    return GestureDetector(
      child: Container(
        width: 280.0,
        height: 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.black12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(img),
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  left: 230.0,
                  child: Column(
                    children: [
                      Text(
                        '2.0',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                        ),
                      ),
                      Text(
                        'KM',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  left: 240.0,
                  child: Material(
                    elevation: 8.0,
                    shadowColor: Colors.grey,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        //size: 26,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 8.0),
              child: Text(
                loc,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cardo',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
