// Copyright 2024 Igor Kurilenko
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/widgets.dart';

class FittedTab<T> extends StatelessWidget {
  final Widget child;

  const FittedTab({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => FittedBox(
        clipBehavior: Clip.hardEdge,
        fit: BoxFit.fitWidth,
        alignment: Alignment.center,
        child: SizedBox.fromSize(
          size: MediaQuery.of(context).size,
          child: child,
        ),
      );
}
