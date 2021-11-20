// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:shrine/home.dart';
import 'package:shrine/message_revise.dart';
import 'package:shrine/search.dart';
import 'package:shrine/mypage.dart';
import 'package:shrine/f_hotels.dart';
import 'package:shrine/login.dart';
import 'package:shrine/home.dart';
import 'package:image_picker/image_picker.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                '개인 페이지',
                style: TextStyle(height: 5, fontSize: 30, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.contact_page,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MessageRevise()),
                    );
                  },
                ),
                title: const Text('연락처 등록'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MessageRevise()),
                  );
                }),
            ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.contact_page_outlined,
                    semanticLabel: '연락처 관리',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                  },
                ),
                title: const Text('연락처 관리'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Search()),
                  );
                }),
            ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.message,
                    semanticLabel: 'SOS 메세지 수정',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Hotels()),
                    );
                  },
                ),
                title: const Text('SOS 메세지 수정'),
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
                    semanticLabel: '개인 페이지',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyPage()),
                    );
                  },
                ),
                title: const Text('개인 페이지'),
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
                    semanticLabel: '로그아웃',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
                title: const Text('로그아웃'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 25.0),
            Column(
              children: <Widget> [
                const Align(
                  alignment: Alignment.centerLeft,
                  child:Text(
                    '내 정보',
                    style: TextStyle(height: 1, fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  //height: 300.0,
                  //width: 300.0,
                  child: Column(
                    children:[
                      Row(
                        children: [

                        ],
                      ),
                      Row(
                        children: [

                        ],
                      ),
                      Row(
                        children: [

                        ],
                      ),
                      Row(
                        children: [

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 130.0, right: 130.0),
              child :ElevatedButton(
                child: Text('저장'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red, width: 2.0)))),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
