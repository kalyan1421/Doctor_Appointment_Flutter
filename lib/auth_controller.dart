import 'package:doctor_app_app/screens/onboarding_screen.dart';
import 'package:doctor_app_app/welcomepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    // User would be notified
    _user.bindStream(auth.userChanges());
    ever(_user , _initialScreen);
  }

  _initialScreen(User?  user){
    if(user==null){
      print("Login page");
      Get.offAll(()=>OnboardingScreen());
    }else{
      Get.offAll(()=>welcomescreen());
    }
  }

  void register(String email , password){
    try{
      auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      print("sjdb");
    }
  }
}