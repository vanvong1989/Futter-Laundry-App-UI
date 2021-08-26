import 'package:flutter/material.dart';
import 'package:laundry/StyleScheme.dart';
import 'OrderConfirmPage.dart';
import 'main.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: trackOrderPage(),
    );
  }
}

class trackOrderPage extends StatefulWidget {
  trackOrderPage({Key? key}) : super(key: key);

  @override
  _trackOrderPageState createState() => _trackOrderPageState();
}

class _trackOrderPageState extends State<trackOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderConfirmPage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        title: Center(
          child: Text(
            "Track Order",
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Number 1001",
              style: headingStyle,
            ),
            Text(
              "Order Confirmed. Ready to pick",
              style: contentStyle.copyWith(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 1,
              color: Colors.grey,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 13, top: 40),
                  width: 4,
                  height: 400,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    statusWidget("confirmed", "Confirmed", true),
                    statusWidget("onBoard2", "Picked Up", false),
                    statusWidget("servicesImg", "In Process", false),
                    statusWidget("shipped", "Shipped", false),
                    statusWidget("Delivery", "Delivered", false),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 1,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Colors.orange,
                      ),
                    ),
                    child: Text(
                      "Cancel order",
                      style: contentStyle.copyWith(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.orange,
                  ),
                  child: Text(
                    "My Orders",
                    style: contentStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Track Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_list,
            ),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Container statusWidget(String img, String status, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isActive) ? Colors.orange : Colors.white,
              border: Border.all(
                color: (isActive) ? Colors.transparent : Colors.orange,
                width: 3,
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/$img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                status,
                style: contentStyle.copyWith(
                  color: (isActive) ? Colors.orange : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
