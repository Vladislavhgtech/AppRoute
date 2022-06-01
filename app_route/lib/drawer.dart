import 'package:flutter/material.dart';

class DrawerMenuItem {
  Text text;
  Icon icon;
  DrawerMenuItem({required this.text, required this.icon});
}

List<DrawerMenuItem> listDrawerMenuItem = [
  DrawerMenuItem(text: const Text('Home'), icon: const Icon(Icons.home)),
  DrawerMenuItem(text: const Text('ARTISTS'), icon: const Icon(Icons.person)),
];

Widget buildDrawler() {
  return Drawer(
    child: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
                children: listDrawerMenuItem
                    .map((item) => Card(
                          child: ListTile(
                              leading: item.icon,
                              title: item.text,
                              trailing: const Icon(Icons.arrow_forward_ios)),
                        ))
                    .toList()),
            flex: 3,
          ),
        ],
      ),
    ),
  );
}

Widget buildEndDrowler() {
  return Drawer();
}
