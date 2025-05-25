import 'package:flutter/material.dart';
import 'package:plantapp/Screen1/DetailScreen.dart';
import 'package:plantapp/Screen1/Plant.dart';

class Plantreconmend extends StatelessWidget {
  Plantreconmend({super.key});

  // Dữ liệu cứng
  final List<Plant> plants = [
    Plant(
      name: 'StoneLotus',
      country: 'Russia',
      imagePath: 'assets/images/image_1.png',
      price: 400,
    ),
    Plant(
      name: 'Aloe Vera',
      country: 'USA',
      imagePath: 'assets/images/image_2.png',
      price: 250,
    ),
    Plant(
      name: 'Snake Plant',
      country: 'Brazil',
      imagePath: 'assets/images/image_3.png',
      price: 180,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 10, right: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: plants.map((plant) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(plant: plant),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 170,
              height: 240,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.asset(
                      plant.imagePath,
                      width: 170,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 5),
                      Text(
                        plant.name,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text('\$${plant.price}'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      plant.country,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
