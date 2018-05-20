# INC-0001 Site Unavailable

2018-05-20

Site was unavailable for new visitors for several minutes, and inaccessible for returning users for over an hour.  This was caused by moving the GitHub repository to a new organisation and then deleting the existing site in Netlify in an attempt to recover.

- Severity: P1
- Customer Impact: Yes
- Incident Commander: Alice
- Responder: Alice
- Time to detection: zero
- Time to acknowledge: zero
- Time to response: zero
- Time to recover: 2 hours (roughly)

## Timeline

Timings were not recorded for this incident.  It was immediately detected and responded to since it happened as part of a change.

- GitHub repository was moved to new GitHub organisation
- New site was created in Netlify
- Existing site was deleted in Netlify (INC begins)
- New zone was created in Netlify
- DNS Servers were updated for new zone
- New site was linked to the new zone
- After an hour for dns propagation, SSL was enabled
- SSL was enforced (resolution complete)
- DNS continues to propagate globally (INC ends)

### What made a positive impact

- Alice was already online and ready to respond
- DNS records had a short TTL
- Admin access to the domain name was available

### What made a negative impact

- Lack of documentation on what happens to a Netlify site when you move the git repository
- Recreating the zonefile required moving to new nameservers
- Recreating the site in Netlify rather than contacting support

### What tasks had no impact in restoring service

## Overall Learnings

- Netlify does not handle git repositories being moved (the initial failure was authentication to the Identity service for the Netlify CMS).  This in itself did not bring the site down, and we could probably have worked with support to recover.

## Contributing Factors

- Short TTLs meant that changing DNS records was relatively quick
- Failing to work with support on this and pushing ahead on self-resolution is what ultimately caused the outage

## Action Items