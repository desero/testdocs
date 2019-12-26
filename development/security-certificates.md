---
title: Managing security certificates
description: At Presslabs we offer free Let's encrypt certificates, along with the option of importing your own. Here is a step by step guide on how to manage Security Certificates on our dashboard.
menu:
  global:
    parent: "development"
    weight: 2
---

## Overview

A CSR is a block of encrypted text that contains information about our customer’s organisation, and will be used by the certificate authority to generate the certificate.

> ###### NOTE
>
> Free certificates from **Let's encrypt** are automatically generated and added to your domains. Domains with trypl.com have a **Let's encrypt** certificate that cannot be changed — hence, the certificate won't appear in the dashboard, in the **Certificates** section.

![The Domains Section](./images/domains.png "The Domains Section")

You can also change the certificates by simply selecting another one from each dropdown certificate list, as seen above.

## How to manually generate a free Let's encrypt certificate directly from our dashboard

In the ***Certificates*** category in our dashboard you have an option called **Generate CSR:**

![Generate or Import a certificate](./images/certificates1.jpg "Generate or Import a certificate")

In order to generate a free Let's encrypt certificate, simply press the **Generate** button and fill in the form.

![The form for generating a new certificate](./images/certificates2.jpg "The form for generating a new certificate")

Now, you have to add this newly purchased certificate to each of your domains, as seen below.

Existing CSRs can be viewed and discarded in the same ***Certificates*** section:

![Your certificate's details](./images/certificates4.jpg "Your certificate's details")

![The section for revoking your certificate](./images/certificates5.jpg "The section for revoking your certificate")

> ###### NOTE
>
> Removing a domain does not remove the associated certificate.

Also, if you want to get a new certificate, you need to press the ***"+"*** sign above the domain for which you want to generate the certificate, and you will be redirected to the above mentioned page when you can either generate one, or import one.

![How to add a new certificate](./images/certificates6.jpg "How to add a new certificate")

## How to add a certificate to your domains

In the ***Domains*** section of the ***Sites*** page of an instance, you can add one of the valid purchased certificates to each of your domains:

![How to add a certificate from the Domains section](./images/add-a-certificate.jpg "How to add a certificate from the Domains section")

## How to import a custom certificate

In the ***Certificates*** section from our dashboard, beside the **Generate CSR** option, you also have the possibility to **Import a Certificate**, in case you have purchased one from another provider.

To import a custom certificate, simply press the ***Import*** button, which will take you to the following form you need to fill:

![The form for importing a new certificate](./images/certificates3.jpg "The form for importing a new certificate")
