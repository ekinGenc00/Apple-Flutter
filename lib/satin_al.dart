import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ShoppingBagScreen.dart';

class satin_al extends StatefulWidget {
  const satin_al({super.key});
  @override
  State<satin_al> createState() => _chip2State();
}

Color selectedColor = Colors.transparent;

bool isProSelected = false;
bool isProMaxSelected = false;

bool is128GBSelected = false;
bool is256GBSelected = false;
bool is512GBSelected = false;
bool is1TBSelected = false;

class _chip2State extends State<satin_al> {
  //List<String> skills = [];

  Set<String> skills = {};
  Set<String> skills1 = {};
  Set<String> skills2 = {};
  Set<String> skills3 = {};
  Set<String> skills4 = {};
  bool isChecked = false;
  bool isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Icon(
          Icons.apple,
          size: 24,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 52, 47, 47),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingBagScreen()),
              );
            },
            icon: Icon(
              Icons.shopping_bag,
              color: Color.fromARGB(255, 212, 202, 202),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 52, 47, 47),
          child: ListView(children: [
            DrawerHeader(
              child: Icon(
                Icons.apple,
                color: Colors.white,
                size: 34,
              ),
            ),
            ListTile(
              title: Text(
                'Store',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'İpad',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'İphone',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'Watch',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'AirPods',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'TV ve EV',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'Yalnızca Appleda ',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'Aksesuarlar',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text(
                'Destek',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ]),
        ),
      ),
      //BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 50,
              height: 50,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(right: 140.0),
                child: Text(
                  "iPhone 14 Pro",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Text(
                "satın alın",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 195.0),
              child: Text(
                "Başlangıç fiyatı: 41.999 TL",
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 75.0),
              child: Text(
                "Model.Size en uygun olan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            //resim 14 pro
            Padding(
              padding: const EdgeInsets.only(right: 55.0),
              child: Container(
                child: Image.asset(
                  "assets/images/iphone14.jpeg",
                ),
                width: 300,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(237, 232, 232, 0.4),
                ),
              ),
            ),
            SizedBox(
              width: 25,
              height: 20,
            ),
            //İphone 14 pro satın alma barı
            // İphone 14 pro satın alma barı

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isProSelected = true;
                            isProMaxSelected = false;
                          });
                          // Diğer işlemleri burada gerçekleştirin
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 2,
                                color: isProSelected
                                    ? Colors.blue
                                    : Colors.black26),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "iPhone 14 Pro",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text("6.1 inç ekran"),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text("Başlangıç Fiyatı 41,999 ")],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

