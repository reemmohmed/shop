import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/pages/button.dart';

class DetailsPopup extends StatelessWidget {
  DetailsPopup({super.key});
  List<Color> clr = const [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: MediaQuery.sizeOf(context).height / 2.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Color",
                            style: TextStyle(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Total",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "S",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "M",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "L",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "XL",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: clr[i]),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "-",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "+",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "+",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: Button(
        containerWidth: MediaQuery.sizeOf(context).width / 1.5,
        itext: "Buy Now",
        bgColor: Color(0xffef6969),
      ),
    );
  }
}
