import 'package:flutter/material.dart';
import 'package:inventory/template/fragment/goods_in_fragment.dart';
import 'package:inventory/template/fragment/goods_out_fragment.dart';

class InOutFragment extends StatefulWidget {
  @override
  _InOutFragmentState createState() => _InOutFragmentState();
}

class _InOutFragmentState extends State<InOutFragment> {
  int _selectedIndex = 0;

  List<String> categories = ['Goods In', 'Goods Out'];
  List<Widget> _widgetOption = <Widget>[
    GoodsInFragment(),
    GoodsOutFragment(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 60.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 210.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: _selectedIndex == index
                                ? Theme.of(context).accentColor
                                : Theme.of(context).scaffoldBackgroundColor,
                            width: 5.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: TextStyle(
                            fontSize: 18.0,
                            color: _selectedIndex == index
                                ? Theme.of(context).accentColor
                                : Colors.black),
                      ),
                    ),
                  ),
                );
              }),
        ),
        _widgetOption.elementAt(_selectedIndex),
      ],
    );
  }
}
