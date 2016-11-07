 +++
title = "Working with nulls in Spark UDFs"
description = ""
tags = [
    "spark",
    "scala",
    "udf",
]   
date = "2016-11-06"
categories = [
    "Development",
    "golang",
]   
menu = "main"
+++
Today we are discussing User Defined Functions (UDF) in Spark. 

Sometimes the simplest things are hardest to work out. Let's say I have a `Dataframe` created from a parquet file which can have nullable columns that are of a certain type - in this example that is `Int`. Since I don't know what I'm getting (`Int` or `null`), I need to be able to specify that somehow or else I will get a runtime exception for wrong input type. 

The first solution to the problem is super ugly. I don't like it but it works. I know that the following could be done with an implicit but I don't like them since they are hard to trace in a bigger code base.

The first step is to  set the input of the UDF to be `Any`.
```scala
def foo: (Any => Int) = (a: Any) => toInt(a) / 100000

val toFoo = udf(foo)
```

After that the most important thing happens in the `toInt` function. Since I have a val of type `Any` that may contain a `null`, I wrap that in an `Option`. After that I proceed to set a default value. Since I'm specifying Int and Any as types, the compiler will try and resolve the first common type in the type tree - that is `Any` - I need to cast the result to Int.

```scala
def toInt(v: Any): Int = Option(v).getOrElse(0).asInstanceOf[Int]
``` 

```scala
val outDf = dfParquet
    .withColumn("foo_column", toFoo('a))
    .select("a","b","foo_column")
    .show()
```

Phew! As I said this is not bullet-proof. The reason is that I use `Any`, I've opened the door to all types so if I pass a String, let's say, the `asInstanceOf` will fail during execution.

Luckily the solution is quite simple. Just use Java's `Integer` boxed primitive. It is a perfect candidate for the case. This means no conversions from `Any`, no opening of Pandora's Any box. If you need to make better sense of the `null` value you can leverage on the `Option` class.

```scala
def foo: (Integer => Option[Integer]) = (i: Integer) => Option(i).map(_ + 1)
```
