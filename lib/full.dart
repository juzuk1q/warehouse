import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'card.dart';

class fullPage extends StatefulWidget {
  const fullPage({super.key});

  @override
  State<fullPage> createState() => _fullPageState();
}

class _fullPageState extends State<fullPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E5CA4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: .only(left: 0, right: 0),
              child: Container(
                height: 130,
                width: 1200,
                child: Image.asset('assets/images/bg.png'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 980,
              child: Padding(padding: .all(45),
                  child: GridView.builder(
                    itemCount: 30,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1.6,
                    ),
                    itemBuilder: (context, index) {
                      return CardWh(
                        pic: 'assets/JlaTku.png',
                        labelText: 'Латки для камер круглые Ф16',
                        countWH: 138,
                        added: 1,
                      );
                    },
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
