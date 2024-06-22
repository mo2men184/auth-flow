import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth_manager.dart'; // Your auth manager class

// Main Method
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


// Example usage
void example() async {
  AuthManager authManager = AuthManager();

  // Sign in
  await authManager.signInWithEmailAndPassword('user@example.com', 'password');

  // Sign up
  await authManager.signUpWithEmailAndPassword('newuser@example.com', 'password');

  // Sign in with Google
  await authManager.signInWithGoogle();

  // Sign in with Facebook
  await authManager.signInWithFacebook();

  // Sign in with Apple
  await authManager.signInWithApple();

  // Sign out
  await authManager.signOut();
}
