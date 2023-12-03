import 'package:flutter/material.dart';
import 'package:mobile_shop/data.dart';
import 'package:mobile_shop/mobile_card.dart';
import 'package:mobile_shop/mobile_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Container(
                height: 211,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 196, 227, 253),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: Text(
                        "Popular Brands ✨",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 161,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularMobilePhones.length,
                        itemBuilder: ((context, index) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: ((context) => MobileDetailsPage(
                                          currentMobile:
                                              popularMobilePhones[index],
                                        )),
                                  ),
                                );
                              },
                              child: MobileCard(
                                currentList: popularMobilePhones[index],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 205, 196),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: Text(
                        "Others 🔥",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: SizedBox(
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                          itemCount: otherMobilePhones.length,
                          itemBuilder: ((context, index) => GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: ((context) => MobileDetailsPage(
                                          currentMobile:
                                              otherMobilePhones[index])),
                                    ),
                                  );
                                },
                                child: MobileCard(
                                  currentList: otherMobilePhones[index],
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                    foregroundColor: Color.fromARGB(255, 238, 238, 238),
                    fixedSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 24,
                      ),
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
