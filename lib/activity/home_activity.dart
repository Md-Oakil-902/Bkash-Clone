import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> serviceList = [
      {'image': "lib/images/sendmoney.png", 'label': 'Send Money'},
      {'image': "lib/images/mobilerecharge.png", 'label': 'Mobile Recharge'},
      {'image': "lib/images/cashout.png", 'label': 'Cash Out'},
      {'image': "lib/images/payment.png", 'label': 'Make Payment'},

      {'image': "lib/images/addmoney.png", 'label': 'Add Money'},
      {'image': "lib/images/paybill.png", 'label': 'Pay Bill'},
      {'image': "lib/images/savings.png", 'label': 'Savings'},
      {'image': "lib/images/loan.png", 'label': 'Loan'},

      {'image': "lib/images/insurance.png", 'label': 'Insurance'},
      {'image': "lib/images/bkashtobank.png", 'label': 'Bkash to bank'},
      {'image': "lib/images/education.png", 'label': 'Education Fee'},
      {'image': "lib/images/ngo.png", 'label': 'Microfinance'},

      {'image': "lib/images/toll.png", 'label': 'Toll'},
      {'image': "lib/images/requestmoney.png", 'label': 'Request Money'},
      {'image': "lib/images/remittance.png", 'label': 'Remittance'},
      {'image': "lib/images/donation.png", 'label': 'Donation'},
    ];

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 85,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),

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
              ],
            ),
          ),

          //expended Gridview for services
          Expanded(
            
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: serviceList.length,
              itemBuilder: (context, index) {
                final item = serviceList[index];
                return Container(
                  
                  decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(item['image'], width: 50, height: 45),
                        Text(item['label'], style: TextStyle(fontSize: 13),)
                      ],
                    ),

                );
              },
            ),
          ),
        ],
      ),

      //
    );
  }
}
