import 'package:flutter/material.dart';

class ShoppingBagScreen extends StatefulWidget {
  @override
  _ShoppingBagScreenState createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> {
  Color selectedColor = Colors.transparent;
  String selectedStorage = '';
  List<String> selectedProducts = [];
  List<Color> selectedColors = [];

  void clearShoppingBag() {
    setState(() {
      selectedColor = Colors.transparent;
      selectedStorage = '';
      selectedProducts.clear();
      selectedColors.clear();
    });
  }

  void addToShoppingBag(String product, Color color) {
    setState(() {
      selectedProducts.add(product);
      selectedColors.add(color);
    });
  }

  void removeFromShoppingBag(String product) {
    setState(() {
      int index = selectedProducts.indexOf(product);
      selectedProducts.removeAt(index);
      selectedColors.removeAt(index);
    });
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    // Burada ürünlerin fiyatlarına göre toplam tutarı hesaplayabilirsiniz.
    // Örneğin:
    // - 'iPhone 14 Pro Max - 128 GB' için 41999
    // - 'iPhone 14 Pro Max - 256 GB' için 44599
    // - 'iPhone 14 Pro - 512 GB' için 49899
    // - 'iPhone 14 Pro - 1 TB' için 55199
    // Bu fiyatları kullanarak toplam tutarı hesaplayabilirsiniz.
    for (String product in selectedProducts) {
      if (product == 'iPhone 14 Pro Max - 128 GB') {
        totalPrice += 41999;
      } else if (product == 'iPhone 14 Pro Max - 256 GB') {
        totalPrice += 44599;
      } else if (product == 'iPhone 14 Pro - 512 GB') {
        totalPrice += 49899;
      } else if (product == 'iPhone 14 Pro - 1 TB') {
        totalPrice += 55199;
      }
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alışveriş Sepeti'),
        backgroundColor: Color.fromARGB(255, 52, 47, 47),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Renk Seçimi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
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
                    width: 30,
                    height: 30,
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
                    width: 30,
                    height: 30,
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
                    width: 30,
                    height: 30,
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
                    width: 30,
                    height: 30,
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
            ),
            SizedBox(height: 20),
            Text(
              'Depolama Seçimi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedStorage = '128 GB';
                        addToShoppingBag(
                            'iPhone 14 Pro Max - 128 GB', selectedColor);
                      });
                    },
                    child:
                        buildStorageOption('128 GB', 'Başlangıç Fiyatı 41,999'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedStorage = '256 GB';
                        addToShoppingBag(
                            'iPhone 14 Pro Max - 256 GB', selectedColor);
                      });
                    },
                    child:
                        buildStorageOption('256 GB', 'Başlangıç Fiyatı 44,599'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedStorage = '512 GB';
                        addToShoppingBag(
                            'iPhone 14 Pro - 512 GB', selectedColor);
                      });
                    },
                    child:
                        buildStorageOption('512 GB', 'Başlangıç Fiyatı 49,899'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedStorage = '1 TB';
                        addToShoppingBag('iPhone 14 Pro - 1 TB', selectedColor);
                      });
                    },
                    child:
                        buildStorageOption('1 TB', 'Başlangıç Fiyatı 55,199'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: clearShoppingBag,
              child: Text('Sepetimi Temizle'),
            ),
            SizedBox(height: 20),
            Text(
              'Sepetinizdeki Ürünler',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: selectedProducts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(selectedProducts[index]),
                    subtitle: Text(getColorName(selectedColors[index])),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        removeFromShoppingBag(selectedProducts[index]);
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Toplam Tutar: ${calculateTotalPrice().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStorageOption(String storage, String price) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2, color: Colors.black26),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              storage,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 8),
            Text(price),
          ],
        ),
      ),
    );
  }

  String getColorName(Color color) {
    if (color == Colors.purple) {
      return 'Mor';
    } else if (color == Colors.yellow[100]) {
      return 'Sarı';
    } else if (color == Colors.white38) {
      return 'Beyaz';
    } else if (color == Colors.black) {
      return 'Siyah';
    } else {
      return '';
    }
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ShoppingBagScreen(),
  ));
}
