import 'package:flutter/material.dart';
import 'package:real_esate_ui/all_export.dart';

class HouseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: houseList.length,
          itemBuilder: (context, index) => Container(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(houseList[index]),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kDefaultRadius)),
                elevation: 1,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(kDefaultRadius),
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
                            child: Image.network(houseList[index].imgUrl,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$ ${houseList[index].price}',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16.0,
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
                                    fontWeight: FontWeight.bold),
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
                                houseList[index].bed.toString(),
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.airline_seat_recline_normal,
                                size: 10.0,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                houseList[index].bathrooms.toString(),
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Container(
                            child: InkWell(
                              onTap: () {},
                              child: Icon(Icons.favorite_border,
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
    );
  }
}
