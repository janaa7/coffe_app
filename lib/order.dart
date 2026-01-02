import 'package:flutter/material.dart';
import 'package:untitled/core/txt_style.dart';
import 'core/colors_manager.dart';

class Order extends StatefulWidget {
  Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool deliver = true;
  bool pickUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 11),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "Order",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.primaryColor,
                  ),
                ),
                SizedBox(width: 48),
              ],
            ),

            SizedBox(height: 18),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pickUp = false;
                            deliver = true;
                          });
                        },
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: deliver ? ColorsManager.brown : Color.fromRGBO(240, 240, 240, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text("Deliver", style: TxtStyle.font400Size14Black),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pickUp = true;
                            deliver = false;
                          });
                        },
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: pickUp ? ColorsManager.brown : Color.fromRGBO(240, 240, 240, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text("Pick Up", style: TxtStyle.font400Size14Black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Jl. Kpg Sutoyo",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),

                  SizedBox(height: 18),

                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade300, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit, size: 14, color: Colors.grey),
                            SizedBox(width: 4),
                            Text(
                              "Edit Address",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade300, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.note_add, size: 14, color: Colors.grey),
                            SizedBox(width: 4),
                            Text(
                              "Add Note",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 22),

                  Divider(height: 1, color: ColorsManager.borderGrey),

                  SizedBox(height: 28),

                  Row(
                    children: [
                      Image.asset("assets/images/cc.png", width: 48, height: 48),
                      SizedBox(width: 14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cappucino", style: TxtStyle.font600Size16Black),
                          SizedBox(height: 2),
                          Text("with Chocolate", style: TxtStyle.font400Size12grey),
                        ],
                      ),
                      Spacer(),
                      Image.asset("assets/images/fframe.png", width: 96, height: 32),
                    ],
                  ),

                  SizedBox(height: 18),

                  Divider(height: 1, color: ColorsManager.borderGrey),

                  SizedBox(height: 28),

                  Container(
                    height: 51,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: ColorsManager.brown,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.local_offer_rounded,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "1 Discount is applied",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Text(
                    "Payment Summary",
                    style: TxtStyle.font600Size16Black,
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Text("Price", style: TxtStyle.font400Size14Black),
                      Spacer(),
                      Text("\$ 4.53", style: TxtStyle.font600Size16Black),
                    ],
                  ),

                  SizedBox(height: 8),

                  Row(
                    children: [
                      Text("Delivery Fee", style: TxtStyle.font400Size14Black),
                      Spacer(),
                      Text(
                        "\$2.0",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("\$ 1.0", style: TxtStyle.font600Size16Black),
                    ],
                  ),

                  SizedBox(height: 24),

                  Divider(height: 1, color: ColorsManager.borderGrey),

                  SizedBox(height: 14),


                  Row(
                    children: [
                      Text("Total Payment", style: TxtStyle.font400Size14Black),
                      Spacer(),
                      Text("\$ 5.53", style: TxtStyle.font600Size16Black),
                    ],
                  ),
                ],
              ),

            ),

            SizedBox(height: 18),

            // ✅ THIS IS THE PART YOU WANT LIKE THE ORIGINAL (white rounded card)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.grey.shade200, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // wallet icon badge
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: ColorsManager.brown, width: 1.5),
                            ),
                            child: Icon(
                              Icons.account_balance_wallet_outlined,
                              size: 18,
                              color: ColorsManager.brown,
                            ),
                          ),

                          SizedBox(width: 12),

                          // Cash pill (with text)
                          Container(
                            height: 28,
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: ColorsManager.brown,
                            ),
                            child: Center(
                              child: Text(
                                "Cash",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          Text("\$ 5.53", style: TxtStyle.font600Size16Black),

                          Spacer(),

                          // 3 dots circle
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade400,
                            ),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 14),

                      // Order button with text
                      Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: ColorsManager.brown,
                        ),
                        child: Center(
                          child: Text(
                            "Order",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}