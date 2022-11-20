import 'package:flutter/material.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class Category {
  final String _id;
  final String _title;
  final Color _color;

  const Category({required id, required title, required color})
      : _id = id,
        _title = title,
        _color = color;

  String get id => _id;

  String get title => _title;

  Color get color => _color;
}
