class Data {
  final String? _name;
  final String? _active;
  final Address? _address1;
  // final String? _address2;
  final String? _certificate;
  final String? _sDate, _edate;
  final Juristication? _juristication;

  Data({
    String? name,
    String? active,
    Address? address1,
    // String? address2,
    String? certificate,
    String? sDate,
    String? eDate,
    Juristication? juristication,
  })  : _name = name,
        _active = active,
        _address1 = address1,
        // _address2 = address2,
        _sDate = sDate,
        _edate = eDate,
        _juristication = juristication,
        _certificate = certificate;

  factory Data.fromJson(Map<dynamic, dynamic> json) => Data(
        name: json["name"],
        active: json["active"],
        certificate: json["certificate"],
        sDate: json["regDate"],
        eDate: json["endDate"],
        juristication: Juristication.fromJson(json["juristication"]),
        address1: Address.fromJson(json["address1"]),
        // address2: json["address2"],
      );

  String get companyName => _name!;
  String get isActive => _active!;
  Address get addressPrimary => _address1!;
  String get companyCertificate => _certificate!;
  String get regDate => _sDate!;
  String get expDate => _edate!;
  Juristication get companyJuristication => _juristication!;
}

class Address {
  final String? _area;
  final String? _building;
  final int? _pincode;
  final String? _room;
  final String? _state;
  final String? _type;

  Address({
    String? area,
    String? building,
    int? pincode,
    String? room,
    String? state,
    String? type,
  })  : _area = area,
        _building = building,
        _pincode = pincode,
        _room = room,
        _state = state,
        _type = type;

  factory Address.fromJson(Map<dynamic, dynamic> json) => Address(
        area: json["area"],
        building: json["building"],
        pincode: json["pincode"],
        room: json["room"],
        state: json["state"],
        type: json["type"],
      );

  String get companyArea => _area!;
  String get companyBuilding => _building!;
  String get pincode => _pincode.toString();
  String get state => _state!;
  String get type => _type!;
  String get floorRoom => _room!;
}

class Juristication {
  final String? _center;
  final String? _state;
  final String? _type;

  Juristication({String? center, String? state, String? type})
      : _center = center,
        _state = state,
        _type = type;

  factory Juristication.fromJson(Map<dynamic, dynamic> json) => Juristication(
        center: json["center"],
        state: json["state"],
        type: json["type"],
      );

  String get stateJuristication => _state!;
  String get centerJuristication => _center!;
  String get typeOfTaxPayer => _type!;
}
