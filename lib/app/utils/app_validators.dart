class AppValidators {
  AppValidators._privateConstructor();

  static final RegExp nameRegExp = RegExp('[a-zA-Z]');
  static final RegExp numberRegExp = RegExp(r'\d');

  static final regExpemailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static final regExpVehicleValid =
      RegExp(r"^[A-Z]{2}[0-9]{2}[A-Z]{1,2}[0-9]{4}$");

  //RegExp(r"^[A-Z]{2}[ -][0-9]{1,2}(?: [A-Z])?(?: [A-Z]*)? [0-9]{4}$");

  static String? nameValidator(String? value) {
    return (value == null || value.isEmpty)
        ? 'Enter Your Name'
        : (nameRegExp.hasMatch(value) ? null : 'Enter a Valid Name');
  }

  static String? numberValidator(String? value) {
    return (value == null || value.isEmpty)
        ? 'Enter Your number'
        : (numberRegExp.hasMatch(value) ? null : 'Enter a Valid Number');
  }

  static String? emailValidator(String? value) {
    return (value == null || value.isEmpty)
        ? 'Enter Your email'
        : (regExpemailValid.hasMatch(value) ? null : 'Enter a Valid email');
  }

  static String? vehicleValidator(String? value) {
    return (value == null || value.isEmpty)
        ? 'Enter Your vehicle number'
        : (regExpVehicleValid.hasMatch(value)
            ? null
            : 'Enter a Valid vehicle number');
  }

  static String? otpValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the OTP';
    }
    RegExp otpRegex = RegExp(r"^\d{4}$");
    if (!otpRegex.hasMatch(value)) {
      return 'Please enter a valid 4-digit OTP';
    }
    return null;
  }

   
}
