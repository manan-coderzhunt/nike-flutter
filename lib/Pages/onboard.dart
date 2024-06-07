import 'package:flutter/material.dart';
import 'package:new_nike/Pages/signup.dart';
import 'package:new_nike/pages/content_model.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 37, 48, 1),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding:
                        EdgeInsets.only(top: 50.0, right: 25.0, left: 25.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 40.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(contents[i].title,
                                style: TextStyle(
                                    fontFamily: 'Acme',
                                    fontSize: 40.0,
                                    color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              contents[i].description,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Acme',
                                color: Color.fromRGBO(112, 123, 129, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 40, right: 250),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  }
                  _controller.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.fastEaseInToSlowEaseOut);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20, left: 140),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(91, 158, 225, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50.0,
                  width: 180.0,
                  child: Center(
                    child: Text(
                      currentIndex == contents.length - 1
                          ? 'Get Started'
                          : 'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 45 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color.fromRGBO(91, 158, 225, 1),
      ),
    );
  }
}
