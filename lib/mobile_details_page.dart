import 'package:flutter/material.dart';
import 'package:mobile_shop/data.dart';

class MobileDetailsPage extends StatefulWidget {
  const MobileDetailsPage({
    super.key,
    required this.currentMobile,
  });

  final Mobile currentMobile;

  @override
  State<MobileDetailsPage> createState() => _MobileDetailsPageState();
}

class _MobileDetailsPageState extends State<MobileDetailsPage> {
  void additemToCart(Mobile mobile) {
    cartItems.add(mobile);
  }

  String buttonText = "Add to Cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currentMobile.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Image.asset(
                widget.currentMobile.image,
                height: 220,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: widget.currentMobile.color.withOpacity(0.25),
                      border: Border.all(
                        color: widget.currentMobile.color.withOpacity(1),
                        width: 1,
                      )),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 24,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            widget.currentMobile.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 12),
                        child: Text(
                          widget.currentMobile.price,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 410,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 80,
                                width: 314,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: widget.currentMobile.color
                                        .withOpacity(0.5),
                                    border: Border.all(
                                      color: widget.currentMobile.color
                                          .withOpacity(0.5),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: GridTile(
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            top: 12,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            "Company",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            widget.currentMobile.company,
                                            style: const TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 314,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: widget.currentMobile.color
                                        .withOpacity(0.5),
                                    border: Border.all(
                                      color: widget.currentMobile.color
                                          .withOpacity(1),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: GridTile(
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            top: 12,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            "Description",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 20),
                                          child: Text(
                                            widget.currentMobile.description,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                InfoCard(
                                  currentColor: widget.currentMobile.color,
                                  currentSpecAnswer:
                                      widget.currentMobile.camera,
                                  currentSpec: "Camera",
                                ),
                                InfoCard(
                                  currentColor: widget.currentMobile.color,
                                  currentSpecAnswer:
                                      widget.currentMobile.storage,
                                  currentSpec: "Storage",
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InfoCard(
                                  currentColor: widget.currentMobile.color,
                                  currentSpecAnswer: widget.currentMobile.size,
                                  currentSpec: "Dimensions",
                                ),
                                InfoCard(
                                  currentColor: widget.currentMobile.color,
                                  currentSpecAnswer:
                                      widget.currentMobile.display,
                                  currentSpec: "Display",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 10,
              ),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade900,
                  foregroundColor: Colors.grey.shade200,
                  minimumSize: const Size(double.infinity, 54),
                ),
                onPressed: () {
                  cartItems.contains(widget.currentMobile)
                      ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "${widget.currentMobile.name} already exists in Cart")))
                      : setState(() {
                          additemToCart(widget.currentMobile);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "${widget.currentMobile.name} added to Cart")));
                          buttonText = "Added To Cart";
                        });
                },
                icon: const Icon(Icons.shopping_cart_outlined),
                label: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 20,
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

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.currentSpecAnswer,
    required this.currentSpec,
    required this.currentColor,
  });

  final String currentSpecAnswer;
  final String currentSpec;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        width: 150,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: currentColor.withOpacity(0.5),
            border: Border.all(
              color: currentColor.withOpacity(1),
              width: 1,
            ),
          ),
          child: GridTile(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 2,
                  ),
                  child: Text(
                    currentSpec,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    currentSpecAnswer, // Use currentSpecAnswer directly
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
