---
title: "Databricks vs Snowflake"
date: 2022-02-21 description: "Who is who in the grand scheme of things"
tags: ["thoughts"]
draft: true
---

For a while now I have been trying to wrap my head around the intersection and differences between Databricks and
Snowflake. In light of the great development from Databricks and Snowflake, through discussions with other users and
people representing each of these tech giants, I believe I have cleared my mind on the matter. This post discusses my
observations on the current state of affairs.

_Note: I have been using Databricks since 2016 so my experience and observations are naturally greater with that
platform._

## TL;DR

|                | Databricks                                    | Snowflake              |
|----------------|-----------------------------------------------|------------------------|
| business model | open-source products integrated in a platform | closed-source platform |
| data ownership | customer                                      | Snowflake              |
| availability   | out-of-the box on cloud/enablement            | procurement            |
|                |                                               |                        |
|                |                                               |                        |
|                |                                               |                        |

## Databricks

Databricks is open-source from the get-go. It gives its pillar tech (Spark, Delta Lake, Delta-Sharing, etc.) to the
world and integrates it in their suite for a coherent user experience. As it currently stands, Databricks is basically
an abstraction layer that integrates with cloud infrastructure (and in the case of Azure it comes out of the box). This
is advantageous to users that have software engineering background. Why? Because adhoc analysis usually leads to
full-blow software products and those need PRs, CI/CD, artifacts repositories, rollbacks, metrics, logging, monitoring,
alerting. Furthermore,
"open-source" allows you to test in isolation without incurring cost in the process. For example, you can run Spark code
or interact with Delta Lake without actually using Databricks.

I also love the modularity of Databricks. It just seems so intuitive how products get layered on top of one another.
There are so many flows one could do:

```
pull data -> transform -> write to Delta -> read as table -> expose as dashboard
                                                          -> visualize in Power BI
                                         -> read from Snowflake
                       -> write to csv
```

All of that because of the modular design Databricks' platform has. You can short-circuit it any step e.g. after the
transformation and treat Databricks as good old Spark, but then you miss on the Lakehouse goodies.

The last note that I would like to here is that Databricks have an engineering-centric culture. The company was founded
by engineers and their primary customers (up to this point at least) are engineers. They understand and take that
seriously:

- their Solution Architects are technical people
- their PMs are technical people
- their engineers are top-tier developers
- they show their appreciation of their customers by organizing feedback sessions and creating channels for two-way
  communication between PMs and clients
- they make tools that allow you to work with their tool smarter - integration over REST, cli, remote Spark, remote
  Python interpreters (eagerly anticipating that)

## Snowflake

The other side of the coin is Snowflake. It is closed-source. Taking slight wink at the Mac M1 chips, it is visible that
abstracting away the storage __and__ compute layer at the same time yields amazing results and user experience. You
don't mount containers to clusters, you don't think of the mechanics of bringing data to and laying it on memory. You
just write your business logic and the rest is taken care of for you. Couple that with the ability to pull all sorts of
data from a pretty big marketplace, and you have a great recipe for data science and engineering. I love the great
overview of roles and responsibilities, who did what where and that transparency that behind the eye candy it is all
SQL.

Now there is Snowpark which is cool but also overdue. I know that SQL is king in the database world, but it is also very
limited when it comes to expressing complex business logic (left joins and stored procedures - I'm looking at you).
Teaming up with Anaconda is smart because all the Data Science folks suddenly get enormous superpowers for no price.

Unfortunately, unlike its predecessor, Snowpark can only wrangle the data within Snowflake. The minute you want to port
it out, you need other functionality or an integration. Plus, you always need to spend money to run it as it cannot run
outside Snowflake itself. Also, there is no such thing as writing tests for it. In short - right now it's more of an
homage to people that prefer Python/Scala to SQL, rather than the CI/CD way of doing data engineering.

## Which one to use

So what would I choose for my work? It depends :) While being open to suggestions, I would do the following:

- put data on incoming raw data on a blob storage
    - for ability to leave Snowflake without paying egress cloud cost
    - for disaster recovery (I wander it would be that the whole Snowflake is unavailable in my cloud's region but my
      blob storage in the same region is ok)
