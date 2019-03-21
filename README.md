---
layout: default
permalink: /
---

# <img src="assets/logo.png" alt="class logo" class="logo"/> 
# <img src="assets/jilinUniversitylogo.png" alt="class logo" class="logo"/> 
# Numerical Algorithm
[//]: # (comment)


* **Instructor:** Gonewiththewind4(Hans King), [3113488751@qq.com](mailto:3113488751@qq.com)

* **Discussion:** If you'd like to discuss anything to do with the content you can write a message on Gitter 
   * [![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Numerical-Algorithm/community#)
* **Bugs/Suggestions:** If you find any bugs in this syllabus or would like to make a suggestions please raise an [issue](https://github.com/Gonewiththewind4/Numerical-Algorithm/issues) (GitHub account required)
* **Updates:** The repository will be updated to include links to its Wiki, instruction and references as they get released. Minor modifications may also happen. Please [watch it](https://help.github.com/articles/watching-and-unwatching-repositories/) to get notified of any changes (GitHub account requried)


## Numerical Algorithm Repository Description
In this repository, we will state several practically numerical algorithm initially, and show the examples and codes which can you have explicit understanding about the algorithms. Later, we will follow some cutting-edge papers about numerical algorithms, do the code reproduction, and share in this repository.

## Prerequisites

* At least one programming language, Matlab, python, or other languages if you are familiar with.
* Understanding of variables, data types, vector, matrix and basic function usage in your chosen programming language.
* Basic knowledge of Mathematical Analysis and Linear Algebra.

These won't be enforced by the instructor, but you will be pretty lost without understanding those concepts. If you need a refresher, take a look at the beginner material we will upload.

## Topics Overview

We will dive into the basic algorithm, and the nuances of them. Practical tools in Python and Matlab will be discussed, but we do not recommond you use that when you try to comprehend the numerical algorithms.  The focus will be on complexity, convergency, and stability.  Topics covered include:

* Encapsulation, closures and scope
* Classical vs. prototypal inheritance
* The event loop
* AJAX and JSONP
    * local
    * remote (e.g. Foursquare)
* Creating MVC-style models (a'la Backbone.js) from scratch
* Test- and Pseudocode-Driven Development

Topics will be demonstrated through live-code examples/slides, available at [advanced-js.github.io/deck](http://advanced-js.github.io/deck/).  Additional exercises will completed in wiki.

See [perface] for  background.

## Projects/Code Review/Code reproduction

All assignments are listed within the [Content Outline](#content-outline).







## Content Outline

### Numerical Algebra



### Numerical Approximate



### NPDE



### NSDE


### MC

### Advanced Topic


## Resources


### Beginner Materials

This class assumes you are confident with this material, but in case you need a brush-up...


### Recommended Reading

* Finite Difference Methods for Ordinary and Partial Differential Equations Author: Randall J.LeVeque
* Basical Partial Differential Equation Author: David Bleecker, George Csordas
* 偏微分方程数值解法 李荣华


#### Specific Topics



### Tools

* Matlab
* Python Numpy, Scipy, Matplotlib

#### GitHub

* Git and GitHub
    * [Official GitHub Help](https://help.github.com/)
    * [Recommended resources](http://hackerhours.org/resources.html#github)
* GitHub Pages
    * [Official site](https://pages.github.com/)
    * [Thinkful guide](http://www.thinkful.com/learn/a-guide-to-using-github-pages/)
 
### Workflow

If you're using GitHub Desktop, these general instructions will help:

* <https://guides.github.com/activities/forking/>
* <https://help.github.com/desktop/guides/contributing/>

Enabling `Edit`->`Automatically Sync after Committing` is recommended. Here are the steps:

1. Fork the repository for the exercise/project (found under [github.com/Gonewiththewind4/Numerical-Algorithm](https://github.com/Gonewiththewind4/Numerical-Algorithm)).
1. Clone the repository to your computer.
1. Make sure all of your code is committed.
1. Push/sync up to GitHub.
1. [Create a pull request](https://help.github.com/articles/creating-a-pull-request/) on the original repository. All assignments are due at the start of the following class, unless otherwise specified.
1. You can continue to push fixes and improvements until the close date (listed in Classes) – just add a comment in the pull request to let me know it's been updated.

When the pull request is created, you should see a message saying that "the Travis CI build is in progress" – this means that your solution is being automatically checked for syntax errors.  If this "build" ends up failing (which will show a red "X"), click through the "details" link and scroll to the bottom to see what the errors were.  Per the [requirements](#requirements) below, please fix the issues and push up the changes.

Feedback will be given in the pull request, so please respond with your thoughts and questions!  You are welcome to open the pull request early as a work-in-progress if you are stuck and want to ask a question.  Note that your solution will also be live at `http://USERNAME.github.io/EXERCISE`.


### Program Skill Requirements

These apply to real life, as well.

* [Travis CI](https://docs.travis-ci.com/) build should pass if you want to use it. For matlab codes, please try Jenkins for continous integration.
* Must apply "good programming style" learned in class
    * Functions should be "short" (see [Sandi Metz's rules for developers](https://robots.thoughtbot.com/sandi-metz-rules-for-developers)).
    * Optimize for readability.
        * ["Programs must be written for people to read, and only incidentally for machines to execute." -Harold Abelson](https://www.goodreads.com/quotes/9168-programs-must-be-written-for-people-to-read-and-only)
    * Avoid using anonymous callbacks within other functions, especially if the callback is more than one or two lines.
    * For projects, use Object-Oriented Programming.
* Any borrowed code must be properly [annotated](#instructor).

### Reference

* Javascript reference [advanced-js/syllabus](https://github.com/advanced-js/syllabus)

### More Examples

* 

