import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationnn/view/screens/choose_doctor_patient_screen.dart';
import 'package:permission_handler/permission_handler.dart';

import 'helper/bloc_observation.dart';
import 'helper/helperfunctions.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Permission.camera.request();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();
  await MySharedPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'rehablitaion app',
      debugShowCheckedModeBanner: false,
      home: ChooseDoctorPatientScreen(),
    );
  }
}
