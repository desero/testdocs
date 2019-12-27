+++
title = "Presslabs invoicing and payments"
description = "Here is an overview of how the Presslabs billing system works, answering questions about invoicing and payments. We use a pretty simple invoicing model that's very similar with any utility billing tool."
[menu.global]
  parent = "getting-started"
  weight = 2
+++

### PHP

``` php
<?php

namespace Test\TestClass;

const PATH = 'dfsdfsad';

class ObjectClass extends TrimClass {
  constructor() {
    return "$sdf {1 + 3}";
  }
}

add_action( 'send_headers', 'add_header_x_accel_expires' );
function add_header_x_accel_expires() {
    if ( strpos ( $_SERVER['REQUEST_URI'], '/feed/' ) === 0 ) {
        header( 'X-Accel-Expires: 300'); // number of seconds
    }
}
```

### HTML

``` html
<nav id="header">
  <a href="{{ .Site.BaseURL }}" class="brand">
    <img src="{{ .Site.BaseURL }}/images/logo.svg" alt="dgraph" class="logo" />
  </a>

  <a href="#" id="sidebar-toggle">
    <i class="fa fa-bars"></i>
  </a>

  <div class="outer-menu-container">
    <div class="menu-search align-middle">
      <div class="menu-search-inner">
        <input type="search" class="form-control form-control-sm" id="algolia-doc-search" placeholder="Search docs" aria-label="Search docs" autocomplete="off">
      </div>
    </div>

    <div class="menu-container">
      <ul class="main-menu">
        <li>
          <a href="/" target="_blank">Link 1</a>
        </li>
        <li>
          <a href="/" target="_blank">Link 2</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
```

### GO

``` go
package cmd

import (
	"fmt"
	"os"

	"github.com/spf13/cobra"
	"sigs.k8s.io/controller-runtime/pkg/manager"
	logf "sigs.k8s.io/controller-runtime/pkg/runtime/log"
	"sigs.k8s.io/controller-runtime/pkg/runtime/signals"

	"github.com/presslabs/dashboard/pkg"
	"github.com/presslabs/dashboard/pkg/apis"
	"github.com/presslabs/dashboard/pkg/apiserver"
	"github.com/presslabs/dashboard/pkg/apiserver/controller"
	"github.com/presslabs/dashboard/pkg/cmd/apiserver/options"
	mngOptions "github.com/presslabs/dashboard/pkg/cmd/manager/options"
	rootOptions "github.com/presslabs/dashboard/pkg/cmd/root/options"
)

// apiserverCmd represents the controllerManager command
var apiserverCmd = &cobra.Command{
	Use:     "apiserver",
	Short:   "Start the Presslabs Dashboard API server",
	Run:     runAPIServer,
	PreRunE: func(cmd *cobra.Command, args []string) error { return mngOptions.LoadFromEnv() },
}
```

### JS

``` javascript
class ObjectClass extends TrimClass {
  const PATH = 'dfsdfsad';

  constructor() {
    return `${2} 341324{1 + 3}`;
  }
}
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
```

We invoice our customers based on one of the two standard pricing options. Firstly, there is a **base package** with a fixed monthly fee. This is the subscription that covers the type of services that you're using. The monthly subscription is always charged in advance, meaning at the beginning of each month you're paying the subscription for the entire month. On top of the subscription, we're charging the **number of page views** that your site had in the previous month. Page views are charged after being "used", therefore they will show up on your bill at the beginning of each month, for the month that has just passed.

We accept all major credit cards through PayU. After signing up you need to setup a payment profile in the `Billing Section`. You can pay an invoice manually, or set up a recurring payment in Recurring Payments.

All pro-forma invoices will be deducted from your chosen payment method automatically, right after being issued.

For information regarding the pricing plans please check the [Presslabs website](https://www.presslabs.com/).

## Issuing date

We use a system that consists of issuing a pro-forma invoice, followed by the actual VAT invoice
that is issued after the payment of the pro-forma has been confirmed by our payment gateway.
The pro-forma invoices are usually issued no later than the 15th of the month.

The payment term is 5 days from the issue date (in case of manual payment), or on the same day
as the issue date (in case of recurring payment).

The first invoice after joining Presslabs will contain:

* the subscription for the part of the month since you joined until the end of it. This is usually less than a month unless you joined exactly on the 1st of the month
* the subscription for a full month in advance, for the upcoming month
* the pageviews for the previous part of the month since you joined.

> ###### WARNING
>
> In some cases we might ask for a payment in advance, before migrating your site to the Presslabs Smart Managed WordPress Hosting platform.

## European Value-Added Tax (VAT)

According to European Union regulations, we are charging VAT for all EU citizens and also for all EU business entities that don't have a valid VAT number (we check it on VIES). Companies based in Romania will always be charged VAT.

All other customers from outside the European Union are not charged VAT.

## Failing payments

In case we can't charge your payment profile, you'll get a notification e-mail and you have 5 days to update or change your payment method for clearing the pro-forma invoice. In case the payment isn't cleared within 5 days after issuing the invoice, our system will suspend your access to your site's `wp-admin`.
By the 25th of the month, your public site will also be suspended, and by the end of the month all data associated with your account will be removed if the payment isn't completed.

Please let us know at [payments@presslabs.com](mailto:payments@presslabs.com) if you face any kind of difficulties in paying your invoice and we'll find together a proper solution.
