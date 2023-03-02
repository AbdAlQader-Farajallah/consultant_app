import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_screen.dart';

class LoginAndSignupPage extends StatefulWidget {
  static const String id = "LoginAndSignupPage";

  const LoginAndSignupPage({Key? key}) : super(key: key);

  @override
  State<LoginAndSignupPage> createState() => _LoginAndSignupPageState();
}

class _LoginAndSignupPageState extends State<LoginAndSignupPage>
    with TickerProviderStateMixin {
  late PageController _pageController;
  bool isVisible = false;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFF6589FF), Color(0xFF003AFC)],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Image.asset("images/icon.png"),
                  const Text(
                    "Pal Mail",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(24),
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                elevation: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: TabBar(
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Color(0xFF6589FF),
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(120),
                                      color: const Color(0xFF6589FF),
                                    ),
                                    controller: tabController,
                                    isScrollable: true,
                                    labelPadding: const EdgeInsets.symmetric(
                                        horizontal: 48),
                                    tabs: const [
                                      Expanded(
                                        child: Tab(
                                          child: Text("Login"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Tab(
                                          child: Text("SignUp"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: tabController,
                              children: [
                                ListView(
                                  children: [
                                    const TextField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email),
                                        prefixIconColor: Color(0xFF6589FF),
                                        border: UnderlineInputBorder(),
                                        hintText: "Write email",
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: !isVisible,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.lock),
                                        prefixIconColor: Color(0xFF6589FF),
                                        border: UnderlineInputBorder(),
                                        hintText: "Write password",
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                print(isVisible);
                                                isVisible = !isVisible;
                                                print(isVisible);
                                              });
                                            },
                                            icon: isVisible
                                                ? Icon(
                                              Icons.visibility,
                                              color: Colors.grey,
                                            )
                                                : Icon(
                                              Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                          ),
                                      ),
                                    ),
                                    const SizedBox(height: 48),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context, HomePage.id);
                                      },
                                      child: Container(
                                        height: 50.0,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xFF6589FF),
                                              Color(0xFF003AFC),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ListView(
                                  children: [
                                    const TextField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        prefixIconColor: Color(0xFF6589FF),
                                        border: UnderlineInputBorder(),
                                        hintText: "Write your name",
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const TextField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email),
                                        prefixIconColor: Color(0xFF6589FF),
                                        border: UnderlineInputBorder(),
                                        hintText: "Write your email",
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: !isVisible,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.lock),
                                        prefixIconColor: Color(0xFF6589FF),
                                          border: UnderlineInputBorder(),
                                          hintText: "Write password",
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                isVisible = !isVisible;
                                              });
                                            },
                                            icon: isVisible
                                                ? Icon(
                                                    Icons.visibility,
                                                    color: Colors.grey,
                                                  )
                                                : Icon(
                                                    Icons.visibility_off,
                                                    color: Colors.grey,
                                                  ),
                                          ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const SizedBox(height: 40),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context, HomePage.id);
                                      },
                                      child: Container(
                                        height: 50.0,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xFF6589FF),
                                              Color(0xFF003AFC),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Sign Up',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Row(
                                      children: const [
                                        Expanded(
                                          child: Divider(
                                            indent: 10,
                                            color: Colors.grey,
                                            thickness: 1,
                                            endIndent: 10,
                                          ),
                                        ),
                                        Text(
                                          "OR",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Expanded(
                                          child: Divider(
                                            indent: 10,
                                            color: Colors.grey,
                                            thickness: 1,
                                            endIndent: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              gradient: const LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xFF6589FF),
                                                  Color(0xFF003AFC)
                                                ],
                                              ),
                                            ),
                                            child: const Icon(
                                              FontAwesomeIcons.google,
                                              color: Colors.white,
                                              size: 32,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              gradient: const LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xFF003AFC),
                                                  Color(0xFF6589FF),
                                                ],
                                              ),
                                            ),
                                            child: const Icon(
                                              FontAwesomeIcons.facebook,
                                              color: Colors.white,
                                              size: 32,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              gradient: const LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xFF6589FF),
                                                  Color(0xFF003AFC)
                                                ],
                                              ),
                                            ),
                                            child: const Icon(
                                              FontAwesomeIcons.twitter,
                                              color: Colors.white,
                                              size: 32,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              gradient: const LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xFF003AFC),
                                                  Color(0xFF6589FF),
                                                ],
                                              ),
                                            ),
                                            child: const Icon(
                                              FontAwesomeIcons.linkedinIn,
                                              color: Colors.white,
                                              size: 32,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
