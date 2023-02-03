import 'package:http/http.dart';
import 'package:docs_clone/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    googleSignIn: GoogleSignIn(),
    client: Client(),
  ),
);

class AuthRepository {
  final GoogleSignIn _googleSignIn;
  final Client _client;
  AuthRepository({required GoogleSignIn googleSignIn, required Client client})
      : _googleSignIn = googleSignIn,
        _client = client;

  void signInWithGoogle() async {
    try {
      final user = await _googleSignIn.signIn();
      if (user != null) {
        final userAcc = UserModel(
          name: user.displayName!,
          email: user.email,
          profilePic: user.photoUrl!,
          uid: '',
          token: '',
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
