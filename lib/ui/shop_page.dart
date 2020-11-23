import 'package:flutter/material.dart';
import 'package:flutter_app/model/custum_color.dart';
import 'package:flutter_app/ui/provider/color_provider.dart';

import 'cart_page.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  ColorProvider colorProvider;

  List<CustumColor> colors = [
    CustumColor(Colors.black, 'Black'),
    CustumColor(Colors.red, 'Red'),
    CustumColor(Colors.blue, 'Blue'),
    CustumColor(Colors.yellow, 'yellow'),
    CustumColor(Colors.orange, 'Orange'),
    CustumColor(Colors.cyan, 'Cyan'),
    CustumColor(Colors.purple, 'Purple'),
    CustumColor(Colors.white, 'White')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('안녕햐세요'), leading: IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartPage()),
        );
      },),),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView(
      children: colors.map((e) => _buildListTile(e)).toList(),
    );
  }

  Widget _buildListTile(CustumColor e) {
    return ListTile(
      leading: Container(
        width: 30,
        height: 30,
        color: e.color,
      ),
      title: Text(e.c_name),
      trailing: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          colorProvider.increase(e);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          );
        },
      ),
    );
  }
}
