import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:real_esate_ui/core/model/constants.dart';
import 'package:real_esate_ui/core/model/house.dart';

class Detail extends StatelessWidget {
  final House loadedHouse;
  Detail(this.loadedHouse);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => {},
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: kDefaultColor,
                      offset: Offset(0, 1),
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              child: RaisedButton(
                color: kDefaultColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                onPressed: () {},
                child: Text(
                  'Make Appointment',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  iconTheme: IconThemeData(
                    color: kDefaultColor,
                  ),
                  expandedHeight: MediaQuery.of(context).size.height * 0.5,
                  floating: true,
                  pinned: true,
                  primary: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Hero(
                      tag: "${loadedHouse.id}",
                      child: SizedBox(
                        child: CachedNetworkImage(
                          imageUrl: loadedHouse.imgUrl,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.grey[100],
              ),
              child: SingleChildScrollView(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        loadedHouse.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          //_btnQtyRow(),
                          Row(
                            children: [
                              Icon(
                                Icons.hotel,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                loadedHouse.bed.toString(),
                                style: TextStyle(
                                    //fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.airline_seat_recline_normal,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                loadedHouse.bathrooms.toString(),
                                style: TextStyle(
                                    // fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            '\$' + loadedHouse.price.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 23,
                              color: kDefaultColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(loadedHouse.description),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
