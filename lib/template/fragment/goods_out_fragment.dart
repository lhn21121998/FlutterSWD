import 'package:flutter/material.dart';

class GoodsOutFragment extends StatefulWidget {
  @override
  _GoodsOutFragmentState createState() => _GoodsOutFragmentState();
}

class _GoodsOutFragmentState extends State<GoodsOutFragment> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Name',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Name'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Size',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Size'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Color',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Color'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Quantity',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Quantity'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 200.0,
                height: 200.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage('assets/img/shoes1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'Goods Out',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
