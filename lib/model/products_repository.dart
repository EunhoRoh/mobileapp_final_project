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

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts() {
    const allProducts = <Product> [
      Product(
        id: 0,
        name: 'Grand Hyatt Seoul',
        phoneNum: '+37 02 427 0603',
        description: 'Grand Hyatt Seoul has its own \nshopping arcade, ice skating rink and \nswimming pools. The hotel is \nsurrounded by Namsan Mountain \nand Han River.',
        location: 'Yongsan-Gu, Seoul',
        star: 3,
      ),
      Product(
        id: 1,
        name: 'Karaksa hotel',
        phoneNum: '+61 314 567 02',
        description: 'Karaksa hotel grande Shin-Osaka \nTower is situated 400 metres from TKP \nGarden City Shin Osaka, 500 metres \nfrom Arde!',
        location: 'Yodogawa Ward, Osaka',
        star: 4,
      ),
      Product(
        id: 2,
        name: 'The square hotel GINZA',
        phoneNum: '+61 257 123 04',
        description: 'Conveniently located in the centre\n of Tokyo, a restaurant, free WiFi \nand a fitness centre.',
        location: 'Chuo Ward, Tokyo',
        star: 2,
      ),
      Product(
        id: 3,
        name: 'Green World Hotel',
        phoneNum: '+13 8241 123 735',
        description: 'Boasting its convenient location, \nonly a 5-minute walk from Taipei \nRailway Station.',
        location: 'Ximending, Taipei',
        star: 5,
      ),
      Product(
        id: 4,
        name: 'Ameritania',
        phoneNum: '+24 1904 8530',
        description: 'This New York City hotel is located \nin the Theatre District',
        location: 'Manhattan, New York',
        star: 4,
      ),
      Product(
        id: 5,
        name: 'Millennium Biltmore',
        phoneNum: '+24 0412 4290',
        description: 'This luxurious design hotel is just a \n4-minute walk from Pershing Square \nSubway Station.',
        location: 'Downtown Los Angeles',
        star: 3,
      ),
    ];

    return allProducts;
    /*
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }*/

  }
}
