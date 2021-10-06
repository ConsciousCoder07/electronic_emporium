import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class UserAddressScreen  extends StatelessWidget {
  static const routeName = '/user-address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locate Yourself'),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
      ),
    );
  }
}