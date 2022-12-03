import 'package:flutter/material.dart';
import 'package:smartpool/login/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smartpool/screens/home.dart';
import 'firebase_options.dart';
import 'login/login_service.dart';
import 'screens/dashboard.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter'),
      home: Login(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(28, 11, 43, 1),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Image.asset("images/logo.png"),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(0.0),
//                 child: Text(
//                   'SmartPool',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 50,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
