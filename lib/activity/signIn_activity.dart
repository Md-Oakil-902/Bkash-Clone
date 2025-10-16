import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInActivity extends StatelessWidget {
  const SignInActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //language selection
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.red, width: 1),
                    backgroundColor: Colors.grey[100],
                    foregroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),

                  child: Text("বাংলা"),
                ),
              ),

              const SizedBox(height: 70),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Image.asset("lib/images/bkash.png", width: 50, height: 50),
                  Image.asset("lib/images/qrscan.png", width: 50, height: 50),
                ],
              ),

              const SizedBox(height: 40),

              Text(
                "Log in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),

              Text("to your bKash account", style: TextStyle(fontSize: 18)),

              const SizedBox(height: 40),

              TextField(
                keyboardType: TextInputType.phone,
                maxLength: 11,

                maxLines: 1,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  labelText: 'Account Number',
                  counterText: '',

                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              TextField(
                maxLength: 5,
                maxLines: 1,
                obscureText: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  hintText: 'bKash PIN',
                  labelText: 'Enter bKash PIN',
                  counterText: '',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot PIN? Try PIN Reset',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');

            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              minimumSize: const Size.fromHeight(45),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Icon(Icons.arrow_forward_sharp, color: Colors.white, size: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
