 +++
title = "A Scala Christmas Tree"
description = ""
tags = [
    "scala",
    "xmas"
]   
date = "2016-12-29"
categories = [
    "Development",
    "scala"
]   
menu = "main"
+++

In the spirit of the Christmas and New Year's festivities, I decided to share with you a short and fun recursive function that can warm your hearts. If not - hopefully it will warm your gray matter a bit.

```scala
import scala.annotation.tailrec

def xmasTree(height: Int): Unit = {
  @tailrec
  def xmasTree(n: Int, t: Int): Unit = {
    if (n == t) {
      println(" " * (t - n) + "*" * (1 + n * 2))
      println(if (n == 1) " # "
              else if (n == 2) "  #  "
              else List.fill(n / 3)(" " * (n - 1) + "###").mkString("\n"))
      )
    } else {
      println(" " * (t - n) + "*" * (1 + n * 2))
      xmasTree(n + 1, t)
    }
  }

  xmasTree(0, height)
}
```

Say you run this bad boy like this:
```scala
xmasTree(12)
```

Then the result will be a lovely ...
```
            *
           ***
          *****
         *******
        *********
       ***********
      *************
     ***************
    *****************
   *******************
  *********************
 ***********************
*************************
           ###
           ###
           ###
           ###
```
... Christmas tree :)

If I were to highlight something about this piece of code, it would be the tail-recursion - which is always awesome to have (and in this case it's verified by the compiler). Then there is the simple math that counts the stars to be printed on the row and amount of spaces to be placed before the stars. Finally we have the trunk implementation which utilizes nested lists - done with `List.fill` and (again) simple math to find the proper position of the trunk.

Happy Holidays!
