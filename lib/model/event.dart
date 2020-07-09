import 'package:firebase_helpers/firebase_helpers.dart';

class EventModel extends DatabaseItem {
  final String id;
  final String title;
  final String location;
  final String guests;
  final DateTime eventDate;

  EventModel({this.id, this.title, this.location, this.guests, this.eventDate})
      : super(id);

  factory EventModel.fromMap(Map data) {
    return EventModel(
      title: data['title'],
      location: data['location'],
      guests: data['guests'],
      eventDate: data['event_date'],
    );
  }

  factory EventModel.fromDS(String id, Map<String, dynamic> data) {
    return EventModel(
      id: id,
      title: data['title'],
      location: data['location'],
      guests: data['guests'],
      eventDate: data['event_date'].toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "location": location,
      "guests": guests,
      "event_date": eventDate,
      "id": id,
    };
  }
}
