# Shopware United Connect 2025

Here you can find information about my presentation at the Shopware United Connect Conference 2025.

1. [Presentation & slides](#presentation--slides)
2. [Example plugin](#example-plugin)
3. [How to use this demo setup](#how-to-use-this-demo-setup)

## Presentation & slides

In my presentation I will show you how you can add your own triggers and actions to the shopware flowbuilder.
Using the example feature “Product back in stock”, I will show you how to implement this in a plugin.

### Agenda

* Flowbuilder introduction
* Example description
* Example part 1: add custom trigger for stock changes
* Example part 2: add custom field action for product entity
* Example part 3: add custom rule for product custom fields
* Example part 4: add custom subscriber list for mail action
* Example part 5: add custom trigger for custom entity with store

**Download the slides here:** 

## Example Plugin

You can find all the code examples from my presentation in my example plugin. The plugin is located in its own Github repository.

**Go to example plugin:** https://github.com/miriam-mueller81/ShopwareFlowBuilderStockExample


## How to use this demo setup

This repository contains a shopware demo setup based on ddev (https://ddev.com).
In this demo, the example plugin is already integrated via composer.

Admin username: demo
Admin password: pass1234

### Install demo

Make sure ddev is installed on your computer.

`make init`

### Stop demo
`make down`

### Start demo
`make up`

### SSH to container
`make ssh`

### Show infos

Show infos about local project url, database connection and local mailpit url.

`make info`



