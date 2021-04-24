import 'package:auth_screen/constans.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/person.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
// testing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SIGN IN', style: Theme.of(context).textTheme.display1),
                        Text('SIGN Up', style: Theme.of(context).textTheme.button),
                      ],
                    ),
                    Spacer(),
                    TextInput(inputIcon: Icon(Icons.alternate_email, color: kPrimaryColor), hintText: 'EMAIL ADRESS'),
                    TextInput(inputIcon: Icon(Icons.lock, color: kPrimaryColor), hintText: 'PASSWORD'),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 23.0),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            child: Icon(Icons.app_blocking_rounded, color: Colors.white.withOpacity(0.5)),
                          ),
                          SizedBox(width: 18),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            child: Icon(Icons.access_time_sharp, color: Colors.white.withOpacity(0.5)),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  final String hintText;
  final Icon inputIcon;
  const TextInput({
    Key key,
    @required this.hintText,
    @required this.inputIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
          child: inputIcon,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(hintText: hintText),
          ),
        ),
      ],
    );
  }
}
// TODO: hide password input
