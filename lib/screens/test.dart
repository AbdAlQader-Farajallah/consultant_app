import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestPage extends StatefulWidget {
  static const String id = "TestPage";

  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _LoginAndSignupPageState();
}

class _LoginAndSignupPageState extends State<TestPage>
    with TickerProviderStateMixin {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black12,
          // child: Stack(
          //   children: [
          //     Container(
          //       height: 300,
          //       decoration: const BoxDecoration(
          //         gradient: LinearGradient(
          //           begin: Alignment.centerLeft,
          //           end: Alignment.centerRight,
          //           colors: [Color(0xFF6589FF), Color(0xFF003AFC)],
          //         ),
          //         borderRadius: BorderRadius.only(
          //           bottomLeft: Radius.circular(60),
          //           bottomRight: Radius.circular(60),
          //         ),
          //       ),
          //     ),
          //     Column(
          //       children: [
          //         const SizedBox(
          //           height: 24,
          //         ),
          //         Image.asset("images/icon.png"),
          //         const Text(
          //           "Pal Mail",
          //           style: TextStyle(color: Colors.white, fontSize: 28),
          //         ),
          //         const SizedBox(
          //           height: 8,
          //         ),
          //         Expanded(
          //           child: Container(
          //             margin: const EdgeInsets.all(24),
          //             padding: const EdgeInsets.all(24),
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               border: Border.all(color: Colors.white),
          //               borderRadius:
          //                   const BorderRadius.all(Radius.circular(50)),
          //             ),
          //             child: Column(
          //               children: [
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Card(
          //                       shape: RoundedRectangleBorder(
          //                         borderRadius: BorderRadius.circular(50),
          //                       ),
          //                       elevation: 3,
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           color: Colors.white70,
          //                           borderRadius: BorderRadius.circular(50),
          //                         ),
          //                         child: TabBar(
          //                           labelColor: Colors.white,
          //                           indicatorColor: const Color(0xFF6589FF),
          //                           unselectedLabelColor: Color(0xFF003AFC),
          //                           indicator: BoxDecoration(
          //                             borderRadius: BorderRadius.circular(120),
          //                             color: const Color(0xFF6589FF),
          //                           ),
          //                           controller: tabController,
          //                           isScrollable: true,
          //                           labelPadding: const EdgeInsets.symmetric(
          //                               horizontal: 48),
          //                           tabs: const [
          //                             Expanded(
          //                               child: Tab(
          //                                 child: Text("Login"),
          //                               ),
          //                             ),
          //                             Expanded(
          //                               child: Tab(
          //                                 child: Text("SignUp"),
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //                 const SizedBox(
          //                   height: 32,
          //                 ),
          //                 Expanded(
          //                   child: TabBarView(
          //                     controller: tabController,
          //                     children: [
          //                       ListView(
          //                         children: [
          //                           const TextField(
          //                             keyboardType: TextInputType.emailAddress,
          //                             decoration: InputDecoration(
          //                               border: UnderlineInputBorder(),
          //                               hintText: "Write email",
          //                             ),
          //                           ),
          //                           const SizedBox(height: 10),
          //                           const TextField(
          //                             keyboardType:
          //                                 TextInputType.visiblePassword,
          //                             obscureText: true,
          //                             decoration: InputDecoration(
          //                               border: UnderlineInputBorder(),
          //                               hintText: "Write password",
          //                             ),
          //                           ),
          //                           const SizedBox(height: 48),
          //                           GestureDetector(
          //                             onTap: () {
          //                               //add functions of this button here
          //                             },
          //                             child: Container(
          //                               height: 50.0,
          //                               decoration: const BoxDecoration(
          //                                 gradient: LinearGradient(
          //                                   begin: Alignment.centerLeft,
          //                                   end: Alignment.centerRight,
          //                                   colors: [
          //                                     Color(0xFF003AFC),
          //                                     Color(0xFF6589FF)
          //                                   ],
          //                                 ),
          //                                 borderRadius: BorderRadius.all(
          //                                     Radius.circular(30)),
          //                               ),
          //                               child: const Center(
          //                                 child: Text(
          //                                   'Login',
          //                                   style: TextStyle(
          //                                       fontWeight: FontWeight.bold,
          //                                       color: Colors.white,
          //                                       fontSize: 16),
          //                                 ),
          //                               ),
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                       ListView(
          //                         children: [
          //                           const TextField(
          //                             keyboardType: TextInputType.name,
          //                             decoration: InputDecoration(
          //                               border: UnderlineInputBorder(),
          //                               hintText: "Write your name",
          //                             ),
          //                           ),
          //                           const SizedBox(height: 10),
          //                           const TextField(
          //                             keyboardType: TextInputType.emailAddress,
          //                             decoration: InputDecoration(
          //                               border: UnderlineInputBorder(),
          //                               hintText: "Write your email",
          //                             ),
          //                           ),
          //                           const SizedBox(height: 10),
          //                           const TextField(
          //                             keyboardType:
          //                                 TextInputType.visiblePassword,
          //                             obscureText: true,
          //                             decoration: InputDecoration(
          //                               border: UnderlineInputBorder(),
          //                               hintText: "Write password",
          //                             ),
          //                           ),
          //                           const SizedBox(height: 10),
          //                           const SizedBox(height: 40),
          //                           GestureDetector(
          //                             onTap: () {
          //                               //add functions of this button here
          //                             },
          //                             child: Container(
          //                               height: 50.0,
          //                               decoration: const BoxDecoration(
          //                                 gradient: LinearGradient(
          //                                   begin: Alignment.centerLeft,
          //                                   end: Alignment.centerRight,
          //                                   colors: [
          //                                     Color(0xFF003AFC),
          //                                     Color(0xFF6589FF)
          //                                   ],
          //                                 ),
          //                                 borderRadius: BorderRadius.all(
          //                                   Radius.circular(30),
          //                                 ),
          //                               ),
          //                               child: const Center(
          //                                 child: Text(
          //                                   'Sign Up',
          //                                   style: TextStyle(
          //                                     fontWeight: FontWeight.bold,
          //                                     color: Colors.white,
          //                                     fontSize: 16,
          //                                   ),
          //                                 ),
          //                               ),
          //                             ),
          //                           ),
          //                           const SizedBox(
          //                             height: 24,
          //                           ),
          //                           Row(
          //                             children: const [
          //                               Expanded(
          //                                 child: Divider(
          //                                   indent: 10,
          //                                   color: Colors.grey,
          //                                   thickness: 1,
          //                                   endIndent: 10,
          //                                 ),
          //                               ),
          //                               Text(
          //                                 "OR",
          //                                 style: TextStyle(color: Colors.grey),
          //                               ),
          //                               Expanded(
          //                                 child: Divider(
          //                                   indent: 10,
          //                                   color: Colors.grey,
          //                                   thickness: 1,
          //                                   endIndent: 10,
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                           const SizedBox(height: 24),
          //                           Row(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.spaceAround,
          //                             children: [
          //                               GestureDetector(
          //                                 onTap: () {},
          //                                 child: Container(
          //                                   padding: const EdgeInsets.all(8),
          //                                   decoration: BoxDecoration(
          //                                       borderRadius:
          //                                           BorderRadius.circular(50),
          //                                       gradient: const LinearGradient(
          //                                         begin: Alignment.centerLeft,
          //                                         end: Alignment.centerRight,
          //                                         colors: [
          //                                           Color(0xFF6589FF),
          //                                           Color(0xFF003AFC)
          //                                         ],
          //                                       )),
          //                                   child: const Icon(
          //                                     FontAwesomeIcons.facebook,
          //                                     color: Colors.white,
          //                                     size: 40,
          //                                   ),
          //                                 ),
          //                               ),
          //                               GestureDetector(
          //                                 onTap: () {},
          //                                 child: Container(
          //                                   padding: const EdgeInsets.all(8),
          //                                   decoration: BoxDecoration(
          //                                       borderRadius:
          //                                           BorderRadius.circular(50),
          //                                       gradient: const LinearGradient(
          //                                         begin: Alignment.centerLeft,
          //                                         end: Alignment.centerRight,
          //                                         colors: [
          //                                           Color(0xFF6589FF),
          //                                           Color(0xFF003AFC)
          //                                         ],
          //                                       )),
          //                                   child: const Icon(
          //                                     FontAwesomeIcons.twitter,
          //                                     color: Colors.white,
          //                                     size: 40,
          //                                   ),
          //                                 ),
          //                               ),
          //                               GestureDetector(
          //                                 onTap: () {},
          //                                 child: Container(
          //                                   padding: const EdgeInsets.all(8),
          //                                   decoration: BoxDecoration(
          //                                       borderRadius:
          //                                           BorderRadius.circular(50),
          //                                       gradient: const LinearGradient(
          //                                         begin: Alignment.centerLeft,
          //                                         end: Alignment.centerRight,
          //                                         colors: [
          //                                           Color(0xFF6589FF),
          //                                           Color(0xFF003AFC)
          //                                         ],
          //                                       )),
          //                                   child: const Icon(
          //                                     FontAwesomeIcons.google,
          //                                     color: Colors.white,
          //                                     size: 40,
          //                                   ),
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                           const SizedBox(height: 16),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
