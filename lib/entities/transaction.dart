import 'package:teia_dart/core/domain/entities/event.dart';
import 'package:teia_dart/core/domain/entities/event_type.dart';

class Transaction extends Event {
  double value;
  String description;

  Transaction({
    required this.value,
    required this.description,
  }) : super(
          type: EventType(type: "transaction"),
        );

  @override
  Transaction get copy {
    return Transaction(
      value: value,
      description: description,
    );
  }
}
