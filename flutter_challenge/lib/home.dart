import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_challenge/widgets/card.dart';
import 'package:flutter_challenge/widgets/grid_cell.dart';
import 'dart:async';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.translate),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: CustomGrid(),
                ),
                SizedBox(
                  height: 20,
                ),
                CardDesign(
                  title: "Schemes For You",
                  subtitle:
                      "Find the best Goverment Schemes for you and apply on myScheme",
                  color: Colors.green[400]!,
                  buttonColor: Colors.green,
                  buttonText: "Check Now",
                ),
                CardDesign(
                  title: "Share UMANG app",
                  subtitle: "Tell your friends about the UMANG app!",
                  color: Colors.orangeAccent,
                  buttonColor: Colors.orange,
                  buttonText: "SHARE NOW",
                ),
                CardDesign(
                  title: "Share UMANG app",
                  subtitle: "Tell your friends about the UMANG app!",
                  color: Colors.amber,
                  buttonColor: Colors.orange,
                  buttonText: "SHARE NOW",
                ),
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: CircleAvatar(backgroundImage: AssetImage("assets/chatbot.jpg")),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xff2398C3),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'All Services',
            icon: Icon(Icons.dashboard_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Digilocker',
            icon: Icon(Icons.lock),
          ),
          BottomNavigationBarItem(
            label: 'Bihar',
            icon: Icon(Icons.map),
          ),
        ],
      ),
    );
  }
}

class CustomGrid extends StatelessWidget {
  const CustomGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> sampleList = [
      "Mera Ration",
      "Police and Legal",
      "Public Grievance",
      "Social Justice and Empowerment",
      "Transport",
      "Utility & Bill Payments",
      "General",
    ];
    return Container(
      height: 240,
      child: GridView.builder(
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 120,
          ),
          itemBuilder: (context, index) {
            return GridCellContainer(
              title: sampleList[index],
            );
          }),
    );
  }
}
