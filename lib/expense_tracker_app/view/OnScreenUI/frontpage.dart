import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider_app/expense_tracker_app/view/HomeUI/home_page.dart';
import 'package:provider_app/expense_tracker_app/view/HomeUI/bottom_nav.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({super.key});

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {

  final PageController _controller = PageController();

  final List<String> imgList =[
    'assets/images/expensebg1.png',
    'assets/images/expensebg3.png',
    'assets/images/expensebg4.png'
  ];

  final List<String> textList =[
    'Track smarter, spend wiser. Your wallet just got a brain.',
    'Every rupee has a story. Lets help you tell a smarter one.',
    'Budgets aren’t boring anymore. Let’s break the rules responsibly.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: Stack(
        children: [
           PageView(
             scrollDirection: Axis.horizontal,
             children: [
               PageView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: imgList.length,
                 controller: _controller,
                 itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset(
                           imgList[index]
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8,right: 8,top: 12),
                           child: Text(
                             textList[index],
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 18,
                               fontWeight: FontWeight.w500
                             ),
                           ),
                         ),
                       ],
                     ),
                   );
                 },
             ),

      ]
           ),
          Positioned(
            bottom: 90,
            left: 150,
            child: SmoothPageIndicator(controller: _controller,
                count: 3,
                effect:ExpandingDotsEffect(
                  dotColor: Colors.grey.shade300,
                  activeDotColor: Colors.teal.shade500,
                  dotHeight: 12,
                  dotWidth: 12,
                ) ),
          ),
          Positioned(
            bottom: 10,
            left: 22,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9,
                        MediaQuery.of(context).size.height * 0.07),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Let's Start",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.teal.shade400),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.teal.shade400,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
