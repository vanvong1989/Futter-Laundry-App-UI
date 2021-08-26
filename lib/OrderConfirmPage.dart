import 'package:flutter/material.dart';
import 'PickUpTimePage.dart';
import 'package:laundry/StyleScheme.dart';
import 'TrackOrderPage.dart';

class OrderConfirmPage extends StatelessWidget {
  const OrderConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: orderConfirmPage(),
    );
  }
}

class orderConfirmPage extends StatefulWidget {
  orderConfirmPage({Key? key}) : super(key: key);

  @override
  _orderConfirmPageState createState() => _orderConfirmPageState();
}

class _orderConfirmPageState extends State<orderConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PickUpTimePage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        title: Center(
          child: Text(
            "Order Confirmed",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              )),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/onBoard2.png'),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Thank you for choosing us!", style: headingStyle),
            Text(
              "Your order has been placed and we will pick up your clothes on time!",
              style: contentStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order ID",
                  style: headingStyle,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "1001",
                    style: headingStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Clothes Count",
                  style: headingStyle,
                ),
                Text(
                  "7",
                  style: headingStyle,
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Final Amount",
                  style: headingStyle,
                ),
                Text(
                  "225",
                  style: headingStyle,
                ),
              ],
            ),
            divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick up Date & Time",
                  style: headingStyle,
                ),
                Text(
                  "Wednesday, 07 Aug, 2020, Between 10:00 AM & 12:00 PM",
                  style: contentStyle.copyWith(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: headingStyle,
                ),
                Text(
                  "Cash",
                  style: headingStyle,
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrackOrderPage()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 70,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text(
                    "TRACK ORDER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
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

  Container divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 1,
      color: Colors.grey,
    );
  }
}
