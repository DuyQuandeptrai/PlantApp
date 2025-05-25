import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/setup_default.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<int> quantities = [1, 2, 1, 1]; // mỗi sản phẩm có bộ đếm riêng

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Thanh tiêu đề
          Container(
            height: 100,
            width: double.infinity,
            color: kPrimaryColor,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      'assets/icons/back_arrow.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Danh sách sản phẩm scroll được nếu nhiều
          Expanded(
            child: ListView.builder(
              itemCount: quantities.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: buildCartItem(index),
                );
              },
            ),
          ),

          // Thanh tổng kết dưới cùng
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Items',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                      Spacer(),
                      Text(
                        '2000 \$',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Tax',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                      Spacer(),
                      Text(
                        '20 \$',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Delivery',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                      Spacer(),
                      Text(
                        '10 \$',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 247, 247, 247), // Màu dòng kẻ
                    thickness: 3, // Độ dày dòng kẻ
                    indent: 200, // Khoảng cách từ lề trái
                    endIndent: 0, // Khoảng cách từ lề phải
                  ),
                  Row(
                    children: [
                      Text(
                        'Totaly',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                      Spacer(),
                      Text(
                        '2210 \$',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 247, 247, 247), // Màu dòng kẻ
                    thickness: 3, // Độ dày dòng kẻ
                    indent: 0, // Khoảng cách từ lề trái
                    endIndent: 0, // Khoảng cách từ lề phải
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 225, 225, 225), // Màu nền
                      foregroundColor:
                          const Color.fromARGB(255, 0, 0, 0), // Màu chữ
                      padding: EdgeInsets.symmetric(
                          horizontal: 32, vertical: 10), // Kích thước nút
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Bo góc
                      ),
                      elevation: 4, // Độ nổi (bóng)
                    ),
                    child: Text(
                      'Order',
                      style: TextStyle(fontSize: 20), // Kích thước chữ
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Hàm xây dựng 1 sản phẩm
  Widget buildCartItem(int index) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          SizedBox(width: 16),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 12),
          Container(
            height: 110,
            width: 350,
            color: const Color.fromARGB(255, 188, 188, 188),
            child: Row(
              children: [
                SizedBox(width: 10),
                Image.asset(
                  'assets/images/bottom_img_2.png',
                  scale: 2.8,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Angelia',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Russia',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$500',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              if (quantities[index] > 1) {
                                setState(() {
                                  quantities[index]--;
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              child: Icon(Icons.remove, size: 20),
                            ),
                          ),
                          Text(
                            '${quantities[index]}',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                quantities[index]++;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              child: Icon(Icons.add, size: 20),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
