import 'package:flutter/material.dart';
import 'package:real_esate_ui/ui/widget/search_bar.dart';
import 'package:real_esate_ui/core/model/constants.dart';
import 'package:real_esate_ui/core/model/house.dart';
import 'detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //color: Colors.grey[100],
          child: Stack(
            children: [
              // Container()
              Container(
                height: MediaQuery.of(context).size.height / 6,
                color: kDefaultColor,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text('Real Estate UI',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0)),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://scontent.fpnh10-1.fna.fbcdn.net/v/t1.0-9/101716832_2779781565463978_2961489908598931490_o.jpg?_nc_cat=102&_nc_sid=09cbfe&_nc_ohc=vPU1zpn4H1YAX-v4N_V&_nc_ht=scontent.fpnh10-1.fna&oh=783b0c87ded95f0171a84250dd1e07f8&oe=5F814277'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 8,
                    left: 10.0,
                    right: 10.0),
                child: Column(
                  children: [
                    SearchField(),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Houses in Cambodia',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.5,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: houseList.length,
                            itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 5.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Detail(houseList[index]),
                                    ),
                                  );
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          kDefaultRadius)),
                                  elevation: 2,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              kDefaultRadius),
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[300],
                                                  spreadRadius: 5.0,
                                                  blurRadius: 5.0,
                                                ),
                                              ],
                                            ),
                                            child: Hero(
                                              tag: "${houseList[index].id}",
                                              child: Image.network(
                                                  houseList[index].imgUrl,
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              '\$ ${houseList[index].price}',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  size: 10.0,
                                                ),
                                                Text(
                                                  houseList[index].location,
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.hotel,
                                                  size: 10.0,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  houseList[index]
                                                      .bed
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Icon(
                                                  Icons
                                                      .airline_seat_recline_normal,
                                                  size: 10.0,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  houseList[index]
                                                      .bathrooms
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 40.0),
                                            child: Container(
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    fav = !fav;
                                                  });
                                                },
                                                child: Icon(
                                                    fav
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
