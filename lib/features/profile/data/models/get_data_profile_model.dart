class GetDataChefModel {
  final String name;
  
  // final String phone;
  
  // final String brandName;
  // final String minCharge;
  // final String disc;
  final String email;
  

  GetDataChefModel({
    required this.email,
    required this.name,
    
    
    // required this.phone,
    // required this.brandName,
    // required this.minCharge,
    // required this.disc,
  });
  factory GetDataChefModel.fromJson(Map<String, dynamic> json) {
    return GetDataChefModel(
      
      name: json['name'],
      
      // phone: json['phone'],
      email: json['email'],
      // brandName: json['brandName'],
      // minCharge: json['minCharge'],
      // disc: json['disc'],
    );
  }
}
