import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_out/functions.dart';
import 'package:pay_out/screens/about_page.dart';
import 'package:pay_out/screens/components/sign_in_page.dart';
import 'package:pay_out/screens/components/sign_up_page.dart';
import 'package:pay_out/screens/settings.dart';

class VendorScreen extends StatelessWidget {
  double appBarHeightSize = 0;
  @override
  Widget build(BuildContext context) {
    List<List> menuItemList = [
      [
        'assets/icons/setting.2.svg',
        'Settings',
        ThemeScreen(),
      ],
      [
        'assets/icons/info-square.4.svg',
        'About',
        AboutScreen(),
      ],
    ];
    AppBar appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        'Vendor',
        style: TextStyle(
          color: Theme.of(context).iconTheme.color,
          fontSize: 25,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            UsualFunctions.openDialog(context, menuItemList, appBarHeightSize);
          },
          icon: SvgPicture.asset(
            'assets/icons/more-circle.1.svg',
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 0, 65, 117),
              Color.fromARGB(255, 118, 193, 255),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Welcome To Pay Out\nVendor',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SignInScreen()),
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    vertical: 25.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SignUpScreen()),
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    vertical: 25.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Spacer(),
              SvgPicture.asset(
                'assets/images/one_chat_logo.svg',
                height: 55,
                width: 55,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
