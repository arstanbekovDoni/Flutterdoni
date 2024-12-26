class Cars{
  final String name;
  final String model;
  final int horsepowers;
  final int probeg;

  Cars({
    required this.name,
    required this.model,
    required this.horsepowers,
    required this.probeg,
  });

  double get probegInMiles => probeg*0.621;
  
}