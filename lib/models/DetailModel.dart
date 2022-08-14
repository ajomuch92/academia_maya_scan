class DetailModel {
  int? id;
  DateTime? createdAt, entryTime;
  String? name, identity, email, phoneNumber, ol, paymentImage, photo, uid, tshirtSize;
  bool? paymentVerified;

  DetailModel({ this.id, this.createdAt, this.entryTime, this.name, this.identity, this.email, this.phoneNumber, this.ol, this.paymentImage, this.photo, this.uid, this.tshirtSize, this.paymentVerified});

  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
    id: json['id'],
    createdAt: DateTime.tryParse(json['created_at'] ?? ''),
    entryTime: DateTime.tryParse(json['entry_time'] ?? ''),
    name: json['name'],
    identity: json['identity'],
    email: json['email'],
    phoneNumber: json['phoneNumber'],
    ol: json['ol'],
    paymentImage: json['payment_image'],
    photo: json['photo'],
    uid: json['uid'],
    tshirtSize: json['tshirt_size'],
    paymentVerified: json['payment_verified']
  );

}