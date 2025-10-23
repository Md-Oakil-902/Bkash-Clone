import 'dart:async';

import 'package:flutter/material.dart';

class OfferSlider extends StatefulWidget {
  final double height;
  final List<String> images;

  const OfferSlider({super.key, this.height = 120, required this.images});

  @override
  State<OfferSlider> createState() => _OfferSliderState();
}

class _OfferSliderState extends State<OfferSlider> {
  final PageController _pageController = PageController();
  Timer? _timer;
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        int nextPage = activeIndex + 1;
        if (nextPage >= widget.images.length) nextPage = 0;

        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height,
          child: PageView.builder(
            controller:  _pageController,
            itemCount: widget.images.length,
            onPageChanged: (index){
              setState(() {
                activeIndex = index;
              });
            },


            itemBuilder: (context, index) {
              return Padding(padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(widget.images[index],fit: BoxFit.cover, width: double.infinity,),
              ),
              );
              
            },
          ),
        ),
      ],
    );
  }
}
