part of 'register_cubit.dart';

enum FormStatus { valid, validating, invalid, posting }

class RegisterFormState extends Equatable {
  final bool isValid;
  final Username username;
  final Email email;
  final Password password;
  final FormStatus formStatus;

  const RegisterFormState({
    this.isValid = false,
    this.username = const Username.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.formStatus = FormStatus.invalid,
  });

  RegisterFormState copyWith({
    bool? isValid,
    Username? username,
    Email? email,
    Password? password,
    FormStatus? formStatus,
  }) =>
      RegisterFormState(
        isValid: isValid ?? this.isValid,
        email: email ?? this.email,
        password: password ?? this.password,
        username: username ?? this.username,
        formStatus: formStatus ?? this.formStatus,
      );

  @override
  List<Object> get props => [isValid, username, email, password, formStatus];
}
