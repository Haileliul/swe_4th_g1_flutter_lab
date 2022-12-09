import 'package:flutter/material.dart';

class Bookcard extends StatefulWidget {
  const Bookcard({super.key});

  @override
  State<Bookcard> createState() => _BookcardState();
}

class _BookcardState extends State<Bookcard> {
  bool isVisible1 = false;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: [
                  Visibility(
                    visible: isVisible1,
                    child: Container(
                      height: 90,
                      width: 100,
                      color: Colors.red,
                      child: Visibility(
                          visible: isVisible1,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: 5,
                            width: 5,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "አንብብ",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isVisible1 = !isVisible1;
                        isVisible2 = !isVisible1;
                      });
                    },
                    child: Image.asset(
                      'Assets/images/a.png',
                      width: 50,
                      height: 80,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isVisible2 = !isVisible2;
                        isVisible2 = !isVisible1;
                      });
                    },
                    child: Image.asset(
                      'Assets/images/a.png',
                      width: 50,
                      height: 80,
                    ),
                  ),
                  Visibility(
                    visible: isVisible2,
                    child: Container(
                      height: 90,
                      width: 100,
                      color: Colors.red,
                      child: Visibility(
                          visible: isVisible2,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: 5,
                            width: 5,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "አንብብ",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
