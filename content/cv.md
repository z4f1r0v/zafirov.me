+++ title = "Curriculum Vitae"
+++

- [Expanding technical leadership through high degree of hands-on](#expanding-technical-leadership-through-high-degree-of-hands-on)
    - [Lead Engineer at Logpoint](#lead-engineer-at-logpoint)
- [Focus on strategy](#focus-on-strategy)
    - [Lead Data Engineer, R&D Data and Analytics at Leo Pharma](#lead-data-engineer-rd-data-and-analytics-at-leo-pharma)
- [Technical proficiency, a bit of strategy](#technical-proficiency-a-bit-of-strategy)
    - [Technical Lead, Advanced Analytics at TDC Net](#technical-lead-advanced-analytics-at-tdc-net)
    - [Senior Software Engineer at Dixa](#senior-software-engineer-at-dixa)
- [Expanding technical skills across the backend and data stack](#expanding-technical-skills-across-the-backend-and-data-stack)
    - [Platform Engineer at Infare](#platform-engineer-at-infare)
    - [Platform Engineer at Falcon.io](#platform-engineer-at-falconio)
- [Junior days](#junior-days)
    - [Java Developer at WorldTicket A/S](#java-developer-at-worldticket-as)
- [Side-hustle](#side-hustle)
    - [Java Developer](#java-developer)
    - [Freelance developer](#freelance-developer)
    - [Software Developer at Abas Business Solutions Bulgaria Ltd.](#software-developer-at-abas-business-solutions-bulgaria-ltd)
    - [Teaching assistant at Technical University of Sofia](#teaching-assistant-at-technical-university-of-sofia)

# Expanding technical leadership through high degree of hands-on

_Aug 2022 - Present_

## Lead Engineer at Logpoint

Strategic contributions:

- due diligence - necessary due to investor assessment, includes initial work on gaining visibility into developer productivity through DORA metrics
- adoption of code coverage
- adoption of Architecture Decision Records

Individual contributions:

- Enrichment service - a service that provides the cloud counterpart of Logpoint's on-premise VM, the ability to enrich logs from data coming from on-premise hosts. 

Technologies:

- Cloud - AWS
- Databases - PostgreSQL
- Blob store - AWS S3
- Service stack
  - Typelevel (Scala)
  - AWS Lambda (Python)
- CI - GitLab CI
- API spec - OpenAPI
- Infrastructure-as-Code - Terraform
- Container orchestration - AWS ECS
- Monitoring - AWS CloudWatch

# Focus on strategy

## Lead Data Engineer, R&D Data and Analytics at Leo Pharma

_Jan 2021 - June 2022_

Strategic contributions:

- Internal to team:
    - engineering culture - instituted autonomy and empowerment in the team, leading by example in contribution to
      open-source, weekly gatherings to discuss stack and processes
    - recruitment - structured and carried out the hiring process for data and cloud engineers, and partially technical
      managers
    - data architecture - designed to and took part of the implementation the data architecture that powers use-cases
      and adheres to compliance and security demands
    - DataOps and MLOps - collaborated to establish guiding principles behind how data is to be moved, labelled and made
      discoverable, while enabling Data Scientists to perform their work in a structured, reproducible and reusable
      manner
    - entry point - represented the team towards Global IT; worked towards a seamless process of consuming data from
      internal data vendor
    - knowledge-sharing sessions - invited professionals from different fields to present their approach to technology
      and organization establishment
- External to team:
    - recruitment - structured and carried out te hiring process for data engineers
    - evangelism - stakeholder management within the company, sparring with technical and non-technical colleagues alike
      to provide the technical guidance for a given use-case
    - procurement - assessment and sparring with software vendors when deciding on "buy vs build vs wait"

Individual contributions:

- Feasibility Recommendation Engine - took part in implementing a data pipeline for the use-case that allows to preserve
  corporate memory when accessing the feasibility of clinics chosen for trials of new drugs
- MLOps platform - part of a team building a Kubernetes-backed platform that gives data scientists and statisticians a
  service were they can deploy and monitor ML deployments at scale
- Sample Catalogue - took part in implementing a data pipeline for an application, which enables the user to search and
  inspect various samples from across the "Research" part of the organization
- Snowflake governance
    - worked on defining roles and privileges implemented using the Snowflake governance model
    - set up SSO with AAD
    - orchestration done via Terraform
- AlphaFold setup - using Azure Machine Learning to help "Research and Early Development" use state-of-the-art Deep
  Learning in order to predict protein’s 3D structure from its amino acid sequence

Technologies:

- Cloud - Azure
- Databases - PostgreSQL
- Process orchestration - Azure Data Factory
- Processing framework - Apache Spark (Python, Pandas), Delta Live Tables
- Infrastructure-as-Code - Terraform
- Container orchestration - Kubernetes, Azure App Service
- Data Catalog - Azure Purview, Collibra
- Data Warehouse - Snowflake, Delta Lake
- Visualization - Grafana, Azure App Insights, DataDog
- DevOps - Azure DevOps

# Technical proficiency, a bit of strategy

## Technical Lead, Advanced Analytics at TDC Net

_Feb 2020 - Dec 2020_

Strategic contributions:

- stakeholder management - communication with internal stakeholders
- tooling - setup of development processes and tooling
- mentoring - helping data engineers and data scientists work with modern data tools
- procurement - interaction with software vendors (Confluent, Databricks, Snowflake, ...)

Individual contributions:

- data platform - design, implementation and maintenance of a generic data platform. The platform itself is the primary
  source of the data our data scientists refer to, when providing insights to our internal stakeholders. It is designed
  for consuming a variety of data sources of different sizes. Raw storage is presented by a data lake which we use for
  adhoc queries and further transformations towards our data warehouse. That in turn serves visualizations, csv files,
  API exports.

Technologies:

- Cloud - Azure
- Database - MSSQL
- Process orchestration - Azure Data Factory
- Processing framework - Apache Spark (Scala, Python)
- Data Warehouse - Snowflake
- DevOps - Azure DevOps

## Senior Software Engineer at Dixa

_Sep 2018 - Feb 2020_

Individual contributions:

- implementation of an Event Log exposing domain events across the platform
    - design of domain event abstractions in Avro
    - configuration of Apache Kafka
    - implementation of consumer and producer libraries based on the domain event specification
    - integration with Schema Registry
    - formulation of domain concepts through Domain Driven Design
- implementation of Dixa Analytics product
    - design, implementation and fine-tuning of PostgreSQL database schema to accommodate analytics workload
    - streaming data from Kafka to PostgreSQL with Alpakka Kafka

Strategic contributions:

- shaped and carried out the recruitment process for the position of "Backend engineer" at Dixa

Technologies:

- Cloud - AWS
- Akka Framework - Actors, HTTP, Streams (Scala), Finagle, HTTP4S, Kafka Streams
- Serialization - Thrift, Avro
- Event bus - Kafka
- Monitoring - Elasticsearch, Grafana, Prometheus
- CI - Jenkins
- Orchestration - Kubernetes
- Database - DynamoDB, PostgresSQL

# Expanding technical skills across the backend and data stack

## Platform Engineer at Infare

_Aug 2016 - Sep 2018_

Individual contributions:

- implemented batch processing data pipeline of TBs of airfare observations towards a centralized data lake through
  Apache Spark batch jobs
- implemented an ETL job generating customer tailored output towards customer's FTP server powered by Apache Spark
  Streaming
- redesigned a multistep pipeline transforming and aggregating airfare observations from MSSQL Server to Memsql with
  Apache Spark
- design and implementation of monitoring library
- setup of AWS infrastructure through bash scripting

Strategic contributions:

- training of teammates in Scala
- assumed temporary responsibilities of Scrum master - daily standup, retrospective, sprint planning

Technologies:

- Processing framework - Apache Spark (Scala)
- Microservices/Libs - Spring Boot (Scala), ScalaTest, Mockito
- Monitoring - ElasticSearch, Kibana
- CI - Jenkins 2.0
- Event bus - Apache Kafka, AWS Kinesis

## Platform Engineer at Falcon.io

_Sep 2014 - Aug 2016_

Contributions:

- extracted functionality from a polling-based monolith application to a service-based streaming architecture of the
  Twitter indexing component increasing the ingestion speed of tweets 10x
- designed and implemented the public Falcon API
- maintained data retrieval from all major social networks APIs - Facebook, Twitter, etc.

Technologies:

- Application deployment environment - J2EE
- Akka Framework - Actors, HTTP, Streams (Scala)
- In-memory cache - Redis
- Event bus - Apache Kafka
- Monitoring - Grafana, StatsD
- CI - Jenkins
- Version control - Git
- DB - PostgresSQL

# Junior days

## Java Developer at WorldTicket A/S

_Oct 2013 - Sep 2014_

Contributions:

- developed and maintained web applications of airports and the Sell-More-Seats software

Technologies:

- Backend stack - J2EE, Spring, Mockito, Hibernate, Tomcat, Play! Framework
- Frontend stack - GWT, CSS, JavaScript, Sencha Architect, ExtJs
- Version control - Mercurial
- Database - MySQL

# Side-hustle

## Java Developer

_Nov 2011 - Oct 2013_

Contributions:

- maintained and developed the company's intranet
- setup of CI
- set up Artifacts Repository

Technologies:

- Backend stack: Tomcat, Java EE, Spring, JSP, Servlets, XSLT
- Frontend stack: JQuery DB: MySQL, SQLite
- Version control - Subversion
- CI - Jenkins, Artifactory

## Freelance developer

_Apr 2013 - Jun 2013_

- implemented an application for a Volleyball tournament in DTU

## Software Developer at Abas Business Solutions Bulgaria Ltd.

_Oct 2008 - Jul 2011_

- Development and integration of ABAS ERP.

Technologies - FOP, Groovy, XSLT

## Teaching assistant at Technical University of Sofia

_Sep 2010 - Jan 2011_

Teaching assistant for the "Modelling and Simulation of Computer Networks" course in the German Faculty of the TU Sofia