import 'package:teia_dart/domain/entities/event.dart';
import 'package:teia_dart/domain/entities/event_type.dart';

class Transaction extends Event {
  final double value;
  final String description;

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
