import 'dart:math';

import 'package:flutter/material.dart';
import 'package:three_algoritm/widgets/circles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final random = Random();
    final List<int> three1 = List.generate(8, (index) => random.nextInt(12));
    // Arbol 3
    print("Numeros Arbol 1 ");
    three1.forEach((n) {
      print(n);
    });

    final List<int> three2 = List.generate(4, (index) {
      int number = random.nextInt(12);
      bool same = three1.contains(number);
      if (same) {
        do {
          number = random.nextInt(12);
          same = three1.contains(number);
        } while (same);
      }
      return number;
    });
    // Arbol 2
    print("Numeros Arbol 2 ");
    three1.forEach((n) {
      print(n);
    });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 320,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Arbol1")],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [CirclesContainer(num: three1[0])],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CirclesContainer(num: three1[1]),
                        CirclesContainer(num: three1[2]),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CirclesContainer(num: three1[3]),
                        CirclesContainer(num: three1[4]),
                        CirclesContainer(num: three1[5]),
                        CirclesContainer(num: three1[6]),
                        CirclesContainer(num: three1[7]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("Arbol2")],
                  ),
                  Row(children: [CirclesContainer(num: three2[0])]),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CirclesContainer(num: three2[1]),
                      const SizedBox(width: 10),
                      CirclesContainer(num: three2[2]),
                      const SizedBox(width: 10),
                      CirclesContainer(num: three2[3]),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.repeat),
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
