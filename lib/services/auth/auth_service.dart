
import 'package:boilerplate/services/auth/auth_provider.dart';

class AuthService extends AuthProvider {

  final AuthProvider provider;

  AuthService(this.provider);

  // factory AuthService.boilerplate() => AuthService(AuthBoilerplateProvider());

  @override
  Future<bool> signIn(String username, String password) async => provider.signIn(username, password);

  @override
  Future<void> logout() => provider.logout();
  
  @override
  Future<String?> isAuthenticated() async => provider.isAuthenticated();
}
