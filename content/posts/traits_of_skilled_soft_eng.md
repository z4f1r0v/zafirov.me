---
title: "Core traits of a skilled software engineer"
date: 2020-03-08
description: "There's more to it than technical skills"
tags: ["thoughts"]
draft: false
---

Making software in this day and age seems like a trivial task. 
There are cloud providers - Amazon Web Services (AWS), Google Cloud Platform (GCP), Azure - open-source languages, tools and frameworks, 
and many sources like blogs/podcasts/youtube channels where experienced engineers share their success and failure. 
Thus theoretically it should not be hard to learn a tool, write *some code* and solve a problem that exists in the world.

I personally agree and disagree with this statement. 
On one hand I share the view that willingness to learn seems to be the main divider between those who want to craft something, and those who don't. 
The tools available out there are so stable and mature that they can practically erase the lack of skills on the application developer's side. 
This is also known as _throwing money at the problem_.
On the other hand the countless possibilities to implement an idea lead to an explosion of ways you can mix and match technologies. 
One needs to distinguish between approaches by making a choice based on a comparison between their pros and cons with respect to a given scenario. 
This ability has become a crucial piece in the arsenal of a software engineer.

Hence, the name of the game, in my eyes, is developing transferable skills and traits that allow you to drive a product, a team or an organization. 
Subsequently, these traits will enable you to make strategic choices about technologies and 
find trade-offs between them such that the software that is built is easy to implement and maintain.
This mindset proliferates across the different hats that you as an engineer may be wearing at any given time.
Hiring, project selection, process definition, establishing engineering culture, etc. 
All of these require educated decisions and dynamic prioritization. 

There is one word that comes to my mind that unifies supplements the existence and evolution of such capabilities - *freedom*. 
In this essay I will walk you through my understanding of the term and how it should be applied to the daily work of a software engineer.
Bear in mind that the traits I will describe are quite interconnected so if you see an overlap or repetition, understand that this is intentional.

## Curiosity

The first manifestation of freedom I will examine is the freedom to be curious. 
I am talking about the pure happiness of making a discovery be that a new framework or plugin that will save you a couple of keystrokes.
The absolute joy of struggling with a problem for a given period of time and ultimately finding a solution or - event better - 
failing miserably and moving forward. That is curiosity for me. Some examples include:

- being interested in what the latest and greatest tech with respect to your domain and work is
- willingness to drive the adoption of a new technology - this includes overview of cost, technical maintenance and its ecosystem
- not being satisfied with the status quo and always pushing the evolution of the practises adopted in the organization whenever they can be improved
- willingness to contribute time for the betterment of everyday tasks for all colleagues - technical and non-technical alike

It is very important that people who want to build software have a strong internal drive and find challenges interesting, and not off-putting. 
That will surely keep them going after long hours of work, experiencing frustration and fatigue from failure. 
That inner passion to deliver a functioning piece of software takes time and dedication 
but most importantly being curious see how the whole thing plays out in the end.
Does your software handle the expected load for a prolonged period? 
Does the algorithm bring better performance? 
Is the designed architecture scalable?
Answers to questions like these are found only by the persistent and the curious.

## Ownership

The next incarnation of freedom is ownership. There's a certain duality when it comes to owning something fully.
When I was coming in the software industry I had the impression that ownership is about who gets to say that they finished a given task - 
who gets the glory! 
Eventually I learned that there is also maintenance - the not so exciting repetitive nitpicky tasks work - and the scary production downtimes or process failures.
This is what making something truly yours means - caring for it, thinking of it without needing a nudge from colleagues, managers and - in the worst case - customers.

Understand that ownership encompasses different traits on its own. The topics under this umbrella term are:
- involvement - expressing interest throughout the whole lifecycle of a task - conception, implementation and maintenance
- transparency - documentation, setup of monitoring and alerting, technical sparing with teammates, communications of challenges and obstacles towards stakeholders
- proactiveness - keeping the project's tech stack and practises up-to-date
- protectiveness - when working within a given domain, the engineer develops not only technical but also domain expertise. 
It is very much encouraged for engineers to protect the product they helped build by educating business people on what is actually possible and technically feasible.
Otherwise, "visionaries" may push the project to an inconsistent and unmaintainable state from a technology perspective.
- commitment - deadlines should be set with both engineers and stakeholders signing off on them. 
Once that is done it is up to the engineer to be proactive and transparent when it comes to voicing concerns with respect to timeline reevaluation.

