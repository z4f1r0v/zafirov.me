---
title: "Scala"
date: 2021-04-11
description: "A language about self-discipline"
tags: ["scala"]
draft: true
---
Ever since its public release in 2004, Scala has been challenging the traditional development strategies.
Due to its mix of object-oriented (OO) and functional programming (FP), the language has received a fair amount
of criticism regarding being complex, unopinionated and slow to develop.
I recently stumbled upon [this](https://mungingdata.com/scala/maintenance-nightmare-upgrade/) post.
In it the author mentions many valid criticisms towards Scala as an overall experience.
Furthermore, he gives recommendations as to where Scala's strength resides.
I was previously acquainted with the [author](https://github.com/MrPowers) and his website.
I must say that I have found his work and knowledge-sharing useful, so I believe his experiences are personal.

Of course, the post stirred quite some conversations in the comment section and on reddit. 
Yet, after reading the majority of the content, I felt that my standpoint has not been sufficiently represented.
Neither has the root of the problem been addressed.
This event was followed by a set of LinkedIn conversations and "Scala in the City" presentations 
that ultimately gave me the push to state my opinion. 

What was initially thought of as a LinkedIn brain-dump, quickly escalated to the blog post you see before you.
It has the aim to give an educated opinion on the professional experience of working with Scala
in a majority of circumstances.
The opinion is mine and as such is biased.
Yet, as a software engineer that focus on elegant, scalable and cost-effective solutions that solve real problems,
I have taken my red marker and circled all key points that a newcomer or season developer should know.

As is the case with all my posts, I have aimed to follow a coherent thought process.
That being said, I feel that the subsections in my experiences and recommendations, for the most part, 
can stand on their own.
Therefore, I provide the reader with a table of contents, so they can jump ahead if they feel so inclined.

- [My Scala journey](#my-scala-journey)
    - [Coursera](#coursera)
    - [Take off](#take-off)
    - [The fair](#the-fair)
        - [Meetup](#meetup)
    - [Dix it](#dix-it)
    - [Take Dat Corporation](#take-dat-corporation)
    - [Simba](#simba)
- [Experiences](#experiences)
    - [The good](#the-good)
      - [Fun to write](#fun-to-write)
      - [Compiled and statically typed](#compiled-and-statically-typed)
      - [Versatile](#versatile)
      - [Succinct](#succinct)
      - [Evolving](#evolving)
      - [JVM-native](#jvm-native)
      - [robust](#robust)
    - [The bad](#the-bad)
        - [(Lack of) Scala style](#lack-of-scala-style)
        - [Compilation time](#compilation-time)
        - [Backward compatibility](#backward-compatibility)
- [Recommendations](#recommendations)
    - [Principle of least power](#principle-of-least-power)
    - [Production ready](#production-ready)
    - [Tapping further into data](#tapping-further-into-data)
- [Conclusion](#conclusion)

# My Scala journey

## Coursera
I became acquainted with Scala around 2014. 
A colleague suggested I try Martin Odersky's course on Coursera called "Functional Programming Principles" in Scala. 
Afterwards I went to the subsequent "Principles of Reactive Programming" which gave me a sense of the
applicability of Scala in my day-to-day job.
By the end of this "formal education", I had already found who the Twitter stars in the domain where, and followed
the content they made.
I also started to feel that using Java (1.8 had just been released) at work felt like I'm crippled in some way.
The streams API was a mock of functional programming, Optional values raised questions like 
"but why can I just do `!= null`? instead" 
and people had to write `final` everywhere just to feel a bit more immutable.

## Take off
When the opportunity to use Scala at work (a growing social media management startup) finally presented itself, 
I jumped on it without hesitation.
I was lucky to have a colleague who felt as excited while also having the support of management in trying out 
something new.
Another great coincidence was that at the time Lightbend (formerly known as Typesafe) had just released akka-streams 1.0.
Albeit scarce on documentation, it was a major upgrade over other Java frameworks that did streaming e.g. RxJava.

The result of the work our tag-team did was a stable set of services that made a 10x data ingestion throughput 
improvement, and a stable product that succeeded our stay at the given employer.

## The fair
Hungry for the next Scala gig, I landed at a company working with fair volumes of airfare observations.
They found themselves with smart guys who knew how to build the data products they needed.
That was my first taste of Spark.
Discovering Spark really forced me to reevaluate my understanding of software.
Distributed systems, data encodings, batch and stream processing - it was great.
At the time Databricks was just a SaaS (Spark as a Service :D) product.
Their selling point was "Let us do the heavy wiring of Spark, so you can focus on your data pipelines".
Yet, the only thing they had for us developers was a notebook, and a (cron) job to run it.
It was a painful process to figure out how to develop data pipelines as a software.

We ended up with plain jobs that called notebooks, that called jars whose work was passed between cells.
This beautiful madness run by a growing team of 10s of developers resulted in TBs of batch processed 
data for our data warehouse and GBs of data exports for our clients.

### Meetup
Around this point in time I had the pleasure to host a Meetup dedicated to Scala.
It was fun, challenging and disappointing at the same time.
Fun because you got to see what funky things people and companies did with the language.
Challenging because finding people able to present who had something to present was hard.
As was finding a venue and making appealing events.
The disappointment came from usual suspects and the lack of unusual ones.
Good times!

## Dix it
Next was life back in the SaaS startup scene within a customer support software product.
This time around there was Kubernetes and Scala was the language the platform was build on.
The Akka and Typelevel stacks had found their way into the product and showed that either could do the job.

My focus was to build up an ecosystem around Kafka that would power future data driven efforts.
Effectively my job was very much centered around the creation of a 
seamless process that allowed developing the SaaS product and its data counterpart without pain.
Having amazing colleagues (numbering in the double digits) with solid software foundations 
made my success inevitable.
Scala was just the cherry on top.

## Take Dat Corporation
From personal observations most SaaS companies don't have enough data to make data products.
Some never do, some eventually have but sort of.
Old corporations on the other hand have tons of it.
Traditionally slow and bureaucratic, these giants are awakening to the power of cloud.
They assemble small, high-skilled, autonomous units that take great strides 
towards a big change in the overall output of company.

That being said, I decided to join such a big machine within Telco in hope of facing challenging data problems.
That was my first stint with Azure and another take on how to do data products.
Contrary to [the fair](#the-fair),
this time we had an orchestration service in the face of Data Factory to help separate data transformations
from boring and flaky tasks like integrations between systems, retries on connection timeouts
and simple "convert csv to parquet" jobs.

With a limited amount of hands (just a couple of data engineers and data scientists) on the team 
and an ever-growing product portfolio, our team still managed to deliver.
Although short-lived, some ML products that we made were quite powerful 
(making thousands of predictions daily), while being implemented in an elegant and cost-efficient manner.
As for Scala - I brought my Spark chops up-to-date with Delta and Azure Databricks. 
In the process I compared the Scala and Python APIs and educated people on distributed systems.

## Simba
Here I am on my latest trip around the Sun.
Converting a Pharma tank to a Tesla with data-powered, custom-tailored software products.
This journey has just begun, but the usual players have already presented themselves.
Again data, again Spark, again Azure and - you guessed it - again Scala.
This time around we have ZIO.
We also have Scala 3 knocking on the door.

# Experiences
After presenting you with a brief description of my career and its Scala side,
I hope to have earned your trust.
The trust that I have spent a considerable amount of time using this language in different environments,
surrounded by different professionals, writing different types of software.
Of course, that is not sufficient to convince anyone of my ability to write proper software.
Yet, hopefully it is just enough to give you, the reader, the belief that 
what comes next is neither the blabbering of an enthusiastic bachelor in CS,
nor is it the pondering of a micro-optimizing virtuoso who has worked at Google, Facebook, Amazon and Twitter.
Yes, these are biased thoughts, but they are based on various experiences with Scala across the board.

I will proceed to list the good and bad sides of working with Scala. 
Hopefully, that will give a more complete picture as to how the choice of a programming language affects
a company's ability to deliver software products in a business context.

## The good

### Fun to write
From the bat, Scala is fun to write.
Every time I need to hit the keyboard, I feel inspired to tackle the technical problem I'm working on.
There is just something about the way one can express a solution they have in their mind,
succinctly using Scala, that I cannot find elsewhere.
That may sound like my personal attitude, and it is. 
Still, my attitude needs the right vehicle to flourish.

In general, I never felt that the language is stopping me from expressing a solution to a problem.
If anything, there are so many ways to do one thing - I'll get back to that later.
The main reason for the freedom I feel lays in Scala's building blocks.
I'm talking about the ability to encode state in types and move from one state to the next in a predictable manner -  
through immutable iterations driven by powerful constructs that always return a result.

### Compiled and statically-typed
I, honestly, cannot fathom who would willingly jump over the safety and quick feedback that you get from types
enforced at compile time?
Making sure that you are passing an `Int` instead `String` is useful.
Now imagine encoding domain logic into types and crafting an elegant DSL that guides you to do the right thing.
For example, no more databases returning mysterious nulls or empty strings or other nonsensical output.
A call to the database gives back a type for all parties involved - 
asynchronous computation, presence/absence of value and, finally, the value itself.

Sometimes it's tough to convince the compiler your solution is sound, 
but in return you get fast feedback which builds confidence in your deployment.
That is something every employee and manager appreciates.

### Versatile
I have heard so many times "Scala is great for backend only when you are working in a complicated domain".
Sure is! 
Just for a change, have you tried [writing](https://dzone.com/articles/scripting-library-in-scala-ammonite) a 
[script](https://ammonite.io) with it? 
Is that not more readable and maintainable than Bash?
And more powerful than Python and Go?

The point I'm trying to make is that from simple to complex and front to back, Scala can cover much of the stack:
- scripts
  - if want to do experiment/hack something with Scala, you have plenty of options besides Ammonite:
    - REPL
    - worksheet
    - `extends App`
    - [Polynote](https://polynote.org)
- backend - pick one or more stacks
  [zio](https://zio.dev), [akka](https://akka.io), [typelevel stack](https://typelevel.org)
- data/distributed systems - Spark, Flink (partially), Kafka (partially)
- frontend - [Scala.js](http://www.scala-js.org)
- infra - e.g.
  [zio-k8s](https://coralogix.github.io/zio-k8s/), [zio-aws](https://vigoo.github.io/zio-aws)
- mobile - see what's possible for 
  [Android](https://makingthematrix.wordpress.com/2021/04/07/how-to-build-an-android-app-in-scala-2-13/)

### Succinct
In today's world where application developers write glue code with a bit of domain logic,
building nested trees of `for { for { if ... else } }` is equivalent to a lot of maintenance 
and decreased productivity.
Scala allows for elegant solutions to these types of problems.
By elegant I mean succinct and concrete.
Fewer lines of code means fewer opportunities for bugs.
Especially if those lines rest on language constructs.

However, I'm referring only to Scala's ability to iterate over collections. 
`map`-ping over a collection is something that many languages do.
Something that many of us can relate to are enumerations.
Take a look at how Scala 3 [enums](https://dotty.epfl.ch/docs/reference/enums/enums.html) 
take the concept to a [new level](https://dotty.epfl.ch/docs/reference/enums/adts.html).

### Adaptability
Scala has been one of the few languages that explored the marriage between OO and FP.
Throughout the years it became obvious that the initial attempts weren't perfect.
**And that is ok**.
The ability to adapt to the changing demands of the world around us should be viewed as a positive thing.
With the evolution of the language, comes the evolution of the practitioner.
Finding a common ground between the [versatile](#versatile) software products that I listed,
gives continuation and comfort to take baby steps when learning new things.
Some projects a pretty new, some have been there for quite a while and are battle-tested.
Seeing more work being done to this day, gives me confidence of the many unexplored sides of the language.

### JVM-native
Software doesn't exist in isolation.
Scala's ability to have a seamless integration with Java code is majorly overlooked.
The last 30 years of Java have produced many libraries that any Scala project can utilize without impediments.
Also, it cannot be overstated that the language runs on the JVM.
The amount of developers working in this ecosystem is humungous.
Lastly, at this point garbage collection is a science of its own.
Any improvements made to the GC become available for Scala just like that.

### Robust
What happens after all the trails and tribulations that people list when it comes to Scala, and they
finally put a service in production?
Does it break very often?

One of the things that I have experienced over and over in my carrier, 
is that a software solution written in Scala really takes a life of its own.
Once the initial bug fixing cycle was completed, 
the majority of the time I revisited my implementation was to address business needs, 
and my inability to program against specification.
Solely has it been due to the memory leaks and complicated concurrency issues.
As much as this could be my luck and lack of right problem to push the tools to their limits,
I still maintain the opinion that the Scala is the right choice for building reliant software.

## The bad

### (Lack of) Scala style
Depending on which developer/team's code you look at, you are getting different styles of programming in Scala.
Unlike Python which is mostly written the same way, Scala's mix of OO and FP allow for wiggle room.
That is quite bad if you are interested in getting better as a developer and attempt reading different 
source code.
It is also but when it comes to maintenance and knowledge-sharing.

Unfortunately, there is no general solution to this one.
It is about documenting your team's knowledge and experience with Scala and FP,
education and automation of practises (formatting tools, linters, compiler warnings).
Looking at the upcoming Scala 3, I'd say the direction is more towards functional which is definitely helpful
for the community as a whole.

### Compilation time
Much has been said about Scala's compilation speed over the years.
Large projects, especially ones with macros, 
especially ones using [shapeless](https://github.com/milessabin/shapeless) take the longest to compile.

Luckily, the issue has been taken to heart by the developers of Scala and its main compilation tool 
[sbt](https://www.scala-sbt.org).
The release of sbt 1.0 saw [zinc](https://www.scala-lang.org/blog/2017/11/03/zinc-blog-1.0.html)
speeding up compile times.
Furthermore, articles like [this](https://medium.com/graalvm/compiling-scala-faster-with-graalvm-86c5c0857fa3)
have presented GraalVM as an alternative to solving the problem of compilation speed.

### Backward compatibility
[Here](https://www.quora.com/Why-isnt-Scala-backward-compatible?share=1) is a great writeup of why Scala 
historically has broken minor (the y in x.y.z) version compatibility. The gist of it is:
> The reason why major versions break binary compatibility is, because JVM bytecode is written for Java, not Scala. When new features are introduced in Scala, the JVM doesn’t change to support those features, so they have to be implemented in the bytecode generated by the compiler, and the differences in the bytecode being generated result in incompatibilities. 

The author goes on to say:
> Scala 3 will introduce an intermediary “bytecode” that is Scala-specific, which will allow different versions to maintain compatibility with each other.

Right on queue we get a [post](https://scala-lang.org/blog/2021/04/08/scala-3-in-sbt.html#a-new-compatibility-era) 
regarding that in Scala 3.

## Recommendations

### Principle of Least Power
Recently Martin Odersky gave a [talk](https://youtu.be/tYqssg9wPK8?t=2262).
By following the link you will navigate to, what I find, may be one of the most important slides he has made
regarding Scala.
There he mentions the key problems Scala needs to tackle.
He has referenced the [Principle of Least Power](https://www.lihaoyi.com/post/StrategicScalaStylePrincipleofLeastPower.html)
as one of the remedies.
Do yourself a favour and read the post as well as the rest of the series.

Another way to put this is don't leak category theory in your APIs.
It serves nobody - especially beginners - that your code is super complex and fancy _on the outside_.
Under the hood all hell can break loose paradigm-wise, but the user-facing APIs need to be simple and comprehensive.
The way to make Scala accessible to a wider audience is to have the ecosystem be approachable without the 
need for a PhD.
After all competitors like Go, Rust and Python rely on this very fact.

A simple example is the use of symbolic operators.
If you are writing a library it is important to always provide a textual method.
For the fans of FP you can have something funky but that should be an alias - not the "go to" approach.
If you are writing a small DSL for your domain, do _not_ go beyond implementing simple arithmetic operators.
Your colleagues and your future self would be grateful.

### Production ready
In a [talk](https://www.youtube.com/watch?v=v8IQ-X2HkGE) that he gave in 2018,
John De Goes bluntly stated that unlike competitors Go and Rust, Scala is not focusing on its primary audience -
industry application developers.
In the last couple of years he has sought to remedy the situation by making [zio](https://zio.dev) and 
a great many libraries that bring simple, yet powerful constructs in Scala to the masses.
The adoption has really been staggering and for a reason - zio gives us all the bells and whistles from FP
but without the elitist, academic mentality.
On the contrary - the focus falls on how to gear Scala towards production.
In other words focusing on solving business problems and not looking for the implicits.

In this category also falls the deployment of Scala applications.
Historically those have been jar files, now wrapped in docker files.
Compared to Go binaries, jars are bloated artifacts.
Since [GraalVM](https://www.graalvm.org/docs/getting-started/) entered the game this point has taken a hit.
Not only that but [Scala Native](https://medium.com/virtuslab/revisiting-scala-native-performance-67029089f241)
has also given the standard JVM a run for its money.
Regardless what technology powers Scala's future binary generation, deployment artifacts will be small
allowing CI/CD pipelines to run faster.

### Tapping further into data
I already mentioned how [versatile](#versatile) Scala is.
As far as data comes, it has been used to power some heavy-hitters in the space.
Yet, the [trend](https://databricks.com/blog/2020/09/04/an-update-on-project-zen-improving-apache-spark-for-python-users.html)
that Databricks follows by promote Python as the go-to language for data-engineering seems wrong to me.
Just because the heavy lifting in data is done by the frameworks, doesn't mean that the application code that
data engineers write cannot benefit from the power of types.
This [article](https://itnext.io/making-the-spark-dataframe-composition-type-safe-r-7b6fed524ec2) 
gives a good idea of what I am hinting at.
It requires more work than a data engineer unfamiliar with Scala would like to do, but the help you get from the 
compiler is invaluable.
It is a good starting point for a conversation at least on programming languages can take data management 
to the next level.

# Conclusion
In this post I gave my perspective on Scala.
During this exercise I came to a simple realisation - Scala is a language where the developer needs to be the one
exercising self-discipline.
That is diametrically opposed to Python and Go where the language is the one "disciplining" the software developer.
What is the right way to go about it? 
It depends on quite of few things some of which have nothing to do with programming (hint: $$$ and :muscle:).

My hope lays in [Scala 3](https://docs.scala-lang.org/scala3/getting-started.html).
Behind it are Martin Odersky's theoretical proofs, years of industry experience with the current Scala version, 
and the voice of a community that clearly knows what it does _not_ want.
The first question mark for its success revolves around tooling.
If the IDEs and the major libraries in the ecosystem are there to take the first wave of transition, 
all will be well.
Another question mark is the adoption of big companies.
I'm primarily thinking of Spark.
The folks supporting it have been [trying](https://issues.apache.org/jira/browse/SPARK-25075) to go to Scala 2.13
for a while.
Once that happens, it would seem logical to move to Scala 3. 
Whether Databricks wants to invest in a future with Scala as a core language
or [not](https://databricks.com/blog/2020/06/24/introducing-delta-engine.html) remains to be seen.

Finally, the software that is produced needs to be geared towards practical application in the industry. 
For a developer that translates into ease of development, ability to find resources when getting stuck and,
last but not least, joy in daily work.
For employers that means ability to scale teams, deliver features and produce stable products.
