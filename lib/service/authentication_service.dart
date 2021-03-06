
import 'package:flutter_film_project/service/credentials/supabase_credantials.dart';
import 'package:supabase/supabase.dart';

class AuthenticationService{
  Future<String> signup({
     String email,
     String password,
  })async {
    GotrueSessionResponse  response = await
    SupabaseCredentials
    .supabaseClient.auth.signUp(email, password);

    if (response.error == null) {
      String userEmail = response.data.user.email;
      print("Signup successful : $userEmail");
    } else {
      print("Signup error : ${response.error.message}");
    }
  }
  Future<String> login({
     String email,
     String password,
  })async {
    GotrueSessionResponse  response = await
    SupabaseCredentials
    .supabaseClient.auth.signIn(email: email,password: password,
    options: AuthOptions(
      redirectTo: SupabaseCredentials.APIURL,
    ));

    if (response.error == null) {
      String userEmail = response.data.user.email;
      print("Login successful : $userEmail");
    } else {
      print("Login error : ${response.error.message}");
    }
  }
}