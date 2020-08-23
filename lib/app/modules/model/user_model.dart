class UserModel {
  String localId;
  String email;
  String displayName;
  String idToken;
  bool registered;
  String refreshToken;
  String expiresIn;

  UserModel(
      {this.localId,
      this.email,
      this.displayName,
      this.idToken,
      this.registered,
      this.refreshToken,
      this.expiresIn});

  UserModel.fromJson(Map<String, dynamic> json) {
    localId = json['localId'];
    email = json['email'];
    displayName = json['displayName'];
    idToken = json['idToken'];
    registered = json['registered'];
    refreshToken = json['refreshToken'];
    expiresIn = json['expiresIn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['localId'] = this.localId;
    data['email'] = this.email;
    data['displayName'] = this.displayName;
    data['idToken'] = this.idToken;
    data['registered'] = this.registered;
    data['refreshToken'] = this.refreshToken;
    data['expiresIn'] = this.expiresIn;
    return data;
  }
}
