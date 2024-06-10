import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/login.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 100,
            left: 170,
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // for user name
                userNameTextField(),
                const SizedBox(
                  height: 25,
                ),
                // for password
                passwordField(),
                const SizedBox(
                  height: 55,
                ),
                // button for login
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.deepPurple,
                  ),
                  child: const Text(
                    'login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Forget your password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      height: 2,
                      width: 70,
                      color: Colors.black54,
                    ),
                    const Text(
                      'or connect with',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4),
                      height: 2,
                      width: 70,
                      color: Colors.black54,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'facebook',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.g_translate_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'google',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container passwordField() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        //color: Colors.purple[700],
        color: Colors.black,
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.lock_open_outlined,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 18, top: 3, bottom: 3),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container userNameTextField() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        //color: Colors.purple[700],
        color: Colors.black,
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 18, top: 3, bottom: 3),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
