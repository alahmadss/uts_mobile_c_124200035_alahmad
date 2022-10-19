import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'trapesium.dart';
import 'keliling_trapesium.dart';


class HomeTrapesium extends StatefulWidget {
  @override
  State<HomeTrapesium> createState() => _HomeTrapesiumState();
}

class _HomeTrapesiumState extends State<HomeTrapesium> {
  final String username = "";
  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang!'),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: pageIndex,
      ),
    );
  }

}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250.0,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return trapesium();
                      }));
                },
                child: Text(
                  'Menu 1\n'
                      'Luas Trapesium',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250.0,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return KelilingTrapesium();
                  }));
                },
                child: Text(
                  'Menu 2\n'
                      'Keliling Trapesium',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 150.0, 0, 25.0),
            child: Text('Profile\n'
                'Nama  : Al Ahmad Syah Huud Sharifudin\n'
                'NIM   : 124200035\n'
                'TTL   : Yogyakarta, 02 April 2003\n'
                'Hobby : Main Valorant'),
          ),
        ],
      ),
    );
  }
}
