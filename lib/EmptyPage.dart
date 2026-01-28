import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E5CA4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: Container(
                  height: 130,
                  width: 1200,
                  child: Image.asset('assets/images/bg.png'),
                )
            ),
            SizedBox(height: 200),
            Padding(
              padding: EdgeInsets.only(left: 150),
              child: SizedBox(
                height: 65,
                width: 380,
                child: isTrue ? Text('Отсканируйте товары',
                  style: TextStyle(
                    color: Color(0xFFA7A7AE),
                    fontFamily: 'Jost',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                )
                    :ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isTrue = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      side: BorderSide(color: Colors.white, width: 1),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    'Начать приемку',
                    style: TextStyle(
                      color: Color(0xff0e5ca4),
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


