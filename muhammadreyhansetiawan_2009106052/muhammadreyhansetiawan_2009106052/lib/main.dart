import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/Hal1",
      routes: {
        "/Hal1": (context) => Hal1(),
      },
    );
  }
}

class Hal1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 30, 28, 28),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Resepien",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Neucha",
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.food_bank),
              title: const Text(
                "Foodie",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Neucha",
                ),
              ),
              tileColor: Color.fromARGB(255, 248, 242, 206),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Hal2()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text(
                "Dessert",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Neucha",
                ),
              ),
              leading: Icon(Icons.fastfood_outlined),
              tileColor: Color.fromARGB(255, 243, 238, 169),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Hal3()));
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Resepien by Reyhan",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Neucha'),
                    ),
                    SizedBox(height: 20.0),
                    Image.asset("assets/images/landing.jpg",
                        width: 450.0, height: 450.0, fit: BoxFit.fill),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Close App",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Hal2 extends StatelessWidget {
  Hal2({Key? key}) : super(key: key);

  final List<Tab> _myTabs = [
    Tab(text: "Health Food"),
    Tab(text: "Drink"),
    Tab(text: "Fast Food"),
  ];

  final List<Widget> _myViews = [
    Icon(Icons.food_bank),
    Icon(Icons.local_drink),
    Icon(Icons.fastfood),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Foodie"),
          backgroundColor: Colors.black,
          bottom: TabBar(tabs: _myTabs),
        ),
        body: TabBarView(
          children: _myViews,
        ),
      ),
    );
  }
}

class Hal3 extends StatefulWidget {
  const Hal3({Key? key}) : super(key: key);

  @override
  State<Hal3> createState() => _Hal3State();
}

class _Hal3State extends State<Hal3> {
  final List<BottomNavigationBarItem> _myItem = [
    BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: "1"),
    BottomNavigationBarItem(icon: Icon(Icons.fastfood_outlined), label: "2"),
    BottomNavigationBarItem(icon: Icon(Icons.fastfood_sharp), label: "3"),
  ];

  final List<Widget> _myPages = [
    Container(
      color: Color.fromARGB(255, 183, 132, 238),
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Blueberry Oreo Mousse",
            style: TextStyle(
                color: Color.fromARGB(255, 5, 15, 20),
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: 'Neucha'),
          ),
          SizedBox(height: 20.0),
          Image.asset("assets/images/dessert1.jpg",
              width: 450.0, height: 450.0, fit: BoxFit.fill),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
        ],
      ),
    ),
    Container(
      color: Color.fromARGB(255, 230, 141, 191),
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Puding Strawberry Cake",
            style: TextStyle(
                color: Color.fromARGB(255, 4, 11, 14),
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: 'Neucha'),
          ),
          SizedBox(height: 20.0),
          Image.asset("assets/images/dessert2.jpg",
              width: 450.0, height: 450.0, fit: BoxFit.fill),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
        ],
      ),
    ),
    Container(
      color: Color.fromARGB(255, 238, 203, 132),
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Pudding Custard",
            style: TextStyle(
                color: Color.fromARGB(255, 12, 35, 47),
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: 'Neucha'),
          ),
          SizedBox(height: 20.0),
          Image.asset("assets/images/dessert3.jpg",
              width: 450.0, height: 450.0, fit: BoxFit.fill),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
        ],
      ),
    ),
  ];
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dessert"),
        backgroundColor: Color.fromARGB(255, 228, 128, 128),
      ),
      body: _myPages.elementAt(_pageIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _myItem,
        currentIndex: _pageIndex,
        onTap: (int newIndex) {
          setState(() {
            _pageIndex = newIndex;
          });
        },
      ),
    );
  }
}
