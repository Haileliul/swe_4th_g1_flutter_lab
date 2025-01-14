import 'package:flutter/material.dart';
import 'package:sw_g1/cards.dart';
import 'package:sw_g1/list.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ethio-Geez",
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(builder: (context) {
          return TextButton(
            child: Image.asset('Assets/images/a.png'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        // Image.asset('Assets/images/a.png'),
        title: Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Text.rich(
              TextSpan(
                text: "ኢት",
                style: TextStyle(
                  color: Colors.green[700],
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "ዮ-ግ",
                    style: TextStyle(color: Colors.yellow),
                  ),
                  TextSpan(
                    text: "ዕዝ",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            )

            /* Text(
            "ኢትዮ-ግዕዝ",
            style: TextStyle(
              color: Colors.amber[900],
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ), */
            ),
        centerTitle: true,
        backgroundColor: Colors.grey[500],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.audiotrack_outlined),
            color: Colors.amber,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.auto_awesome_mosaic),
            color: Colors.amber,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.login),
            color: Colors.amber,
          ),
        ],
      ),
      drawer: Drawer(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'Assets/images/b.jpg',
                  ),
                  opacity: 0.5,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/a.png'),
                      radius: 35,
                      // child: image(Ims),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Haileliul"),
                  Text("hailetechlover@gmail.com"),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                    ),
                    Text("HOME"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                    ),
                    Text("HOME"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                    ),
                    Text("HOME"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.green])),
        child: Row(children: [
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Bookcard();
                },
                itemCount: 100,
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              ],
            ),
          ],
        ),
        color: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 80.0,
          width: double.infinity,
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}
