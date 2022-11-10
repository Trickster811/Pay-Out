import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:pay_out/functions.dart';
import 'package:pay_out/screens/about_page.dart';
import 'package:pay_out/screens/settings.dart';

class SignInScreen extends StatelessWidget {
  double appBarHeightSize = 0;
  // Variables to get user entries
  final my_con_1 = TextEditingController();
  final my_con_2 = TextEditingController();
  // Form key
  final _dropdownFormKey = GlobalKey<FormState>();
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
        'Log In',
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
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Please enter fill this form',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Form(
                key: _dropdownFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Phone',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 13,
                          // height: 1.,
                        ),
                        cursorColor: Theme.of(context).iconTheme.color,
                        decoration: InputDecoration(
                          icon: SvgPicture.asset(
                            'assets/icons/calling.5.svg',
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'enter your phone number',
                        ),
                        // value: dropdownvalue_1,
                        controller: my_con_1,
                        validator: RequiredValidator(
                          errorText: 'Please fill your number',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        cursorColor: Theme.of(context).iconTheme.color,
                        obscureText: true,
                        style: TextStyle(
                          fontSize: 13,
                          // height: 1.5,
                        ),
                        decoration: InputDecoration(
                          icon: SvgPicture.asset(
                            'assets/icons/lock.6.svg',
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'enter your password',
                        ),
                        // value: dropdownvalue_1,
                        controller: my_con_2,
                        validator: RequiredValidator(
                          errorText: 'Please fill your password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    // Submit Button
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
