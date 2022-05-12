import 'package:flutter/material.dart';
import 'package:increment_app/domain/entities/counter_entity.dart';
import 'package:increment_app/domain/usecases/checked_decrement_counter_usecase.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterEntity _counterEntity = CounterEntity();
  final CheckedDecrementCounterUseCase _checkedDecrementCounterUseCase =
      CheckedDecrementCounterUseCase();
  _increment() {
    setState(() {
      _counterEntity.increment();
    });
  }

  _decrement() {
    setState(() {
      _counterEntity.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    int count = _counterEntity.count;
    bool isDisable = _checkedDecrementCounterUseCase.execute(count);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$count', style: const TextStyle(fontSize: 60)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: isDisable ? null : _decrement,
                child: const Icon(Icons.arrow_downward),
              ),
              ElevatedButton(
                onPressed: _increment,
                child: const Icon(Icons.arrow_upward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
