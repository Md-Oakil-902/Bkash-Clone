// import 'package:flutter/material.dart';
//
// class HomeActivity extends StatefulWidget {
//   const HomeActivity({super.key});
//
//   @override
//   State<HomeActivity> createState() => _HomeActivityState();
// }
//
// class _HomeActivityState extends State<HomeActivity>
//     with SingleTickerProviderStateMixin {
//   bool showAllService = false;
//
//   final List<Map<String, dynamic>> serviceList = [
//
//     {'image': "lib/images/sendmoney.png", 'label': 'Send Money'},
//     {'image': "lib/images/mobilerecharge.png", 'label': 'Mobile Recharge'},
//     {'image': "lib/images/cashout.png", 'label': 'Cash Out'},
//     {'image': "lib/images/payment.png", 'label': 'Make Payment'},
//
//     {'image': "lib/images/addmoney.png", 'label': 'Add Money'},
//     {'image': "lib/images/paybill.png", 'label': 'Pay Bill'},
//     {'image': "lib/images/savings.png", 'label': 'Savings'},
//     {'image': "lib/images/loan.png", 'label': 'Loan'},
//
//     {'image': "lib/images/insurance.png", 'label': 'Insurance'},
//     {'image': "lib/images/bkashtobank.png", 'label': 'Bkash to bank'},
//     {'image': "lib/images/education.png", 'label': 'Education Fee'},
//     {'image': "lib/images/ngo.png", 'label': 'Microfinance'},
//
//     {'image': "lib/images/toll.png", 'label': 'Toll'},
//     {'image': "lib/images/requestmoney.png", 'label': 'Request Money'},
//     {'image': "lib/images/remittance.png", 'label': 'Remittance'},
//     {'image': "lib/images/donation.png", 'label': 'Donation'},
//
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       for (var item in serviceList) {
//         precacheImage(AssetImage(item['image']), context);
//       }
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     final visibleServiceList = showAllService
//         ? serviceList
//         : serviceList.take(8).toList();
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 85,
//             decoration: BoxDecoration(
//               color: Colors.pink,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//               ),
//             ),
//
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8.0, top: 20),
//                   child: Container(
//                     height: 40,
//                     width: 40,
//
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.pink),
//                       image: DecorationImage(
//                         image: AssetImage('lib/images/bkash.png'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 //name + balance section
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Muhammad Oakil',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           //expended Gridview for services
//           Expanded(
//             child: Column(
//               children: [
//                 AnimatedSize(
//                   duration: const Duration(milliseconds: 400),
//                   curve: Curves.easeInOut,
//
//                   child: GridView.builder(
//                     padding: EdgeInsets.zero,
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 4,
//                     ),
//                     itemCount: visibleServiceList.length,
//                     itemBuilder: (context, index) {
//                       final item = visibleServiceList[index];
//                       return Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//
//                         ),
//
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               item['image'],
//                               width: 30,
//                               height: 30,
//                               cacheWidth: 80,
//                             ),
//                             const SizedBox(height: 2),
//                             Text(item['label'], style: TextStyle(fontSize: 13)),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 showAllService = !showAllService;
//               });
//             },
//             child: Text(
//               showAllService ? "Close" : "See More",
//               style: TextStyle(color: Colors.pink),
//             ),
//           ),
//         ],
//       ),
//
//       //
//     );
//   }
// }




import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity>
    with SingleTickerProviderStateMixin {
  // Boolean to control "See More" toggle
  bool showAllService = false;

  // List of all services with image + label
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
    {'image': "lib/images/bkashtobank.png", 'label': 'Bkash to Bank'},
    {'image': "lib/images/education.png", 'label': 'Education Fee'},
    {'image': "lib/images/ngo.png", 'label': 'Microfinance'},
    {'image': "lib/images/toll.png", 'label': 'Toll'},
    {'image': "lib/images/requestmoney.png", 'label': 'Request Money'},
    {'image': "lib/images/remittance.png", 'label': 'Remittance'},
    {'image': "lib/images/donation.png", 'label': 'Donation'},
  ];

  @override
  Widget build(BuildContext context) {
    // Show only 8 items if not expanded, else show all
    final visibleServiceList =
    showAllService ? serviceList : serviceList.take(8).toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Top pink header section
            Container(
              height: 85,
              decoration: const BoxDecoration(
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
                        border: Border.all(color: Colors.white, width: 2),
                        image: const DecorationImage(
                          image: AssetImage('lib/images/bkash.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      'Muhammad Oakil',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 🔹 Main scrollable section
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 10),

                    // 🔸 Animated grid that expands/collapses smoothly
                    AnimatedSize(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                      child: GridView.builder(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        shrinkWrap: true, // Important for nesting inside scroll
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, // 4 items per row
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: visibleServiceList.length,
                        itemBuilder: (context, index) {
                          final item = visibleServiceList[index];
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  item['image'],
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  item['label'],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // 🔹 See More / Close Button
                    const SizedBox(height: 5),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          showAllService = !showAllService;
                        });
                      },
                      child: Text(
                        showAllService ? "Close" : "See More",
                        style: const TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

