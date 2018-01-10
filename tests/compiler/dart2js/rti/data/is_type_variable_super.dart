// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class A<T> {}

/*class: B:needsArgs,test,explicit=[B.T],implicit=[B.T]*/
class B<T> extends A<T> {
  m(T t) => t is T;
}

main() {
  new B<int>().m(0);
}