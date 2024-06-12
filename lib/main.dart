// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homework2(),
    );
  }
}

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    Containers();
    Cards();
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
        leading: Icon(Icons.arrow_back_outlined),
        title: Text(
          'Добавить шаблон',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 44,
              width: 328,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    child: Text(
                      'Терминалы',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    alignment: Alignment.center,
                    height: 36,
                    width: 156,
                    decoration: BoxDecoration(
                      color: Color(0xffF1229E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Офисы',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Containers(),
            SizedBox(height: 20),
            Containers(),
            SizedBox(height: 20),
            Cards(),
            SizedBox(height: 20),
            Cards(),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////Homework2////////////////////////////////////////////
class Homework2 extends StatelessWidget {
  const Homework2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          'Корзина',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.delete),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Korzina(
              image: 'assets/images/pizza.png',
              text: 'Сет №1',
              text2: '27.00 BYN',
            ),
            SizedBox(height: 20),
            Korzina(
              image: 'assets/images/pizza2.png',
              text: 'Сет №2',
              text2: '30.00 BYN',
            ),
          ],
        ),
      ),
    );
  }
}

class Korzina extends StatelessWidget {
  final String image;
  final String text;
  final String text2;
  const Korzina({
    Key? key,
    required this.image,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 343,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Image.asset(
            image,
            height: 70,
            width: 75,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '770 г.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                children: [
                  SizedBox(height: 50),
                  Image.asset(
                    'assets/images/minus.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/plus.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    text2,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////
class Cards extends StatelessWidget {
  const Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 340,
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(width: 10),
            Image.asset(
              'assets/images/location.png',
              height: 50,
              width: 50,
            ),
            SizedBox(width: 10),
            Column(
              children: [
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'ЦПО Бишкек Парк',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nПр. Чуй 123, первый этаж',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////////
class Containers extends StatelessWidget {
  const Containers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 328,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Container(
            child: Image.asset(
              'assets/images/location.png',
              height: 50,
              width: 50,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'ЦПО Бишкек Парк',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('Пр. Чуй 123, первый этаж'),
            ],
          ),
        ],
      ),
    );
  }
}
//////////////////////////////////////////////////////////////////////////////