---
title: "How Dixa is built"
date: 2019-11-01
description: "Where engineering happens"
tags: ["thoughts"]
draft: false
---

Making software in this day and age seems like a trivial task. There are cloud providers - Amazon Web Services (AWS), Google Cloud Platform (GCP), Azure - open-source languages, tools and frameworks, and many sources like blogs/podcasts/youtube channels where experienced engineers share their success and failure. Thus theoretically it should not be hard to get a good idea, write *some code* and fulfil a need that's out there. I personally agree and disagree with this statement. On one hand I share the view that curiosity - I will get back to that later - seems to be the main divider between those who want to do something and those that don't. The tools available out there are so stable that they can practically erase the lack of skills on the application developer's side. On the other hand the countless possibilities to implement an idea lead to an explosion of ways you can mix and match technologies. Hence the name of the game, in my eyes, is how to get the most out of your engineering team with the least amount of resources. In other words the keys is making strategic choices about technologies and knowing trade-offs between them such that software can be build quickly and maintenance is not hell. This mindset proliferates in many things - hiring, engineering (and company) culture, project selection, processes, etc. There is one word that comes to my mind when thinking of the ways we address all these topics at Dixa and that word is *freedom*. In this article I will walk you through how we understand that term and apply it to our work daily.

## Freedom of choice

Another way to call this is curiosity. Manifestations of curiosity are:

- being interested in what the latest and greatest across our tech stack is
- willing to take the time to improve some small but time consuming task for all engineers e.g. auto-assigning people to PRs on Github
- wishing to tackle more complicated problems like load balancing traffic between new and old pods in Kubernetes when new ones are spun off due to high CPU load - we use Finagle and that works with long lived connections which is something Kubernetes doesn't like

It is very important that people who want to build software at Dixa have a strong internal drive and find challenges interesting, and not off-putting. An example of that comes from our hiring requirements - the fact we use Scala on daily basis doesn't stop us from being very interested in people various JVM languages background. Even though Scala and Java can be worlds apart in the way they are written and executed, we are very open to bring people on board and teach them the fundamentals such that they can become fully enabled after some time. Our attempts have already paid off.

Another example of the *Freedom of choice* comes from a practise that we call *Engineering meetings*. It is an event that takes place every Friday where all the backend engineers - frontenders have a dedicated meeting as well - sit down and discuss topics that were brought up by themselves during the past working week. After a round table discussion, a task is assigned and a document describing briefly what was said is uploaded online for everyone interested to see. The way curiosity plays a part in this practise is the openness with which discussions are held, the ability for everyone to challenge the status quo and the fair treatment that every problem gets during the meeting. This is essential to how we build our product.

## Responsibilities

I won't be quoting Uncle Ben from the Spider-man universe but I'm sure that you know what comes next - expectations of a job well done are absolutely in order in an environment with a high degree of freedom. That is the case here at Dixa as well. We don't expect that people will build Rome in a day but we definitely hold them accountable for having committed to a deadline. Another way to call this is ownership. Technically this translates for the engineer as:

- making sure that product owners and stake holders are delivering thorough specifications
- proper task description e.g. JIRA stories
- proper documentation of the delivery - graphs, wikis, READMEs
- clean, testable, maintainable code that integrates well with the rest of the platform
- telemetry and monitoring - logging, graphs
- communication with teammates during design, implementation and feedback

The list seems long but having a stable product that can be augmented easily and can drive an emerging industry necessitates that.

## The Team

Even though the list I mentioned may seem daunting for a single person we are lucky because software at Dixa is not built in isolation. There are no superheroes that decide how the world runs and fix everything at their will. We all make mistakes and are still making them. Our goal is to learn from them as fast as possible, leave egos aside and focus on the team's success. That is why we have things like the *Engineering meetings* that I mentioned earlier.

That is why we also have adopted an industry common practise known as *Post-mortem*. Whenever a problem is discovered in the system, we focus on bringing everything back to a safe state - by doing a rollback or a hotfix. Once that is done, we take time to describe the problem that caused disturbance, the root cause, the short term and long term solutions. That brings transparency, clarity and peace of mind around the organization as it is visible that the team has prioritized their tasks accordingly to allow work our customers to enjoy the product and our colleagues to continue deliver on their tasks.

Work on features is also not done in isolation. So far we have the practise of assigning developers as drivers of a given feature but sparing partners can be found across the team as we have different backgrounds and are able to help no matter our level of familiarity with the product/language/framework. Thus we share Pull Requests with the whole team - backend and frontend respectively - such that everyone can communicate concerns and feedback, and get to learn something new. It is important to note that we have code-owners that have more experience than the rest of their colleagues and are more capable of finding a potential risk in a suggested solution.

## Generalists

As I mentioned we have very different backgrounds and we find that to be a great asset to us. A things that we value in the engineers here is that they can have their go-to technology - be that Scala, Kafka, DynamoDB, etc. - but they can still reason on basic principles. That way we can address something that I discussed in the beginning - the ability to choose one technology over next. This is crucial because:

- it allows us to feel happy when working with something new
- it makes us be relaxed that it will not break in the middle of the night
- it makes us feel confident that we can find help when necessary in forums/Gitter/stackoverflow
- it ensures that we can pass the knowledge to a colleague that can adopt the project and continue expanding it

All these perks will not be possible if people are narrow minded and have their very special preference towards one single technology that their are masters of yet fail to grasp the greater concepts. Thus the most important thing is realizing that it is the difference between technologies that matters and the way they relate to one another.

## Conclusions

Building software is a cognitively and physically daunting task. Having to keep in mind many different considerations at the same time, be communicative and transparent, and find time to fix problems that effect other engineers rather then the product itself are tasks that each of us constantly needs to reprioritize. To enable that to happen without having people burning out is a task for Dixa as a whole and more specifically the culture that we create. I hope I have managed to show how we work towards building a culture that nurtures success and happy engineers that craft a great product that makes them proud and makes our customers happy.
