import 'package:flutter/material.dart';
import 'package:flutter_app/model/custum_color.dart';
import 'package:flutter_app/ui/provider/color_provider.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ColorProvider colorProvider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('장바구니')),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Expanded(
      child: ListView(
        children: colorProvider.getcolorList.map((e) => _buildListTile(e)),
      ),
    );
  }
//color
  Widget _buildListTile(CustumColor color) {
    return ListTile(
      leading: Container(
        color: color.color,
      ),
      title: Text(color.c_name),
      trailing: InkWell(
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            colorProvider.decrease(color);
          },
        ),
      ),
    );
  }
}
