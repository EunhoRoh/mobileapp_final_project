import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'package:shrine/search.dart';
import 'package:shrine/mypage.dart';
import 'package:shrine/f_hotels.dart';
import 'package:shrine/login.dart';
import 'package:shrine/home.dart';
import 'package:shrine/detail.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const Hotels());

class Hotels extends StatelessWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
      ),
    );
    Color color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: 'Favorite Hotels',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Favorite Hotels'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text(
                  'Pages',
                  style: TextStyle(height: 5, fontSize: 30, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.home,
                      semanticLabel: 'home',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
              ListTile(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.search,
                      semanticLabel: 'search',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Search()),
                      );
                    },
                  ),
                  title: const Text('Search'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                  }),
              ListTile(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.location_city,
                      semanticLabel: 'hotel',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Hotels()),
                      );
                    },
                  ),
                  title: const Text('Favorite Hotel'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Hotels()),
                    );
                  }),
              ListTile(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.person,
                      semanticLabel: 'my page',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyPage()),
                      );
                    },
                  ),
                  title: const Text('My page'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyPage()),
                    );
                  }),
              ListTile(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.logout,
                      semanticLabel: 'logout',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                  title: const Text('Log Out'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  }