import 'package:flutter/material.dart';
import 'package:sneakers_shop/components/navbar.dart';
import 'package:sneakers_shop/screens/cart_page.dart';
import 'package:sneakers_shop/screens/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // shop page

  List<Widget> pages = [
    const ShopPage(),
    const CartPage(),
  ];

  // cart page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) {
          changeIndex(index);
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 5),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.orange,
                  size: 30,
                ),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange[400],
        child: const DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('images/8.webp'),
                      color: Colors.white,
                      width: 200,
                    ),
                    Divider(
                      height: 100,
                      color: Colors.white,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
