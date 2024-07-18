class Place {
  List<double> arr;
  double average;

  Place({required this.arr, required this.average});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      arr: List<double>.from(json['arr']),
      average: json['average'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'arr': arr,
      'average': average,
    };
  }
}
