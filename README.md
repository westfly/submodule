repo for [thirdparty](git@github.com:westfly/thirdparty.git)
--
## HeadOnlyRepo
header only repo only make softlink in dir thirdparty
### concurrentqueue

[concurrentqueue](https://github.com/cameron314/concurrentqueue)

A fast multi-producer, multi-consumer lock-free concurrent queue for C++11

Simple Usage
```cpp
#include "concurrentqueue.h"
moodycamel::ConcurrentQueue<int> q;
q.enqueue(25);
int item;
bool found = q.try_dequeue(item);
assert(found && item == 25);
```
### trompeloeil

[trompeloeil](https://github.com/rollbear/trompeloeil)

### cista

[cista](https://github.com/felixguendling/cista) 更新比较频繁，基于C++17的struct binding 进行。

```tex
The Cista++ Serialization is based on a powerful reflection concept made possible by the C++17 structured bindings feature.
```

```cpp
struct a {
  int i_ = 1;
  int j_ = 2;
  double d_ = 100.0;
  std::string s_ = "hello";
};
int main() {
  a i;
  cista::for_each_field(i, [](auto&& m) { m = {}; });
  CHECK(i.i_ == 0);
  CHECK(i.j_ == 0);
  CHECK(i.d_ == 0.0);
  CHECK(i.s_ == "");
}
```






### doctest

[doctest](https://github.com/onqtam/doctest)

### Catch2

[Catch2](https://github.com/catchorg/Catch2)

## mio ##

mapfile

## nameof ##

Header-only C++17 library provides nameof macros and functions to simply obtain the name of a variable, type, function, macro, and enum.

```cpp
// Name of variable.
NAMEOF(somevar) -> "somevar"
// Name of member variable.
NAMEOF(person.address.zip_code) -> "zip_code"
// Name of function.
NAMEOF(foo<int, float>()) -> "foo"
// Name of member function.
NAMEOF(somevar.some_method()) -> "some_method"
NAMEOF(somevar.some_method<int>()) -> "some_method"

```

与protobuf 结合一下或者thrift。

## CompileNeeded

[spdlog](https://github.com/gabime/spdlog)

提供HeadOnly模式，如果编译成为库作为预编译模块，则编译成二进制代码时会快一些。

[flatbuffers](https://github.com/google/flatbuffers)

跟protobuf类似的，但protobuf会进行变长编码，所以序列化(SerializeString)和反序列化(ParseFromString)会比较耗时。

flatbuffers 采用内存式存储，反序列化基本上不耗时，实现为指针强制转换，但对于非POD的类型，可能需要二次指针访问，有cache失效的问题。



## arrow ##

arrow 是，存储模型。

面向查询语句时，能够容纳更多的条件。

为了内存性，提高cache的命中率。

