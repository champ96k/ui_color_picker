class ColorModel {
  String? name;
  String? hex;
  String? rgb;
  List<dynamic>? gradient;

  ColorModel({
    this.name,
    this.hex,
    this.gradient,
    this.rgb,
  });

  factory ColorModel.fromJson(Map<String, dynamic> json) => ColorModel(
        name: json["name"],
        hex: json["hex"],
        rgb: json["rgb"],
        gradient: json["gradient"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hex": hex,
        "rgb": rgb,
        "gradient": gradient,
      };
}
