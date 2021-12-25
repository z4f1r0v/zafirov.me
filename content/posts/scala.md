---
title: "Scala"
date: 2021-04-20
description: "A language of self-discipline"
tags: ["scala"]
draft: false
---
Ever since its public release in 2004, Scala has been challenging the traditional development strategies.
Due to its mix of object-oriented (OO) and functional programming (FP), the language has received a fair amount
of criticism regarding being complex, unopinionated and slow to develop.
Fast-forward to more recent times, I stumbled upon [this](https://mungingdata.com/scala/maintenance-nightmare-upgrade/) post.
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
Yet, as a software engineer that focuses on elegant, scalable and cost-effective solutions that solve real problems,
I have taken my red marker and circled all key points that a newcomer or season developer should know about.

As is the case with all my posts, I have aimed to follow a coherent thought process.
That being said, I feel that the subsections in my experiences and recommendations, for the most part, 
can stand on their own.
Therefore, I provide the reader with a table of contents, so they can jump ahead if they feel so inclined.

- [On my Scala journey](#on-my-scala-journey)
- [Experiences](#experiences)
    - [The good](#the-good)
      - [Fun to write](#fun-to-write)
      - [Compiled and statically-typed](#compiled-and-statically-typed)
      - [Versatile](#versatile)
      - [Adaptive](#adaptive)
      - [JVM-native](#jvm-native)
      - [Robust](#robust)
    - [The bad](#the-bad)
        - [(Lack of) Scala style](#lack-of-scala-style)
        - [Compilation time](#compilation-time)
        - [Backward compatibility](#backward-compatibility)
- [Recommendations](#recommendations)
    - [Principle of Least Power](#principle-of-least-power)
    - [Production ready](#production-ready)
    - [Tapping further into data](#tapping-further-into-data)
- [Conclusion](#conclusion)

# On my Scala journey

When considering writing this post, I looked through the web and found quite a few of these.
One thing that stood out to me was that the authors - for the most part - jump head-first into giving orders and assigning labels without bothering to give background on their source of knowledge.
As developers often times we are quite impatient when going through tech articles and want to cut to the "good stuff".
Yet, I feel that putting labels on software needs to come from first-hand experiences.
That being said, I have attempted to share a short reference - wherever applicable - from my humble journey in an attempt to give context.
This comes as an alternative to making a long and potentially boring story of my [LinkedIn](https://www.linkedin.com/in/zafirovalexander/) profile.
Feel free to jump over if you feel uninterested.

# Experiences

## The good

### Fun to write
Right of the bat, Scala is fun to write.
Every time I need to hit the keyboard, I feel inspired to tackle the technical problem I'm working on.
There is just something about the way one can express a solution they have in their mind,
in a simple and powerful way using Scala, that I cannot find elsewhere.
That may sound like my personal attitude, and it is. 
Still, my attitude needs the right vehicle to flourish.

In today's world where application developers write glue code with a bit of domain logic,
building nested trees of `for { for { if ... else } }` is equivalent to a lot of maintenance 
and decreased productivity.
Scala allows for elegant solutions to these types of problems.
By elegant I mean succinct and concrete.
Fewer lines of code means fewer opportunities for bugs.
Especially if those lines rest on language constructs.
To illustrate my point, take a look at how Scala 3 [enums](https://dotty.epfl.ch/docs/reference/enums/enums.html) 
take the concept to a [new level](https://dotty.epfl.ch/docs/reference/enums/adts.html).

In general, I never felt that the language is stopping me from expressing a solution to a problem.
If anything, there are so many ways to do one thing - I'll get back to that later.
The main reason for the freedom I feel lays in Scala's building blocks.
I'm talking about the ability to encode state in types and move from one state to the next in a predictable manner -  through immutable iterations driven by powerful constructs that always return a result.

#### Take off
I became acquainted with Scala around 2014. 
A colleague suggested I try Martin Odersky's course on Coursera called "Functional Programming Principles" in Scala. 
Everything in Scala seemed familiar but with a twist.
`map`-ing reminded my of the Java 1.8 streams API, pattern matching of `switch` statements, `object`s of static classes and
the factory pattern.
It felt so elegant and powerful.
On the flip side, going back to work with Java felt like I'm crippled in some way.
The streams were a mock of functional programming, Optional values raised questions like 
"but why can I just do `!= null`? instead" among my colleagues and we had to write `final` everywhere just to feel a bit more immutable.

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
  - if you want to do experiment/hack something with Scala, you have plenty of options besides Ammonite:
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

#### All over the stack
At one employer dealing with reasonable amounts of airfare observations, we were using Scala for a plethora of things:
- Spark Streaming (with DStreams)
- Spark batch processing
- services
- writing libraries for metrics, Databricks cli management, etc.

It was fun to try different problems with Scala. This experience also gave the team great insights into the amount of things we can throw at the language and still feel productive.

### Adaptive
Scala has been one of the few languages that explored the marriage between OO and FP.
Throughout the years it became obvious that the initial attempts weren't perfect.
And that is ok.
The ability to adapt to the changing demands of the world around us should be viewed as a positive thing.
Finding a common ground between the [versatile](#versatile) software products that I listed,
gives continuation and comfort to take baby steps when learning new things.
Some projects are pretty new, some have been there for quite a while and are battle-tested.
Seeing more work being done to this day, gives me confidence there are many sides of the language to be explored.

Also, with the evolution of the language, comes the evolution of the practitioner.
With Go, for example, the way your code looks after a year of using the langauge is pretty close to the way it looks after
several years of experience.
Scala just scales better with skill.
The language allows for creating much more sophisticated abstractions thus allowing single individuals to absorb enormous amounts of complexity and still be productive. 
Think [Li Haoyi](https://www.lihaoyi.com) or [John de Goes](https://degoes.net).
They've both spawned entire ecosystems of libraries in a rather short amount of time.
The corresponding feat would have surely taken them much longer to build in other languages. 

### JVM-native
Software doesn't exist in isolation.
Scala's ability to have a seamless integration with Java code is majorly overlooked.
The last 30 years of Java have produced many libraries that any Scala project can utilize without impediments.
Also, it cannot be overstated that the language runs on the JVM.
The amount of developers working in this ecosystem is humongous.
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
I still maintain the opinion that Scala is the right choice for building reliant software.

#### Twitter ingestion
I was working at a growing social media management startup when my team got the green light to reimplement a core
piece of functionality that ingested Twitter data.
We wanted to use Scala.
Lightbend (at the time Typesafe) had just released akka-streams 1.0.
Albeit scarce on documentation, it was a major upgrade over other Java libraries like RxJava.
We were an excited tag-team that spawned a set of services that made a 10x data ingestion throughput 
improvement.
We implemented subscription management of Twitter accounts, real-time streaming of tweets,
up-to-date refresh of tweets, re-streaming in case of failure, monitoring, alerting.
We ended up with a stable product that succeeded our stay at the given employer.

## The bad

### (Lack of) Scala style
Depending on which developer/team's code you look at, you are getting different styles of programming in Scala.
Unlike Python which is mostly written the same way, Scala's mix of OO and FP allow for wiggle room.
That is quite bad if you are interested in getting better as a developer and attempt reading different 
source code.
It is also bat when it comes to maintenance and knowledge-sharing.

Unfortunately, there is no general solution to this one.
It is about documenting your team's knowledge and experience with Scala and FP,
education and automation of practises (formatting tools, linters, compiler warnings).
Looking at the upcoming Scala 3, I'd say the direction is more towards functional which is definitely helpful
for the community as a whole.

#### Schedule it
I hope you are familiar with the [Eisenhower matrix](http://alyjuma.com/wp-content/uploads/2017/09/myMatrix-904x1024.jpg).
At one of my employers, the backenders knew that we should sit down and make a common Scala style for all projects. 
I actually made a proposal. 
Besides the long discussion on PRs, the effort didn't get traction.
Just because it was an important but not urgent task.
We ended up not doing anything globally.
It wasn't a devastating experience but the sense of shared values and common learnings was missing.

From that pont on, settling on a Scala style is one of the first things that gets done on the projects I work on.
Tools like [scalafmt](https://scalameta.org/scalafmt/) make this process a breeze.

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

#### No fun
The one time in my career when I felt compile time is too much was when I worked on a contracts library.
The premise was that different services within the ecosystem needed to communicate on various planes.
For the interservice communication there was Finagle and Scrooge.
For the event bus - Avro.
These contracts needed to evolve in lock-step - hence the common repo.
Once all the classes needed to be generated based on the given binary encoding and their respective tests run, we ended up with a solid portion of time wasted on compilations.
To add to the frustration was a sporadic flaky test that render 10s of minutes of waiting useless. 

### Backward compatibility
[Here](https://www.quora.com/Why-isnt-Scala-backward-compatible?share=1) is a great writeup of why Scala 
historically has broken minor (the y in x.y.z) version compatibility. The gist of it is:
> The reason why major versions break binary compatibility is, because JVM bytecode is written for Java, not Scala. When new features are introduced in Scala, the JVM doesn't change to support those features, so they have to be implemented in the bytecode generated by the compiler, and the differences in the bytecode being generated result in incompatibilities. 

The author goes on to say:
> Scala 3 will introduce an intermediary “bytecode” that is Scala-specific, which will allow different versions to maintain compatibility with each other.

Right on queue we get a [post](https://scala-lang.org/blog/2021/04/08/scala-3-in-sbt.html#a-new-compatibility-era) 
regarding that in Scala 3.

#### Transitive dependency hell
I haven't had this problem too many times but when I did it took a lot of time to get right.
I remember clearly how I was adding milestone versions of akka-http and hoping that the one I'm using, is the one that would fit all my requirements. 
It was so tedious to look at the dependency graph on web pages, zooming in and out, trying to find what calls what.
A tough task that when done leaves you with the feeling that you wasted your time for no good reason.

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
In this post I gave my perspective on Scala as an overall experience. 
During this exercise I came to a simple realization - Scala is a language where the developer needs to be the one
exercising self-discipline.
That is diametrically opposed to Python and Go where the language is nudging the developer's hand throughout 
the working process.
What is the right way to go about it? 
The main decision-maker for both employers and employees is whether a given language and its ecosystem can
generate revenue i.e. have practical application in the industry.
For a developer that translates into ease of development, ability to find resources when getting stuck and,
last but not least, joy in daily work.
For employers that means ability to scale teams, deliver features and produce stable products.

During its existence, Scala has managed to tick some of these checkboxes.
Yet, things like gory FP elitism, and a multitude of ways to achieve the same thing have been a barrier for
new developers attempting to enter the ecosystem.
Hopefully a fix to the majority of the problems is coming [soon](https://scala3party.sphere.it) in the face of 
[Scala 3](https://docs.scala-lang.org/scala3/getting-started.html).
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

I am optimistic that Scala will continue to find applications across domains.
It has already powered some of the most prominent software products many of us use on a daily basis.
When looking at community surrounding the language, I see many bright and curious individuals, 
willing to take a step in uncharted territories.
That brings one word to mind - excitement.

---
_I would like to thank [Rune](https://www.linkedin.com/in/rune-pedersen-80723b93/) and [Viet](https://www.linkedin.com/in/nguyenvietyen/) who where generous enough to pre-read and give feedback on this 
work._
