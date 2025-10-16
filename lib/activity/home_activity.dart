import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 85,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 1
                ,offset: Offset(0, 3)
            )
          ]
        ),

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20),
              child: Container(
                height: 40,
                width: 40,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.pink),
                  image: DecorationImage(
                    image: AssetImage('lib/images/bkash.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //name + balance section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Muhammad Oakil',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),

                    
                  ],
                ),
              ),
            ),

            // Text(
            //   'Muhammad oakil',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
