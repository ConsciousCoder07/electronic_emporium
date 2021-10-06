import 'package:flutter/material.dart';
import 'package:electronic_emporium/helpers/custom_route.dart';
import 'package:electronic_emporium/screens/chatbot_screen.dart';
import '../providers/auth.dart';
import '../screens/orders_screen.dart';
import '../screens/user_products_screen.dart';
import '../screens/user_address_screen.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Hello User!"),
            automaticallyImplyLeading: false,
          ),
          // Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text("Shop"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Orders"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
              // Navigator.of(context).pushReplacement(CustomRoute(builder: (routeContext) => OrdersScreen()));
            },
          ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.edit),
          //   title: Text("Manage Products"),
          //   onTap: () {
          //     Navigator.of(context)
          //         .pushReplacementNamed(UserProductsScreen.routeName);
          //   },
          // ),
          
          Divider(),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("ChatBot"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ChatBot.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_pin),
            title: Text("Your Address"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserAddressScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
            onTap: () {
              Navigator.of(context).pop();
              // always navigate to home route after loggin out so auth_screen appears
              Navigator.of(context).pushReplacementNamed('/');
              Provider.of<Auth>(context, listen: false).logout();
            },
          ),
          Divider()
        ],
      ),
    );
  }
}
