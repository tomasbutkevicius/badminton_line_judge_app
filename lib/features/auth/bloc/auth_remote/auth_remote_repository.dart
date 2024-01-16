import 'package:badminton_line_judge_app/features/auth/models/auth_model.dart';
import 'package:badminton_line_judge_app/features/auth/models/form_login_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteRepository {
  final FirebaseAuth service = FirebaseAuth.instance;

  Future<AuthModel> loginWithForm(FormLoginModel formModel) async {
    UserCredential credential = await service.signInWithEmailAndPassword(
      email: formModel.valueEmail,
      password: formModel.valuePassword,
    );

    return AuthModel.fromFirebaseUser(credential.user!);
  }

  Future logout() async {
    await service.signOut();
  }
}
