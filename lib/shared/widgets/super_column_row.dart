// Custom widget for separated column
import 'package:flutter/material.dart';

typedef SeparatorBuilder = Widget Function();

Widget _defaultSeparatorBuilder() {
  return const SizedBox(height: 10);
}

class SuperColumn extends Column {
  SuperColumn({
    super.key,
    super.mainAxisAlignment,
    super.crossAxisAlignment,
    super.mainAxisSize,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    SeparatorBuilder separatorBuilder = _defaultSeparatorBuilder,
    required List<Widget> children,
  }) : super(children: _insertSeparators(children, separatorBuilder));
  SuperColumn.spaced({
    super.key,
    super.mainAxisAlignment,
    super.crossAxisAlignment,
    super.mainAxisSize,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    double spacing = 10,
    required List<Widget> children,
  }) : super(
            children: _insertSeparators(children, () {
          return SizedBox(height: spacing);
        }));
}

class SuperRow extends Row {
  SuperRow({
    super.key,
    super.mainAxisAlignment,
    super.crossAxisAlignment,
    super.mainAxisSize,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    required SeparatorBuilder separatorBuilder,
    required List<Widget> children,
  }) : super(children: _insertSeparators(children, separatorBuilder));
  SuperRow.spaced({
    super.key,
    super.mainAxisAlignment,
    super.crossAxisAlignment,
    super.mainAxisSize,
    super.textBaseline,
    super.textDirection,
    super.verticalDirection,
    double spacing = 10,
    required List<Widget> children,
  }) : super(
            children: _insertSeparators(children, () {
          return SizedBox(width: spacing);
        }));
}

List<Widget> _insertSeparators(
  List<Widget> children,
  SeparatorBuilder separatorBuilder,
) {
  if (children.length < 2) {
    return children;
  }

  List<Widget> newChildren = [];
  for (int i = 0; i < children.length - 1; i++) {
    newChildren.add(children[i]);
    newChildren.add(separatorBuilder());
  }
  return newChildren..add(children.last);
}
