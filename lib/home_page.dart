import 'package:flutter/material.dart';
import 'package:flutter_application_4/list_item.dart';
import 'package:flutter_application_4/makanan.dart';
import 'package:flutter_application_4/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Makanan> listMenu = Makanan.dummyData;

    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.list_alt,
                size: 30,
              ),
              Text(
                'List Kuliner',
                style: headerH1,
              )
            ],
          ),
          SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                  itemCount: listMenu.length,
                  itemBuilder: (context, index) {
                    return ListItem(Menu: listMenu[index]);
                  }))
        ],
      ),
    );
  }
}