## Inclusion

Writing software is a team endeavour. Letting team members be in on your work however is a personal responsibility. 
Thus it is the job of a software engineer to communicate - verbally and in written form - to keep colleagues updated as to how their work is progressing. 
Another way to say this is that an engineer needs to be inclusive towards others. 

That is a two way street. 
Inclusion from the organization's side is the freedom to learn of any problem, product or be part of any discussion that relates to an engineer's daily activities.
No tasks are to come from the all powerful consciousness in the sky. 
There should be no superheroes that decide how the world runs and fix everything at will. 

A way to achieve this two way transparency is by creating a forum where engineers across teams can spar freely amongst each other.
The conversations revolve around topics brought up by themselves that include primarily tools, processes and technologies.
After a round table discussion, tasks are assigned for given action items and a Minutes-of-Meeting document is uploaded online for managers and other interested parties to see.
The way inclusion plays a part in this practise is by allowing for open conversations, 
an ability for everyone to challenge the status quo and a fair treatment of every problem taken into consideration during the meeting. 

Another common practise that displays inclusion is the *Post-mortem*. 
We all make mistakes and are will continue making them in the future. 
Our goal is to internalize the lessons we get from them, leave egos aside and focus on the team's success. 
Thus whenever a problem is discovered in a given system, the focus falls on bringing that back to a safe state - by doing a rollback or a hotfix. 
Once that is done, a short description of the problem that caused disturbance follows. 
It contains the root cause of that as well as the short and long term solutions that will be adopted to avoid such scenarios from happening again.
That brings transparency, clarity and peace of mind around the organization as it is visible that the team has prioritized their tasks accordingly 
allowing customers and colleagues to work undisturbed.

## Generalist mindset

Last but not least is the mindset of a generalist. 
Often overlooked this trait is concerned with the fact that knowledge doesn't live in isolation.
It is always interesting for me when people start talking about experts in a given field. 
This person is the expert in Scala, that one in Kubernetes, the next in Azure, etc.
This is said as if those people have absolutely no clue of what the others specialize in.
As if their competence ends abruptly at a given point. Highly unlikely if you ask me.
No matter the situation an engineer should strive for the bigger picture. 
Don't get me wrong - we all have our preferred tools. 
Still if you are serious about understanding something in depth[^2] - which will enable you to own it - 
you will inevitably need to be able to switch to helicopter view. 

Examples of the generalist mindset may be:
- translation - enabling colleagues on both sides of the technical boundary to understand the problem statement so that you speak the same ubiquitous language[^1]
- lowering [bus factor](https://en.wikipedia.org/wiki/Bus_factor) - being able to jump in and help/substitute colleagues regarding topics you don't work with daily
- increased learning capabilities - when introduced to new technology if understand concepts in detail it really doesn't matter how that technology is marketed.
Take away all the shiny lingo and you will come back to home base - the things that stood the test of time which are hidden by context and [accidental complexity](https://medium.com/swlh/how-to-avoid-accidental-complexity-in-software-design-2792ad99fddc).

## Conclusion

Building software is a cognitively as well as physically daunting task. 
Having to keep a great deal of context in mind, be positive, communicative and responsive, 
all the while fixing challenging technical problems that effect customers and other engineers is not easily achieved.
To enable that without having people burning out is a task of organizations and more specifically the culture that they foster. 
Yet as we have seen a high level of freedom requires traits that allow the software engineer to make sense of it.
Once enabled the responsibility is on them to make decisions, own mistakes and share their success with others.

[^1]: Ubiquitous language is part of a concept called [Domain Driven Design](https://airbrake.io/blog/software-design/domain-driven-design)

[^2]: I wrote about mastery [here](http://zafirov.me/posts/changing_reality)