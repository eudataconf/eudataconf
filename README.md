# Awesome EU Data Conferences

[View the list](https://eudata.tech)

Jekyll site listing upcoming data conferences in Europe.

## Adding events

Events can be submitted via the form on the main page, but this only gets emailed to form subscribers in Netlify.

Adding events for real can be done via GitHub or, if you have an account, via the Netlify [admin interface](https://eudata.tech/admin).

Gotchas:

* The UID needs to be set, and needs to be unique.  New events should have a larger UID than any existing one.  This is because the iCal format requires events to have unique IDs, but it also makes it easier to order the RSS feed so that newly added items appear at the top.  You can find out the current highest UID [here](https://eudata.tech/max)
* If you are providing a startdate then you must also provide an enddate.  If you are missing one or both of these, then you should only provide roughdate.  Both startdate and enddate are used to generate the iCal file, if you do not provide these values then the item will only appear on the website and the RSS feed.

## Runbook

eudata.tech is a static website listing upcoming data conferences in Europe.  It is hosted on [Netlify](https://app.netlify.com), with source code on [GitHub](https://github.com/eudataconf/eudataconf).  The CMS and Form are provided by Netlify functionality.

### Latest Deployments

We deploy straight from the `live` branch, the latest code in `live` should always be the same as the latest deployment - Netlify will automatically deploy any changes.  Admins can check this within [Netlify](https://app.netlify.com/sites/jolly-austin-b32559/deploys?filter=live).

### Test Deployments

You can test the site locally (minus the form and CMS) using Jekyll and `jekyll s`.

You can also test the site on Netlify by creating a Pull Request into the `live` branch, which will generate a new preview site.

### Rollback

Either revert the git commit and push it to `live` or fix forward.  Netlify will automatically deploy any changes, including git reverts.  There is no data outside of the git repository to worry about.

### Alerts

* Build failure - If the `_data/conferences.yml` file is not well formed then the site will fail to build.  This should generate an email alert, which should give an idea as to what is wrong.
* CertSpotter - Cert Spotter is configured to watch for new SSL certificates being generated.  Normally nothing needs to be done because it is an automatic renewal.

### Ownership / Contacts

* Domain name - [Alice](https://twitter.com/princenalice)
* Netlify admin account - [Alice](https://twitter.com/princenalice)
* GitHub organisation owner - [Alice](https://twitter.com/princenalice)

### Dashboards

* [CSP Reports](https://report-uri.com/account/reports/csp/) - Content Security Policies are configured in reporting-only mode