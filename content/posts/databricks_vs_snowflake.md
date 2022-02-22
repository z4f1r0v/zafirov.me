---
title: "Databricks vs Snowflake"
date: 2022-02-21 description: "Who is who and what's in it for me?"
tags: ["thoughts", "software vendors"]
draft: true
---

For a while now I have been trying to wrap my head around the intersection and differences between Databricks and
Snowflake. In light of the great development from both parties, through discussions with other users and people
representing each of these tech giants, I believe I have cleared my mind on the matter. This post discusses _my_
observations on the _current_ state of affairs. It shouldn't serve as a historic reference nor as a ground for a
political debate. My aim is to be as pragmatic as humanly possible on the topic of who the two players are and how that
affects my day-to-day as a data engineer.

_Note: I have been using Databricks since 2016 so my experience and observations are naturally greater with that
platform._

## TL;DR

|                         | Databricks                                                 | Snowflake                         |
|-------------------------|------------------------------------------------------------|-----------------------------------|
| business model          | open-source products integrated in a platform              | closed-source platform            |
| data location           | customer's cloud                                           | Snowflake's cloud                 |
| availability            | out-of-the box on cloud/enablement                         | registration                      |
| (initial) focus         | data processing and insights                               | data storage                      |
| users                   | data engineers, data scientists, business analysts         | data engineers, business analysts |
| current development[^1] | data exchange, data cataloging, low/no-code, visualization | analytics                         |

## Databricks

Databricks was open-source from the get-go. It gives its pillar tech (Spark, Delta Lake, Delta-Sharing, etc.) to the
world and integrates it in their suite for a coherent user experience. As it currently stands, Databricks is an
abstraction layer on top of cloud infrastructure.

As an analytics-first company, Databricks initially exposed interactions with Spark through notebooks. After some
iterations of a notebook, one quickly realizes that it cannot live in isolation. It needs to run on a schedule, it needs
to integrate more and more sources and produce output to more and more destinations. In short - adhoc analysis usually
leads to software products. Those come with a plethora of orthogonal concerns - PRs, CI/CD, artifact repositories,
metrics, logging, monitoring, alerting, etc. All these have been brought up by us clients throughout the years and
Databricks has steadily addressed them.

Whenever we talk about software products, we can not omit testing. Having the piece of mind, that whatever you know
about your software (and nowadays data) to this point is still valid for the upcoming feature, is indispensable. From
that perspective, the "open-source" approach of Databricks allows developers to test in isolation their code without
incurring cost in the process. For example, you can run Spark code or interact with Delta Lake without actually using
Databricks.

The modularity of the Databricks platform is also something to marvel at. The way the different parts are layered on top
of one another feels so intuitive. As an example, there are so many flows one could do when it comes to data
engineering:

```
pull data -> transform -> write to Delta -> read as table -> expose as dashboard
                                                          -> visualize in Power BI
                                         -> read from Snowflake
                       -> write to csv
```

All of that because of the modular design Databricks' platform has. You can short-circuit it at any step e.g. after the
transformation stage and treat Databricks as good old Spark. However, you'd then miss on all the Lakehouse goodies.

Last but definitely not least, Databricks has an engineering-centric company culture. It was founded by engineers and
their primary customers (up to this point at least) are engineers. They understand and take that seriously:

- their Solution Architects are technical people
- their PMs are technical people
- their engineers are top-tier developers
- they show the appreciation they have for their customers by organizing feedback sessions and creating channels for
  two-way communication between PMs and clients
- they make tools that allow you to work with their software smarter - integration over REST, cli, remote Spark, remote
  Python interpreters (eagerly anticipating that)

This is something I, as a software engineer, value highly. It is also one of the things that makes me want to follow the
journey Databricks are setting for themselves and the rest of the data industry.

## Snowflake

Snowflake is a data warehouse in the cloud. It is a closed-source platform that you register for and pay-as-you-go. From
a user perspective, you are presented with the familiar notebook interface that allows for executing SQL commands. SQL
is the backbone of Snowflake to the extent that you can see it as the counterpart to each action in the UI, should you
need it. The aim of Snowflake is to simplify data management activities boiling them down to application of business
logic. As long as one knows what the role they need in order to perform actions on a given database table is, they are
good to go.

Snowflake allows for simplification of data wrangling via ridiculous compute accessible with a single line of SQL. They
do that by decoupling storage from compute leveraging economies of scale. They keep pools of machines "warm", always
ready to jump and crunch some numbers, while data is stored away in a separate location. In return for that power,
Snowflake asks you for your data i.e. your data needs to reside in Snowflake's cloud. This may sound scary to some but
taking a look at what Mac M1 chips have recently achieved, we see that complete control yields great benefits. It is
obviously advantageous to abstract away the storage and compute layer at the same time, due to the high degree of
optimizations that can be done with respect to partitioning, replication, query optimiziation, etc. Furthermore, the
user experience is extremely simplified. You don't mount containers to clusters, you don't think of the mechanics of
bringing data to and laying it out on memory - you just write your business logic and the rest is taken care of.

The currency of Snowflake is a credit. It equates to an hour of usage of each compute node (8-core server) being used.
It is astonishing to realize how many things one gets with a
[single one](https://medium.com/@nickakincilar/mythbusting-snowflake-pricing-all-the-cool-stuff-you-get-with-1-credit-f3daad217a98)
. The implications are optimizations in cloud usage, personnel and cloud maintenance. They all lead to great cost
reduction and are definitely a next step in the evolution in data management.

An important move that Snowflake did to their advantage is that they established themselves as a platform. Not only do
they solve customers' data problems, but they also provide them with the ability to augment their data through their
marketplace. The ability to pull big amounts of curated data for no extra cost providing high degree of enrichment is a
big plus for anyone doing analytics and data science at scale.

Now there is Snowpark which is cool but also overdue. I know that SQL is king in the database world, but it is also very
limited when it comes to expressing complex business logic (left joins and stored procedures - I'm looking at you).
Teaming up with Anaconda is smart because all the Data Science folks suddenly get enormous superpowers for no price.
Unfortunately, unlike its predecessor, Snowpark can only wrangle the data within Snowflake. The minute you want to port
it out, you need other functionality or an integration. Plus, you always need to spend money to run it as it cannot run
outside Snowflake itself. Also, there is no such thing as writing tests for it. In short - right now it's more of an
homage to people that prefer Python/Scala to SQL, rather than the CI/CD way of doing data engineering.

## Conclusion

This post was an attempt to address the two elephants in the room. As it is visible, Databricks and Snowflake are
reshaping reality for data people, each in their own way. The one who benefits is you and I, dear reader. I hope these
observations have made you more informed in what sometimes can seem like a tough choice to make. Rest assured, this is
how things are right now and not how it will be in the (near) future. More features are coming as more funds flow in and
more cloud-native companies are born, or corporations go on the cloud and make digital as part of their agenda.

[^1]: As per my imminent knowledge at the time of publishing this post