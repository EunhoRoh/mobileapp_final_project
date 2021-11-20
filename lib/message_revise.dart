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


class MessageRevise extends StatelessWidget {
  const MessageRevise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: const <Widget> [
                Text(
                  'SOS 메세지 수정',
                  style: TextStyle(height: 1, fontSize: 30, color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child:Text(
                    '  메세지를 적으세요',
                    style: TextStyle(height: 1, fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term',
                    ),
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
