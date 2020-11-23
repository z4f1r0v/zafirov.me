---
title: "Achieving fulfillment in tech"
date: 2020-11-23
description: "Is being a \"senior\" enough?"
tags: ["thoughts"]
draft: false
---

During my career as a software developer I have had many colleagues in the engineering department that had the word 
"senior" as part of their job title.
Others used fancier alternatives such as "specialist", "expert" and "master". 
Those people were quite different among themselves in their knowledge, technical skills and attitude towards teammates 
to name a few.
Having interacted with them for prolonged durations at a time, I realized that it is not straightforward 
to give a precise definition as to what makes up a "senior software engineer".
A thing that contributes to the confusion is the overuse of the word by recruiters and job ads that usually equate it with
a proficiency within certain technologies.
All in all it seems that the label "senior" is overloaded with meaning and packs many concepts into one.
This leads me to believe it deserves a proper dissection. 
Therefore, in this essay I will put on my surgeon gloves, take the scalpel out
and try to peel away the layers of accidental complexity this term has accumulated 
in an attempt to get to the core of its definition.

## Why "seniors"

Before we dive into definitions it is important to look at the matter from the perspective of both parties - employee and employer.

> Why do software engineers want to be named "senior"?

The answers that come to mind are:
- harder problems to tackle
- greater variety of tasks
- higher salary and more perks
- more weight on what they say
- offload of repetitive tasks to junior colleagues

Depending on your personal preference and the company you work for, these items may or may not be relevant.

> Why do companies want to employ senior software engineers?

Employing people deemed "senior" seems like a no-brainer. Among others, they:
- have developed software for more years
- have worked with a given software product for a while and seen its evolution
- have worked in a given domain for a while
- have knowledge to share
- require little to no hand-holding

On the flip side the considerations are that:
- they are more opinionated than their inexperienced colleagues
- are more costly (read higher salaries and benefits)

## Definition

Seniority is trustworthy and in-depth knowledge properly applied to a relevant problem. 
Moreover, it is the ability to disseminate the described type of knowledge to technical and non-technical
colleagues alike. 
That defines the term irrespective of any particular domain.

To argue that this definition holds and track how it gets applied to software engineering in particular, 
I will dive into each of its building blocks through a set of interconnected topics starting at its core.

## Knowledge and experience

As previously stated, the key component to being a "senior" at anything is knowledge.
The driving force behind knowledge is experience.
You could say there is a duality between the two.
When approaching a certain field for the first time you have no knowledge of it.
Therefore, you need to experience it through theoretical and/or practical experimentation.
Spending the time gives you experience. 
The more experience you have, the more your mental model of the topic refines.
This results in deeper knowledge.

### Experience

