import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class KelLingkaran extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<KelLingkaran> {
  final txtjari = TextEditingController();

  String resultKeliling='';

  getTextInputData() {
    setState(() {
      var jari = int.parse(txtjari.text);

      var keliling = (jari * 2) * 3.14;
      resultKeliling = keliling.toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lingkaran"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: txtjari,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Panjang Jari-Jari'),
                  )),

              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffFF1744),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Proses'),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("keliling Lingkaran = $resultKeliling", style: TextStyle(fontSize: 20))
              )

            ],
          ),
        ));
  }
}