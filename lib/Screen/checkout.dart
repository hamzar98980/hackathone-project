import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store/Screen/orderrecieve.dart';
import 'package:store/utility/colors.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          height: 20,
          child: Image.asset("assets/Images/logo_3.png"),
        ),
        title: Container(
          child: Image.asset("assets/Images/logo_text.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Container(
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 5),
            child: Container(
              child: Image.asset("assets/Images/menu.png"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 5, 0),
                    child: Container(
                      height: 50,
                      width: 150,
                      child: Text(
                        "Your Bag",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(colorconst.primary_color)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 1,
                    child: data(),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/Images/dc.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "Delivery",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height: 2,
                                  child: Image.asset(
                                    "assets/Images/rect2.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          child: const Text(
                            "Order above ₹1200 to get free delivery Shop for more ₹190",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: const Text(
                        "Rs.80",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/Images/percent.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: const Text(
                        "Apply Coupon",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset("assets/Images/rect2.png"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Container(
                      child: const Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                    child: Container(
                      child: const Text(
                        "Rs.800",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                    child: Container(
                      child: Text(
                        "Saved for later",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(colorconst.primary_color),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Container(
                      child: Text(
                        "6 items",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(colorconst.primary_color),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset(
                        "assets/Images/sage2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(
                                "Juicy WaterMelon",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 30,
                                child: Icon(
                                  Icons.bookmark,
                                  color: Color(colorconst.primary_color),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Container(
                                height: 30,
                                child: Text(
                                  "Rs.500",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 28,
                                width: 28,
                                child: Icon(Icons.add),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(
                                      colorconst.primary_color,
                                    )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 28,
                              width: 28,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset("assets/Images/icon_3.png"),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              height: 30,
                              child: Image.asset("assets/Images/del.png"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Orderrecieve(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color(colorconst.primary_color),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child: Text(
                            "Rs.1000",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class data extends StatefulWidget {
  const data({super.key});

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    final products =
        FirebaseFirestore.instance.collection("Products").snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: products,
      builder: ((BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var name = snapshot.data!.docs[index]['Name'].toString();
              var quantity = snapshot.data!.docs[index]['quantity'].toString();
              var price = snapshot.data!.docs[index]['price'].toString();
              int quan = int.parse(quantity);
              bool quancheck = false;
              if (quancheck == true) {
                quan = quan + 1;
              }

              return Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Image.asset(
                          "assets/Images/sage2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 8),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.41,
                                child: Text(
                                  name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 30,
                                  child: Icon(
                                    Icons.bookmark_outline,
                                    color: Color(colorconst.primary_color),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Container(
                                  height: 30,
                                  child: Text(
                                    "Rs.${price}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    quan++;
                                    quancheck = true;
                                  });
                                },
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  child: Icon(Icons.add),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      border: Border.all(color: Colors.black)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text(
                                  "${quan}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(
                                        colorconst.primary_color,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 28,
                                width: 28,
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child:
                                      Image.asset("assets/Images/icon_3.png"),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                height: 30,
                                child: Image.asset("assets/Images/del.png"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }
      }),
    );
  }
}
