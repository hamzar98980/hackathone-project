import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store/Components/component.dart';
import 'package:store/Screen/checkout.dart';
import 'package:store/utility/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List Tab = [
      'Top Picks',
      'Indore',
      'Outdoor',
      'Seeeds',
      'Top Picks',
      'Indore',
      'Outdoor',
      'Seeeds'
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 5),
        //   child: Container(
        //     height: 10,
        //     child: Image.asset("assets/Images/logo_3.png"),
        //   ),
        // ),
        title: Container(
          child: Image.asset("assets/Images/logo_text.png"),
        ),
        // iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          color: Color(colorconst.primary_color),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Checkout(),
                      ));
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(
                Icons.person_outline_sharp,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.38,
                    child: Image.asset("assets/Images/img1.png"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 5, 5),
                    child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            label: Text("Search"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: Icon(Icons.qr_code_scanner_rounded)),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Icon(Icons.menu_open_rounded),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey)),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Tab.length,
                      itemBuilder: (context, index) {
                        return Container(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
                          child: Text(
                            Tab[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ));
                      },
                    ),
                  ),
                ],
              ),
              Prd(),
            ],
          ),
        ),
      ),
    );
  }
}
