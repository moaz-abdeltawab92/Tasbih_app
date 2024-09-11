import 'package:flutter/material.dart';
import 'counter_details.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "فَاذْكُرُونِي أَذْكُرْكُمْ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 69, 81, 99),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          ImprovedCounter(
            count: counter1,
            onIncrement: incrementCounter1,
            onReset: resetCounter1,
            title: "سُبْحَانَ اللَّهِ ",
          ),
          const Divider(color: Colors.grey, thickness: 2, height: 40),
          ImprovedCounter(
            count: counter2,
            onIncrement: incrementCounter2,
            onReset: resetCounter2,
            title: " الْحَمْدُ لِلَّهِ ",
          ),
          const Divider(color: Colors.grey, thickness: 2, height: 40),
          ImprovedCounter(
              count: counter3,
              onIncrement: incrementCounter3,
              onReset: resetCounter3,
              title: "لَا إِلَهَ إِلَّا اللهُ"),
          const Divider(color: Colors.grey, thickness: 2, height: 40),
          ImprovedCounter(
            count: counter4,
            onIncrement: incrementCounter4,
            onReset: resetCounter4,
            title: "  اللهُ أَكْبَرُ   ",
          ),
          const Divider(color: Colors.grey, thickness: 2, height: 40),
          ImprovedCounter(
            count: counter5,
            onIncrement: incrementCounter5,
            onReset: resetCounter5,
            title:
                " لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ",
          ),
        ],
      ),
    );
  }

  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;

  void incrementCounter1() {
    setState(() {
      counter1++;
    });
  }

  void resetCounter1() {
    setState(() {
      counter1 = 0;
    });
  }

  void incrementCounter2() {
    setState(() {
      counter2++;
    });
  }

  void resetCounter2() {
    setState(() {
      counter2 = 0;
    });
  }

  void incrementCounter3() {
    setState(() {
      counter3++;
    });
  }

  void resetCounter3() {
    setState(() {
      counter3 = 0;
    });
  }

  void incrementCounter4() {
    setState(() {
      counter4++;
    });
  }

  void resetCounter4() {
    setState(() {
      counter4 = 0;
    });
  }

  void incrementCounter5() {
    setState(() {
      counter5++;
    });
  }

  void resetCounter5() {
    setState(() {
      counter5 = 0;
    });
  }
}
