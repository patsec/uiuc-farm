# Modules

  * [module-0](#previous-wind-turbine-module-0)
  * [module-1](#connecting-your-turbine-to-the-wind-farm-module-1)
  * [module-2](#cwe-assessment-and-correction-module-2)

# Previous Wind Turbine (module-0)

In this module:

* You will re-familiarize yourself with the wind turbine from the last lab.
  Recall, it has an adversary container and a Grafana container for ground
  truth.

In the next module, you will set up this wind turbine in a larger wind farm.
Change the two `{{FIX_ME}}` entries in the URL below with the values provided by
your instructor. Then, start the next branch.

> There will be a Q&A session at the module’s end. Stop the current Gitpod
> workspace and deploy the next branch in Gitpod using this URL:
> https://gitpod.io/#HOSTNAME={{FIX_ME}},OTSIM_TAILSCALE_AUTHKEY={{FIX_ME}}/https://github.com/patsec/uiuc-farm/tree/module-1

# Connecting Your Turbine to the Wind Farm (module-1)

In this module:

* You will confirm access to the lab’s wind farm.

## Steps for Connecting to the Wind Farm

1. Ensure all containers are running in the Gitpod workspace.
2. Confirm with the lab instructor that your wind turbine is connected to the
   farm.
3. Feather the turbine blades and confirm with the instructor that they are
   visible.

Use the `{{FIX_ME}}` values from the previous module in the URL below. Then,
start the next module.

> There will be a Q&A session at the module’s end. Stop the current Gitpod
> workspace and deploy the next module in Gitpod using this URL:
> https://gitpod.io/#HOSTNAME={{FIX_ME}},OTSIM_TAILSCALE_AUTHKEY={{FIX_ME}}/https://github.com/patsec/uiuc-farm/tree/module-2

# CWE Assessment and Correction (module-2)

In this module:

* You will identify a wind turbine weakness, and
* You will work to correct the weakness.

For this module, focus on identifying known weaknesses
[CWE-1263](https://cwe.mitre.org/data/definitions/1263.html): Improper Physical
Access Control. Navigate to that link and read the extended description.

## Identify a Weakness in the Wind Turbine

The adversary container includes the nmap tool for conducting network scans. It
is also now part of the Tailscale network like the rest of the wind turbines.
Conduct a simple scan of some of the other turbines with nmap to see if they're
accessible.

Why is this a weakness? Why does it require physical access to exploit? What
could be done with this weakness? What are some ways of detecting it? What are
some mitigations to prevent it?

## Mitigate the Weakness at the Network Level

Mitigate this weakness using Tailscale ACLs. Note that each turbine has the
`wind-farm` and `wind-farm-turbine` tags associated with it, and the farm
controller has the `wind-farm` and `wind-farm-ctlr` tags associated with it.
