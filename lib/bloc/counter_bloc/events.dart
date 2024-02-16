import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

 abstract class CounterEvents extends Equatable {

   CounterEvents();
   @override
  List<Object> get props => [];

}

class IncrementCounter extends CounterEvents{}

class DecrementCounter extends CounterEvents{}