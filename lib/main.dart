import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home work2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(30),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          height: 450,
          width: double.infinity,
          child: const ProductColumn(),
        ),
      ),
    );
  }
}

class ProductColumn extends StatelessWidget {
  const ProductColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: const [
          LeftColumn(),
          RightColumn(),
        ],
      ),
    );
  }
}

class LeftColumn extends StatelessWidget {
  const LeftColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Название'),
        SizedBox(height: 10),
        Text('Костюм тройка'),
        SizedBox(height: 50),
        Text('Модель'),
        SizedBox(height: 10),
        Text('Костюм тройка'),
        SizedBox(height: 50),
        Text('Артикул модели'),
        SizedBox(height: 10),
        Text('2345436'),
        SizedBox(height: 50),
        Text('Размеры'),
        SizedBox(height: 10),
        Size(),
      ],
    );
  }
}

class Size extends StatelessWidget {
  const Size({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: const Center(
        child: Text('196/2 * 2'),
      ),
    );
  }
}

class RightColumn extends StatelessWidget {
  const RightColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Text(''),
        SizedBox(height: 10),
        Text('1234'),
        SizedBox(height: 50),
        Text('Тип'),
        SizedBox(height: 10),
        Text('Костюм '),
        SizedBox(height: 50),
        Text('Артикул ткани'),
        SizedBox(height: 10),
        Text('Vendor code'),
        SizedBox(height: 50),
      ],
    );
  }
}