// İphone 14 pro max satın alma barı
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isProSelected = false;
                            isProMaxSelected = true;
                          });
                          // Diğer işlemleri burada gerçekleştirin
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 2,
                                color: isProMaxSelected
                                    ? Colors.blue
                                    : Colors.black26),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "iPhone 14 Pro Max",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text("6.1 inç ekran"),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text("Başlangıç Fiyatı 41,999 ")],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Model yardımı
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Expanded(
                        child: Container(
                          width: 350,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 2, color: Colors.black26),
                            color: Color.fromRGBO(237, 232, 232, 0.4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Model seçerken yardıma mı ihtiyacınız var?",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                        "Ekran boyutu ve pil ömründeki farkları keşfedin"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 30,
              height: 30,
            ),
            //Renk favoriniz seçin yazısı
            Padding(
              padding: const EdgeInsets.only(right: 105.0),
              child: Text(
                "Renk favorinizi seçin",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            //renk seçenekleri
            Padding(
              padding: const EdgeInsets.only(right: 55.0),
              child: Container(
                child: Image.asset(
                  "assets/images/renk.jpeg",
                ),
                width: 300,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(237, 232, 232, 0.4),
                ),
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
            ),
            //renk
            Padding(
              padding: const EdgeInsets.only(right: 290.0),
              child: Text(
                "Renk",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = Colors.purple;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            width: 2,
                            color: selectedColor == Colors.purple
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = Colors.yellow[100]!;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            width: 2,
                            color: selectedColor == Colors.yellow[100]
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = Colors.white38;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            width: 2,
                            color: selectedColor == Colors.white38
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = Colors.black;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            width: 2,
                            color: selectedColor == Colors.black
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            SizedBox(
              width: 50,
              height: 50,
            ),
            //Depolama.Ne kadar depolama alanınına ihtiyacınız var
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Ne kadar depolama alanına ihtiyacınız var?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            //Depolama kutuları 128GB

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              is128GBSelected = !is128GBSelected;
                              is256GBSelected = false;
                              is512GBSelected = false;
                              is1TBSelected = false;
                            });
                          },
                          child: Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 2,
                                color: is128GBSelected
                                    ? Colors.blue
                                    : Colors.black26,
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(35.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "128 GB",
                                        style: TextStyle(
                                          color: is128GBSelected
                                              ? Colors.blue
                                              : Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Başlangıç Fiyatı 41,999 ")],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
//Depolama kutuları 256 GB
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              is128GBSelected = false;
                              is256GBSelected = !is256GBSelected;
                              is512GBSelected = false;
                              is1TBSelected = false;
                            });
                          },
                          child: Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 2,
                                color: is256GBSelected
                                    ? Colors.blue
                                    : Colors.black26,
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(35.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "256 GB",
                                        style: TextStyle(
                                          color: is256GBSelected
                                              ? Colors.blue
                                              : Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Başlangıç Fiyatı 44,599 ")],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
//Depolama kutuları 512 GB
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              is128GBSelected = false;
                              is256GBSelected = false;
                              is512GBSelected = !is512GBSelected;
                              is1TBSelected = false;
                            });
                          },
                          child: Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 2,
                                color: is512GBSelected
                                    ? Colors.blue
                                    : Colors.black26,
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(35.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "512 GB",
                                        style: TextStyle(
                                          color: is512GBSelected
                                              ? Colors.blue
                                              : Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Başlangıç Fiyatı 49,899 ")],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
//Depolama kutuları 1TB
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              is128GBSelected = false;
                              is256GBSelected = false;
                              is512GBSelected = false;
                              is1TBSelected = !is1TBSelected;
                            });
                          },
                          child: Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 2,
                                color: is1TBSelected
                                    ? Colors.blue
                                    : Colors.black26,
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(35.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1 TB",
                                        style: TextStyle(
                                          color: is1TBSelected
                                              ? Colors.blue
                                              : Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Başlangıç Fiyatı 55,199 ")],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),

            //Bilgilendirme kutusu
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Expanded(
                        child: Container(
                          width: 350,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 2, color: Colors.black26),
                            color: Color.fromRGBO(237, 232, 232, 0.4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Size ne kadar depolama alanını lazım?",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                        "Depolama alanına ihtiyacınızın olacağına bakın"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            //kutunun içindekiler yazısı
            Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: Text(
                "Kutunun İçindekiler",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 25,
              height: 20,
            ),
            //şarj kablosu resmi
            Center(
              child: Center(
                child: Container(
                  child: Image.asset(
                    "assets/images/kablo.jpeg",
                  ),
                  width: 300,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 25,
              height: 20,
            ),
            //Size uygun İphone hangisi
            Center(
              child: Text(
                "Size en uygun iPhone hangisi?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 25,
              height: 20,
            ),
            //uygun iphone seçenekleri iphonlar
            Center(
              child: Center(
                child: Container(
                  child: Image.asset(
                    "assets/images/ipho.png",
                  ),
                  width: 300,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //uygun iphone içerik telefon isimleri pro ve 14
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "iPhone 14 Pro",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "iPhone 14",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //uygun iphone içerik kısmı 14 pro özelikler
                Column(
                  children: [
                    Text(
                      "En iyiler için",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                      height: 5,
                    ),
                    //fiyat
                    Text(
                      "Başlangıç fiyatı:",
                      style: TextStyle(fontSize: 15),
                    ),
                    //fiyat
                    Text(
                      "41.999",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    //ekran özelikleri
                    Text(
                      "6.7 inç veya 6.1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Süper Retina",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "XDR ekran",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "ProMotion",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Hep açık ekran",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Dynmic Island",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "iPhone ile etkileşime",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "geçmenin yeni yolu",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      "Acil sos",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Trafik kazası",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Algılama",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Pro kamera sistemi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "48 Mb",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Ana kamera",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Ultra Geniş",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Telefoto",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "İnanılmaz",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "ayrıntılar ve",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "renkler için",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Photonic",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Engine",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "TrueDepth",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "ön kamereda",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "otomotik netleme",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Sarsıntılı çekimlerde",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "titremeye azaltan",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Hareket modu",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "29 saat kadar ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "video oynatma",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "A16 Bionic çip",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Face ID",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "5G özellikli",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                ////uygun iphone içerik kısmı 14
                Column(
                  children: [
                    Text(
                      "En iyiler için",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                      height: 5,
                    ),
                    //fiyat
                    Text(
                      "Başlangıç fiyatı:",
                      style: TextStyle(fontSize: 15),
                    ),
                    //fiyat
                    Text(
                      "32.999",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    //ekran özelikleri
                    Text(
                      "6.7 inç veya 6.1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Süper Retina",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "XDR ekran",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      "Acil sos",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Trafik kazası",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Algılama",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Gelişmiş çift kamera sistemi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "12 Mb",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Ana kamera",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Ultra Geniş",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "İnanılmaz",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "ayrıntılar ve",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "renkler için",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Photonic",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Engine",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "TrueDepth",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "ön kamereda",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "otomotik netleme",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Sarsıntılı çekimlerde",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "titremeye azaltan",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Hareket modu",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "26 saat kadar ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "video oynatma",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "A15 Bionic çip",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "5 çekirdekli",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "GPU'ya sahip",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Face ID",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "5G özellikli",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            //İKİNCİ resimler
            Center(
              child: Center(
                child: Container(
                  child: Image.asset(
                    "assets/images/SE.png",
                  ),
                  width: 300,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //iphone  özelikler telefon modeleri yazısı
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "iPhone 13 ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "iPhone SE",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            //iphone 13
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //uygun iphone içerik kısmı 13 özelikler
                Column(
                  children: [
                    Text(
                      "Çok yetenekli",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                      height: 5,
                    ),
                    //fiyat
                    Text(
                      "Başlangıç fiyatı:",
                      style: TextStyle(fontSize: 15),
                    ),
                    //fiyat
                    Text(
                      "24.999 TL",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    //ekran özelikleri
                    Text(
                      "6.1 inç veya 5.4",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Süper Retina",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "XDR ekran",
                      style: TextStyle(fontSize: 15),
                    ),

                    SizedBox(
                      width: 15,
                      height: 15,
                    ),

                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      "Acil sos",
                      style: TextStyle(fontSize: 15),
                    ),

                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Çift kamera sistemi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "12 Mb",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Ana kamera",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Ultra Geniş",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "TrueDepth",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "ön kamereda",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "19 saat kadar ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "video oynatma",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "A15 Bionic çip",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "4 çekirdekli",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "GPU'ya etkinleştirme",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Face ID",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "5G özellikli",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                ////uygun iphone içerik kısmı SE
                Column(
                  children: [
                    Text(
                      "Güçlü ve değerli",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                      height: 5,
                    ),
                    //fiyat
                    Text(
                      "Başlangıç fiyatı:",
                      style: TextStyle(fontSize: 15),
                    ),
                    //fiyat
                    Text(
                      "16.999TL",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    //ekran özelikleri
                    Text(
                      "4.7 inç",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Retina HD ekran",
                      style: TextStyle(fontSize: 15),
                    ),

                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      "Acil sos",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Gelişmiş kamera",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "12 Mb ana kamera",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "-",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "-",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Ön kamera",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "15 saat kadar ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "video oynatma",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "A15 Bionic çip",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "4 çekirdekli",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "GPU'ya sahip",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "Touch ID",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text(
                      "5G özellikli",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 25,
              height: 20,
            ),
            //tüm iphone moddeleri karşılaştırın
            Center(
              child: Text(
                "Tüm iPhone modellerini karşılaştırın",
                style: TextStyle(color: Colors.blue[600], fontSize: 20),
              ),
            ),
            SizedBox(
              width: 25,
              height: 20,
            ),
            //alt kutular
            Container(
              color: Colors.grey[100],
              width: double.infinity,
              height: 550,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Alışveriş ve detaylı bilgi',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Servisler',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hesap',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Apple Store',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kurumsal müşteriler için',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Eğitim için',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Apple\'ın değerleri',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Apple hakkında',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 10),
                    Text(
                      'Diğer alışveriş seçenekleri: Yakınınızda bir Apple Store veya başka bir yetkili satıcı bulun. Veya 00800 448 829 873 ya da 0216 282 15 11 numaralı telefonu arayın.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Türkiye',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Telif Hakkı © 2022 Apple Inc. Tüm hakları saklıdır.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      children: [
                        Text(
                          'Gizlilik Politikası',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Çerezlerin kullanımı',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Kullanım şartları',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Satış ve para iadesi',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Yasal bilgiler',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Site haritası',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Bilgi Toplumu Hizmetleri',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
