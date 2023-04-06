import 'package:flutter/material.dart';
import '../Widget/Config.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(29, 159, 165, 192),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  hintText: "Search",
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xff3d5480),
                    ),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff1fcc79),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        color: Color(0xff1fcc79),
        // notchMargin: 5.0,
        // shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home, color: Colors.white),
                    // Text(
                    //   "Home",
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home, color: Colors.white),
                    // Text(
                    //   "Home",
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.verified_user_outlined, color: Colors.white),
                    // Text(
                    //   "Home",
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.notification_add_outlined, color: Colors.white),
                    // Text(
                    //   "Notification",
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
