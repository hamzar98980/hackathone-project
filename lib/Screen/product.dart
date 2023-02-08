import 'package:flutter/material.dart';
import 'package:store/Screen/checkout.dart';
import 'package:store/utility/String.dart';
import 'package:store/utility/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    checkout() {
      CollectionReference products =
          FirebaseFirestore.instance.collection('Products');
      products
          .add({
            'Name': 'Watermelon',
            'price': '600',
            'kg': '5',
            'quantity': '5'
          })
          .then((value) => print("done"))
          .catchError((e) => print(e));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Checkout(),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff9CE5CB),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Image.asset("assets/Images/logo2.png"),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 1,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Image.asset(
                          "assets/Images/rectangle.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 30,
                        bottom: 0,
                        child: Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: const Text(
                            "Air Purifire",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 30,
                        bottom: 0,
                        child: Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: const Text(
                            "Watermelon Peperomia",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left: 30,
                        bottom: 0,
                        child: Column(
                          children: [
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                "Price",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                "Rs.350",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 195,
                        left: 30,
                        bottom: 0,
                        child: Column(
                          children: [
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                "Size",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                "5.h",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 30,
                        bottom: 20,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                checkout();
                              },
                              child: Container(
                                height: 50,
                                width: 80,
                                child: Image.asset("assets/Images/add.png"),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.grey)),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.45,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Image.asset(
                            "assets/Images/sage.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 12, 0, 5),
                    child: Text(
                      'Overview',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: Image.asset("assets/Images/drop.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Column(
                                children: [
                                  Text(
                                    "250ml",
                                    style: TextStyle(
                                        color: Color(colorconst.primary_color),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "WATER",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: Image.asset("assets/Images/light.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Column(
                                children: [
                                  Text(
                                    "35-40%",
                                    style: TextStyle(
                                        color: Color(colorconst.primary_color),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    " LIGHT",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: Image.asset("assets/Images/lights.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Column(
                                children: [
                                  Text(
                                    "250gm",
                                    style: TextStyle(
                                        color: Color(colorconst.primary_color),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Fertilizer",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(50, 12, 0, 5),
                        child: Text(
                          'Plant Bio',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 12, 0, 5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(
                            conststring.prdtxt,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 5, 0, 5),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Image.asset("assets/Images/img_1.png"),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Image.asset("assets/Images/img_1.png"),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Image.asset("assets/Images/img_1.png"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
