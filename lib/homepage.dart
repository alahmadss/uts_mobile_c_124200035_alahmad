import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main_trapesium.dart';
import 'main_segitiga.dart';
import 'main_lingkaran.dart';
import 'main_persegipanjang.dart';


class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        return HomeTrapesium();
                      }));
                },
                child: Text(
                  'Bangun datar 1\n'
                      'Trapesium',
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
                        return HomeSegitiga();
                      }));
                },
                child: Text(
                  'Bangun datar 2\n'
                      'Segitiga',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomeLingkaran();
                  }));
                },
                child: Text(
                  'Bangun datar 3\n'
                      'Lingkaran',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomePersegiP();
                  }));
                },
                child: Text(
                  'Bangun datar 4\n'
                      'Persegi',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // SizedBox(height: 10),
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
