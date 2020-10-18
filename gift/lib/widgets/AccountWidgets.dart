import 'package:flutter/material.dart';

class AccountDetailCard extends StatelessWidget {
  const AccountDetailCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) => Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2.0,
        child: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Cake",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Qty 30",
                    style: TextStyle(
                      color: Color(0xFF9BA7C6),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rs 1500",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "15-04-2020",
                    style: TextStyle(
                      color: Color(0xFF6C6D6D),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
