import 'package:flutter/material.dart';
import 'package:store/Screen/product.dart';

class Prd extends StatelessWidget {
  const Prd({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width * 1,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset("assets/Images/rect.png"),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Image.asset("assets/Images/Peperomia Obtusfolia.png"),
              ),
            ),
            Positioned(
              top: 25,
              left: 35,
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "Air Purifire",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 35,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "Peperomia",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 35,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  children: [
                    Text(
                      "Rs.400",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Product(),
                            ));
                      },
                      child: Container(
                        height: 50,
                        width: 80,
                        child: Image.asset("assets/Images/add.png"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
