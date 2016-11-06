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

Sometimes the simplest things are hardest to work out. Let's say we have a Dataframe created from a parquet file which can have nullable columns that are of a certain type - in this example that is `int`. Since I don't know what I'm getting (Int or null), I need to be able to specify that somehow or else I will get a runtime exception for wrong input type. 

The first solution to the problem is super ugly. I don't like it but it works. I know that the following could be done with an implicit but I don't like them since they are hard to trace in a bigger code base.

Here is a code snippet:
```scala
def toInt(v: Any): Int = Option(v).getOrElse(-1).asInstanceOf[Int]
def tripToMinStay: ((Any, Any, Any, Any) => Long) = (hs1bd: Any, hs2bd: Any, hs3bd: Any, os1bd: Any) => {
                      val hsbd = coalesce3s(toInt(hs3bd), toInt(hs2bd), toInt(hs1bd))
                      hsbd / 100000 - toInt(os1bd) / 100000
                    }

val toTripMinStays2 = udf(tripToMinStay)

val inputOMIII = inputOMII
    .withColumn("trip_min_stay2", toTripMinStays2('hsect1_BPT_departure, 'hsect2_BPT_departure, 'hsect3_BPT_departure, 'osect1_BPT_departure))
    .select("hsect1_BPT_departure","hsect2_BPT_departure","hsect3_BPT_departure","osect1_BPT_departure","trip_min_stay2")
    .show()
```

I set the input of the UDF to be `Any`. After that the most important thing happens in the `toInt` function. Since I have a val of type `Any` that may contain a null, I wrap that in an `Option`. After that I proceed to set a default value. Since I'm specifying Int and Any as types, the compiler will try and resolve the first common type in the type tree - that is Any - I need to cast the result to Int.

Phew! As I said this is not bullet-proof. The reason is that I use `Any`, I've opened the door to all types so if I pass a String, let's say, the asInstanceOf will fail during execution.

