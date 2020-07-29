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
doctest用于单元测试和TDD的功能最丰富的C98 / C11单个头文件测试框架。

doctest是一个新的C++测试框架，但与其他功能丰富的替代方法相比，它在编译时间（按数量级）和运行时间上都是最快的。

doctest和其他测试框架之间的主要区别在于它很轻而且没有侵入性。

#### 单元测试 ####

```cpp
#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

int factorial(int number) { 
	return number <= 1 ? number : factorial(number - 1) * number;
}

TEST_CASE("testing the factorial function") {
    CHECK(factorial(1) == 1);
    CHECK(factorial(2) == 2);
    CHECK(factorial(3) == 6);
    CHECK(factorial(10) == 3628800);
}
```

在gtest中的 CHECK宏都可以方便的支持，支持SUB_CASE的

```cpp
TEST_CASE("vectors can be sized and resized") {
    std::vector<int> v(5);

    REQUIRE(v.size() == 5);
    REQUIRE(v.capacity() >= 5);

    SUBCASE("adding to the vector increases it's size") {
        v.push_back(1);

        CHECK(v.size() == 6);
        CHECK(v.capacity() >= 6);
    }
    SUBCASE("reserving increases just the capacity") {
        v.reserve(6);

        CHECK(v.size() == 5);
        CHECK(v.capacity() >= 6);
    }
}
```



#### 性能测试 ####



### Catch2

[Catch2](https://github.com/catchorg/Catch2)

## mio ##

mapfile 支持

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

### dry-compansons ###

用tuple方式，实现了 any_of | none_of|  and_of 三个原语，用于减少XX的表达

### range-v3 ###

更好的

###  ###



## CompileNeeded

[spdlog](https://github.com/gabime/spdlog)

提供HeadOnly模式，如果编译成为库作为预编译模块，则编译成二进制代码时会快一些。

[flatbuffers](https://github.com/google/flatbuffers)

跟protobuf类似的，但protobuf会进行变长编码，所以序列化(SerializeString)和反序列化(ParseFromString)会比较耗时。

flatbuffers 采用内存式存储，反序列化基本上不耗时，实现为指针强制转换，但对于非POD的类型，可能需要二次指针访问，有cache失效的问题。

### fbthrift ###

Thrift 被提交给Apache维护了，facebook又搞了一个分支。

### ps-lite ###

mxnet的底层框架，用于通信，参考ps-lite源码分析。

### mimalloc ###

号称超越 TCMalloc。

### pybind11 ###

python关联C++11的相关东东

### scnlib ###

C++11时代的scanf，更好的容错。

### wangle ###

facebook出品的

### libtree ###

一个古老的树形结构，完全用C实现，包括avl_tree |splay_tree

### fizz ###

facebook出品

## arrow ##

arrow 是，存储模型。

面向查询语句时，能够容纳更多的条件。

为了内存性，提高cache的命中率。

