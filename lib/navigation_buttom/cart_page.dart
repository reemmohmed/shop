import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // القوائم المطلوبة
  List<String> imageList = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
  ];

  List<String> productTitles = [
    "T-Shirt",
    "Kitted Wall",
    "Child Jacket",
    "Jackets"
  ];
  List<String> price = ["\$300", "\$400", "\$500", "\$600"];

  // تخزين الكميات لكل منتج
  List<int> quantities = [1, 1, 1, 1];

  // التحكم في حالة الـ Checkbox لكل منتج
  List<bool> checkedList = [true, false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: productTitles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                // Checkbox بدل الصندوق الملون
                Checkbox(
                  value: checkedList[index],
                  onChanged: (bool? value) {
                    setState(() {
                      checkedList[index] = value!;
                    });
                  },
                  activeColor: const Color(0xffEF6969), // لون الـ Checkbox
                ),
                // const SizedBox(width: 15),
                // الصورة الخاصة بالمنتج
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    imageList[index],
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                // معلومات المنتج (العنوان + السعر)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productTitles[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Hooded Jacket", // النص الثانوي
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        price[index],
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                // أدوات التحكم في العدد
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove, color: Colors.green),
                      onPressed: () {
                        setState(() {
                          if (quantities[index] > 1) {
                            quantities[index]--;
                          }
                        });
                      },
                    ),
                    Text(
                      "${quantities[index]}", // العدد الحالي
                      style: const TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.black),
                      onPressed: () {
                        setState(() {
                          quantities[index]++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
