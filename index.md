---
layout: default
title: {{ site.name }}
---

# Latest Blog Posts

<ul>
{% for post in site.posts %}
  <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>

# Features and architecture

Freeposte.io is a simple yet full-featured mail server as a set of Docker images.
It is free software (both as in free beer and as in free speech), open to
suggestions and external contributions. The project aims at providing people
with an easily setup, easily maintained and full-featured mail server while
not shipping proprietary software nor unrelated features often found in
propular groupware.

Main features include:

- **Standard email server**, IMAP and IMAP+, SMTP and Submission
- **Web access**, Roundcube-based Webmail and adminitration interface
- **User features**, aliases, auto-reply, auto-forward, fetched accounts
- **Admin features**, global admins, per-domain delegation, quotas
- **Security**, enforced TLS, outgoing DKIM, anti-virus scanner
- **Antispam**, auto-learn, greylisting, DMARC and SPF

![Architecture](images/archi.png)

# Screenshots

- [Reading emails in Roundcube](screenshots/roundcube.png)
- [Logging into the adminitration interface](screenshots/login.png)
- [Editing personal settings](screenshots/dashboard.png)
- [Setting up a vacation reply](screenshots/vacation.png)
- [Checking the server and containers status](screenshots/status.png)
- [Listing and managing domains](screenshots/domains.png)
- [Creating a new user on a managed domain](screenshots/create.png)
- [Managing a domain DKIM keys and DNS records](screenshots/dkim.png)