Experience can be positive and negative.
I would describe positive experience as the "happy path" e.g. a program executing as its author intended to.
Negative experience is everything that showcases divergence between a developer's initial assumptions and the actual outcome.
We learn from both types, yet negative experience always leaves a more [lasting imprint on us](https://en.wikipedia.org/wiki/Loss_aversion).
I find that intentionally aiming to test the limits of one's knowledge is the mark of a senior software engineer.

#### Feedback loops

Due to its ephemeral nature, it is cheap for software to go through fast and short development iterations.
Having the ability to fail fast and fail often is the manifestation of knowledge refinement.
The implementation of that in ascending order of time to fail is:
- IDE - powerful environments for coding that align, highlight and enable swift documentation navigation of code
- testing - compiler, REPL, a simple unit test help validate a developer's mental model of a piece of software
- containers - nameless pieces assembling dedicated environments that mimic your production setup which are easy to create and destroy
- [automation practises](https://www.atlassian.com/continuous-delivery/principles/continuous-integration-vs-delivery-vs-deployment)

### Knowledge

Knowledge can also be subdivided into two:
- domain knowledge - understanding of the way the world behaves in a given domain
- technical knowledge - understanding how and why software functions the way it does

The intersection of the two is the ultimate goal for every software engineer. 
It allows them to make tradeoffs between different software abstractions 
so that they [mimic the world as close as possible](http://worrydream.com/refs/Brooks-NoSilverBullet.pdf).

#### Trust

Prior to joining a company, a software engineer is evaluated primarily for their technical knowledge.
That is reasonable as they need to develop software so knowing how to develop is more important than what to develop.
Personally, I have never been judged for any role based on my understanding of the domain the company operates in.

By contributing to a software solution, a developer gains insight into how applying a certain software abstraction solves a real-world problem.
At the same time they develop domain understanding and familiarity with the software landscape of the given company.
By delivering as promised and doing it consistently, the software engineer gains trust in his abilities.
An example is being able to quickly localize a relevant piece of code in the greater software landscape when fixing a bug.
A software engineer absolutely needs to earn the trust of their employer and co-workers in order for them to be deemed "senior".

## Communication

Modern day software is not written in isolation. 
Building and maintaining it at scale is very much a team[^1] endeavour. 
Thus, to be considered for a developer position - not to mention a "senior" one - candidates need to posses good communication skills.
Communication for me means a proficient level of English (I consider that the standard in tech for now) across reading, listening, writing and speaking.

Examples where communication is key include:
- PR description
- wiki
- tech adoption proposal
- post-mortem
- feature presentation

I have been unpleasantly surprised to find that many people in tech - CEOs, tech folk, HR, etc. - are quite poor in their writing.
That is fine and all when talking in the `#random` channel on Slack.
However, when one is submitting a PR, a post-mortem or any kind of information that will take the time of both people interacting with it,
it is a must that the information is communicated in a clear and concise manner.
I say that because I consider documentation and advocation of software as important as its conception and implementation.
The ability to synthesize a solution in writing and argue for it verbally requires deep understanding of the problem statement, implementation details
and tradeoffs made in the process.
That is a trait of a "senior software engineer".

## Culture

In a previous essay I shared my thoughts on the [core traits of a skilled software engineer](http://zafirov.me/posts/traits_of_skilled_soft_eng/).
There I spoke of virtues like curiosity, ownership, inclusion and a generalist mindset.
As the [definition](#definition) I have given previously, these don't make up a step-by-step guide on how to become a great software engineer.
Rather, they are traits that when internalized can make work an exciting journey for the engineer and everyone around them.

Adopting these traits is a process that starts from within.
However, having a culture - in the team and organization the developer is part of - that promotes such traits, can greatly stimulate that process.
That is why, I believe that an often overlooked but majorly important task of a senior software engineer is to be a flagman of the culture that 
the company wants to employ.

## Conclusion

Many people achieve the distinction "senior" during their software engineering careers.
For some markets that is the only way to get a raise.
For some companies demonstrating that they have a team full of "senior staff" is a way to attract talent and look more appealing to VCs when looking for funding.
Unfortunately, that has lead to a bloated and messy term that contributes little when looking at a job post or accessing who a person is as a professional.

Yet software engineers don't care about labels.
We care about solving complicated problems through efficient and elegant solutions.
Software is not the goal - it is the tool that makes the world faster, cheaper, better.
To wield this tool, one needs to go through all the phases of the [journey towards mastery](http://zafirov.me/posts/changing_reality/).
With growing knowledge in a specific field they need to consider working in the context of a team.

In this essay I set out to understand the internals behind the title "senior".
In the process I arrived at the following ingredients to a recipe for fulfillment as a software engineer:
- true and deep knowledge based on hours of curiosity-lead research and experimentation
- ruthless search for a correct approach to model the world
- unapologetic self-improvement with fast feedback loops
- earned trust by delivering on given promises
- transparency through clear communication with people across the organization
- inclusion and encouragement by setting a positive example

To me these will help everyone continue to grow as a person and professional.

[^1]: Depending on the size of the organization the team could be the entire org, engineering department 
or a [cross-functional team](https://www.visual-paradigm.com/scrum/what-is-cross-functional-team-in-agile/). 
This just proves that software engineering requires the ability to communicate with different stakeholders and at multiple levels of abstraction.