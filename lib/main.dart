import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double cm = 0;
  String f = "";
  bool tap = false;
  int i = 0;
  int j = 0;
  double m = 0;
  double ans = 0;
  int kg = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
          backgroundColor: Colors.black.withOpacity(0.7),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  TweenAnimationBuilder(
                    tween: Tween<double>(
                      begin: 400,
                      end: 170,
                    ),
                    duration: const Duration(milliseconds: 1000),
                    builder: (context, val, widget) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              tap = !tap;
                            });
                            print("raj");
                          },
                          child: Transform.translate(
                            transformHitTests: true,
                            offset: Offset(val, 0),
                            child: Container(
                                margin: const EdgeInsets.all(10),
                                height: 150,
                                width: 150,
                                color: Colors.grey.withOpacity(0.2),
                                child: Icon(
                                  Icons.female,
                                  color: (tap == false)
                                      ? Colors.grey
                                      : Colors.pinkAccent,
                                  size: 150,
                                )),
                          ));
                    },
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: -400, end: -170),
                      duration: const Duration(milliseconds: 1000),
                      builder: (context, val, widget) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                tap = !tap;
                                print("dhara");
                              });
                            },
                            child: Transform.translate(
                                offset: Offset(val, 0),
                                child: Container(
                                    margin: const EdgeInsets.all(10),
                                    height: 150,
                                    width: 150,
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Icon(
                                      Icons.male,
                                      color: (tap == true)
                                          ? Colors.grey
                                          : Colors.pinkAccent,
                                      size: 150,
                                    ))));
                      }),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 150,
                color: Colors.grey.withOpacity(0.2),
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 1000),
                    builder: (context, val, widget) {
                      return Transform.scale(
                        scale: val,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Height",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${cm.toInt()}",
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 25),
                                ),
                                const Text(
                                  "cm",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                )
                              ],
                            ),
                            Slider(
                              value: cm,
                              onChanged: (value) {
                                setState(() {
                                  cm = value;
                                });
                                print("cm $cm");
                              },
                              max: 300,
                              activeColor: Colors.pink,
                              inactiveColor: Colors.pink.shade50,
                              min: 0,
                              divisions: 300,
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Row(
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 400, end: 170),
                      duration: const Duration(milliseconds: 1000),
                      builder: (context, val, weidget) {
                        return Transform.translate(
                          offset: Offset(val, 0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            height: 150,
                            width: 150,
                            color: Colors.grey.withOpacity(0.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "weight",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "${i.toInt()}",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (i > 0) {
                                            i--;
                                          }
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.2),
                                      child: const Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          i += 2;
                                          kg = i;
                                        });
                                        print("KG $kg");
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.5),
                                      child: const Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: -400, end: -170),
                      duration: const Duration(milliseconds: 1000),
                      builder: (context, val, widget) {
                        return Transform.translate(
                          offset: Offset(val, 0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            height: 150,
                            width: 150,
                            color: Colors.grey.withOpacity(0.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "age",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "${j.toInt()}",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (j > 0) {
                                            j--;
                                          }
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.2),
                                      child: const Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          j++;
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.5),
                                      child: const Icon(Icons.add),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                child: Text(
                  "${ans.toInt()}  $f ",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    m = cm / 100;
                    ans = kg / (m * m);
                  });
                  print("ANS $ans");
                  if (ans < 18.5) {
                    f = "underweight range";
                  } else if (ans > 18.5 && ans < 24.9) {
                    f = "heathy weight range";
                  } else if (ans > 25 && ans < 29.9) {
                    f = "overweight range";
                  } else if (ans >= 30) {
                    f = "obese range";
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                          right: Radius.circular(50))),
                  child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: const Duration(milliseconds: 1000),
                      builder: (context, val, widget) {
                        return Transform.scale(
                          scale: val,
                          child: const Text(
                            "CALCULATE",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
