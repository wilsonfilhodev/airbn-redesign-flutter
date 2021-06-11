import 'package:airbnb/models/feature_property.dart';
import 'package:airbnb/models/property.dart';

class StaticData {
  static final List<Property> properties = [
    Property(
      name: "Royal Malewane",
      description: "Are you searching for luxury hotels? This is for you!",
      price: "R\$250",
      imagePath: "assets/images/house1.png",
    ),
    Property(
      name: "Soneve Kiri",
      description: "Are you searching for luxury hotels? This is for you!",
      price: "R\$270",
      imagePath: "assets/images/house2.png",
    ),
  ];

  static final List<BookingProperty> bookingProperties = [
    BookingProperty(
      title: "Rom",
      count: "01",
    ),
    BookingProperty(
      title: "Adult",
      count: "02",
    ),
    BookingProperty(
      title: "Child",
      count: "01",
    ),
    BookingProperty(
      title: "Bag",
      count: "03",
    ),
    BookingProperty(
      title: "Pet",
      count: "02",
    ),
    
  ];
}
