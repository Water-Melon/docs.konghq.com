# Changelog

<!--vale off-->

## Week 5

### [Update: Change dev label and banner color](https://github.com/Kong/docs.konghq.com/pull/6859) (2024-01-31)

Changing the "dev" label to "unreleased" to make it clearer what this doc version is supposed to be. 

Also changing the banner colour to red, as the previous banner looked too similar to the "outdated version" banner.

Some minor version/conditionals cleanup here as well.

#### Modified

- https://docs.konghq.com/contributing/conditional-rendering


### [Fix: kic - add explanation for Gateway's publish service](https://github.com/Kong/docs.konghq.com/pull/6853) (2024-01-30)

Adds an explanation of `--publish-service` vs. `konghq.com/publish-service` Gateway's annotation relation.

Part of https://github.com/Kong/kubernetes-ingress-controller/issues/5328.
 


#### Modified

- https://docs.konghq.com/gateway/3.2.x/support/browser
- https://docs.konghq.com/gateway/3.3.x/support/browser
- https://docs.konghq.com/gateway/3.4.x/support/browser
- https://docs.konghq.com/gateway/3.5.x/support/browser
- https://docs.konghq.com/gateway/3.6.x/support/browser

## Week 4

### [Fix: kic - Use standard repository in Helm example instructions](https://github.com/Kong/docs.konghq.com/pull/6842) (2024-01-26)

The KIC Helm install docs showed how to customise the image by using the nightly KIC image. This confused some users who actually tried to use the nightly image in a non-test environment.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.6.x/production/deployment-topologies/db-less-and-declarative-config


### [Fix: Incorrect request format in DB-less and declarative config doc](https://github.com/Kong/docs.konghq.com/pull/6837) (2024-01-26)

Corrected the command to send the config to the Gateway. It was using a GET instead of POST and when using form-urlencoded data (--data) it throws a 400 error.  

{"message":"declarative config is invalid: {error=\"failed parsing declarative configuration: 1:1: found character that cannot start any token\"}","name":"invalid declarative configuration","code":14,"fields":{"error":"failed parsing declarative configuration: 1:1: found character that cannot start any token"}}

This was changed to use multipart/form-data (--form)

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.1.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.2.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.3.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.4.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.5.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.6.x/production/monitoring/prometheus


### [chore: add notice for trusting vault backend's ssl certificate](https://github.com/Kong/docs.konghq.com/pull/6831) (2024-01-26)

This PR adds a notice in the AWS/GCP vault backend doc page, to remind user to trust system ca-certificates store so that SSL certificate returned by those cloud providers are being trusted by kong.



#### Modified

- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.6.x/kong-enterprise/secrets-management/backends/aws-sm


### [Fix: Use config.scopes instead of config.scopes_required in OIDC okta guide](https://github.com/Kong/docs.konghq.com/pull/6821) (2024-01-24)

The OIDC Okta guide incorrectly references `config.scopes_required` when it's actually configuring `config.scopes`.
Fixing that + some broken/outdated links + Dev Portal info that should be behind a conditional tag.
Also fixing the same links in the rest of the OIDC 3rd party guides.

https://konghq.atlassian.net/browse/DOCU-2277

#### Modified

- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/third-party/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/third-party/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/third-party/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/third-party/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/third-party/


### [Fix: Incorrect value listed for OIDC consumer claim field](https://github.com/Kong/docs.konghq.com/pull/6819) (2024-01-24)

Fix okta config doc bug, where the consumer claim field was listed as needing an application ID, but actually needs the name of the field that _contains_ the application ID.

https://konghq.atlassian.net/browse/DOCU-1456

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.6.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/2.6.x/developer-portal/administration/application-registration/okta-config
- https://docs.konghq.com/gateway/2.7.x/developer-portal/administration/application-registration/okta-config
- https://docs.konghq.com/gateway/2.8.x/developer-portal/administration/application-registration/okta-config


### [Update: Fix broken link](https://github.com/Kong/docs.konghq.com/pull/6818) (2024-01-23)

Fixed the broken link for the refresh grant type, previously pointing at
 /hub/kong-inc/openid-connect/how-to/authentication/refresh-token-grant 
but should be
/hub/kong-inc/openid-connect/how-to/authentication/refresh-token/

#### Modified

- https://docs.konghq.com/hub/kong-inc/openid-connect/overview/


### [Release: Gateway 3.5.0.3](https://github.com/Kong/docs.konghq.com/pull/6813) (2024-01-26)

Changelog and version bump for Gateway 3.5.0.3.

https://konghq.atlassian.net/browse/DOCU-3654

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Fix: update azure vault variable names](https://github.com/Kong/docs.konghq.com/pull/6810) (2024-01-25)

Updating the Azure Vault variable names as with the existing naming the Vault configuration doesn't work.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.6.x/production/deployment-topologies/db-less-and-declarative-config


### [Chore: fixes for a minor change in the Quickstart script output](https://github.com/Kong/docs.konghq.com/pull/6803) (2024-01-22)

Where the quickstart is used, the output changed slightly to indicate the gateway was ready.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.6.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.0.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.1.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.2.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.3.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.4.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.5.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.6.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.0.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.1.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.2.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.3.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.4.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.5.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.6.x/production/monitoring/statsd


### [chore(deps): bump kumahq/kuma-website from 79481f3c to e2f955bb](https://github.com/Kong/docs.konghq.com/pull/6802) (2024-01-22)

Auto upgrade PR log:

e2f955bb34bbb0ea6d34c798055fd240c06560bd fix(policies): update /policies page to /features (kumahq/kuma-website#1595)
df6130cd578a74487a7d5b15aab4d3c77d02d207 feat(dns): add instructions for customizing DNS configuration template (kumahq/kuma-website#1576)
42ee81041b9ef710d52400ba0f00ad40caeedd69 docs(policy): improve targetRef table (kumahq/kuma-website#1579)
e76bc74e24f3f3a7ce78fe18bcae8d062da553d1 chore(deps): update docs from repo source (kumahq/kuma-website#1586)
dc13a6856c94acf46d542f49b048ed15ef289422 docs(website): change button order (kumahq/kuma-website#1596)
37c87e64c8731cd3130e850bb016df2435ff5747 chore(policies): move all non targetRef policies in a subsection (kumahq/kuma-website#1592)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/7617451539).
labels: skip-changelog,review:general

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.6.x/production/deployment-topologies/db-less-and-declarative-config


### [Feat: Add ARM support to install-instructions-test](https://github.com/Kong/docs.konghq.com/pull/6795) (2024-01-23)

Use `qemu` to add arm64 tests for the install pages using GH Actions.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/linux/amazon-linux
- https://docs.konghq.com/gateway/3.1.x/install/linux/amazon-linux
- https://docs.konghq.com/gateway/3.2.x/install/linux/amazon-linux
- https://docs.konghq.com/gateway/3.3.x/install/linux/amazon-linux
- https://docs.konghq.com/gateway/3.4.x/install/linux/amazon-linux
- https://docs.konghq.com/gateway/3.5.x/install/linux/amazon-linux
- https://docs.konghq.com/gateway/3.6.x/install/linux/amazon-linux
- https://docs.konghq.com/gateway-operator/1.2.x/production/horizontal-autoscaling/
- https://docs.konghq.com/gateway/3.0.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.1.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.2.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.3.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.4.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.5.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.6.x/key-concepts/routes/expressions


### [DOCU-3511: Refactor version is](https://github.com/Kong/docs.konghq.com/pull/6733) (2024-01-23)

Related [Jira ticket](https://konghq.atlassian.net/browse/DOCU-3511)

* Point jekyll-generator-single-source to the feature branch
* Set `latest: true` to the corresponding versions in `kong_versions.yml`
* Refactor Versions generators, we now have specific classes that handle
  setting the releases and versions information.
* Rename `app/_data/docs_nav_mesh_dev.yml` to
  `app/_data/docs_nav_mesh_2.6.x.yml`.
* Refactor Versions dropdown, we no longer need to maintain the routes
  and version info in the template.
* Don't include URLs from versions that are labeled to the sitemap
* Add `label: dev` to the unreleased version of mesh

### How it works

* We need to explicitly set `latest: true` to the corresponding versions in `app/_data/kong_versions.yml`
* For adding a new unreleased version, we need to add a new entry in `app/_data/kong_versions.yml`  with a label (it could be any string, e.g. `dev`, `next`, etc) and a new nav file, e.g. for gateway 

In `app/_data/kong_versions.yml`
```yaml 
- release: "3.5.x"
  ee-version: "3.5.0.2"
  ce-version: "3.5.0"
  edition: "gateway"
  latest: true # <- Set latest to the right version
  ...
- release: "3.6.x"
  ee-version: "3.6.0.0"
  ce-version: "3.6.0"
  edition: "gateway"
  label: dev # <- label the new unreleased version 
  ...
```
and we need to create the file `app/_data/docs_nav_gateway_3.6.x.yml`
The URLs generated for this version would be: `/gateway/dev/.../`, i.e. `/<edition>/<label or release>/...`.

Note that the file includes the actual release name in its name and not the label. 
This simplifies the release process. We just need to remove the `label` and set `latest: true` to it. 


### `page.release`

`page.release` is a [Liquid Drop](https://github.com/Shopify/liquid/wiki/Introduction-to-Drops) which is essentially an object that can be used in the templates (code [here](https://github.com/Kong/jekyll-generator-single-source/blob/82966bb101a62400839d35c06c0d406d5a1439d5/lib/jekyll/generator-single-source/liquid/drops/release.rb)). 

It's a replacement for `page.kong_version`, and whenever it is used in a template the [to_s](https://github.com/Kong/jekyll-generator-single-source/blob/82966bb101a62400839d35c06c0d406d5a1439d5/lib/jekyll/generator-single-source/product/release.rb#L45-L52) method gets called. It returns the release's label if it has one, or the release's value, e.g `3.4.x`.

It has a few other methods defined that should be useful:
* `value`: the actual release defined in `kong_versions.yml`, e.g. `3.4.x`.
* `label`: the name of the label.
* `latest?`: returns true if the release is marked as `latest` in `kong_versions.yml`.
* `versions`:  returns a hash with the corresponding versions defined in `kong_versions.yml`. For `gateway` it returns the versions without the suffix, i.e.  `{ 'ee' => '3.0.0.0', 'ce' => '3.0.0'  }`, for products that only have one version it returns a has with `default` as key, e.g. `{ 'default' => '2.6.x' }`.

The only time when we can't rely on the `to_s` method and we need to use `page.release.value` is when it is used as key when accessing hashes, like the [compatibility table](https://github.com/Kong/docs.konghq.com/blob/8508a4d9479b73a40390af8eeae0ba65598f73c8/app/gateway/2.6.x/compatibility.md#L12).

#### Modified

Nearly every page. See:
- https://docs.konghq.com/deck/
- https://docs.konghq.com/gateway/unreleased/
- https://docs.konghq.com/gateway-operator/unreleased/
- https://docs.konghq.com/kubernetes-ingress-controller/unreleased/
- https://docs.konghq.com/mesh/dev/
- https://docs.konghq.com/hub/

## Week 3

### [Release: decK 1.30.0](https://github.com/Kong/docs.konghq.com/pull/6785) (2024-01-19)

Version bump for decK 1.30 + any relevant updates to decK CLI docs. 
Mainly, this update softens the language of the warnings to make it clear that the old decK commands will still work.

#### Modified

- https://docs.konghq.com/deck/1.30.x/reference/deck_convert/
- https://docs.konghq.com/deck/1.30.x/reference/deck_diff/
- https://docs.konghq.com/deck/1.30.x/reference/deck_gateway_diff/
- https://docs.konghq.com/deck/1.30.x/reference/deck_gateway_dump/
- https://docs.konghq.com/deck/1.30.x/reference/deck_gateway_ping/
- https://docs.konghq.com/deck/1.30.x/reference/deck_gateway_reset/
- https://docs.konghq.com/deck/1.30.x/reference/deck_gateway_sync/
- https://docs.konghq.com/deck/1.30.x/reference/deck_gateway_validate/
- https://docs.konghq.com/deck/1.30.x/reference/deck_ping/
- https://docs.konghq.com/deck/1.30.x/reference/deck_reset/
- https://docs.konghq.com/deck/1.30.x/reference/deck_sync/
- https://docs.konghq.com/deck/1.30.x/reference/deck_validate/

### [Feat: AppDynamics certificate env variables](https://github.com/Kong/docs.konghq.com/pull/6784) (2024-01-19)

Document missing certificate environment variables for AppDynamics, [added in 3.4.3.3.](https://docs.konghq.com/gateway/changelog/#plugins-4)

Values only appear in the 3.4.x version table. Will add to 3.5 when the patch is released as well.

Also adding a conditional for 3.6, which will remain hidden until we have a 3.6 version.

#### Modified

- https://docs.konghq.com/hub/kong-inc/app-dynamics/overview/


### [Fix 2.8.4.6  changelog.md](https://github.com/Kong/docs.konghq.com/pull/6777) (2024-01-18)

Fix version number in changelog.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Release: Changelog and version bump for Gateway 2.8.4.6](https://github.com/Kong/docs.konghq.com/pull/6762) (2024-01-17)

Changelog and version bump for upcoming 2.8.4.6 patch.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6760) (2024-01-16)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/7540542509)

#### Modified

- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_circuitbreakers.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_containerpatches.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_dataplaneinsights.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_dataplanes.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_externalservices.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_faultinjections.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_healthchecks.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshaccesslogs.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshcircuitbreakers.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshes.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshfaultinjections.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshgatewayconfigs.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshgatewayinstances.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshgatewayroutes.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshgateways.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshglobalratelimits.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshhealthchecks.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshhttproutes.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshinsights.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshloadbalancingstrategies.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshmetrics.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshopas.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshproxypatches.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshratelimits.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshretries.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshtcproutes.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshtimeouts.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshtraces.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_meshtrafficpermissions.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_proxytemplates.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_ratelimits.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_retries.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_serviceinsights.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_timeouts.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_trafficlogs.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_trafficpermissions.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_trafficroutes.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_traffictraces.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_virtualoutbounds.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_zoneegresses.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_zoneegressinsights.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_zoneingresses.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_zoneingressinsights.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_zoneinsights.yaml
- https://docs.konghq.com/assets/mesh/dev/raw/crds/kuma.io_zones.yaml


### [Fix linked to `Verify signatures for Signed Images`](https://github.com/Kong/docs.konghq.com/pull/6757) (2024-01-16)

Fix the broken link that came up in the last [scheduled broken link action](https://github.com/Kong/docs.konghq.com/actions/runs/7515703424/job/20459932899) run.

#### Modified

- https://docs.konghq.com/deck/1.28.x/reference/deck_gateway_diff/
- https://docs.konghq.com/deck/1.29.x/reference/deck_gateway_diff/
- https://docs.konghq.com/deck/1.30.x/reference/deck_gateway_diff/


### [Release: Gateway version 3.4.3.3](https://github.com/Kong/docs.konghq.com/pull/6750) (2024-01-17)

EE changelog here: https://github.com/Kong/kong-ee/pull/7816

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Feat: Split+consolidate OIDC plugin docs into many guides](https://github.com/Kong/docs.konghq.com/pull/6747) (2024-01-16)

#### Summary
Big OpenID Connect doc consolidation + split out how-to guides + cleanup.
https://konghq.atlassian.net/browse/DOCU-3384

Changes in this PR:
* Moving the OpenID Connect guides that are buried in Gateway into the OIDC plugin doc
* Splitting out all the flow guides into their own pages for better discoverability/navigation
* Keycloak + gateway setup are now collapsible prereq sections that we can reuse in every OIDC demo
* Cross-linking to all the other OIDC content that's scattered all over our docs, for all the bits where OIDC is used internally
* Remade all the diagrams with mermaid.js; deleted all the images that are no longer in use

The scope of the work is scaled back here somewhat to get this project moving. Not doing yet:
* Use opinionated examples in how-to guides
* Convert everything httpie into curl
* All the testing
* All the cleanup

#### Added

- https://docs.konghq.com/hub/kong-inc/openid-connect/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authentication/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authorization/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authorization/
- https://docs.konghq.com/hub/kong-inc/openid-connect/how-to/authorization/
- https://docs.konghq.com/hub/kong-inc/openid-connect/overview/
- https://docs.konghq.com/hub/kong-inc/openid-connect/overview/

#### Modified

- https://docs.konghq.com/hub/kong-inc/openid-connect/overview/
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/dev-portal/authentication/oidc
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/dev-portal/authentication/oidc
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/dev-portal/authentication/oidc
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/dev-portal/authentication/oidc
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/dev-portal/authentication/oidc
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/oidc
- https://docs.konghq.com/breadcrumb_titles.yml

## Week 2


### [Update: Prerequisite to review version compatibility before Gateway upgrade](https://github.com/Kong/docs.konghq.com/pull/6740) (2024-01-10)

Customer noted that the instructions to review OS compatibility are buried too deeply within the upgrade guide, and they missed them on their first read through the guide.

Adding the links/instructions to review compatibility as the first step, as no upgrade can be performed if your system doesn't support it.

#### Modified

- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/signed-images
- https://docs.konghq.com/gateway/3.0.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.1.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.2.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.3.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.4.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.5.x/upgrade/lts-upgrade/


### [Add enterprise image signing verification docs](https://github.com/Kong/docs.konghq.com/pull/6730) (2024-01-12)

These are the customer-facing docs needed to allow customers to take full advantage of the recent changes to the Kong Enterprise build that implement `cosign`-based image signing.

- Confluence: [Solutions Document](https://konghq.atlassian.net/wiki/spaces/KS/pages/3261333515/Solution+-+Image+Container+Signing+-+Cosign#Verifying-the-EE-GW-image-integrity)
- Jira: [SEC-973](https://konghq.atlassian.net/browse/SEC-973)
- https://github.com/Kong/kong-ee/pull/6797

#### Added

- https://docs.konghq.com/gateway/3.0.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.1.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.2.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.3.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.4.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.5.x/upgrade/lts-upgrade/


### [Update: Rework style guide and add guidelines for writing recommendations](https://github.com/Kong/docs.konghq.com/pull/6717) (2024-01-08)

The Kong docs style guide was missing info on writing recommendations. I ran into some phrasing during a review and wanted to reference our guide, and realized that we never documented it (even though [we did discuss it and decided on a style](https://konghq.atlassian.net/wiki/spaces/KD/pages/2797568009/Standards+and+guidelines#:~:text=Standardize%20recommendations)).

Also took this opportunity to split up the "best practices" table into separate sections and add more info. 
* One of the main benefits of having a style guide is being able to link to specific guidelines, and that table made it difficult to do that + didn't have room to add more explanation. 
* As well, when you scrolled past a certain point, you couldn't tell which column was "Do" and which was "Do not" anymore.
* Removed the "Not british english" phrase from the language section. Seemed strange that we were singling out just British English, and there's no sense in trying to exhaustively list all varieties of English that are docs are not.
* Did some reorganization.

#### Modified

- https://docs.konghq.com/contributing/style-guide


### [Add internal/external traffic KIC guide](https://github.com/Kong/docs.konghq.com/pull/6715) (2024-01-08)

Add a guide that explains how to run internal/external ingresses using KIC

#### Added

- https://docs.konghq.com/gateway/3.0.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.1.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.2.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.3.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.4.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.5.x/upgrade/lts-upgrade/


### [Revamped Gateway on Kubernetes install guide](https://github.com/Kong/docs.konghq.com/pull/6695) (2024-01-11)

Rework the Kubernetes installation guide for Kong Gateway

#### Added

- https://docs.konghq.com/gateway/3.0.x/install/kubernetes/admin/
- https://docs.konghq.com/gateway/3.1.x/install/kubernetes/admin/
- https://docs.konghq.com/gateway/3.2.x/install/kubernetes/admin/
- https://docs.konghq.com/gateway/3.3.x/install/kubernetes/admin/
- https://docs.konghq.com/gateway/3.4.x/install/kubernetes/admin/
- https://docs.konghq.com/gateway/3.5.x/install/kubernetes/admin/
- https://docs.konghq.com/gateway/3.0.x/install/kubernetes/manager/
- https://docs.konghq.com/gateway/3.1.x/install/kubernetes/manager/
- https://docs.konghq.com/gateway/3.2.x/install/kubernetes/manager/
- https://docs.konghq.com/gateway/3.3.x/install/kubernetes/manager/
- https://docs.konghq.com/gateway/3.4.x/install/kubernetes/manager/
- https://docs.konghq.com/gateway/3.5.x/install/kubernetes/manager/
- https://docs.konghq.com/gateway/3.0.x/install/kubernetes/portal/
- https://docs.konghq.com/gateway/3.1.x/install/kubernetes/portal/
- https://docs.konghq.com/gateway/3.2.x/install/kubernetes/portal/
- https://docs.konghq.com/gateway/3.3.x/install/kubernetes/portal/
- https://docs.konghq.com/gateway/3.4.x/install/kubernetes/portal/
- https://docs.konghq.com/gateway/3.0.x/install/kubernetes/proxy/
- https://docs.konghq.com/gateway/3.1.x/install/kubernetes/proxy/
- https://docs.konghq.com/gateway/3.2.x/install/kubernetes/proxy/
- https://docs.konghq.com/gateway/3.3.x/install/kubernetes/proxy/
- https://docs.konghq.com/gateway/3.4.x/install/kubernetes/proxy/
- https://docs.konghq.com/gateway/3.5.x/install/kubernetes/proxy/

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/support-policy
- https://docs.konghq.com/moved_urls.yml


### [feat(acl): add consumer-group support and examples](https://github.com/Kong/docs.konghq.com/pull/6694) (2024-01-12)

For: https://github.com/Kong/kong-ee/pull/7603
Add support for the ACL plugin to understand consumer-groups. This allows to use (core) consumer-groups to be used in the "allow|deny" fields.


#### Added

- https://docs.konghq.com/hub/kong-inc/acl/how-to/

#### Modified

- https://docs.konghq.com/hub/kong-inc/acl/overview/


### [doc(kic) add reference grant guide](https://github.com/Kong/docs.konghq.com/pull/6677) (2024-01-08)

For https://github.com/Kong/kubernetes-ingress-controller/issues/5154
 
Add a guide that covers using Gateway API resources with KIC across namespaces, including references to a Gateway from another namespace using listener allowedRoutes and references from an HTTPRoute to a Service in another namespace using a ReferenceGrant.

#### Added

- https://docs.konghq.com/gateway/3.0.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.1.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.2.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.3.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.4.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.5.x/upgrade/lts-upgrade/


### [feat(new-consumer): release notes and reference updates](https://github.com/Kong/docs.konghq.com/pull/6663) (2024-01-11)

For the [new Consumer dimension](https://konghq.aha.io/features/KP-277) coming next week, I added release notes and also updated our reference doc.

#### Modified

- https://docs.konghq.com/konnect/analytics/reference
- https://docs.konghq.com/konnect/updates


## Week 1



### [fix: typo in ingress redirect docs](https://github.com/Kong/docs.konghq.com/pull/6714) (2024-01-03)

Fix type in redirect docs

#### Modified

- https://docs.konghq.com/gateway/3.5.x/production/debug-request


### [Fix: Spacing on gateway overview page](https://github.com/Kong/docs.konghq.com/pull/6711) (2024-01-02)

`if_version` tags aren't spaced out correctly, so they're causing the following issues:

3.5:
![Screenshot 2024-01-02 at 9 46 10 AM](https://github.com/Kong/docs.konghq.com/assets/54370747/538c4d26-510e-4b07-ba39-f4321d7c33e7)

3.4 and earlier:
![Screenshot 2024-01-02 at 9 45 55 AM](https://github.com/Kong/docs.konghq.com/assets/54370747/eaa019ac-e6bf-4242-8686-8701161a7be5)

Fixing by splitting out `if_version` tags, so that they don't encompass part of a still-existing section. The previous approach is harder to maintain + causes these spacing issues.

#### Modified

- https://docs.konghq.com/gateway/3.5.x/production/debug-request


### [fix: use more informative example for request-debug docs](https://github.com/Kong/docs.konghq.com/pull/6702) (2024-01-02)



Currently, the example output of request-debug in docs is too simple, so I replace it with a more better one.

#### Modified

- https://docs.konghq.com/gateway/3.5.x/production/debug-request


### [rewrite the loadbalancing document](https://github.com/Kong/docs.konghq.com/pull/6689) (2024-01-05)


Rewrite of the outdated page on loadbalancing
 


#### Modified

- https://docs.konghq.com/gateway/3.0.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.1.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.2.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.3.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.4.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.5.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.0.x/production/blue-green
- https://docs.konghq.com/gateway/3.1.x/production/blue-green
- https://docs.konghq.com/gateway/3.2.x/production/blue-green
- https://docs.konghq.com/gateway/3.3.x/production/blue-green
- https://docs.konghq.com/gateway/3.4.x/production/blue-green
- https://docs.konghq.com/gateway/3.5.x/production/blue-green
- https://docs.konghq.com/gateway/3.0.x/production/canary
- https://docs.konghq.com/gateway/3.1.x/production/canary
- https://docs.konghq.com/gateway/3.2.x/production/canary
- https://docs.konghq.com/gateway/3.3.x/production/canary
- https://docs.konghq.com/gateway/3.4.x/production/canary
- https://docs.konghq.com/gateway/3.5.x/production/canary


### [feat: Add KIC configFrom guide](https://github.com/Kong/docs.konghq.com/pull/6680) (2024-01-03)

Add a guide that shows how to use `configFrom` when configuring a plugin config from k8s secrets

#### Added

- https://docs.konghq.com/gateway/3.5.x/production/debug-request


### [feat: Plugin guide to rate limit requests based on peak and off-peak times](https://github.com/Kong/docs.konghq.com/pull/6634) (2024-01-05)

Created a how to guide based on https://konghq.atlassian.net/browse/DOCU-3546 for “How to rate limit Kong Gateway based on peak/non-peak time”.

Uses the pre-function and rate limiting advanced plugins together.

#### Added

- https://docs.konghq.com/hub/kong-inc/pre-function/how-to/
- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/how-to/

#### Modified

- https://docs.konghq.com/hub/kong-inc/pre-function/overview/


### [feat: Create Benchmark Guide for Kong Gateway](https://github.com/Kong/docs.konghq.com/pull/6630) (2024-01-05)

Convert internal benchmark performance KB into documentation. 


#### Added

- https://docs.konghq.com/gateway/3.0.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.1.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.2.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.3.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.4.x/how-kong-works/load-balancing
- https://docs.konghq.com/gateway/3.5.x/how-kong-works/load-balancing


### [(feat) how to guides for mTLS-auth plugin ](https://github.com/Kong/docs.konghq.com/pull/6626) (2024-01-04)

Split out content from the mTLS-auth landing page into a how-to section + some cleanup.
 

#### Added

- https://docs.konghq.com/hub/kong-inc/mtls-auth/how-to/
- https://docs.konghq.com/hub/kong-inc/mtls-auth/how-to/

#### Modified

- https://docs.konghq.com/hub/kong-inc/mtls-auth/overview/

## Week 50

### [Make port 8100 consistent in all examples](https://github.com/Kong/docs.konghq.com/pull/6666) (2023-12-15)

Port 8001 is used in the example curl command, but port 8100 is the one used in the rest of the documentation. Changing curl port to 8100.

#### Modified

- https://docs.konghq.com/gateway/3.3.x/production/monitoring/readiness-check
- https://docs.konghq.com/gateway/3.4.x/production/monitoring/readiness-check
- https://docs.konghq.com/gateway/3.5.x/production/monitoring/readiness-check


### [(chore) remove 3.1 from supported versions](https://github.com/Kong/docs.konghq.com/pull/6659) (2023-12-14)

3.1 is moving into sunset support, 12 months after the initial release. 
 
#### Modified

- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/dev-portal/customize/alternate-openapi-renderer
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/dev-portal/customize/alternate-openapi-renderer
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/dev-portal/customize/alternate-openapi-renderer
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/dev-portal/customize/alternate-openapi-renderer
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/dev-portal/customize/alternate-openapi-renderer
- https://docs.konghq.com/gateway/3.2.x/support/third-party
- https://docs.konghq.com/gateway/3.3.x/support/third-party
- https://docs.konghq.com/gateway/3.4.x/support/third-party
- https://docs.konghq.com/gateway/3.5.x/support/third-party


### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6658) (2023-12-14)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/7206065291)

#### Added

- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshmetrics.yaml

#### Modified

- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshfaultinjections.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshloadbalancingstrategies.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshretries.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshtraces.yaml
- https://docs.konghq.com/mesh/dev/kuma-cp.yaml


### [(feat) 3.4.3.1 changelog](https://github.com/Kong/docs.konghq.com/pull/6651) (2023-12-16)

Changelog for CE/EE release of 3.4.3.1

Source file  https://github.com/Kong/kong-ee/pull/7567/files

#### Modified

- https://docs.konghq.com/gateway/changelog


### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6648) (2023-12-12)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/7181558457)

#### Modified

- https://docs.konghq.com/mesh/raw/CHANGELOG


### [Fix some SEO issues](https://github.com/Kong/docs.konghq.com/pull/6647) (2023-12-12)

Fix some of the issues listed in the latest SEO audit.
* Add trailing `/` to plugin categories in the main nav
* Add non-single-sourced plugin pages to the sitemap
* Remove `nofollow` from Kong's logo and community link
* Downcase URLs in the sitemap: By default, Netlify downcases all the URLs segments and adds redirects
to those. See https://answers.netlify.com/t/my-url-paths-are-forced-into-lowercase/1659/
* Prevent `code-snippets/spec-renderer.html` from being rendered and update all its references to point to github. Added redirects to github too.

#### Modified

- https://docs.konghq.com/gateway/3.2.x/support/third-party
- https://docs.konghq.com/gateway/3.3.x/support/third-party
- https://docs.konghq.com/gateway/3.4.x/support/third-party
- https://docs.konghq.com/gateway/3.5.x/support/third-party
- https://docs.konghq.com/gateway/2.7.x/developer-portal/theme-customization/alternate-openapi-renderer
- https://docs.konghq.com/gateway/2.8.x/developer-portal/theme-customization/alternate-openapi-renderer


### [Update debug-request.md](https://github.com/Kong/docs.konghq.com/pull/6645) (2023-12-12)

The previous wording is confusing as it mentioned client.  This feature is for admins or internal teams monitoring gateway performance. It is not for a enduser who is making API calls. The usage of `client` in the previous statement may cause confusion as to who this feature is meant for.

#### Modified

- https://docs.konghq.com/gateway/3.5.x/production/debug-request


### [docs(gateway-upgrade): fix an argument error](https://github.com/Kong/docs.konghq.com/pull/6639) (2023-12-11)

Fix an error from https://github.com/Kong/docs.konghq.com/pull/6534.

#### Modified

- https://docs.konghq.com/gateway/3.2.x/support/third-party
- https://docs.konghq.com/gateway/3.3.x/support/third-party
- https://docs.konghq.com/gateway/3.4.x/support/third-party
- https://docs.konghq.com/gateway/3.5.x/support/third-party


### [Feat: Add some basic docs for making diagrams with mermaid](https://github.com/Kong/docs.konghq.com/pull/6637) (2023-12-12)

Instructions on using mermaid.js to make diagrams in the docs.

#### Added

- https://docs.konghq.com/contributing/diagrams


### [chore(deps): bump kumahq/kuma-website from 6c4168f4 to 58bbbaca](https://github.com/Kong/docs.konghq.com/pull/6611) (2023-12-11)

Auto upgrade PR log:

58bbbacaac6aa63bf9241a3e98495cfa99378122 chore(deps): update docs from repo source (kumahq/kuma-website#1544)
a8b0a77ab74eefb3030f497a47d9929d28fe76da chore(deps): update docs from repo source (kumahq/kuma-website#1543)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/7161247872).
labels: skip-changelog,review:general

#### Modified

- https://docs.konghq.com/gateway/3.2.x/support/third-party
- https://docs.konghq.com/gateway/3.3.x/support/third-party
- https://docs.konghq.com/gateway/3.4.x/support/third-party
- https://docs.konghq.com/gateway/3.5.x/support/third-party

## Week 49

### [Fix: Remove inaccurate note and links about decK in db-less mode doc](https://github.com/Kong/docs.konghq.com/pull/6633) (2023-12-08)

decK is not meant for DB-less mode, since it uses the Admin API to manage configs. There was some inaccurate info in the docs about this, suggesting that decK _can_ be used for DB-less. Removing that and adding a note on the difference between declarative and decK config.

Issue reported on Slack.

#### Modified

- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/backends/azure-key-vaults
- https://docs.konghq.com/deck/1.12.x/guides/konnect
- https://docs.konghq.com/deck/1.13.x/guides/konnect
- https://docs.konghq.com/deck/1.14.x/guides/konnect
- https://docs.konghq.com/deck/1.15.x/guides/konnect
- https://docs.konghq.com/deck/1.16.x/guides/konnect
- https://docs.konghq.com/deck/1.17.x/guides/konnect
- https://docs.konghq.com/deck/1.18.x/guides/konnect
- https://docs.konghq.com/deck/1.19.x/guides/konnect
- https://docs.konghq.com/deck/1.20.x/guides/konnect
- https://docs.konghq.com/deck/1.21.x/guides/konnect
- https://docs.konghq.com/deck/1.22.x/guides/konnect
- https://docs.konghq.com/deck/1.23.x/guides/konnect
- https://docs.konghq.com/deck/1.24.x/guides/konnect/
- https://docs.konghq.com/deck/1.25.x/guides/konnect/
- https://docs.konghq.com/deck/1.26.x/guides/konnect/
- https://docs.konghq.com/deck/1.27.x/guides/konnect/
- https://docs.konghq.com/deck/1.28.x/guides/konnect/
- https://docs.konghq.com/deck/1.29.x/guides/konnect/


### [Fix: Add cross-links between kong.conf guides and reference](https://github.com/Kong/docs.konghq.com/pull/6631) (2023-12-07)

There are no links to the kong.conf reference from the kong.conf guides, so users are having trouble finding the reference.
Adding links to fix that.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/deck/1.12.x/guides/konnect
- https://docs.konghq.com/deck/1.13.x/guides/konnect
- https://docs.konghq.com/deck/1.14.x/guides/konnect
- https://docs.konghq.com/deck/1.15.x/guides/konnect
- https://docs.konghq.com/deck/1.16.x/guides/konnect
- https://docs.konghq.com/deck/1.17.x/guides/konnect
- https://docs.konghq.com/deck/1.18.x/guides/konnect
- https://docs.konghq.com/deck/1.19.x/guides/konnect
- https://docs.konghq.com/deck/1.20.x/guides/konnect
- https://docs.konghq.com/deck/1.21.x/guides/konnect
- https://docs.konghq.com/deck/1.22.x/guides/konnect
- https://docs.konghq.com/deck/1.23.x/guides/konnect
- https://docs.konghq.com/deck/1.24.x/guides/konnect/
- https://docs.konghq.com/deck/1.25.x/guides/konnect/
- https://docs.konghq.com/deck/1.26.x/guides/konnect/
- https://docs.konghq.com/deck/1.27.x/guides/konnect/
- https://docs.konghq.com/deck/1.28.x/guides/konnect/
- https://docs.konghq.com/deck/1.29.x/guides/konnect/
- https://docs.konghq.com/gateway/3.4.x/reference/configuration
- https://docs.konghq.com/gateway/3.5.x/reference/configuration


### [doc(decK): Update authentication instructions](https://github.com/Kong/docs.konghq.com/pull/6629) (2023-12-08)

Remove references to username/password auth for latest versions of decK in order to promote usage of tokens instead of passwords for authentication.

#### Modified

- https://docs.konghq.com/gateway/3.4.x/reference/configuration
- https://docs.konghq.com/gateway/3.5.x/reference/configuration


### [Add a step to publish API Product and version docs](https://github.com/Kong/docs.konghq.com/pull/6620) (2023-12-07)

The step-by-step process is clear; however, one critical step was missing - guiding users on how to publish the API documentation and a dynamic API reference to the public portal. To address this issue, I am adding an extra step that instructs users on how to publish their API Product and version documentation.

#### Modified

- https://docs.konghq.com/konnect/getting-started/publish-service


### [tls-handshake-modifier is compatible with Konnect](https://github.com/Kong/docs.konghq.com/pull/6618) (2023-12-06)

Reported by @hbagdi; this plugin is compatible with Konnect.

#### Modified

- https://docs.konghq.com/hub/kong-inc/tls-handshake-modifier/_metadata.yml


### [fix: add missing references to Azure Key Vault](https://github.com/Kong/docs.konghq.com/pull/6614) (2023-12-07)

Support for Azure Key Vault as a secrets backend was added in Gateway 3.5. This PR adds references to this support in the 3rd party tools page and Gateway Enterprise index.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/environment-variables
- https://docs.konghq.com/gateway/3.1.x/production/environment-variables
- https://docs.konghq.com/gateway/3.2.x/production/environment-variables
- https://docs.konghq.com/gateway/3.3.x/production/environment-variables
- https://docs.konghq.com/gateway/3.4.x/production/environment-variables
- https://docs.konghq.com/gateway/3.5.x/production/environment-variables


### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6613) (2023-12-06)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/7111781984)

#### Modified

- https://docs.konghq.com/mesh/2.5.x/kuma-cp.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshaccesslogs.yaml
- https://docs.konghq.com/mesh/dev/kuma-cp.yaml


### [Update:JWT plugin overview section](https://github.com/Kong/docs.konghq.com/pull/6612) (2023-12-08)

Fixes: https://konghq.atlassian.net/browse/DOCU-2347
updated the incorrect examples section.
No validation done.

#### Modified

- https://docs.konghq.com/hub/kong-inc/jwt/overview/


### [tls-metadata-headers is compatible with Konnect](https://github.com/Kong/docs.konghq.com/pull/6607) (2023-12-05)

Reported by Fero. This is a DP only plugin which _is_ compatible with Konnect

#### Modified

- https://docs.konghq.com/hub/kong-inc/tls-metadata-headers/_metadata.yml


### [fix: Mermaid rubocop fail ](https://github.com/Kong/docs.konghq.com/pull/6602) (2023-12-04)

hopefully addressing the issue related to method length

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/environment-variables
- https://docs.konghq.com/gateway/3.1.x/production/environment-variables
- https://docs.konghq.com/gateway/3.2.x/production/environment-variables
- https://docs.konghq.com/gateway/3.3.x/production/environment-variables
- https://docs.konghq.com/gateway/3.4.x/production/environment-variables
- https://docs.konghq.com/gateway/3.5.x/production/environment-variables


### [update: OAuth 2.0 Authentication](https://github.com/Kong/docs.konghq.com/pull/6600) (2023-12-04)

Add a note about not recommended for Production environment.
Fixes: https://konghq.atlassian.net/browse/DOCU-2310
 
#### Modified

- https://docs.konghq.com/hub/kong-inc/oauth2/overview/


### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6599) (2023-12-04)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/7087328167)

#### Modified

- https://docs.konghq.com/mesh/dev/kuma-cp.yaml


### [chore(deps): bump kumahq/kuma-website from 74af1337 to 609a37e9](https://github.com/Kong/docs.konghq.com/pull/6598) (2023-12-04)

Auto upgrade PR log:

609a37e902fe7d2691df3e9c7830f5ad220de450 chore(deps): bump @adobe/css-tools from 4.3.1 to 4.3.2 (kumahq/kuma-website#1540)
2e440e044271ca41d4619b194783836c1c067dfe chore(deps): update docs from repo source (kumahq/kuma-website#1541)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/7080323180).
labels: skip-changelog,review:general

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/environment-variables
- https://docs.konghq.com/gateway/3.1.x/production/environment-variables
- https://docs.konghq.com/gateway/3.2.x/production/environment-variables
- https://docs.konghq.com/gateway/3.3.x/production/environment-variables
- https://docs.konghq.com/gateway/3.4.x/production/environment-variables
- https://docs.konghq.com/gateway/3.5.x/production/environment-variables


### [Fix: Azure vault env variables](https://github.com/Kong/docs.konghq.com/pull/6595) (2023-12-04)

To set any environment variables to configure Kong Gateway (kong.conf), each env variable must be prefixed with `KONG_`. These prefixes, along with the `VAULT` portion of each config parameter, are missing from the example codeblocks in the Azure Vaults doc.

See https://docs.konghq.com/gateway/latest/reference/configuration/#vault_azure_vault_uri for the relevant parameter names, which all start with `vault`.

#### Modified

- https://docs.konghq.com/deck/1.12.x/guides/konnect
- https://docs.konghq.com/deck/1.13.x/guides/konnect
- https://docs.konghq.com/deck/1.14.x/guides/konnect
- https://docs.konghq.com/deck/1.15.x/guides/konnect
- https://docs.konghq.com/deck/1.16.x/guides/konnect
- https://docs.konghq.com/deck/1.17.x/guides/konnect
- https://docs.konghq.com/deck/1.18.x/guides/konnect
- https://docs.konghq.com/deck/1.19.x/guides/konnect
- https://docs.konghq.com/deck/1.20.x/guides/konnect
- https://docs.konghq.com/deck/1.21.x/guides/konnect
- https://docs.konghq.com/deck/1.22.x/guides/konnect
- https://docs.konghq.com/deck/1.23.x/guides/konnect
- https://docs.konghq.com/deck/1.24.x/guides/konnect/
- https://docs.konghq.com/deck/1.25.x/guides/konnect/
- https://docs.konghq.com/deck/1.26.x/guides/konnect/
- https://docs.konghq.com/deck/1.27.x/guides/konnect/
- https://docs.konghq.com/deck/1.28.x/guides/konnect/
- https://docs.konghq.com/deck/1.29.x/guides/konnect/


### [feat(plugin): Rate Limiting Advanced window types explanation](https://github.com/Kong/docs.konghq.com/pull/6586) (2023-12-08)

https://konghq.atlassian.net/browse/DOCU-3397
Turn KB into doc: https://support.konghq.com/support/s/article/What-is-the-expected-behaviour-for-the-Rate-Limiting-Advanced-plugin-with-sliding-window-strategy

#### Modified

- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/overview/


### [kic: update and extend gRPC how-to](https://github.com/Kong/docs.konghq.com/pull/6567) (2023-12-04)

closes https://github.com/Kong/kubernetes-ingress-controller/issues/5134

For HTTPRoute (support was added in https://github.com/Kong/kubernetes-ingress-controller/pull/5128, so KIC >= 3.1.0 wii support it). For ingress, it works for older versions too

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/environment-variables
- https://docs.konghq.com/gateway/3.1.x/production/environment-variables
- https://docs.konghq.com/gateway/3.2.x/production/environment-variables
- https://docs.konghq.com/gateway/3.3.x/production/environment-variables
- https://docs.konghq.com/gateway/3.4.x/production/environment-variables
- https://docs.konghq.com/gateway/3.5.x/production/environment-variables


### [Update auth0.md to include developer managed scopes UI steps](https://github.com/Kong/docs.konghq.com/pull/6550) (2023-12-08)

#### Modified

- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/auth0
- https://docs.konghq.com/konnect/updates


### [Feat: Gateway Upgrade Refactoring + LTS upgrade guide](https://github.com/Kong/docs.konghq.com/pull/6534) (2023-12-08)

This PR add general Gateway upgrade docs and an LTS 2.8 > LTS 3.4 upgrade guide. These two pieces of content are extremely interdependent, so they have to be published together.

https://konghq.atlassian.net/browse/DOCU-3244
https://konghq.atlassian.net/browse/DOCU-3193

#### Added

- https://docs.konghq.com/gateway/3.0.x/upgrade/backup-and-restore/
- https://docs.konghq.com/gateway/3.1.x/upgrade/backup-and-restore/
- https://docs.konghq.com/gateway/3.2.x/upgrade/backup-and-restore/
- https://docs.konghq.com/gateway/3.3.x/upgrade/backup-and-restore/
- https://docs.konghq.com/gateway/3.4.x/upgrade/backup-and-restore/
- https://docs.konghq.com/gateway/3.5.x/upgrade/backup-and-restore/
- https://docs.konghq.com/gateway/3.0.x/upgrade/blue-green/
- https://docs.konghq.com/gateway/3.1.x/upgrade/blue-green/
- https://docs.konghq.com/gateway/3.2.x/upgrade/blue-green/
- https://docs.konghq.com/gateway/3.3.x/upgrade/blue-green/
- https://docs.konghq.com/gateway/3.4.x/upgrade/blue-green/
- https://docs.konghq.com/gateway/3.5.x/upgrade/blue-green/
- https://docs.konghq.com/gateway/3.0.x/upgrade/dual-cluster/
- https://docs.konghq.com/gateway/3.1.x/upgrade/dual-cluster/
- https://docs.konghq.com/gateway/3.2.x/upgrade/dual-cluster/
- https://docs.konghq.com/gateway/3.3.x/upgrade/dual-cluster/
- https://docs.konghq.com/gateway/3.4.x/upgrade/dual-cluster/
- https://docs.konghq.com/gateway/3.5.x/upgrade/dual-cluster/
- https://docs.konghq.com/gateway/3.0.x/upgrade/in-place/
- https://docs.konghq.com/gateway/3.1.x/upgrade/in-place/
- https://docs.konghq.com/gateway/3.2.x/upgrade/in-place/
- https://docs.konghq.com/gateway/3.3.x/upgrade/in-place/
- https://docs.konghq.com/gateway/3.4.x/upgrade/in-place/
- https://docs.konghq.com/gateway/3.5.x/upgrade/in-place/
- https://docs.konghq.com/gateway/3.0.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.1.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.2.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.3.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.4.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.5.x/upgrade/lts-upgrade/
- https://docs.konghq.com/gateway/3.0.x/upgrade/rolling-upgrade/
- https://docs.konghq.com/gateway/3.1.x/upgrade/rolling-upgrade/
- https://docs.konghq.com/gateway/3.2.x/upgrade/rolling-upgrade/
- https://docs.konghq.com/gateway/3.3.x/upgrade/rolling-upgrade/
- https://docs.konghq.com/gateway/3.4.x/upgrade/rolling-upgrade/
- https://docs.konghq.com/gateway/3.5.x/upgrade/rolling-upgrade/

#### Modified

- https://docs.konghq.com/deck/1.10.x/installation
- https://docs.konghq.com/deck/1.11.x/installation
- https://docs.konghq.com/deck/1.12.x/installation
- https://docs.konghq.com/deck/1.13.x/installation
- https://docs.konghq.com/deck/1.14.x/installation
- https://docs.konghq.com/deck/1.15.x/installation
- https://docs.konghq.com/deck/1.16.x/installation
- https://docs.konghq.com/deck/1.17.x/installation
- https://docs.konghq.com/deck/1.18.x/installation
- https://docs.konghq.com/deck/1.19.x/installation
- https://docs.konghq.com/deck/1.20.x/installation
- https://docs.konghq.com/deck/1.21.x/installation
- https://docs.konghq.com/deck/1.22.x/installation
- https://docs.konghq.com/deck/1.23.x/installation
- https://docs.konghq.com/deck/1.24.x/installation
- https://docs.konghq.com/deck/1.25.x/installation
- https://docs.konghq.com/deck/1.26.x/installation
- https://docs.konghq.com/deck/1.27.x/installation
- https://docs.konghq.com/deck/1.28.x/installation
- https://docs.konghq.com/deck/1.29.x/installation
- https://docs.konghq.com/deck/1.7.x/installation
- https://docs.konghq.com/deck/1.8.x/installation
- https://docs.konghq.com/deck/1.9.x/installation
- https://docs.konghq.com/gateway/3.0.x/breaking-changes/28x/
- https://docs.konghq.com/gateway/3.1.x/breaking-changes/28x/
- https://docs.konghq.com/gateway/3.2.x/breaking-changes/28x/
- https://docs.konghq.com/gateway/3.3.x/breaking-changes/28x
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/28x/
- https://docs.konghq.com/gateway/3.5.x/breaking-changes/28x/
- https://docs.konghq.com/gateway/3.1.x/breaking-changes/30x/
- https://docs.konghq.com/gateway/3.2.x/breaking-changes/30x/
- https://docs.konghq.com/gateway/3.3.x/breaking-changes/30x
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/30x/
- https://docs.konghq.com/gateway/3.5.x/breaking-changes/30x/
- https://docs.konghq.com/gateway/3.2.x/breaking-changes/31x/
- https://docs.konghq.com/gateway/3.3.x/breaking-changes/31x
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/31x/
- https://docs.konghq.com/gateway/3.5.x/breaking-changes/31x/
- https://docs.konghq.com/gateway/3.3.x/breaking-changes/32x
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/32x/
- https://docs.konghq.com/gateway/3.5.x/breaking-changes/32x/
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/33x/
- https://docs.konghq.com/gateway/3.5.x/breaking-changes/33x/
- https://docs.konghq.com/gateway/3.5.x/breaking-changes/34x/

## Week 48

### [fix: Broken links to APIOps guide](https://github.com/Kong/docs.konghq.com/pull/6583) (2023-11-30)

Set `if_version` on links to the APIOps decK guide, as it was added with 1.24.x.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/kubernetes/openshift
- https://docs.konghq.com/gateway/3.1.x/install/kubernetes/openshift
- https://docs.konghq.com/gateway/3.2.x/install/kubernetes/openshift
- https://docs.konghq.com/gateway/3.3.x/install/kubernetes/openshift
- https://docs.konghq.com/gateway/3.4.x/install/kubernetes/openshift
- https://docs.konghq.com/gateway/3.5.x/install/kubernetes/openshift


### [Update: Gateway Manager filtering release note](https://github.com/Kong/docs.konghq.com/pull/6578) (2023-11-30)

Added to changelog for gateway manager filtering

#### Modified

- https://docs.konghq.com/konnect/updates


### [chore: Add missing search aliases and supported versions for 3rd party plugins](https://github.com/Kong/docs.konghq.com/pull/6576) (2023-11-29)

Keep expecting to find third-party plugins by filtering on publisher name, but that doesn't work. 

Adding 3rd party plugin publisher names as search aliases, as well as literal plugin names (eg `aws-request-signing`). 

Also updating the supported versions for Optum plugins. Versions are based on the plugins' source code repos.

#### Modified

- https://docs.konghq.com/hub/TheLEGOGroup/aws-request-signing/_metadata.yml
- https://docs.konghq.com/hub/amberflo/kong-plugin-amberflo/_metadata.yml
- https://docs.konghq.com/hub/datadome/kong-plugin-datadome/_metadata.yml
- https://docs.konghq.com/hub/imperva/imp-appsec-connector/_metadata.yml
- https://docs.konghq.com/hub/moesif/kong-plugin-moesif/_metadata.yml
- https://docs.konghq.com/hub/nonamesecurity/nonamesecurity-kongprevention/_metadata.yml
- https://docs.konghq.com/hub/nonamesecurity/nonamesecurity-kongtrafficsource/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-response-size-limiting/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-service-virtualization/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-spec-expose/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-splunk-log/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-upstream-jwt/_metadata.yml
- https://docs.konghq.com/hub/salt/salt/_metadata.yml


### [fix: update deck schema URL](https://github.com/Kong/docs.konghq.com/pull/6565) (2023-11-27)

Updated the URL of the deck JSON schema. This now resides in another repository.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/acl


### [docs(mesh): try to clarify what an AccessRole type is](https://github.com/Kong/docs.konghq.com/pull/6563) (2023-11-27)

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config


### [chore(deps): bump kumahq/kuma-website from 31bc302b to 74af1337](https://github.com/Kong/docs.konghq.com/pull/6557) (2023-11-28)

Auto upgrade PR log:

74af13372ca829dbdc9ee75f554ed3887043f1b6 ci(.github): automatic sync of files in kumahq/.github (kumahq/kuma-website#1536)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/7012347070).
labels: skip-changelog,review:general

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config


### [Fix broken links](https://github.com/Kong/docs.konghq.com/pull/6553) (2023-11-27)

Just ran it locally and got this:
```json
[
  {
    "page": "http://localhost:8888/konnect/gateway-manager/kic/",
    "text": "Kong Ingress Controller Deployment",
    "target": "http://localhost:8888/kubernetes-ingress-controller/latest/concepts/deployment/",
    "reason": "HTTP_404"
  },
  {
    "page": "http://localhost:8888/konnect/gateway-manager/kic/",
    "text": "Using Kong Gateway Enterprise",
    "target": "http://localhost:8888/kubernetes-ingress-controller/latest/guides/choose-gateway-image/",
    "reason": "HTTP_404"
  },
  {
    "page": "http://localhost:8888/gateway/latest/how-kong-works/routing-traffic/",
    "text": "Router Expressions language",
    "target": "http://localhost:8888/gateway/latest/reference/router-expressions-language/",
    "reason": "HTTP_404"
  },
  {
    "page": "http://localhost:8888/gateway/latest/production/monitoring/readiness-check/",
    "text": "Get Started with Kong Ingress Controller",
    "target": "http://localhost:8888/kubernetes-ingress-controller/latest/deployment/overview/",
    "reason": "HTTP_404"
  },
  {
    "page": "http://localhost:8888/gateway/3.5.x/how-kong-works/routing-traffic/",
    "text": "Router Expressions language",
    "target": "http://localhost:8888/gateway/latest/reference/router-expressions-language/",
    "reason": "HTTP_404"
  },
  {
    "page": "http://localhost:8888/gateway/3.5.x/production/monitoring/readiness-check/",
    "text": "Get Started with Kong Ingress Controller",
    "target": "http://localhost:8888/kubernetes-ingress-controller/latest/deployment/overview/",
    "reason": "HTTP_404"
  }
]
```

I'm not 💯 sure about these changes though, so please review them carefully.

*
   ```json
    {
      "page": "http://localhost:8888/konnect/gateway-manager/kic/",
      "text": "Kong Ingress Controller Deployment",
      "target": "http://localhost:8888/kubernetes-ingress-controller/latest/concepts/deployment/",
      "reason": "HTTP_404"
    }
  ```
   [prod URL](https://docs.konghq.com/konnect/gateway-manager/kic/)
    <img width="1185" alt="Screenshot 2023-11-23 at 13 52 17" src="https://github.com/Kong/docs.konghq.com/assets/715229/ccf30331-bf62-43c1-8ffd-0ab5877c3d4d">
  I don't think that `/kubernetes-ingress-controller/VERSION/concepts/deployment/: /kubernetes-ingress-controller/VERSION/production/deployment-topologies/` is the right call here, I couldn't find anything remotely similar to it though. We might want to update the `Note` though.

*
  ``` json
  {
    "page": "http://localhost:8888/konnect/gateway-manager/kic/",
    "text": "Using Kong Gateway Enterprise",
    "target": "http://localhost:8888/kubernetes-ingress-controller/latest/guides/choose-gateway-image/",
    "reason": "HTTP_404"
  }
  ```
  This guide no longer exists in KIC v3.

* 
  ```json
  {
    "page": "http://localhost:8888/gateway/latest/how-kong-works/routing-traffic/",
    "text": "Router Expressions language",
    "target": "http://localhost:8888/gateway/latest/reference/router-expressions-language/",
    "reason": "HTTP_404"
  }
  ```
  `reference/router-expressions-language` was removed in [this PR](https://github.com/Kong/docs.konghq.com/pull/6437/files#diff-6a9b955367a5ba2f6c4ad05d0a6feb8ad5980ef1aa26806e074a53c5437c7cba) and most of the references were updated but not all.

* 
  ```json
    {
      "page": "http://localhost:8888/gateway/latest/production/monitoring/readiness-check/",
      "text": "Get Started with Kong Ingress Controller",
      "target": "http://localhost:8888/kubernetes-ingress-controller/latest/deployment/overview/",
      "reason": "HTTP_404"
    }
  ```
  In KIC v3 there's no `deployment/overview`. I couldn't find a similar page though.

This also ignores `linux.die.net`, for some reason it returns `HTTP_403` in the CI - not locally though.

#### Modified

- https://docs.konghq.com/moved_urls.yml


### [fix: add the missing part of kong gateway vault's secrets versioning description](https://github.com/Kong/docs.konghq.com/pull/6551) (2023-11-30)

The PR adds the missing part of Kong Gateway Vault's secrets versioning description.

Gateway's vault supports accessing versioning secrets by specifying version number as a fragment in the vault reference URL.

Note that this is not a new feature added recently, it exists long time ago, only the doc part is missing.

https://konghq.atlassian.net/browse/FTI-5168

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/acl
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/reference-format


### [Update: Listing a license requires license added via Admin API to begin with](https://github.com/Kong/docs.konghq.com/pull/6547) (2023-11-27)

We've had a few customer support cases where customers are confused by a null response from the /licenses endpoint when they're not actually using the Admin API to load the license in the first place which is a requirement for this to work properly. When using an environment variable to set the license instead, the /licenses endpoint will not work for listing licenses. This PR is to make this clearer in the documentation.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config


### [remove Kubernetes requirements and put the OpenShift requirements](https://github.com/Kong/docs.konghq.com/pull/6546) (2023-11-27)

https://github.com/Kong/docs.konghq.com/issues/5688

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config


### [KGO: v1.1.0 docs](https://github.com/Kong/docs.konghq.com/pull/6544) (2023-12-01)

Includes 1.1.0 changelog and assets:

**BLOCKED** by https://github.com/Kong/docs.konghq.com/pull/6518

#### Added

- https://docs.konghq.com/gateway-operator/1.0.x/reference/version-compatibility
- https://docs.konghq.com/gateway-operator/1.1.x/reference/version-compatibility
- https://docs.konghq.com/assets/gateway-operator/v1.1.0/all_controllers.yaml
- https://docs.konghq.com/assets/gateway-operator/v1.1.0/crds.yaml
- https://docs.konghq.com/assets/gateway-operator/v1.1.0/default.yaml

#### Modified

- https://docs.konghq.com/gateway-operator/changelog


### [docs(KIC): improved KIC ingress to gateway migration guide](https://github.com/Kong/docs.konghq.com/pull/6542) (2023-11-29)

The guide to migrate from Ingress API to Gateway API has been improved under the following aspects:
- it is no longer necessary to build the i2gw tool. We have a release with binary that can be directly downloaded
- further information about the types of resources converted has been added
 
#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config


### [Add reference page for required permissions to install KIC](https://github.com/Kong/docs.konghq.com/pull/6524) (2023-11-30)

Add a reference page to list the permissions required to install KIC when user do not have the super admin permission.
Fixes https://github.com/Kong/kubernetes-ingress-controller/issues/5166. 

#### Added

- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/backends/hashicorp-vault


### [feat: Portal Management API documentation](https://github.com/Kong/docs.konghq.com/pull/6519) (2023-11-28)

For Reviewers this needs: 

* Testing
* Copy Edit
* Narrative structure review

Questions: 
* The original draft has another section, I have some of it commented out, I felt like what I had ended pretty nicely and in combination with a blog and a spec could make a complete package but let me know if you don't agree. 
* I tried to write a purpose statement, does it answer it?

AC: 
This doc helps portal administrators and developers understand how to integrate the API into their workflow for tasks like automating approvals, assigning permissions, and monitoring developer activity. 

https://konghq.atlassian.net/browse/DOCU-3527

#### Added

- https://docs.konghq.com/konnect/dev-portal/konnect-portal-management-automation


### [docs: clarify on rate-limit redis cluster support](https://github.com/Kong/docs.konghq.com/pull/6511) (2023-11-30)

Adds clarification that the basic rate-limiting plugin does not support Redis Cluster mode.
 
[Context](https://github.com/Kong/kong/issues/11846#issuecomment-1810350623)

#### Modified

- https://docs.konghq.com/hub/kong-inc/rate-limiting/overview/


### [fix: mention required secret field for JWT plugin in KIC how to](https://github.com/Kong/docs.konghq.com/pull/6502) (2023-11-30)

Fix how to guide, it was reported by the user in the discussion

https://github.com/Kong/kubernetes-ingress-controller/discussions/5146

indeed field `secret` is missing you can read about this requirement at https://docs.konghq.com/hub/kong-inc/jwt/#create-a-jwt-credential see
![image](https://github.com/Kong/docs.konghq.com/assets/9593424/a864abca-4a63-4d7b-ac09-83e8f396fe55)

This PR adds it in the required places.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/backends/hashicorp-vault
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/reference-format
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/guides/configure-acl-plugin

## Week 47

### [style(expressions): fix typo in `performance.md`](https://github.com/Kong/docs.konghq.com/pull/6549) (2023-11-22)

#### Modified

- https://docs.konghq.com/gateway-operator/1.0.x/version-compatibility
- https://docs.konghq.com/gateway/3.0.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.1.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.2.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.3.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.4.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.5.x/reference/expressions-language/performance


### [Chore: Update Changelog for Gateway Milestone updates](https://github.com/Kong/docs.konghq.com/pull/6540) (2023-11-20)

https://konghq.atlassian.net/browse/DOCU-3533
https://konghq.aha.io/epics/KP-E-320

Changelog update for this feature update.

#### Modified

- https://docs.konghq.com/konnect/updates


### [chore(deps): bump kumahq/kuma-website from 80fb6b2a to b3eeb1bc](https://github.com/Kong/docs.konghq.com/pull/6533) (2023-11-22)

Auto upgrade PR log:

b3eeb1bcc7bc398eab666dd1cfe94e960294906b chore(deps): update docs from repo source (kumahq/kuma-website#1534)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/6951132041).
labels: skip-changelog,review:general

#### Modified

- https://docs.konghq.com/gateway/3.0.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.1.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.2.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.3.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.4.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.5.x/reference/expressions-language/performance


### [kgo: add kgo version compatibility matrix](https://github.com/Kong/docs.konghq.com/pull/6518) (2023-11-20)

Add KGO version compat matrix for 
- Kubernetes versions
- KIC versions
- GW API versions

#### Added

- https://docs.konghq.com/gateway/3.0.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.1.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.2.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.3.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.4.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.5.x/reference/expressions-language/performance


### [feat: Multi-geo GA](https://github.com/Kong/docs.konghq.com/pull/6499) (2023-11-21)

Multi-geo is going GA, so we needed to pull in the current beta docs from the `konnect` branch, as well as add information about the newly added geo, AU. 

DOCU-2593

#### Added

- https://docs.konghq.com/konnect/geo

#### Modified

- https://docs.konghq.com/deck/1.12.x/guides/konnect
- https://docs.konghq.com/deck/1.13.x/guides/konnect
- https://docs.konghq.com/deck/1.14.x/guides/konnect
- https://docs.konghq.com/deck/1.15.x/guides/konnect
- https://docs.konghq.com/deck/1.16.x/guides/konnect
- https://docs.konghq.com/deck/1.17.x/guides/konnect
- https://docs.konghq.com/deck/1.18.x/guides/konnect
- https://docs.konghq.com/deck/1.19.x/guides/konnect
- https://docs.konghq.com/deck/1.20.x/guides/konnect
- https://docs.konghq.com/deck/1.21.x/guides/konnect
- https://docs.konghq.com/deck/1.22.x/guides/konnect
- https://docs.konghq.com/deck/1.23.x/guides/konnect
- https://docs.konghq.com/deck/1.24.x/guides/konnect/
- https://docs.konghq.com/deck/1.25.x/guides/konnect/
- https://docs.konghq.com/deck/1.26.x/guides/konnect/
- https://docs.konghq.com/deck/1.27.x/guides/konnect/
- https://docs.konghq.com/deck/1.28.x/guides/konnect/
- https://docs.konghq.com/deck/1.29.x/guides/konnect/
- https://docs.konghq.com/konnect/account-management/
- https://docs.konghq.com/konnect/api-products/service-documentation
- https://docs.konghq.com/konnect/api/
- https://docs.konghq.com/konnect/dev-portal/access
- https://docs.konghq.com/konnect/dev-portal/applications/enable-app-reg
- https://docs.konghq.com/konnect/dev-portal/dev-reg
- https://docs.konghq.com/konnect/gateway-manager/configuration/
- https://docs.konghq.com/konnect/getting-started/access-account
- https://docs.konghq.com/konnect/getting-started/productize-service
- https://docs.konghq.com/konnect/
- https://docs.konghq.com/konnect/network
- https://docs.konghq.com/konnect/org-management/teams-and-roles/
- https://docs.konghq.com/konnect/org-management/teams-and-roles/manage
- https://docs.konghq.com/konnect/org-management/teams-and-roles/roles-reference
- https://docs.konghq.com/konnect/org-management/teams-and-roles/teams-reference
- https://docs.konghq.com/konnect/updates


### [update: Rewrite the expressions router Gateway doc](https://github.com/Kong/docs.konghq.com/pull/6437) (2023-11-21)

This is a complete rewrite of the Expressions router doc to make it easier to understand and more comprehensive.

![KAG-2288]

[KAG-2288]: https://konghq.atlassian.net/browse/KAG-2288?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ

#### Added

- https://docs.konghq.com/gateway/3.0.x/reference/expressions-language/language-references
- https://docs.konghq.com/gateway/3.1.x/reference/expressions-language/language-references
- https://docs.konghq.com/gateway/3.2.x/reference/expressions-language/language-references
- https://docs.konghq.com/gateway/3.3.x/reference/expressions-language/language-references
- https://docs.konghq.com/gateway/3.4.x/reference/expressions-language/language-references
- https://docs.konghq.com/gateway/3.5.x/reference/expressions-language/language-references
- https://docs.konghq.com/gateway/3.0.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.1.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.2.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.3.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.4.x/reference/expressions-language/performance
- https://docs.konghq.com/gateway/3.5.x/reference/expressions-language/performance
- https://docs.konghq.com/assets/images/products/gateway/reference/expressions-language/predicate.png
- https://docs.konghq.com/assets/images/products/gateway/reference/expressions-language/router-matching-flow.png

#### Modified

- https://docs.konghq.com/gateway/3.0.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.1.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.2.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.3.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.4.x/key-concepts/routes/expressions
- https://docs.konghq.com/gateway/3.5.x/key-concepts/routes/expressions

## Week 46


### [(chore) Konnect + 3.5 support](https://github.com/Kong/docs.konghq.com/pull/6527) (2023-11-16)

Adding statements of Konnect support for 3.5 to changelog + compatibility table, including Azure Key Vault support.

#### Modified

- https://docs.konghq.com/konnect/compatibility
- https://docs.konghq.com/konnect/updates


### [Feat: Azure Key Vault docs for Konnect](https://github.com/Kong/docs.konghq.com/pull/6526) (2023-11-16)


 Added Azure Key Vault as a supported secret manager for Konnect docs


https://konghq.aha.io/features/KP-391
This was hidden behind a feature flag from back in March. It is now ready to be turned on and released.

#### Modified

- https://docs.konghq.com/konnect/gateway-manager/configuration/vaults/how-to
- https://docs.konghq.com/konnect/gateway-manager/configuration/vaults/


### [Fix: custom Docker build instructions](https://github.com/Kong/docs.konghq.com/pull/6525) (2023-11-16)

Fix custom Docker build instructions. `openresty` is now symlinked in the package, which caused the `Dockerfile` provided to fail.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/cloud/eks


### [feat(dbless): add compatibility warning for Kong Manager](https://github.com/Kong/docs.konghq.com/pull/6522) (2023-11-17)

Adding a section for the compatibility warning while using Kong Manager with Kong under DB-less mode.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/cloud/eks



### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6513) (2023-11-16)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/6887845559)

#### Modified

- https://docs.konghq.com/mesh/2.5.x/kuma-cp.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshloadbalancingstrategies.yaml
- https://docs.konghq.com/mesh/dev/kuma-cp.yaml
- https://docs.konghq.com/mesh/raw/CHANGELOG


### [(chore) Add end off support dates to Konnect/GW compatibility table](https://github.com/Kong/docs.konghq.com/pull/6512) (2023-11-16)

Adding end of support column to Konnect's compatibility w/ Gateway matrix. Dates will match Gateway's dates starting with 3.2, prior versions will end support in Feb 2024.

#### Modified

- https://docs.konghq.com/konnect/compatibility


### [Update Konnect curl request in renew-certificates.md](https://github.com/Kong/docs.konghq.com/pull/6510) (2023-11-17)

Modified curl example for Konnect:

- needed to add double-quotes to properly expand $CERT envvar (curl was giving an error)
https://superuser.com/questions/835587/how-to-include-environment-variable-in-bash-line-curl#:~:text=Inside%20single%2Dquotes%2C%20the%20shell,completed%22'.%22%7D'

- Included the Authorization header in the Konnect request

#### Modified

- https://docs.konghq.com/konnect/gateway-manager/data-plane-nodes/renew-certificates


### [Update gw manager docs](https://github.com/Kong/docs.konghq.com/pull/6509) (2023-11-14)

Updating gateway manager doc page since Plus and Enterprise users can create multiple control planes. This was new as part of KOD1 for API Summit.


#### Modified

- https://docs.konghq.com/konnect/gateway-manager/


### [(chore) 3.5.0.1 changelog](https://github.com/Kong/docs.konghq.com/pull/6508) (2023-11-16)

Build changelog for 3.5.0.1 based on source from https://github.com/Kong/kong-ee/blob/next/3.5.x.x/changelog/3.5.0.1/3.5.0.1.md

#### Modified

- https://docs.konghq.com/gateway/changelog


### [docs(changelog): consolidate the lua-resty-aws version bump changelog](https://github.com/Kong/docs.konghq.com/pull/6507) (2023-11-14)

Consolidate the lua-resty-aws version bump entries into one as both entries happened in the same release.

This is for Gateway Enterprise 3.5.0.0 changelog.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [chore: improve docs about support of gRPC in KIC](https://github.com/Kong/docs.konghq.com/pull/6497) (2023-11-15)

Improve documentation for gRPC support in KIC
- as long as https://github.com/Kong/kubernetes-ingress-controller/issues/4273 is not resolved only gRPC over HTTPS is supported, so mention it
- remove the redundant annotation `konghq.com/protocol: grpcs` from the service, because in [examples/gateway-grpcroute.yaml](https://github.com/Kong/kubernetes-ingress-controller/blob/314951c3279dcd38cb7de7e53f71969379a0340a/examples/gateway-grpcroute.yaml#L5-L17) it's not specified and that configuration is tested in KIC CI so it works


#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/cloud/eks


### [kic: fix the description of kic's leader election permission](https://github.com/Kong/docs.konghq.com/pull/6485) (2023-11-16)

fixes: https://github.com/Kong/docs.konghq.com/issues/6410


#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/docker/build-custom-images/
- https://docs.konghq.com/gateway/3.1.x/install/docker/build-custom-images/
- https://docs.konghq.com/gateway/3.2.x/install/docker/build-custom-images/
- https://docs.konghq.com/gateway/3.3.x/install/docker/build-custom-images/
- https://docs.konghq.com/gateway/3.4.x/install/docker/build-custom-images/
- https://docs.konghq.com/gateway/3.5.x/install/docker/build-custom-images/
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/cloud/eks

## Week 45


### [Release Gateway 3.4.2.0](https://github.com/Kong/docs.konghq.com/pull/6490) (2023-11-10)

Update changelog for the Gateway 3.4.2.0 release

https://github.com/Kong/kong-ee/blob/next/3.4.x.x/changelog/3.4.2.0/3.4.2.0.md

https://konghq.atlassian.net/browse/DOCU-3563

#### Modified

- https://docs.konghq.com/gateway/changelog



### [docs: add KIC 3.0 missing docs updates](https://github.com/Kong/docs.konghq.com/pull/6487) (2023-11-08)

Adds missing KIC 3.0 docs:
- updates compatibility matrices (drops Kubernetes 1.23 and 1.24 support)
- adds `konghq.com/upstream-policy` annotation to annotations reference
- updates support policy table (not sure if we should also update [Supported versions table](https://deploy-preview-6486--kongdocs.netlify.app/kubernetes-ingress-controller/latest/support-policy/#supported-versions) - so far we've been recommending LTS releases so I didn't change that to recommend 3.0 @mheap). 

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/gateway-api
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/grpc


### [fix: remove unnecessary brackets from proxy config](https://github.com/Kong/docs.konghq.com/pull/6486) (2023-11-08)

Removes unnecessary brackets from example helm values proxy configuration that break it.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.1.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.2.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.3.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.4.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.5.x/plugin-development/pdk/kong.websocket.upstream




### [removing warning about the websocket pdk](https://github.com/Kong/docs.konghq.com/pull/6477) (2023-11-07)

This removes the unstable warning from the gateway's WebSocket client/upstream Lua PDKs.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/concepts/ingress


### [KIC: Fix GRPC Guide](https://github.com/Kong/docs.konghq.com/pull/6473) (2023-11-08)

Add GRPC guide to KIC 3.0 docs

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/production/deployment-topologies/db-backed


### [Release: KIC 3.0](https://github.com/Kong/docs.konghq.com/pull/6467) (2023-11-06)

Merge the long-lived KIC 3.0 branch in to `main`

#### Added

- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/concepts/admission-webhook
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/concepts/annotations
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/concepts/architecture
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/concepts/custom-resources
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/concepts/gateway-api
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/concepts/ingress
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/gateway-api
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/get-started/key-authentication
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/get-started/proxy-caching
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/get-started/rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/get-started/services-and-routes
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/high-availability/health-checks
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/high-availability/kic
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/migrate/credential-kongcredtype-label
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/migrate/ingress-to-gateway
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/migrate/kongingress
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/requests/customizing-load-balancing
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/requests/rewrite-annotation
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/requests/rewrite-host
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/security/client-ip
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/security/kong-vault
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/security/workspaces
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/external
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/grpc
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/http
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/multiple-backends
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/tcp
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/tls
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/guides/services/udp
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/cloud/aks
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/cloud/eks
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/cloud/gke
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/gateway-operator
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/install/helm
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/license
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/acl
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/authentication
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/custom
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/mtls
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/oidc
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/plugins/rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/production/deployment-topologies/db-backed
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/production/deployment-topologies/gateway-discovery
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/production/deployment-topologies/sidecar
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/production/observability/events
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/production/observability/prometheus-grafana
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/production/observability/prometheus
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/reference/annotations
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/reference/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/reference/faq/nginx.conf
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/reference/faq/router
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/reference/feature-gates
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/reference/ingress-to-gateway-migration
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/reference/troubleshooting
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/support-policy
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/upgrade/gateway
- https://docs.konghq.com/kubernetes-ingress-controller/3.0.x/upgrade/kic
- https://docs.konghq.com/assets/images/products/kubernetes-ingress-controller/kic-gateway-arch.png
- https://docs.konghq.com/assets/images/products/kubernetes-ingress-controller/topology/db-backed-hybrid.png
- https://docs.konghq.com/assets/images/products/kubernetes-ingress-controller/topology/db-backed-traditional.png
- https://docs.konghq.com/assets/images/products/kubernetes-ingress-controller/topology/gateway-discovery.png
- https://docs.konghq.com/assets/images/products/kubernetes-ingress-controller/topology/sidecar.png
- https://docs.konghq.com/assets/kubernetes-ingress-controller/examples/httpbin-service.yaml

#### Modified

- https://docs.konghq.com/gateway-operator/1.0.x/get-started/kic/install/
- https://docs.konghq.com/assets/kubernetes-ingress-controller/examples/tcp-echo-service.yaml
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/deployment/install-gateway-apis


### [Update: Link to IETF Draft](https://github.com/Kong/docs.konghq.com/pull/6464) (2023-11-06)

RateLimit header fields for HTTP -> https://datatracker.ietf.org/doc/draft-ietf-httpapi-ratelimit-headers/

#### Modified

- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/overview/
- https://docs.konghq.com/hub/kong-inc/rate-limiting/overview/



### [Release: Gateway 3.5](https://github.com/Kong/docs.konghq.com/pull/6433) (2023-11-08)

## Description

Release roll-up PR for Gateway 3.5 release.

#### Added

- https://docs.konghq.com/hub/kong-inc/cors/
- https://docs.konghq.com/hub/kong-inc/oas-validation/
- https://docs.konghq.com/hub/kong-inc/response-transformer/
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/backends/azure-key-vaults
- https://docs.konghq.com/gateway/3.5.x/plugin-development/wasm/filter-configuration
- https://docs.konghq.com/gateway/3.5.x/production/debug-request
- https://docs.konghq.com/assets/images/products/gateway/km_workspace_3.5.png
- https://docs.konghq.com/assets/images/products/plugins/openid-connect/keycloak-client-cert-bound-settings.png

#### Modified

- https://docs.konghq.com/hub/kong-inc/acme/
- https://docs.konghq.com/hub/kong-inc/acme/how-to/
- https://docs.konghq.com/hub/kong-inc/aws-lambda/
- https://docs.konghq.com/hub/kong-inc/aws-lambda/overview/
- https://docs.konghq.com/hub/kong-inc/canary/
- https://docs.konghq.com/hub/kong-inc/exit-transformer/overview/
- https://docs.konghq.com/hub/kong-inc/graphql-rate-limiting-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/grpc-gateway/
- https://docs.konghq.com/hub/kong-inc/kafka-log/
- https://docs.konghq.com/hub/kong-inc/mocking/
- https://docs.konghq.com/hub/kong-inc/mocking/overview/
- https://docs.konghq.com/hub/kong-inc/mtls-auth/
- https://docs.konghq.com/hub/kong-inc/oauth2-introspection/
- https://docs.konghq.com/hub/kong-inc/openid-connect/
- https://docs.konghq.com/hub/kong-inc/openid-connect/overview/
- https://docs.konghq.com/hub/kong-inc/opentelemetry/
- https://docs.konghq.com/hub/kong-inc/opentelemetry/overview/
- https://docs.konghq.com/hub/kong-inc/prometheus/
- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/
- https://docs.konghq.com/hub/kong-inc/rate-limiting/overview/
- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer/how-to/
- https://docs.konghq.com/hub/kong-inc/request-validator/
- https://docs.konghq.com/hub/kong-inc/response-ratelimiting/
- https://docs.konghq.com/hub/kong-inc/saml/
- https://docs.konghq.com/hub/kong-inc/session/
- https://docs.konghq.com/hub/kong-inc/session/overview/
- https://docs.konghq.com/hub/kong-inc/tcp-log/
- https://docs.konghq.com/hub/kong-inc/zipkin/
- https://docs.konghq.com/hub/kong-inc/zipkin/overview/
- https://docs.konghq.com/deck/1.24.x/guides/apiops/
- https://docs.konghq.com/deck/1.25.x/guides/apiops/
- https://docs.konghq.com/deck/1.26.x/guides/apiops/
- https://docs.konghq.com/deck/1.27.x/guides/apiops/
- https://docs.konghq.com/deck/1.28.x/guides/apiops/
- https://docs.konghq.com/deck/1.29.x/guides/apiops/
- https://docs.konghq.com/deck/1.11.x/guides/defaults
- https://docs.konghq.com/deck/1.12.x/guides/defaults
- https://docs.konghq.com/deck/1.13.x/guides/defaults
- https://docs.konghq.com/deck/1.14.x/guides/defaults
- https://docs.konghq.com/deck/1.15.x/guides/defaults
- https://docs.konghq.com/deck/1.16.x/guides/defaults
- https://docs.konghq.com/deck/1.17.x/guides/defaults
- https://docs.konghq.com/deck/1.18.x/guides/defaults
- https://docs.konghq.com/deck/1.19.x/guides/defaults
- https://docs.konghq.com/deck/1.20.x/guides/defaults
- https://docs.konghq.com/deck/1.21.x/guides/defaults
- https://docs.konghq.com/deck/1.22.x/guides/defaults
- https://docs.konghq.com/deck/1.23.x/guides/defaults
- https://docs.konghq.com/deck/1.24.x/guides/defaults/
- https://docs.konghq.com/deck/1.25.x/guides/defaults/
- https://docs.konghq.com/deck/1.26.x/guides/defaults/
- https://docs.konghq.com/deck/1.27.x/guides/defaults/
- https://docs.konghq.com/deck/1.28.x/guides/defaults/
- https://docs.konghq.com/deck/1.29.x/guides/defaults/
- https://docs.konghq.com/deck/1.16.x/guides/security
- https://docs.konghq.com/deck/1.17.x/guides/security
- https://docs.konghq.com/deck/1.18.x/guides/security
- https://docs.konghq.com/deck/1.19.x/guides/security
- https://docs.konghq.com/deck/1.20.x/guides/security
- https://docs.konghq.com/deck/1.21.x/guides/security
- https://docs.konghq.com/deck/1.22.x/guides/security
- https://docs.konghq.com/deck/1.23.x/guides/security
- https://docs.konghq.com/deck/1.24.x/guides/security/
- https://docs.konghq.com/deck/1.25.x/guides/security/
- https://docs.konghq.com/deck/1.26.x/guides/security/
- https://docs.konghq.com/deck/1.27.x/guides/security/
- https://docs.konghq.com/deck/1.28.x/guides/security/
- https://docs.konghq.com/deck/1.29.x/guides/security/
- https://docs.konghq.com/gateway-operator/1.0.x/faq
- https://docs.konghq.com/gateway-operator/1.0.x/get-started/konnect/create-route/
- https://docs.konghq.com/gateway-operator/1.0.x/topologies/dbless/
- https://docs.konghq.com/gateway/3.0.x/admin-api/developers/reference
- https://docs.konghq.com/gateway/3.1.x/admin-api/developers/reference
- https://docs.konghq.com/gateway/3.2.x/admin-api/developers/reference
- https://docs.konghq.com/gateway/3.3.x/admin-api/developers/reference
- https://docs.konghq.com/gateway/3.4.x/admin-api/developers/reference
- https://docs.konghq.com/gateway/3.0.x/get-started/key-authentication
- https://docs.konghq.com/gateway/3.1.x/get-started/key-authentication
- https://docs.konghq.com/gateway/3.2.x/get-started/key-authentication
- https://docs.konghq.com/gateway/3.3.x/get-started/key-authentication
- https://docs.konghq.com/gateway/3.4.x/get-started/key-authentication
- https://docs.konghq.com/gateway/3.5.x/get-started/key-authentication
- https://docs.konghq.com/gateway/3.0.x/get-started/load-balancing
- https://docs.konghq.com/gateway/3.1.x/get-started/load-balancing
- https://docs.konghq.com/gateway/3.2.x/get-started/load-balancing
- https://docs.konghq.com/gateway/3.3.x/get-started/load-balancing
- https://docs.konghq.com/gateway/3.4.x/get-started/load-balancing
- https://docs.konghq.com/gateway/3.5.x/get-started/load-balancing
- https://docs.konghq.com/gateway/3.0.x/get-started/proxy-caching
- https://docs.konghq.com/gateway/3.1.x/get-started/proxy-caching
- https://docs.konghq.com/gateway/3.2.x/get-started/proxy-caching
- https://docs.konghq.com/gateway/3.3.x/get-started/proxy-caching
- https://docs.konghq.com/gateway/3.4.x/get-started/proxy-caching
- https://docs.konghq.com/gateway/3.5.x/get-started/proxy-caching
- https://docs.konghq.com/gateway/3.0.x/get-started/rate-limiting
- https://docs.konghq.com/gateway/3.1.x/get-started/rate-limiting
- https://docs.konghq.com/gateway/3.2.x/get-started/rate-limiting
- https://docs.konghq.com/gateway/3.3.x/get-started/rate-limiting
- https://docs.konghq.com/gateway/3.4.x/get-started/rate-limiting
- https://docs.konghq.com/gateway/3.5.x/get-started/rate-limiting
- https://docs.konghq.com/gateway/3.0.x/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.1.x/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.2.x/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.3.x/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.4.x/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.5.x/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.0.x/how-kong-works/performance-testing
- https://docs.konghq.com/gateway/3.1.x/how-kong-works/performance-testing
- https://docs.konghq.com/gateway/3.2.x/how-kong-works/performance-testing
- https://docs.konghq.com/gateway/3.3.x/how-kong-works/performance-testing
- https://docs.konghq.com/gateway/3.4.x/how-kong-works/performance-testing
- https://docs.konghq.com/gateway/3.0.x/
- https://docs.konghq.com/gateway/3.1.x/
- https://docs.konghq.com/gateway/3.2.x/
- https://docs.konghq.com/gateway/3.3.x/
- https://docs.konghq.com/gateway/3.4.x/
- https://docs.konghq.com/gateway/3.5.x/
- https://docs.konghq.com/gateway/3.0.x/install/kubernetes/deployment-options
- https://docs.konghq.com/gateway/3.1.x/install/kubernetes/deployment-options
- https://docs.konghq.com/gateway/3.2.x/install/kubernetes/deployment-options
- https://docs.konghq.com/gateway/3.3.x/install/kubernetes/deployment-options
- https://docs.konghq.com/gateway/3.4.x/install/kubernetes/deployment-options
- https://docs.konghq.com/gateway/3.5.x/install/kubernetes/deployment-options
- https://docs.konghq.com/gateway/3.0.x/install/kubernetes/helm-quickstart
- https://docs.konghq.com/gateway/3.1.x/install/kubernetes/helm-quickstart
- https://docs.konghq.com/gateway/3.2.x/install/kubernetes/helm-quickstart
- https://docs.konghq.com/gateway/3.3.x/install/kubernetes/helm-quickstart
- https://docs.konghq.com/gateway/3.4.x/install/kubernetes/helm-quickstart
- https://docs.konghq.com/gateway/3.5.x/install/kubernetes/helm-quickstart
- https://docs.konghq.com/gateway/3.0.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.1.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.2.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.3.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.4.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.5.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.0.x/key-concepts/upstreams
- https://docs.konghq.com/gateway/3.1.x/key-concepts/upstreams
- https://docs.konghq.com/gateway/3.2.x/key-concepts/upstreams
- https://docs.konghq.com/gateway/3.3.x/key-concepts/upstreams
- https://docs.konghq.com/gateway/3.4.x/key-concepts/upstreams
- https://docs.konghq.com/gateway/3.5.x/key-concepts/upstreams
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/plugin-ordering/get-started
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/plugin-ordering/get-started
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/plugin-ordering/get-started
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/plugin-ordering/get-started
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/plugin-ordering/get-started
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/plugin-ordering/get-started
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/backends/aws-sm
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/secrets-management/how-to/aws-secrets-manager
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/secrets-management/how-to/aws-secrets-manager
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/secrets-management/how-to/aws-secrets-manager
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/secrets-management/how-to/aws-secrets-manager
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/secrets-management/how-to/aws-secrets-manager
- https://docs.konghq.com/gateway/3.5.x/kong-enterprise/secrets-management/how-to/aws-secrets-manager
- https://docs.konghq.com/gateway/3.0.x/kong-manager/auth/oidc/configure
- https://docs.konghq.com/gateway/3.1.x/kong-manager/auth/oidc/configure
- https://docs.konghq.com/gateway/3.2.x/kong-manager/auth/oidc/configure
- https://docs.konghq.com/gateway/3.3.x/kong-manager/auth/oidc/configure
- https://docs.konghq.com/gateway/3.4.x/kong-manager/auth/oidc/configure
- https://docs.konghq.com/gateway/3.5.x/kong-manager/auth/oidc/configure
- https://docs.konghq.com/gateway/3.0.x/kong-manager/auth/rbac/enable
- https://docs.konghq.com/gateway/3.1.x/kong-manager/auth/rbac/enable
- https://docs.konghq.com/gateway/3.2.x/kong-manager/auth/rbac/enable
- https://docs.konghq.com/gateway/3.3.x/kong-manager/auth/rbac/enable
- https://docs.konghq.com/gateway/3.4.x/kong-manager/auth/rbac/enable
- https://docs.konghq.com/gateway/3.5.x/kong-manager/auth/rbac/enable
- https://docs.konghq.com/gateway/3.0.x/kong-manager/get-started/load-balancing
- https://docs.konghq.com/gateway/3.1.x/kong-manager/get-started/load-balancing
- https://docs.konghq.com/gateway/3.2.x/kong-manager/get-started/load-balancing
- https://docs.konghq.com/gateway/3.3.x/kong-manager/get-started/load-balancing
- https://docs.konghq.com/gateway/3.4.x/kong-manager/get-started/load-balancing
- https://docs.konghq.com/gateway/3.5.x/kong-manager/get-started/load-balancing
- https://docs.konghq.com/gateway/3.0.x/kong-manager/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.1.x/kong-manager/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.2.x/kong-manager/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.3.x/kong-manager/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.4.x/kong-manager/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.5.x/kong-manager/get-started/services-and-routes
- https://docs.konghq.com/gateway/3.0.x/kong-manager/workspaces
- https://docs.konghq.com/gateway/3.1.x/kong-manager/workspaces
- https://docs.konghq.com/gateway/3.2.x/kong-manager/workspaces
- https://docs.konghq.com/gateway/3.3.x/kong-manager/workspaces
- https://docs.konghq.com/gateway/3.4.x/kong-manager/workspaces
- https://docs.konghq.com/gateway/3.5.x/kong-manager/workspaces
- https://docs.konghq.com/gateway/3.0.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.1.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.2.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.3.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.4.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.5.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.0.x/kong-plugins/authentication/oidc/curity
- https://docs.konghq.com/gateway/3.1.x/kong-plugins/authentication/oidc/curity
- https://docs.konghq.com/gateway/3.2.x/kong-plugins/authentication/oidc/curity
- https://docs.konghq.com/gateway/3.3.x/kong-plugins/authentication/oidc/curity
- https://docs.konghq.com/gateway/3.4.x/kong-plugins/authentication/oidc/curity
- https://docs.konghq.com/gateway/3.5.x/kong-plugins/authentication/oidc/curity
- https://docs.konghq.com/gateway/3.0.x/kong-plugins/authentication/oidc/okta
- https://docs.konghq.com/gateway/3.1.x/kong-plugins/authentication/oidc/okta
- https://docs.konghq.com/gateway/3.2.x/kong-plugins/authentication/oidc/okta
- https://docs.konghq.com/gateway/3.3.x/kong-plugins/authentication/oidc/okta
- https://docs.konghq.com/gateway/3.4.x/kong-plugins/authentication/oidc/okta
- https://docs.konghq.com/gateway/3.5.x/kong-plugins/authentication/oidc/okta
- https://docs.konghq.com/gateway/3.0.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.1.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.2.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.3.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.4.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.5.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.0.x/licenses/report
- https://docs.konghq.com/gateway/3.1.x/licenses/report
- https://docs.konghq.com/gateway/3.2.x/licenses/report
- https://docs.konghq.com/gateway/3.3.x/licenses/report
- https://docs.konghq.com/gateway/3.0.x/migrate-ce-to-ke/
- https://docs.konghq.com/gateway/3.1.x/migrate-ce-to-ke/
- https://docs.konghq.com/gateway/3.2.x/migrate-ce-to-ke/
- https://docs.konghq.com/gateway/3.3.x/migrate-ce-to-ke/
- https://docs.konghq.com/gateway/3.4.x/migrate-ce-to-ke/
- https://docs.konghq.com/gateway/3.5.x/migrate-ce-to-ke/
- https://docs.konghq.com/gateway/3.0.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/3.1.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/3.2.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/3.3.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/3.4.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/3.5.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/3.0.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.1.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.2.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.3.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.4.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.5.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.0.x/plugin-development/entities-cache
- https://docs.konghq.com/gateway/3.1.x/plugin-development/entities-cache
- https://docs.konghq.com/gateway/3.2.x/plugin-development/entities-cache
- https://docs.konghq.com/gateway/3.3.x/plugin-development/entities-cache
- https://docs.konghq.com/gateway/3.4.x/plugin-development/entities-cache
- https://docs.konghq.com/gateway/3.5.x/plugin-development/entities-cache
- https://docs.konghq.com/gateway/3.0.x/plugin-development/pdk/kong.client
- https://docs.konghq.com/gateway/3.1.x/plugin-development/pdk/kong.client
- https://docs.konghq.com/gateway/3.2.x/plugin-development/pdk/kong.client
- https://docs.konghq.com/gateway/3.3.x/plugin-development/pdk/kong.client
- https://docs.konghq.com/gateway/3.4.x/plugin-development/pdk/kong.client
- https://docs.konghq.com/gateway/3.5.x/plugin-development/pdk/kong.client
- https://docs.konghq.com/gateway/3.0.x/plugin-development/pdk/kong.log
- https://docs.konghq.com/gateway/3.1.x/plugin-development/pdk/kong.log
- https://docs.konghq.com/gateway/3.2.x/plugin-development/pdk/kong.log
- https://docs.konghq.com/gateway/3.3.x/plugin-development/pdk/kong.log
- https://docs.konghq.com/gateway/3.4.x/plugin-development/pdk/kong.log
- https://docs.konghq.com/gateway/3.5.x/plugin-development/pdk/kong.log
- https://docs.konghq.com/gateway/3.0.x/plugin-development/pdk/kong.request
- https://docs.konghq.com/gateway/3.1.x/plugin-development/pdk/kong.request
- https://docs.konghq.com/gateway/3.2.x/plugin-development/pdk/kong.request
- https://docs.konghq.com/gateway/3.3.x/plugin-development/pdk/kong.request
- https://docs.konghq.com/gateway/3.4.x/plugin-development/pdk/kong.request
- https://docs.konghq.com/gateway/3.5.x/plugin-development/pdk/kong.request
- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/db-less-and-declarative-config
- https://docs.konghq.com/gateway/3.0.x/production/deployment-topologies/hybrid-mode/setup
- https://docs.konghq.com/gateway/3.1.x/production/deployment-topologies/hybrid-mode/setup
- https://docs.konghq.com/gateway/3.2.x/production/deployment-topologies/hybrid-mode/setup
- https://docs.konghq.com/gateway/3.3.x/production/deployment-topologies/hybrid-mode/setup
- https://docs.konghq.com/gateway/3.4.x/production/deployment-topologies/hybrid-mode/setup
- https://docs.konghq.com/gateway/3.5.x/production/deployment-topologies/hybrid-mode/setup
- https://docs.konghq.com/gateway/3.0.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.1.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.2.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.3.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.4.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.5.x/production/monitoring/prometheus
- https://docs.konghq.com/gateway/3.0.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.1.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.2.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.3.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.4.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.5.x/production/monitoring/statsd
- https://docs.konghq.com/gateway/3.0.x/production/networking/default-ports
- https://docs.konghq.com/gateway/3.1.x/production/networking/default-ports
- https://docs.konghq.com/gateway/3.2.x/production/networking/default-ports
- https://docs.konghq.com/gateway/3.3.x/production/networking/default-ports
- https://docs.konghq.com/gateway/3.4.x/production/networking/default-ports
- https://docs.konghq.com/gateway/3.5.x/production/networking/default-ports
- https://docs.konghq.com/gateway/3.0.x/production/running-kong/systemd
- https://docs.konghq.com/gateway/3.1.x/production/running-kong/systemd
- https://docs.konghq.com/gateway/3.2.x/production/running-kong/systemd
- https://docs.konghq.com/gateway/3.3.x/production/running-kong/systemd
- https://docs.konghq.com/gateway/3.4.x/production/running-kong/systemd
- https://docs.konghq.com/gateway/3.5.x/production/running-kong/systemd
- https://docs.konghq.com/gateway/3.0.x/production/sizing-guidelines
- https://docs.konghq.com/gateway/3.1.x/production/sizing-guidelines
- https://docs.konghq.com/gateway/3.2.x/production/sizing-guidelines
- https://docs.konghq.com/gateway/3.3.x/production/sizing-guidelines
- https://docs.konghq.com/gateway/3.4.x/production/sizing-guidelines
- https://docs.konghq.com/gateway/3.5.x/production/sizing-guidelines
- https://docs.konghq.com/gateway/3.0.x/reference/cli
- https://docs.konghq.com/gateway/3.1.x/reference/cli
- https://docs.konghq.com/gateway/3.2.x/reference/cli
- https://docs.konghq.com/gateway/3.3.x/reference/cli
- https://docs.konghq.com/gateway/3.4.x/reference/cli
- https://docs.konghq.com/gateway/3.5.x/reference/cli
- https://docs.konghq.com/gateway/3.4.x/reference/configuration
- https://docs.konghq.com/gateway/3.5.x/reference/configuration
- https://docs.konghq.com/gateway/3.0.x/reference/performance-testing-framework
- https://docs.konghq.com/gateway/3.1.x/reference/performance-testing-framework
- https://docs.konghq.com/gateway/3.2.x/reference/performance-testing-framework
- https://docs.konghq.com/gateway/3.3.x/reference/performance-testing-framework
- https://docs.konghq.com/gateway/3.4.x/reference/performance-testing-framework
- https://docs.konghq.com/gateway/3.4.x/reference/wasm
- https://docs.konghq.com/gateway/3.5.x/reference/wasm
- https://docs.konghq.com/gateway/3.2.x/support/browser
- https://docs.konghq.com/gateway/3.3.x/support/browser
- https://docs.konghq.com/gateway/3.4.x/support/browser
- https://docs.konghq.com/gateway/3.5.x/support/browser
- https://docs.konghq.com/gateway/3.3.x/support/sbom
- https://docs.konghq.com/gateway/3.4.x/support/sbom
- https://docs.konghq.com/gateway/3.5.x/support/sbom
- https://docs.konghq.com/gateway/3.2.x/support/third-party
- https://docs.konghq.com/gateway/3.3.x/support/third-party
- https://docs.konghq.com/gateway/3.4.x/support/third-party
- https://docs.konghq.com/gateway/3.5.x/support/third-party
- https://docs.konghq.com/gateway/3.0.x/upgrade/
- https://docs.konghq.com/assets/images/products/plugins/openid-connect/keycloak.json
- https://docs.konghq.com/contributing/variables
- https://docs.konghq.com/contributing/word-choice
- https://docs.konghq.com/deck/pre-1.7/commands
- https://docs.konghq.com/deck/pre-1.7/design-architecture
- https://docs.konghq.com/deck/pre-1.7/faqs
- https://docs.konghq.com/deck/pre-1.7/guides/kong-enterprise
- https://docs.konghq.com/gateway/2.6.x/configure/auth/
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/expose-services
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/improve-performance
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/load-balancing
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/protect-services
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/secure-services
- https://docs.konghq.com/gateway/2.6.x/get-started/quickstart/configuring-a-service
- https://docs.konghq.com/gateway/2.6.x/install-and-run/docker
- https://docs.konghq.com/gateway/2.6.x/plan-and-deploy/default-ports
- https://docs.konghq.com/gateway/2.6.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/2.6.x/reference/db-less-and-declarative-config
- https://docs.konghq.com/gateway/2.7.x/configure/auth/
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/expose-services
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/improve-performance
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/load-balancing
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/protect-services
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/secure-services
- https://docs.konghq.com/gateway/2.7.x/get-started/quickstart/configuring-a-service
- https://docs.konghq.com/gateway/2.7.x/install-and-run/docker
- https://docs.konghq.com/gateway/2.7.x/plan-and-deploy/default-ports
- https://docs.konghq.com/gateway/2.7.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/2.7.x/reference/db-less-and-declarative-config
- https://docs.konghq.com/gateway/2.8.x/admin-api/developers/reference
- https://docs.konghq.com/gateway/2.8.x/configure/auth/
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/expose-services
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/improve-performance
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/load-balancing
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/protect-services
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/secure-services
- https://docs.konghq.com/gateway/2.8.x/get-started/quickstart/configuring-a-service
- https://docs.konghq.com/gateway/2.8.x/install-and-run/centos
- https://docs.konghq.com/gateway/2.8.x/install-and-run/docker
- https://docs.konghq.com/gateway/2.8.x/install-and-run/helm-quickstart-enterprise
- https://docs.konghq.com/gateway/2.8.x/install-and-run/
- https://docs.konghq.com/gateway/2.8.x/plan-and-deploy/default-ports
- https://docs.konghq.com/gateway/2.8.x/plugin-development/access-the-datastore
- https://docs.konghq.com/gateway/2.8.x/reference/db-less-and-declarative-config
- https://docs.konghq.com/gateway/2.8.x/support-policy
- https://docs.konghq.com/gateway/changelog
- https://docs.konghq.com/konnect/dev-portal/access-and-approval/manage-teams
- https://docs.konghq.com/konnect/gateway-manager/backup-restore
- https://docs.konghq.com/konnect/gateway-manager/control-plane-groups/how-to
- https://docs.konghq.com/konnect/gateway-manager/declarative-config
- https://docs.konghq.com/konnect/gateway-manager/kic
- https://docs.konghq.com/konnect/getting-started/deploy-service
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/concepts/k4k8s-with-kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/concepts/security
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/deployment/kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/deployment/overview
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/guides/using-oidc-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/references/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/references/plugin-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/references/version-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/concepts/k4k8s-with-kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/concepts/security
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/deployment/kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/deployment/overview
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/guides/using-oidc-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/references/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/references/plugin-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/references/version-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/concepts/k4k8s-with-kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/concepts/security
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/deployment/kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/deployment/overview
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/guides/using-oidc-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/references/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/references/plugin-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/references/version-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/concepts/k4k8s-with-kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/concepts/security
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/deployment/kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/deployment/overview
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/guides/using-oidc-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/references/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/references/plugin-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/references/version-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/concepts/k4k8s-with-kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/concepts/security
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/deployment/kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/deployment/overview
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/guides/using-oidc-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/references/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/references/plugin-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/references/version-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/concepts/k4k8s-with-kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/concepts/security
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/deployment/kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/deployment/overview
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/guides/using-oidc-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/references/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/references/plugin-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/references/version-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/concepts/k4k8s-with-kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/concepts/security
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/deployment/kong-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/deployment/overview
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/guides/using-oidc-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/references/cli-arguments
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/references/plugin-compatibility
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/references/version-compatibility

## Week 44

### [Fix: 2.8.1.3 changelog entry for aws-lambda plugin changes to match 3.0.0.0](https://github.com/Kong/docs.konghq.com/pull/6440) (2023-11-02)

Copied the text written in 3.0.0.0 changelog entry for the aws-lambda plugin to when it was introduced in 2.8.1.3 for consistency. Makes it easier to find the versions in which those properties were added for `aws_assume_role_arn` for example.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Fix: Align wording of 2.8.1.3 update for `aws_assume_role_arn` property](https://github.com/Kong/docs.konghq.com/pull/6439) (2023-11-02)

Extending the wording from the Gateway changelog in 3.0.0.0 and 2.8.1.3 to the plugin changelog for aws-lambda for 2.8.1.3 for consistency.

#### Modified

- https://docs.konghq.com/hub/kong-inc/aws-lambda/


### [Update resource limit language](https://github.com/Kong/docs.konghq.com/pull/6431) (2023-11-01)

Update resource limit language from entity resource limit to Default entity resource limit.

#### Modified

- https://docs.konghq.com/konnect/gateway-manager/configuration/


### [Topnav tweaks](https://github.com/Kong/docs.konghq.com/pull/6429) (2023-11-01)

Add a few tweaks based on the feedback we received.

* Remove "We are hiring"
* Move "API Specs" into the "Docs" dropdown

Note: I added a "Documentation" title to the section for consistency

#### Added

- https://docs.konghq.com/assets/images/landing-page/view-all-api-specs.png


### [Release: decK 1.28](https://github.com/Kong/docs.konghq.com/pull/6420) (2023-11-03)

Release 1.28.x decK docs MVP. CLI reference updates only.
Guides to follow.

#### Added

- https://docs.konghq.com/deck/1.28.x/reference/deck_file_convert/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_lint/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_validate/
- https://docs.konghq.com/deck/1.28.x/reference/deck_gateway_diff/
- https://docs.konghq.com/deck/1.28.x/reference/deck_gateway_dump/
- https://docs.konghq.com/deck/1.28.x/reference/deck_gateway_ping/
- https://docs.konghq.com/deck/1.28.x/reference/deck_gateway_reset/
- https://docs.konghq.com/deck/1.28.x/reference/deck_gateway_sync/
- https://docs.konghq.com/deck/1.28.x/reference/deck_gateway_validate/

#### Modified

- https://docs.konghq.com/deck/1.24.x/reference/deck/
- https://docs.konghq.com/deck/1.25.x/reference/deck/
- https://docs.konghq.com/deck/1.26.x/reference/deck/
- https://docs.konghq.com/deck/1.27.x/reference/deck/
- https://docs.konghq.com/deck/1.28.x/reference/deck/
- https://docs.konghq.com/deck/1.28.x/reference/deck_completion/
- https://docs.konghq.com/deck/1.28.x/reference/deck_convert/
- https://docs.konghq.com/deck/1.28.x/reference/deck_diff/
- https://docs.konghq.com/deck/1.28.x/reference/deck_dump/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_add-plugins/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_add-tags/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_list-tags/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_openapi2kong/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_remove-tags/
- https://docs.konghq.com/deck/1.28.x/reference/deck_file_render/
- https://docs.konghq.com/deck/1.28.x/reference/deck_ping/
- https://docs.konghq.com/deck/1.28.x/reference/deck_reset/
- https://docs.konghq.com/deck/1.28.x/reference/deck_sync/
- https://docs.konghq.com/deck/1.28.x/reference/deck_validate/
- https://docs.konghq.com/deck/1.28.x/reference/deck_version/

### [Fix mistake in auth0 markdown](https://github.com/Kong/docs.konghq.com/pull/6417) (2023-10-31)

Fix description for the `konnect_org_id` field.

#### Modified

- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/auth0


### [Fix: App registration doc lists hybrid mode as not supported](https://github.com/Kong/docs.konghq.com/pull/6416) (2023-11-02)

We've had the same wrong info in the app registration docs since 2.1.x: that when using Kong Gateway as the system of record, app reg can't be used in hybrid mode. This issue recently resurfaced as a customer ran into it. 

Changes made:
* Removing the inaccurate info and making it clear that the limitation is for the OAuth2 plugin only. 
* Added a column to the table in the App Reg plugin overview with info about supported topologies, to make it very clear up front.
* Cleaning up the app reg auth provider strategy docs to remove all the duplicate info and cut the content down to what the user needs to know. We have the same info repeated three times in one topic, making it very difficult to actually follow along with any instructions. 
* Removed outdated images from the edited topics.

Backported it back through 2.6 since it was just a matter of copy & paste.

#### Modified

- https://docs.konghq.com/hub/kong-inc/application-registration/how-to/
- https://docs.konghq.com/hub/kong-inc/application-registration/overview/
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/dev-portal/applications/enable-application-registration
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/dev-portal/applications/enable-application-registration
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/dev-portal/applications/enable-application-registration
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/dev-portal/applications/enable-application-registration
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/dev-portal/applications/enable-application-registration
- https://docs.konghq.com/gateway/2.6.x/developer-portal/administration/application-registration/auth-provider-strategy
- https://docs.konghq.com/gateway/2.6.x/developer-portal/administration/application-registration/enable-application-registration
- https://docs.konghq.com/gateway/2.7.x/developer-portal/administration/application-registration/auth-provider-strategy
- https://docs.konghq.com/gateway/2.7.x/developer-portal/administration/application-registration/enable-application-registration
- https://docs.konghq.com/gateway/2.8.x/developer-portal/administration/application-registration/auth-provider-strategy
- https://docs.konghq.com/gateway/2.8.x/developer-portal/administration/application-registration/enable-application-registration


### [Add Kong Mesh specific policies to the migration script](https://github.com/Kong/docs.konghq.com/pull/6414) (2023-11-01)

In the recently introduced [guide](https://github.com/Kong/docs.konghq.com/pull/6320), I forgot to include Kong Mesh specific policies in the script.

#### Modified

- https://docs.konghq.com/konnect/mesh-manager/migrate-zone


### [fix(opentelemetry): address invalid request to set up plugin](https://github.com/Kong/docs.konghq.com/pull/6406) (2023-10-30)

The request documented to configure the Opentelemetry plugin is invalid because it uses a dot `.` in the name of the attribute, which is interpreted as a field separator in the curl form data.

This updates the documentation without changing the example, using JSON instead of form data to allow passing a name that includes a dot.

#### Modified

- https://docs.konghq.com/hub/kong-inc/opentelemetry/overview/


### [fix: fix changelog entry for openssl version bump](https://github.com/Kong/docs.konghq.com/pull/6404) (2023-10-30)

The PR fixes the issue that the changelog entries of OpenSSL version bumping from 1.1.1t to 3.1.1 are missing from several specific versions.

The missing version list are:
- 2.8.4.2
- 3.1.1.5
- 3.2.2.4
- 3.3.1.1

The PR adds all of them.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Feat: Portal Management API](https://github.com/Kong/docs.konghq.com/pull/6388) (2023-11-02)

Customers are able to integrate portal management operations with their automation systems (such as CI/CD pipelines) by utilizing a refactored and newly-published AIP-compliant Portal Management API.

#### Modified

- https://docs.konghq.com/konnect/updates


### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6382) (2023-10-31)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/6703671694)

#### Modified

- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshloadbalancingstrategies.yaml
- https://docs.konghq.com/mesh/dev/kuma-cp.yaml

## Week 43

### [Minor update to Noname plugin description](https://github.com/Kong/docs.konghq.com/pull/6375) (2023-10-26)


Minor update to Noname plugin description.
 

#### Modified

- https://docs.konghq.com/hub/nonamesecurity/nonamesecurity-kongprevention/overview/


### [Update cert-manager guide to use Kuma labels](https://github.com/Kong/docs.konghq.com/pull/6371) (2023-10-25)

Kuma uses labels now instead of annotations.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.1.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.2.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.3.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.4.x/production/access-control/enable-rbac


### [docs(mesh): update docs and changelog](https://github.com/Kong/docs.konghq.com/pull/6361) (2023-10-27)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/6651206297)

#### Modified

- https://docs.konghq.com/mesh/dev/kuma-cp.yaml


### [fix(portal) remove examples with path in portal gui host](https://github.com/Kong/docs.konghq.com/pull/6358) (2023-10-24)

### Summary
Removes examples of adding a path when configuring `portal_gui_host`

Related: https://github.com/Kong/docs.konghq.com/pull/4179

### Reason
Adding a path to `portal_gui_host` is not supported


#### Modified

- https://docs.konghq.com/gateway/3.0.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.1.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.2.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.3.x/production/access-control/enable-rbac
- https://docs.konghq.com/gateway/3.4.x/production/access-control/enable-rbac


### [Fix API URL in Konnect Custom Plugin docs](https://github.com/Kong/docs.konghq.com/pull/6357) (2023-10-24)

Fix the API URL for uploading custom plugin schemas

#### Modified

- https://docs.konghq.com/konnect/gateway-manager/plugins/add-custom-plugin


### [fix(jwt): state what happens when multiple JWTs are provided](https://github.com/Kong/docs.konghq.com/pull/6353) (2023-10-24)

A user asked to clarify the docs in scenario when multiple JWTs tokens are provided: https://github.com/Kong/kong/issues/11796. With the change from some time ago: https://github.com/Kong/kong/pull/9946 - kong rejects request when multiple JWTs were provided that differ from each other. 
 
This PR explicitly states that the request will be rejected.

#### Modified

- https://docs.konghq.com/hub/kong-inc/jwt/overview/


### [Add GWAPI redirect instructions](https://github.com/Kong/docs.konghq.com/pull/6335) (2023-10-27)

Add GWAPI instructions to the KIC HTTPS redirect guide. Due to https://github.com/Kong/kubernetes-ingress-controller/issues/4890 this uses our vendor annotations.

Adds a TLS configuration include. This creates a certificate and injects configuration to use it into either an Ingress or Gateway. The certificate hostname is configurable. The Gateway and Ingress names are not and expect the standard `echo` Ingress or `kong` Gateway.

GWAPI does not easily allow adding HTTPS configuration without a TLS Listener, and these Listeners _must_ have a certificate as of GWAPI v0.8. We can't use the default Kong certificates if we don't care about the specific certificates, so we need this include for any guides that touch HTTPS-specific functionality.

#### Modified

- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/fips-support/plugins
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/fips-support/plugins
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/fips-support/plugins


### [Guide to migrate Zone CP from On-Prem Global CP to Konnect](https://github.com/Kong/docs.konghq.com/pull/6320) (2023-10-23)

Added a new guide on how to migrate Zone from on-prem Global to Konnect


#### Added

- https://docs.konghq.com/assets/images/diagrams/diagram-mesh-migration-after.png
- https://docs.konghq.com/assets/images/diagrams/diagram-mesh-migration-before.png
- https://docs.konghq.com/konnect/mesh-manager/migrate-zone



### [Update: reflect latest FIPS support status](https://github.com/Kong/docs.konghq.com/pull/6286) (2023-10-24)


From https://docs.google.com/document/d/1PJCcO_5DSTbv_08XxDlaS2Cx2-YeYfAencrFhS190AA/edit
and https://github.com/Kong/kong/pull/11725

#### Modified

- https://docs.konghq.com/gateway/3.4.x/reference/configuration

## Week 42


### [Chore: Add search aliases for plugins](https://github.com/Kong/docs.konghq.com/pull/6328) (2023-10-18)

The search field on the plugin hub homepage relies on the plugin's name and the optional `search_aliases` metadata field.
Adding shortform aliases (eg `mtls`), related terms (eg `certificates`), and plugin literal names in code (eg `mtls-auth`).

#### Modified

- https://docs.konghq.com/hub/kong-inc/acme/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/app-dynamics/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/application-registration/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/aws-lambda/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/azure-functions/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/basic-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/bot-detection/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/correlation-id/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/exit-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/file-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/forward-proxy/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/graphql-proxy-cache-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/graphql-rate-limiting-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/grpc-gateway/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/grpc-web/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/hmac-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/http-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/ip-restriction/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jwe-decrypt/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jwt-signer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jwt/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/kafka-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/kafka-upstream/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/key-auth-enc/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/key-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/ldap-auth-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/ldap-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/mtls-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/oas-validation/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/oauth2-introspection/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/opa/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/openid-connect/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/opentelemetry/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/proxy-cache-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/proxy-cache/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/rate-limiting/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-size-limiting/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-termination/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-validator/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/response-ratelimiting/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/response-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/response-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/route-by-header/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/route-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/saml/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/session/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/statsd/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/tcp-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/tls-handshake-modifier/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/tls-metadata-headers/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/udp-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/upstream-timeout/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/vault-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/websocket-size-limit/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/websocket-validator/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/xml-threat-protection/_metadata.yml


### [Fix: Kong Gateway support matrix](https://github.com/Kong/docs.konghq.com/pull/6326) (2023-10-17)

Fixing the following issues with the [Kong Gateway support matrix](https://docs.konghq.com/gateway/latest/support-policy/):
* PostgreSQL 9 and 10 are no longer supported by upstream but our docs claim to support them. Also, PostgreSQL 11 is also going out of support in 3 weeks
* Our support policy doc incorrectly stated the EOLs of many OSes. We have this statement (adjusted for dates/versions) at the top of every version's support table:

  " Kong Gateway 2.8 LTS supports the following deployment targets until March 2025, unless otherwise noted by an earlier OS vendor end of life (EOL) date." 

  However, our support tables aren't listing the accurate "earlier OS vendor end of life (EOL) dates".

* The support table inaccurately lists available Docker images. We have many new Docker images available now that weren't listed (especially for 2.8 LTS).
  
  As I was trying to figure out which versions we have images for, I also noticed that the base OS for our convenience images changed once again in 3.2.1.0. It originally switched from Alpine to Debian in 3.0.0.0, which is already in the changelog, but we were unaware of the switch to Ubuntu later. Added a changelog entry for that.

https://konghq.atlassian.net/browse/DOCU-3541

#### Modified

- https://docs.konghq.com/gateway/changelog


### [feat(multiple-metrics): updated latency section and images](https://github.com/Kong/docs.konghq.com/pull/6319) (2023-10-19)

Updated content to support our new multiple metrics feature hopefully coming out by the end of this week. In details:
* Updated latency use case section to only cover how to compare upstream vs kong latency. Previously, we had two separate section but you don't need to create two individual reports anymore.
* Updated all images to cover UI changes.

Jira: https://konghq.atlassian.net/browse/MA-1914
Aha: https://konghq.aha.io/features/KP-299

#### Added

- https://docs.konghq.com/assets/images/products/konnect/analytics/custom-reports/kong-vs-upstream-latency.png

#### Modified

- https://docs.konghq.com/assets/images/products/konnect/analytics/custom-reports/api-usage-by-application.png
- https://docs.konghq.com/assets/images/products/konnect/analytics/custom-reports/latency-payments-api-30.png
- https://docs.konghq.com/assets/images/products/konnect/analytics/custom-reports/total-api-requests.png
- https://docs.konghq.com/assets/images/products/konnect/analytics/custom-reports/total-usage-accounts-api-30.png
- https://docs.konghq.com/konnect/analytics/reference
- https://docs.konghq.com/konnect/analytics/use-cases/latency
- https://docs.konghq.com/konnect/updates


### [Update: SSH access note for instances deployed using Konnect Tech Preview install platforms](https://github.com/Kong/docs.konghq.com/pull/6305) (2023-10-18)

Add a note about SSH access to Konnect data plane nodes when using the AWS, Azure, or GCP deployment styles and how it's not allowed directly but need to use the cloud provider tools.

Raised in Slack: https://kongstrong.slack.com/archives/C03NRECFJPM/p1691689181346589

#### Modified

- https://docs.konghq.com/konnect/gateway-manager/data-plane-nodes/


### [update: Portal OIDC teams mapping post-GA improvements for IdP config instructions](https://github.com/Kong/docs.konghq.com/pull/6281) (2023-10-16)


When this was first published, we weren't able to get SME confirmation on the correct steps for setting up the IdP configuration. Users still needed this information, as well as information about configuring groups claims, so I added those in.
 

#### Modified

- https://docs.konghq.com/konnect/dev-portal/access-and-approval/add-teams


### [update: Add Portal RBAC diagram to Managing Developer Team Access Page](https://github.com/Kong/docs.konghq.com/pull/6264) (2023-10-17)


We were requested to make a diagram that better visually explained how the scenario worked with the Pizza Ordering API and developer teams RBAC. I created the diagram and added it. 
 

#### Added

- https://docs.konghq.com/assets/images/diagrams/diagram-dev-portal-team-access.png

#### Modified

- https://docs.konghq.com/konnect/dev-portal/access-and-approval/manage-teams



## Week 41

### [Fix: Missing `ldaps` option in Kong Manager LDAP setup. Resolves DOCU-2529.](https://github.com/Kong/docs.konghq.com/pull/6304) (2023-10-12)

Added `ldaps` to the `admin_gui_auth_conf` setting and added to the attribute table. Resolves DOCU-2529.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/kong-manager/auth/ldap/configure
- https://docs.konghq.com/gateway/3.1.x/kong-manager/auth/ldap/configure
- https://docs.konghq.com/gateway/3.2.x/kong-manager/auth/ldap/configure
- https://docs.konghq.com/gateway/3.3.x/kong-manager/auth/ldap/configure
- https://docs.konghq.com/gateway/3.4.x/kong-manager/auth/ldap/configure


### [Release: Changelog and version bump for Gateway 2.8.4.4](https://github.com/Kong/docs.konghq.com/pull/6303) (2023-10-12)

Changelog for Gateway EE 2.8.4.4 patch version.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Release: Changelog and version bump for Gateway 3.1.1.6](https://github.com/Kong/docs.konghq.com/pull/6302) (2023-10-12)

Changelog for Gateway EE 3.1.1.6 patch version.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Release: Changelog and version bump for Gateway 3.2.2.5](https://github.com/Kong/docs.konghq.com/pull/6301) (2023-10-12)

Changelog for Gateway EE 3.2.2.5 patch version.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Fix: Konnect OIDC sign-in & sign-out redirect URIs](https://github.com/Kong/docs.konghq.com/pull/6300) (2023-10-12)

Fixes the reported issue in Jira [DOCU-3311](https://konghq.atlassian.net/browse/DOCU-3311) which was causing confusion with the `examplepath` name in the testing section of the login URL.

#### Modified

- https://docs.konghq.com/konnect/org-management/oidc-idp


### [Release: Changelog and version bump for Gateway 3.3.1.1](https://github.com/Kong/docs.konghq.com/pull/6299) (2023-10-12)

Changelog for Gateway EE 3.3.1.1 patch version.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Release: Changelog and version bump for Gateway 3.4.1.1 and 3.4.2](https://github.com/Kong/docs.konghq.com/pull/6298) (2023-10-12)

Changelog for Gateway EE 3.4.1.1 and OSS 3.4.2 releases.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [update: Remove Gateway 3.0 from supported versions and move to older versions table](https://github.com/Kong/docs.konghq.com/pull/6297) (2023-10-12)

Support for Gateway 3.0 was removed in September, so we needed to update our support version docs to reflect that.
 
DOCU-3519

#### Modified

- https://docs.konghq.com/gateway/3.2.x/support/third-party
- https://docs.konghq.com/gateway/3.3.x/support/third-party
- https://docs.konghq.com/gateway/3.4.x/support/third-party



### [Update: Salt plugin now supports new queue in 3.3+](https://github.com/Kong/docs.konghq.com/pull/6280) (2023-10-11)

In Kong 3.3, the queue logic was updated, forcing a change to the plugin logic. This is that update.
 
background: https://konghq.com/blog/product-releases/reworked-plugin-queues-in-kong-gateway-3-3

#### Modified

- https://docs.konghq.com/hub/salt/salt/_metadata.yml


### [Fix: curl examples for custom plugins schemas in Konnect](https://github.com/Kong/docs.konghq.com/pull/6252) (2023-10-10)

Turns out that you can't pass a file directly via cURL to our Konnect CP configuration API. The contents of the file don't get escaped correctly. When testing this out originally, I used a mix of cURL and HTTPie, and HTTPie had no issues - but our default cURL instructions have problems here.

Issue was reported on [Slack](https://kongstrong.slack.com/archives/C03NRECFJPM/p1696622470557839).

Updating the doc with Fero's help, tested it all with curl this time around.

The jq instructions are in a "tip", since we can't tell them to use jq if they don't want to or don't have it.

#### Modified

- https://docs.konghq.com/konnect/gateway-manager/plugins/add-custom-plugin
- https://docs.konghq.com/konnect/gateway-manager/plugins/update-custom-plugin


### [Update: Third-party categorization](https://github.com/Kong/docs.konghq.com/pull/6236) (2023-10-11)

Third party plugins are now categorized as:
* Partner plugins: third party contributors that have a close relationship with Kong, usually meaning contracts, rigorous testing, etc.
* Unsupported community plugins: Plugins from contributors that haven't gone through the above process.

This update makes it clearer which is which by using better filtering, banners, and categorization.

https://konghq.atlassian.net/browse/DOCU-3509

#### Modified

- https://docs.konghq.com/hub/TheLEGOGroup/aws-request-signing/_metadata.yml
- https://docs.konghq.com/hub/amberflo/kong-plugin-amberflo/_metadata.yml
- https://docs.konghq.com/hub/imperva/imp-appsec-connector/_metadata.yml
- https://docs.konghq.com/hub/moesif/kong-plugin-moesif/_metadata.yml
- https://docs.konghq.com/hub/okta/okta/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-response-size-limiting/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-service-virtualization/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-spec-expose/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-splunk-log/_metadata.yml
- https://docs.konghq.com/hub/optum/kong-upstream-jwt/_metadata.yml
- https://docs.konghq.com/hub/salt/salt/_metadata.yml
- https://docs.konghq.com/hub/wallarm/wallarm/_metadata.yml
- https://docs.konghq.com/hub/index.html


### [Update: Add info on cache locations in Gateway 2.x vs 3.x](https://github.com/Kong/docs.konghq.com/pull/6192) (2023-10-11)

The latest version of the documentation refers only to the config.json.gz which is misleading as on 3.x this was moved to lmdb. It has been updated to reflect both noting the version change.
 
https://docs.konghq.com/gateway/latest/production/deployment-topologies/hybrid-mode/#data-plane-cache-configuration

#### Modified

- https://docs.konghq.com/konnect/network-resiliency

## Week 40

### [Fix: Badge alignment](https://github.com/Kong/docs.konghq.com/pull/6245) (2023-10-06)

Badges & their tooltips are currently misaligned on h2-h5s:

<img width="773" alt="Screenshot 2023-10-05 at 1 45 43 PM" src="https://github.com/Kong/docs.konghq.com/assets/54370747/5ea03aa5-02e9-4b9d-b6b1-f26bd758285b">

<img width="777" alt="Screenshot 2023-10-05 at 1 46 26 PM" src="https://github.com/Kong/docs.konghq.com/assets/54370747/68ce7939-3e58-40b2-bcdb-b0489d5ac6ca">

This PR fixes the alignment for both.

While testing out the fix, I also noticed that we had some wrong badges applied to the Konnect section of the Gateway intro page. We got rid of Plus and Enterprise badges for Konnect with the switch to consumption-based billing, since it isn't accurate to apply either tier to features in Konnect anymore.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/
- https://docs.konghq.com/gateway/3.1.x/
- https://docs.konghq.com/gateway/3.2.x/
- https://docs.konghq.com/gateway/3.3.x/
- https://docs.konghq.com/gateway/3.4.x/
- https://docs.konghq.com/contributing/markdown-rules


### [fix: Plugin tiers for konnect-incompatible plugins](https://github.com/Kong/docs.konghq.com/pull/6235) (2023-10-05)

Some konnect-incompatible plugins were displaying Konnect Paid or Konnect Premium badges. This was happening because the metadata was incorrectly set to include either `paid: true` or `premium: true` for these plugins.

Fixing that, and adding a banner to konnect-incompatible plugin landing pages to call that out.

#### Modified

- https://docs.konghq.com/hub/kong-inc/jwt-signer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/key-auth-enc/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/openwhisk/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/vault-auth/_0.3.0/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/vault-auth/_metadata.yml


### [feat: OIDC team mapping documentation](https://github.com/Kong/docs.konghq.com/pull/6227) (2023-10-04)

The OIDC team mapping feature will be released, so we need documentation that explains the workflow for how to set it up in Konnect. This PR also made some fixes after the previous PR was reverted.

#### Added

- https://docs.konghq.com/konnect/dev-portal/access-and-approval/add-teams

#### Modified

- https://docs.konghq.com/konnect/dev-portal/access-and-approval/manage-teams
- https://docs.konghq.com/konnect/updates


### [Update: Docs 404 page](https://github.com/Kong/docs.konghq.com/pull/6210) (2023-10-02)

Docs 404 page had bad alignment and outdated links. Making some adjustments to the layout and using better element hierarchy.

#### Modified

- https://docs.konghq.com/404.html


### [Update: Add cache names to mem_cache_size](https://github.com/Kong/docs.konghq.com/pull/6206) (2023-10-03)

The mem_cache_size parameter in kong.conf mentions that it controls the size of two caches, but doesn't say what the names of the caches are.
According to our [changelog](https://github.com/Kong/kong/blob/master/CHANGELOG-OLD.md#core-32), these two in-memory caches are kong_core_cache and kong_cache.

Resolves doc ticket https://konghq.atlassian.net/browse/DOCU-1878.

Parallel PR to https://github.com/Kong/kong/pull/11680.

#### Modified

- https://docs.konghq.com/gateway/2.8.x/reference/configuration


### [feat: OIDC IdP Team Mapping functionality](https://github.com/Kong/docs.konghq.com/pull/6166) (2023-10-03)

Adds new documentation about the OIDC iDP team mapping function.


#### Added

- https://docs.konghq.com/konnect/dev-portal/access-and-approval/add-teams

#### Modified

- https://docs.konghq.com/konnect/dev-portal/access-and-approval/manage-teams
- https://docs.konghq.com/konnect/updates


### [Feat: PKI Certs for CP/DP authentication](https://github.com/Kong/docs.konghq.com/pull/6155) (2023-10-02)

Konnect now supports pinned PKI certs for CP/DP authentication. This means that Konnect supports digital certificates signed by a trusted CA in Konnect for CP/DP authentication.

[DOCU-3357](https://konghq.atlassian.net/browse/DOCU-3357)

#### Added

- https://docs.konghq.com/konnect/gateway-manager/data-plane-nodes/secure-communications

#### Modified

- https://docs.konghq.com/konnect/gateway-manager/data-plane-nodes/renew-certificates
- https://docs.konghq.com/konnect/updates

## Week 39

### [Fix: View Organizations](https://github.com/Kong/docs.konghq.com/pull/6203) (2023-09-29)

To navigate back to the org switcher from Konnect. The button now says "View Organizations" rather than "Back to org switcher".

![image](https://github.com/Kong/docs.konghq.com/assets/1035820/463be71d-88d3-4bfd-8f1a-ed7b13dc9408)

#### Modified

- https://docs.konghq.com/konnect/org-management/org-switcher


### [Fix: AWS Lambda plugin headers line](https://github.com/Kong/docs.konghq.com/pull/6200) (2023-09-29)

Previous line wasn't clear and readers were confused. The suggested text makes it clearer what the "additional headers" are.

https://konghq.atlassian.net/browse/DOCU-1554

#### Modified

- https://docs.konghq.com/hub/kong-inc/aws-lambda/overview/


### [Update: Add info about untrusted_lua param to exit transformer plugin](https://github.com/Kong/docs.konghq.com/pull/6199) (2023-09-29)

The Exit Transformer plugin allows you to execute Lua functions. There is a setting in kong.conf that controls any plugins or other functionality that can do that. There was nothing in the plugin's doc about the setting, so I added that in.

https://konghq.atlassian.net/browse/DOCU-1046

#### Modified

- https://docs.konghq.com/hub/kong-inc/exit-transformer/overview/


### [Update: Add link to routing reference from Request Transformer Advanced](https://github.com/Kong/docs.konghq.com/pull/6198) (2023-09-29)

From ticket:

> The documentation would be more helpful if there was a link back to the using-regexes-in-paths to capture uri from the request transform doc to show how this is actually done. 
> This would provide the additional context of how to initially implement this functionality.

Adding the requested link + minor formatting edits to arrange the steps into an ordered list.

https://konghq.atlassian.net/browse/DOCU-156

#### Modified

- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/how-to/


### [Chore: Consistent banners/callouts across docs site](https://github.com/Kong/docs.konghq.com/pull/6190) (2023-09-28)

We have a lot of different alert/callout/banner styles across the docs site. They are a mix of two styles:

* `alert` div elements and all of their classes and subclasses
* `blockquote` elements with a few different classes

The `alert` div is the old method, where we used html tags in the docs. The `blockquote` method is what we use now, where we can use markdown and apply a banner class like this:

```
{:.note}
> This is my note.


{:.note .no-icon}
> This is my note without an icon.
```

The issue is that the CSS styling for the old and new elements keeps growing wider apart, as changes are made to the blockquote and not to the alert. This became far more obvious after the site redesign, where we ended up with lot of different font sizes and spacing issues in banners:

Inconsistent styling using `alert`:
<img width="793" alt="Screenshot 2023-09-27 at 2 41 14 PM" src="https://github.com/Kong/docs.konghq.com/assets/54370747/b4cc0514-5516-4c57-b3c1-54f3f62d6c85">
<img width="798" alt="Screenshot 2023-09-27 at 2 41 32 PM" src="https://github.com/Kong/docs.konghq.com/assets/54370747/5410bfde-27c5-4095-9032-80897370c303">

Consistent styling using markdown and blockquotes:
<img width="781" alt="Screenshot 2023-09-27 at 2 41 55 PM" src="https://github.com/Kong/docs.konghq.com/assets/54370747/e02c81ac-6478-4fdc-8cb6-a21a4e71812e">

If we want to adjust styling after this, we should do so based on the blockquote element.

#### Modified

- https://docs.konghq.com/hub/kong-inc/exit-transformer/overview/
- https://docs.konghq.com/hub/kong-inc/jwt/overview/
- https://docs.konghq.com/hub/kong-inc/key-auth/overview/
- https://docs.konghq.com/hub/kong-inc/oauth2/overview/
- https://docs.konghq.com/gateway-operator/1.0.x/support
- https://docs.konghq.com/gateway-operator/1.0.x/topologies/dbless/
- https://docs.konghq.com/gateway/3.0.x/
- https://docs.konghq.com/gateway/3.1.x/
- https://docs.konghq.com/gateway/3.2.x/
- https://docs.konghq.com/gateway/3.3.x/
- https://docs.konghq.com/gateway/3.4.x/
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.0.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.1.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.2.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.3.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.4.x/kong-plugins/authentication/reference
- https://docs.konghq.com/gateway/3.0.x/licenses/download
- https://docs.konghq.com/gateway/3.1.x/licenses/download
- https://docs.konghq.com/gateway/3.2.x/licenses/download
- https://docs.konghq.com/gateway/3.3.x/licenses/download
- https://docs.konghq.com/gateway/3.4.x/licenses/download
- https://docs.konghq.com/gateway/3.0.x/licenses/examples
- https://docs.konghq.com/gateway/3.1.x/licenses/examples
- https://docs.konghq.com/gateway/3.2.x/licenses/examples
- https://docs.konghq.com/gateway/3.3.x/licenses/examples
- https://docs.konghq.com/gateway/3.4.x/licenses/examples
- https://docs.konghq.com/gateway/3.0.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.1.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.2.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.3.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.4.x/plugin-development/custom-logic
- https://docs.konghq.com/gateway/3.0.x/plugin-development/pdk/kong.websocket.client
- https://docs.konghq.com/gateway/3.1.x/plugin-development/pdk/kong.websocket.client
- https://docs.konghq.com/gateway/3.2.x/plugin-development/pdk/kong.websocket.client
- https://docs.konghq.com/gateway/3.3.x/plugin-development/pdk/kong.websocket.client
- https://docs.konghq.com/gateway/3.4.x/plugin-development/pdk/kong.websocket.client
- https://docs.konghq.com/gateway/3.0.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.1.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.2.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.3.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/gateway/3.4.x/plugin-development/pdk/kong.websocket.upstream
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/mesh/1.7.x/
- https://docs.konghq.com/mesh/2.0.x/
- https://docs.konghq.com/mesh/2.1.x/
- https://docs.konghq.com/mesh/1.7.x/installation/amazonlinux
- https://docs.konghq.com/mesh/1.8.x/installation/amazonlinux
- https://docs.konghq.com/mesh/1.9.x/installation/amazonlinux
- https://docs.konghq.com/mesh/2.0.x/installation/amazonlinux/
- https://docs.konghq.com/mesh/2.1.x/installation/amazonlinux/
- https://docs.konghq.com/gateway/2.6.x/admin-api/audit-log
- https://docs.konghq.com/gateway/2.6.x/admin-api/
- https://docs.konghq.com/gateway/2.6.x/admin-api/licenses/examples
- https://docs.konghq.com/gateway/2.6.x/configure/auth/
- https://docs.konghq.com/gateway/2.6.x/configure/auth/oidc-mapping
- https://docs.konghq.com/gateway/2.6.x/developer-portal/administration/application-registration/auth-provider-strategy
- https://docs.konghq.com/gateway/2.6.x/developer-portal/administration/application-registration/okta-config
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/expose-services
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/manage-teams
- https://docs.konghq.com/gateway/2.6.x/get-started/comprehensive/prepare
- https://docs.konghq.com/gateway/2.6.x/plan-and-deploy/licenses/access-license
- https://docs.konghq.com/gateway/2.6.x/reference/health-checks-circuit-breakers
- https://docs.konghq.com/gateway/2.6.x/reference/proxy
- https://docs.konghq.com/gateway/2.7.x/admin-api/audit-log
- https://docs.konghq.com/gateway/2.7.x/admin-api/licenses/examples
- https://docs.konghq.com/gateway/2.7.x/configure/auth/
- https://docs.konghq.com/gateway/2.7.x/developer-portal/administration/application-registration/auth-provider-strategy
- https://docs.konghq.com/gateway/2.7.x/developer-portal/administration/application-registration/okta-config
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/expose-services
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/manage-teams
- https://docs.konghq.com/gateway/2.7.x/get-started/comprehensive/prepare
- https://docs.konghq.com/gateway/2.7.x/plan-and-deploy/licenses/access-license
- https://docs.konghq.com/gateway/2.7.x/reference/health-checks-circuit-breakers
- https://docs.konghq.com/gateway/2.7.x/reference/proxy
- https://docs.konghq.com/gateway/2.8.x/admin-api/audit-log
- https://docs.konghq.com/gateway/2.8.x/admin-api/licenses/examples
- https://docs.konghq.com/gateway/2.8.x/configure/auth/
- https://docs.konghq.com/gateway/2.8.x/developer-portal/administration/application-registration/auth-provider-strategy
- https://docs.konghq.com/gateway/2.8.x/developer-portal/administration/application-registration/okta-config
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/expose-services
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/manage-teams
- https://docs.konghq.com/gateway/2.8.x/get-started/comprehensive/prepare
- https://docs.konghq.com/gateway/2.8.x/plan-and-deploy/licenses/access-license
- https://docs.konghq.com/gateway/2.8.x/reference/health-checks-circuit-breakers
- https://docs.konghq.com/gateway/2.8.x/reference/proxy
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/concepts/ingress-versions
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/1.0.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/concepts/ingress-versions
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/1.1.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/concepts/ingress-versions
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/1.2.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/concepts/ingress-versions
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/1.3.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/concepts/ingress-versions
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.0.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/concepts/ingress-versions
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.1.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/concepts/ingress-versions
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/deployment/k4k8s-enterprise
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/deployment/k4k8s
- https://docs.konghq.com/kubernetes-ingress-controller/2.2.x/guides/setting-up-custom-plugins
- https://docs.konghq.com/mesh/1.2.x/gettingstarted
- https://docs.konghq.com/mesh/1.2.x/
- https://docs.konghq.com/mesh/1.2.x/installation/amazonlinux
- https://docs.konghq.com/mesh/1.3.x/gettingstarted
- https://docs.konghq.com/mesh/1.3.x/
- https://docs.konghq.com/mesh/1.3.x/installation/amazonlinux
- https://docs.konghq.com/mesh/1.4.x/gettingstarted
- https://docs.konghq.com/mesh/1.4.x/
- https://docs.konghq.com/mesh/1.4.x/installation/amazonlinux
- https://docs.konghq.com/mesh/1.5.x/gettingstarted
- https://docs.konghq.com/mesh/1.5.x/
- https://docs.konghq.com/mesh/1.5.x/installation/amazonlinux
- https://docs.konghq.com/mesh/1.6.x/gettingstarted
- https://docs.konghq.com/mesh/1.6.x/
- https://docs.konghq.com/mesh/1.6.x/installation/amazonlinux


### [fix: MinK control plane diagram](https://github.com/Kong/docs.konghq.com/pull/6187) (2023-09-27)

The original diagram showed zones and ingress/egress as being Konnect managed, which was incorrect. This PR corrects it since only the global control plane is managed by Konnect.
 
Fixes #6180

#### Modified

- https://docs.konghq.com/assets/images/diagrams/diagram-mesh-in-konnect.png


### [Fix: Configuring https redirect](https://github.com/Kong/docs.konghq.com/pull/6185) (2023-09-27)

Tested, validated, and rewrote the guide.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/configuring-https-redirect
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/configuring-https-redirect


### [Feat: Changelog for konnect custom plugin management](https://github.com/Kong/docs.konghq.com/pull/6178) (2023-09-26)

Changelog entry for Konnect custom plugins.

Relates to https://github.com/Kong/docs.konghq.com/pull/6164.

#### Modified

- https://docs.konghq.com/konnect/updates


### [Feat: Konnect plus metered billing](https://github.com/Kong/docs.konghq.com/pull/6177) (2023-09-26)

https://konghq.atlassian.net/browse/DOCU-3353
Changes: 
* Adds new metadata for paid and premium, deleted mentions of Plus in the metadata. 
* Navbar changes - Deletes the old UI instructions for billing
* Redirects
* Added SS of billing dashboard
* Reworked table logic across docs.
* Updates PH tiers and badges and compatibility(Thanks Lena)
![image](https://github.com/Kong/docs.konghq.com/assets/23319190/7702d53c-94ca-42d8-9255-27e1718c0c5b)


https://deploy-preview-6099--kongdocs.netlify.app/konnect/compatibility/ 
https://deploy-preview-6099--kongdocs.netlify.app/konnect/account-management/
https://deploy-preview-6099--kongdocs.netlify.app/hub/plugins/license-tiers/#kong-gateway



New table looks like this: 
![image](https://github.com/Kong/docs.konghq.com/assets/23319190/8b1f3ca1-30a3-4d31-8775-6f4a99fc9bdf)

#### Added

- https://docs.konghq.com/assets/images/docs/konnect/billing/Invoices.png
- https://docs.konghq.com/assets/images/docs/konnect/billing/billing-and-usage.png

#### Modified

- https://docs.konghq.com/hub/kong-inc/acl/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/acme/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/app-dynamics/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/application-registration/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/aws-lambda/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/azure-functions/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/basic-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/bot-detection/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/canary/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/correlation-id/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/cors/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/datadog/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/degraphql/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/exit-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/file-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/forward-proxy/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/graphql-proxy-cache-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/graphql-rate-limiting-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/grpc-gateway/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/grpc-web/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/hmac-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/http-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/ip-restriction/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jq/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jwe-decrypt/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jwt-signer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jwt/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/kafka-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/kafka-upstream/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/key-auth-enc/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/key-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/ldap-auth-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/ldap-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/loggly/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/mocking/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/mtls-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/oas-validation/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/oauth2-introspection/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/opa/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/openid-connect/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/opentelemetry/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/openwhisk/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/prometheus/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/proxy-cache-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/proxy-cache/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/_v1/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/
- https://docs.konghq.com/hub/kong-inc/rate-limiting/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-size-limiting/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-termination/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-validator/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/response-ratelimiting/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/response-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/response-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/route-by-header/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/route-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/saml/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/session/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/statsd-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/statsd/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/syslog/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/tcp-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/udp-log/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/upstream-timeout/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/vault-auth/_0.3.0/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/vault-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/websocket-size-limit/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/websocket-validator/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/xml-threat-protection/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/zipkin/_metadata.yml
- https://docs.konghq.com/hub/plugins/license-tiers
- https://docs.konghq.com/konnect/account-management/
- https://docs.konghq.com/konnect/analytics/
- https://docs.konghq.com/konnect/compatibility
- https://docs.konghq.com/konnect/dev-portal/dev-reg
- https://docs.konghq.com/konnect/gateway-manager/declarative-config
- https://docs.konghq.com/konnect/gateway-manager/
- https://docs.konghq.com/konnect/gateway-manager/kic
- https://docs.konghq.com/konnect/getting-started/access-account
- https://docs.konghq.com/konnect/getting-started/import
- https://docs.konghq.com/konnect/org-management/auth
- https://docs.konghq.com/konnect/org-management/deactivation
- https://docs.konghq.com/konnect/updates


### [Chore: Remove old konnect api doc](https://github.com/Kong/docs.konghq.com/pull/6168) (2023-09-25)

Removing the [old Konnect Runtime Groups Config API doc](https://docs.konghq.com/konnect/api/runtime-groups-config/overview/). It has been replaced with:

https://docs.konghq.com/konnect/api/
https://docs.konghq.com/konnect/api/control-plane-configuration/latest/


### [Feat: Custom plugin management in Konnect](https://github.com/Kong/docs.konghq.com/pull/6164) (2023-09-28)

Documentation for managing custom plugins through Konnect, using either the UI or the Konnect custom plugins API.

https://konghq.atlassian.net/browse/DOCU-2596

#### Added

- https://docs.konghq.com/assets/images/docs/konnect/konnect-custom-plugins.png
- https://docs.konghq.com/assets/images/docs/konnect/konnect-plugin-list.png
- https://docs.konghq.com/konnect/gateway-manager/plugins/add-custom-plugin
- https://docs.konghq.com/konnect/gateway-manager/plugins/
- https://docs.konghq.com/konnect/gateway-manager/plugins/troubleshoot-custom-plugins
- https://docs.konghq.com/konnect/gateway-manager/plugins/update-custom-plugin

#### Modified

- https://docs.konghq.com/gateway/3.0.x/plugin-development/distribution
- https://docs.konghq.com/gateway/3.1.x/plugin-development/distribution
- https://docs.konghq.com/gateway/3.2.x/plugin-development/distribution
- https://docs.konghq.com/gateway/3.3.x/plugin-development/distribution
- https://docs.konghq.com/gateway/3.4.x/plugin-development/distribution


### [Social Login and Org Switcher](https://github.com/Kong/docs.konghq.com/pull/6161) (2023-09-25)

Docs for Social Login and Org Switcher.

Epic: https://konghq.aha.io/epics/KP-E-65

#### Added

- https://docs.konghq.com/konnect/org-management/org-switcher
- https://docs.konghq.com/konnect/org-management/social-identity-login

#### Modified

- https://docs.konghq.com/konnect/getting-started/access-account
- https://docs.konghq.com/konnect/org-management/auth
- https://docs.konghq.com/konnect/updates


### [Add Kong Gateway Operator docs](https://github.com/Kong/docs.konghq.com/pull/6144) (2023-09-27)

Kong Gateway Operator docs.

#### Added

- https://docs.konghq.com/gateway-operator/1.0.x/concepts/gateway-api
- https://docs.konghq.com/gateway-operator/1.0.x/concepts/gateway-configuration
- https://docs.konghq.com/gateway-operator/1.0.x/customization/data-plane-image/
- https://docs.konghq.com/gateway-operator/1.0.x/customization/pod-template-spec/
- https://docs.konghq.com/gateway-operator/1.0.x/customization/sidecars/
- https://docs.konghq.com/gateway-operator/1.0.x/faq
- https://docs.konghq.com/gateway-operator/1.0.x/get-started/kic/create-gateway/
- https://docs.konghq.com/gateway-operator/1.0.x/get-started/kic/create-route/
- https://docs.konghq.com/gateway-operator/1.0.x/get-started/kic/install/
- https://docs.konghq.com/gateway-operator/1.0.x/get-started/konnect/create-route/
- https://docs.konghq.com/gateway-operator/1.0.x/get-started/konnect/deploy-data-plane/
- https://docs.konghq.com/gateway-operator/1.0.x/get-started/konnect/install/
- https://docs.konghq.com/gateway-operator/1.0.x/
- https://docs.konghq.com/gateway/3.0.x/
- https://docs.konghq.com/gateway/3.1.x/
- https://docs.konghq.com/gateway/3.2.x/
- https://docs.konghq.com/gateway/3.3.x/
- https://docs.konghq.com/gateway/3.4.x/
- https://docs.konghq.com/gateway-operator/1.0.x/production/monitoring/
- https://docs.konghq.com/gateway/3.0.x/
- https://docs.konghq.com/gateway/3.1.x/
- https://docs.konghq.com/gateway/3.2.x/
- https://docs.konghq.com/gateway/3.3.x/
- https://docs.konghq.com/gateway/3.4.x/
- https://docs.konghq.com/gateway-operator/1.0.x/production/upgrade/data-plane/rolling/
- https://docs.konghq.com/gateway-operator/1.0.x/production/upgrade/gateway-operator/
- https://docs.konghq.com/gateway/3.0.x/how-kong-works/health-checks
- https://docs.konghq.com/gateway/3.1.x/how-kong-works/health-checks
- https://docs.konghq.com/gateway/3.2.x/how-kong-works/health-checks
- https://docs.konghq.com/gateway/3.3.x/how-kong-works/health-checks
- https://docs.konghq.com/gateway/3.4.x/how-kong-works/health-checks
- https://docs.konghq.com/gateway/3.0.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.1.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.2.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.3.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.4.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/dev-portal/applications/auth-provider-strategy
- https://docs.konghq.com/gateway/3.0.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.1.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/dev-portal/authentication/okta-config
- https://docs.konghq.com/assets/gateway-operator/v1.0.0/all_controllers.yaml
- https://docs.konghq.com/assets/gateway-operator/v1.0.0/crds.yaml
- https://docs.konghq.com/assets/gateway-operator/v1.0.0/default.yaml
- https://docs.konghq.com/gateway-operator/changelog


### [fix: Expose an external application](https://github.com/Kong/docs.konghq.com/pull/6141) (2023-09-27)

Tested, validated, rewrote the guide.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-tcpingress


### [fix: Exposing UDP service](https://github.com/Kong/docs.konghq.com/pull/6127) (2023-09-25)

Tested, Validated, and Formatted the UDP service guide.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/redis-rate-limiting


### [Feat: Add tool that detects broken markdown anchors](https://github.com/Kong/docs.konghq.com/pull/6111) (2023-09-28)

Add a new tool that detects output of ` [.+][.+] ` in the `dist` folder. These are markdown links where the anchor at the bottom of the file could not be found.

#6101 is a good example of where this happens

#### Modified

- https://docs.konghq.com/hub/kong-inc/vault-auth/
- https://docs.konghq.com/hub/kong-inc/vault-auth/overview/
- https://docs.konghq.com/gateway-operator/1.0.x/topologies/dbless/
- https://docs.konghq.com/gateway/3.0.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.1.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.2.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.3.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.4.x/how-kong-works/routing-traffic
- https://docs.konghq.com/gateway/3.0.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.1.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.2.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.3.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/3.4.x/kong-plugins/authentication/oidc/azure-ad
- https://docs.konghq.com/gateway/2.6.x/configure/auth/oidc-azuread
- https://docs.konghq.com/gateway/2.6.x/reference/proxy
- https://docs.konghq.com/gateway/2.7.x/configure/auth/oidc-azuread
- https://docs.konghq.com/gateway/2.7.x/reference/proxy
- https://docs.konghq.com/gateway/2.8.x/configure/auth/oidc-azuread
- https://docs.konghq.com/gateway/2.8.x/reference/proxy


### [fix: Using Redis for rate limiting](https://github.com/Kong/docs.konghq.com/pull/6110) (2023-09-25)

Formatting changes and curl option changes.
Used placeholders because the command varies based on the install method

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/redis-rate-limiting
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/redis-rate-limiting

### [Feat(api-requests): Added API requests beta to docs](https://github.com/Kong/docs.konghq.com/pull/6104) (2023-09-26)

Added a new section under Analytics to document our upcoming API Requests feature. This feature is in beta. Please take a look at [this release](https://konghq.atlassian.net/wiki/spaces/KNN/pages/3065151570/API+Requests+Beta) minutes page to learn more about this feature.

https://konghq.atlassian.net/browse/DOCU-3264

#### Added

- https://docs.konghq.com/assets/images/docs/konnect/konnect-analytics-api-requests.png
- https://docs.konghq.com/konnect/analytics/api-requests

#### Modified

- https://docs.konghq.com/konnect/updates


### [doc(portal): add documentation for auth0 dcr metadata TDX-3342](https://github.com/Kong/docs.konghq.com/pull/6096) (2023-09-26)

Adds documentation around auth0 metadata, and how to use it via an action.  

https://konghq.atlassian.net/browse/TDX-3342

#### Modified

- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/auth0
- https://docs.konghq.com/konnect/updates


### [Update: Sectioned cluster_fallback configs + added WebAssembly text to Wasm section](https://github.com/Kong/docs.konghq.com/pull/6065) (2023-09-27)

Moved the DP Resilience feature (Cluster Fallback) properties to their own section for better organization and linking. Loosely related to https://github.com/Kong/docs.konghq.com/pull/6064.

Also noticed our Wasm section had no reference to the text 'WebAssembly' which resulted in it not being found easily. Added that to the title of that section to allow for better searchability.

#### Modified

- https://docs.konghq.com/gateway/latest/reference/configuration/

## Week 38


### [Update: Konnect audit log webhooks only allow HTTPS](https://github.com/Kong/docs.konghq.com/pull/6142) (2023-09-20)

Konnect Audit Webhook Configurations only allow HTTPS endpoints - HTTP endpoint traffic will blocked at network level. Hence, updated docs to reflect same.

#### Modified

- https://docs.konghq.com/konnect/org-management/audit-logging/webhook


### [fix(dcr): Note about Azure DCR v1 endpoints](https://github.com/Kong/docs.konghq.com/pull/6126) (2023-09-20)

We wanted to add [a small note](https://kongstrong.slack.com/archives/C05HHGAPYJU/p1695033542245779) about Azure DCR only supporting v1 endpoints.

#### Modified

- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/azure


### [Feat: Konnect Great Rename](https://github.com/Kong/docs.konghq.com/pull/6121) (2023-09-20)

The “runtime” terminology has become overloaded and not meaningful to users. Since the conception of Konnect, users have struggled with understanding the “runtime group” and “runtime instances” terms and how they match up with the gateway topology.

With this rename, kong-ified terms such as “runtime” are replaced with more standardized terminology such as control plane and data plane. As a result, new users to Konnect should have an easier time understanding and navigating the Konnect UI and APIs.

https://konghq.atlassian.net/browse/DOCU-3151

#### Summary of changes

UI:
* Runtime Manager to Gateway Manager
* Runtime group to control plane
* Composite runtime group to control plane group
* Runtime instance to data plane node

API:
* `/v2/systems-accounts` to `/v3/system-accounts`
* `/v2/teams` to `/v3/teams`
* `/v2/users` to `/v3/users`
* `/v2/roles` to `/v3/roles`
* `/v2/runtime-groups` to `/v2/control-planes`
* `/v2/runtime-groups/{runtimeGroupId}/` to `/v2/control-planes/{controlPlaneId}/`
* `/v2/runtime-groups/{runtimeGroupId}/composite-status` to `/v2/control-planes/{controlPlaneId}/group-status`

decK:
* decK command flag: `--konnect-runtime-group-name` to `--konnect-control-plane-name`
* decK state file attribute: `_konnect.runtime_group_name`  to` _konnect.control_plane_name`

#### Added

- https://docs.konghq.com/assets/images/docs/konnect/konnect-control-plane-dashboard.png
- https://docs.konghq.com/assets/images/docs/konnect/konnect-control-plane-group.svg
- https://docs.konghq.com/assets/images/docs/konnect/konnect-control-plane.svg
- https://docs.konghq.com/assets/images/docs/konnect/konnect-control-planes-example.png
- https://docs.konghq.com/assets/images/docs/konnect/konnect-install-options.png
- https://docs.konghq.com/konnect/gateway-manager/control-plane-groups/conflicts
- https://docs.konghq.com/konnect/gateway-manager/control-plane-groups/
- https://docs.konghq.com/konnect/gateway-manager/control-plane-groups/migrate
- https://docs.konghq.com/konnect/gateway-manager/data-plane-nodes/
- https://docs.konghq.com/konnect/gateway-manager/data-plane-nodes/upgrade
- https://docs.konghq.com/konnect/gateway-manager/
- https://docs.konghq.com/konnect/gateway-manager/troubleshoot
- https://docs.konghq.com/konnect/getting-started/configure-data-plane-node

#### Modified

- https://docs.konghq.com/hub/kong-inc/mtls-auth/overview/
- https://docs.konghq.com/deck/1.15.x/3.0-upgrade
- https://docs.konghq.com/deck/1.16.x/3.0-upgrade
- https://docs.konghq.com/deck/1.17.x/3.0-upgrade
- https://docs.konghq.com/deck/1.18.x/3.0-upgrade
- https://docs.konghq.com/deck/1.19.x/3.0-upgrade
- https://docs.konghq.com/deck/1.20.x/3.0-upgrade
- https://docs.konghq.com/deck/1.21.x/3.0-upgrade
- https://docs.konghq.com/deck/1.22.x/3.0-upgrade
- https://docs.konghq.com/deck/1.23.x/3.0-upgrade
- https://docs.konghq.com/deck/1.24.x/3.0-upgrade/
- https://docs.konghq.com/deck/1.25.x/3.0-upgrade/
- https://docs.konghq.com/deck/1.26.x/3.0-upgrade/
- https://docs.konghq.com/deck/1.27.x/3.0-upgrade/
- https://docs.konghq.com/deck/1.12.x/guides/konnect
- https://docs.konghq.com/deck/1.13.x/guides/konnect
- https://docs.konghq.com/deck/1.14.x/guides/konnect
- https://docs.konghq.com/deck/1.15.x/guides/konnect
- https://docs.konghq.com/deck/1.16.x/guides/konnect
- https://docs.konghq.com/deck/1.17.x/guides/konnect
- https://docs.konghq.com/deck/1.18.x/guides/konnect
- https://docs.konghq.com/deck/1.19.x/guides/konnect
- https://docs.konghq.com/deck/1.20.x/guides/konnect
- https://docs.konghq.com/deck/1.21.x/guides/konnect
- https://docs.konghq.com/deck/1.22.x/guides/konnect
- https://docs.konghq.com/deck/1.23.x/guides/konnect
- https://docs.konghq.com/deck/1.24.x/guides/konnect/
- https://docs.konghq.com/deck/1.25.x/guides/konnect/
- https://docs.konghq.com/deck/1.26.x/guides/konnect/
- https://docs.konghq.com/deck/1.27.x/guides/konnect/
- https://docs.konghq.com/deck/1.24.x/reference/deck/
- https://docs.konghq.com/deck/1.25.x/reference/deck/
- https://docs.konghq.com/deck/1.26.x/reference/deck/
- https://docs.konghq.com/deck/1.27.x/reference/deck/
- https://docs.konghq.com/deck/1.10.x/reference/deck_completion
- https://docs.konghq.com/deck/1.11.x/reference/deck_completion
- https://docs.konghq.com/deck/1.12.x/reference/deck_completion
- https://docs.konghq.com/deck/1.13.x/reference/deck_completion
- https://docs.konghq.com/deck/1.14.x/reference/deck_completion
- https://docs.konghq.com/deck/1.15.x/reference/deck_completion
- https://docs.konghq.com/deck/1.16.x/reference/deck_completion
- https://docs.konghq.com/deck/1.17.x/reference/deck_completion
- https://docs.konghq.com/deck/1.18.x/reference/deck_completion
- https://docs.konghq.com/deck/1.19.x/reference/deck_completion
- https://docs.konghq.com/deck/1.20.x/reference/deck_completion
- https://docs.konghq.com/deck/1.21.x/reference/deck_completion
- https://docs.konghq.com/deck/1.22.x/reference/deck_completion
- https://docs.konghq.com/deck/1.23.x/reference/deck_completion
- https://docs.konghq.com/deck/1.24.x/reference/deck_completion/
- https://docs.konghq.com/deck/1.25.x/reference/deck_completion/
- https://docs.konghq.com/deck/1.26.x/reference/deck_completion/
- https://docs.konghq.com/deck/1.27.x/reference/deck_completion/
- https://docs.konghq.com/deck/1.8.x/reference/deck_completion
- https://docs.konghq.com/deck/1.9.x/reference/deck_completion
- https://docs.konghq.com/deck/1.10.x/reference/deck_convert
- https://docs.konghq.com/deck/1.11.x/reference/deck_convert
- https://docs.konghq.com/deck/1.12.x/reference/deck_convert
- https://docs.konghq.com/deck/1.13.x/reference/deck_convert
- https://docs.konghq.com/deck/1.14.x/reference/deck_convert
- https://docs.konghq.com/deck/1.15.x/reference/deck_convert
- https://docs.konghq.com/deck/1.16.x/reference/deck_convert
- https://docs.konghq.com/deck/1.17.x/reference/deck_convert
- https://docs.konghq.com/deck/1.18.x/reference/deck_convert
- https://docs.konghq.com/deck/1.19.x/reference/deck_convert
- https://docs.konghq.com/deck/1.20.x/reference/deck_convert
- https://docs.konghq.com/deck/1.21.x/reference/deck_convert
- https://docs.konghq.com/deck/1.22.x/reference/deck_convert
- https://docs.konghq.com/deck/1.23.x/reference/deck_convert
- https://docs.konghq.com/deck/1.24.x/reference/deck_convert/
- https://docs.konghq.com/deck/1.25.x/reference/deck_convert/
- https://docs.konghq.com/deck/1.26.x/reference/deck_convert/
- https://docs.konghq.com/deck/1.27.x/reference/deck_convert/
- https://docs.konghq.com/deck/1.7.x/reference/deck_convert
- https://docs.konghq.com/deck/1.8.x/reference/deck_convert
- https://docs.konghq.com/deck/1.9.x/reference/deck_convert
- https://docs.konghq.com/deck/1.10.x/reference/deck_diff
- https://docs.konghq.com/deck/1.11.x/reference/deck_diff
- https://docs.konghq.com/deck/1.12.x/reference/deck_diff
- https://docs.konghq.com/deck/1.13.x/reference/deck_diff
- https://docs.konghq.com/deck/1.14.x/reference/deck_diff
- https://docs.konghq.com/deck/1.15.x/reference/deck_diff
- https://docs.konghq.com/deck/1.16.x/reference/deck_diff
- https://docs.konghq.com/deck/1.17.x/reference/deck_diff
- https://docs.konghq.com/deck/1.18.x/reference/deck_diff
- https://docs.konghq.com/deck/1.19.x/reference/deck_diff
- https://docs.konghq.com/deck/1.20.x/reference/deck_diff
- https://docs.konghq.com/deck/1.21.x/reference/deck_diff
- https://docs.konghq.com/deck/1.22.x/reference/deck_diff
- https://docs.konghq.com/deck/1.23.x/reference/deck_diff
- https://docs.konghq.com/deck/1.24.x/reference/deck_diff/
- https://docs.konghq.com/deck/1.25.x/reference/deck_diff/
- https://docs.konghq.com/deck/1.26.x/reference/deck_diff/
- https://docs.konghq.com/deck/1.27.x/reference/deck_diff/
- https://docs.konghq.com/deck/1.7.x/reference/deck_diff
- https://docs.konghq.com/deck/1.8.x/reference/deck_diff
- https://docs.konghq.com/deck/1.9.x/reference/deck_diff
- https://docs.konghq.com/deck/1.10.x/reference/deck_dump
- https://docs.konghq.com/deck/1.11.x/reference/deck_dump
- https://docs.konghq.com/deck/1.12.x/reference/deck_dump
- https://docs.konghq.com/deck/1.13.x/reference/deck_dump
- https://docs.konghq.com/deck/1.14.x/reference/deck_dump
- https://docs.konghq.com/deck/1.15.x/reference/deck_dump
- https://docs.konghq.com/deck/1.16.x/reference/deck_dump
- https://docs.konghq.com/deck/1.17.x/reference/deck_dump
- https://docs.konghq.com/deck/1.18.x/reference/deck_dump
- https://docs.konghq.com/deck/1.19.x/reference/deck_dump
- https://docs.konghq.com/deck/1.20.x/reference/deck_dump
- https://docs.konghq.com/deck/1.21.x/reference/deck_dump
- https://docs.konghq.com/deck/1.22.x/reference/deck_dump
- https://docs.konghq.com/deck/1.23.x/reference/deck_dump
- https://docs.konghq.com/deck/1.24.x/reference/deck_dump/
- https://docs.konghq.com/deck/1.25.x/reference/deck_dump/
- https://docs.konghq.com/deck/1.26.x/reference/deck_dump/
- https://docs.konghq.com/deck/1.27.x/reference/deck_dump/
- https://docs.konghq.com/deck/1.7.x/reference/deck_dump
- https://docs.konghq.com/deck/1.8.x/reference/deck_dump
- https://docs.konghq.com/deck/1.9.x/reference/deck_dump
- https://docs.konghq.com/deck/1.24.x/reference/deck_file/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file/
- https://docs.konghq.com/deck/1.24.x/reference/deck_file_add-plugins/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_add-plugins/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_add-plugins/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_add-plugins/
- https://docs.konghq.com/deck/1.24.x/reference/deck_file_add-tags/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_add-tags/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_add-tags/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_add-tags/
- https://docs.konghq.com/deck/1.24.x/reference/deck_file_list-tags/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_list-tags/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_list-tags/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_list-tags/
- https://docs.konghq.com/deck/1.24.x/reference/deck_file_merge/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_merge/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_merge/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_merge/
- https://docs.konghq.com/deck/1.24.x/reference/deck_file_openapi2kong/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_openapi2kong/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_openapi2kong/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_openapi2kong/
- https://docs.konghq.com/deck/1.24.x/reference/deck_file_patch/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_patch/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_patch/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_patch/
- https://docs.konghq.com/deck/1.24.x/reference/deck_file_remove-tags/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_remove-tags/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_remove-tags/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_remove-tags/
- https://docs.konghq.com/deck/1.25.x/reference/deck_file_render/
- https://docs.konghq.com/deck/1.26.x/reference/deck_file_render/
- https://docs.konghq.com/deck/1.27.x/reference/deck_file_render/
- https://docs.konghq.com/deck/1.10.x/reference/deck_konnect
- https://docs.konghq.com/deck/1.11.x/reference/deck_konnect
- https://docs.konghq.com/deck/1.12.x/reference/deck_konnect
- https://docs.konghq.com/deck/1.13.x/reference/deck_konnect
- https://docs.konghq.com/deck/1.7.x/reference/deck_konnect
- https://docs.konghq.com/deck/1.8.x/reference/deck_konnect
- https://docs.konghq.com/deck/1.9.x/reference/deck_konnect
- https://docs.konghq.com/deck/1.10.x/reference/deck_konnect_diff
- https://docs.konghq.com/deck/1.11.x/reference/deck_konnect_diff
- https://docs.konghq.com/deck/1.12.x/reference/deck_konnect_diff
- https://docs.konghq.com/deck/1.13.x/reference/deck_konnect_diff
- https://docs.konghq.com/deck/1.7.x/reference/deck_konnect_diff
- https://docs.konghq.com/deck/1.8.x/reference/deck_konnect_diff
- https://docs.konghq.com/deck/1.9.x/reference/deck_konnect_diff
- https://docs.konghq.com/deck/1.10.x/reference/deck_konnect_dump
- https://docs.konghq.com/deck/1.11.x/reference/deck_konnect_dump
- https://docs.konghq.com/deck/1.12.x/reference/deck_konnect_dump
- https://docs.konghq.com/deck/1.13.x/reference/deck_konnect_dump
- https://docs.konghq.com/deck/1.7.x/reference/deck_konnect_dump
- https://docs.konghq.com/deck/1.8.x/reference/deck_konnect_dump
- https://docs.konghq.com/deck/1.9.x/reference/deck_konnect_dump
- https://docs.konghq.com/deck/1.10.x/reference/deck_konnect_ping
- https://docs.konghq.com/deck/1.11.x/reference/deck_konnect_ping
- https://docs.konghq.com/deck/1.12.x/reference/deck_konnect_ping
- https://docs.konghq.com/deck/1.13.x/reference/deck_konnect_ping
- https://docs.konghq.com/deck/1.7.x/reference/deck_konnect_ping
- https://docs.konghq.com/deck/1.8.x/reference/deck_konnect_ping
- https://docs.konghq.com/deck/1.9.x/reference/deck_konnect_ping
- https://docs.konghq.com/deck/1.10.x/reference/deck_konnect_sync
- https://docs.konghq.com/deck/1.11.x/reference/deck_konnect_sync
- https://docs.konghq.com/deck/1.12.x/reference/deck_konnect_sync
- https://docs.konghq.com/deck/1.13.x/reference/deck_konnect_sync
- https://docs.konghq.com/deck/1.7.x/reference/deck_konnect_sync
- https://docs.konghq.com/deck/1.8.x/reference/deck_konnect_sync
- https://docs.konghq.com/deck/1.9.x/reference/deck_konnect_sync
- https://docs.konghq.com/deck/1.10.x/reference/deck_ping
- https://docs.konghq.com/deck/1.11.x/reference/deck_ping
- https://docs.konghq.com/deck/1.12.x/reference/deck_ping
- https://docs.konghq.com/deck/1.13.x/reference/deck_ping
- https://docs.konghq.com/deck/1.14.x/reference/deck_ping
- https://docs.konghq.com/deck/1.15.x/reference/deck_ping
- https://docs.konghq.com/deck/1.16.x/reference/deck_ping
- https://docs.konghq.com/deck/1.17.x/reference/deck_ping
- https://docs.konghq.com/deck/1.18.x/reference/deck_ping
- https://docs.konghq.com/deck/1.19.x/reference/deck_ping
- https://docs.konghq.com/deck/1.20.x/reference/deck_ping
- https://docs.konghq.com/deck/1.21.x/reference/deck_ping
- https://docs.konghq.com/deck/1.22.x/reference/deck_ping
- https://docs.konghq.com/deck/1.23.x/reference/deck_ping
- https://docs.konghq.com/deck/1.24.x/reference/deck_ping/
- https://docs.konghq.com/deck/1.25.x/reference/deck_ping/
- https://docs.konghq.com/deck/1.26.x/reference/deck_ping/
- https://docs.konghq.com/deck/1.27.x/reference/deck_ping/
- https://docs.konghq.com/deck/1.7.x/reference/deck_ping
- https://docs.konghq.com/deck/1.8.x/reference/deck_ping
- https://docs.konghq.com/deck/1.9.x/reference/deck_ping
- https://docs.konghq.com/deck/1.10.x/reference/deck_reset
- https://docs.konghq.com/deck/1.11.x/reference/deck_reset
- https://docs.konghq.com/deck/1.12.x/reference/deck_reset
- https://docs.konghq.com/deck/1.13.x/reference/deck_reset
- https://docs.konghq.com/deck/1.14.x/reference/deck_reset
- https://docs.konghq.com/deck/1.15.x/reference/deck_reset
- https://docs.konghq.com/deck/1.16.x/reference/deck_reset
- https://docs.konghq.com/deck/1.17.x/reference/deck_reset
- https://docs.konghq.com/deck/1.18.x/reference/deck_reset
- https://docs.konghq.com/deck/1.19.x/reference/deck_reset
- https://docs.konghq.com/deck/1.20.x/reference/deck_reset
- https://docs.konghq.com/deck/1.21.x/reference/deck_reset
- https://docs.konghq.com/deck/1.22.x/reference/deck_reset
- https://docs.konghq.com/deck/1.23.x/reference/deck_reset
- https://docs.konghq.com/deck/1.24.x/reference/deck_reset/
- https://docs.konghq.com/deck/1.25.x/reference/deck_reset/
- https://docs.konghq.com/deck/1.26.x/reference/deck_reset/
- https://docs.konghq.com/deck/1.27.x/reference/deck_reset/
- https://docs.konghq.com/deck/1.7.x/reference/deck_reset
- https://docs.konghq.com/deck/1.8.x/reference/deck_reset
- https://docs.konghq.com/deck/1.9.x/reference/deck_reset
- https://docs.konghq.com/deck/1.10.x/reference/deck_sync
- https://docs.konghq.com/deck/1.11.x/reference/deck_sync
- https://docs.konghq.com/deck/1.12.x/reference/deck_sync
- https://docs.konghq.com/deck/1.13.x/reference/deck_sync
- https://docs.konghq.com/deck/1.14.x/reference/deck_sync
- https://docs.konghq.com/deck/1.15.x/reference/deck_sync
- https://docs.konghq.com/deck/1.16.x/reference/deck_sync
- https://docs.konghq.com/deck/1.17.x/reference/deck_sync
- https://docs.konghq.com/deck/1.18.x/reference/deck_sync
- https://docs.konghq.com/deck/1.19.x/reference/deck_sync
- https://docs.konghq.com/deck/1.20.x/reference/deck_sync
- https://docs.konghq.com/deck/1.21.x/reference/deck_sync
- https://docs.konghq.com/deck/1.22.x/reference/deck_sync
- https://docs.konghq.com/deck/1.23.x/reference/deck_sync
- https://docs.konghq.com/deck/1.24.x/reference/deck_sync/
- https://docs.konghq.com/deck/1.25.x/reference/deck_sync/
- https://docs.konghq.com/deck/1.26.x/reference/deck_sync/
- https://docs.konghq.com/deck/1.27.x/reference/deck_sync/
- https://docs.konghq.com/deck/1.7.x/reference/deck_sync
- https://docs.konghq.com/deck/1.8.x/reference/deck_sync
- https://docs.konghq.com/deck/1.9.x/reference/deck_sync
- https://docs.konghq.com/deck/1.10.x/reference/deck_validate
- https://docs.konghq.com/deck/1.11.x/reference/deck_validate
- https://docs.konghq.com/deck/1.12.x/reference/deck_validate
- https://docs.konghq.com/deck/1.13.x/reference/deck_validate
- https://docs.konghq.com/deck/1.14.x/reference/deck_validate
- https://docs.konghq.com/deck/1.15.x/reference/deck_validate
- https://docs.konghq.com/deck/1.16.x/reference/deck_validate
- https://docs.konghq.com/deck/1.17.x/reference/deck_validate
- https://docs.konghq.com/deck/1.18.x/reference/deck_validate
- https://docs.konghq.com/deck/1.19.x/reference/deck_validate
- https://docs.konghq.com/deck/1.20.x/reference/deck_validate
- https://docs.konghq.com/deck/1.21.x/reference/deck_validate
- https://docs.konghq.com/deck/1.22.x/reference/deck_validate
- https://docs.konghq.com/deck/1.23.x/reference/deck_validate
- https://docs.konghq.com/deck/1.24.x/reference/deck_validate/
- https://docs.konghq.com/deck/1.25.x/reference/deck_validate/
- https://docs.konghq.com/deck/1.26.x/reference/deck_validate/
- https://docs.konghq.com/deck/1.27.x/reference/deck_validate/
- https://docs.konghq.com/deck/1.7.x/reference/deck_validate
- https://docs.konghq.com/deck/1.8.x/reference/deck_validate
- https://docs.konghq.com/deck/1.9.x/reference/deck_validate
- https://docs.konghq.com/deck/1.10.x/reference/deck_version
- https://docs.konghq.com/deck/1.11.x/reference/deck_version
- https://docs.konghq.com/deck/1.12.x/reference/deck_version
- https://docs.konghq.com/deck/1.13.x/reference/deck_version
- https://docs.konghq.com/deck/1.14.x/reference/deck_version
- https://docs.konghq.com/deck/1.15.x/reference/deck_version
- https://docs.konghq.com/deck/1.16.x/reference/deck_version
- https://docs.konghq.com/deck/1.17.x/reference/deck_version
- https://docs.konghq.com/deck/1.18.x/reference/deck_version
- https://docs.konghq.com/deck/1.19.x/reference/deck_version
- https://docs.konghq.com/deck/1.20.x/reference/deck_version
- https://docs.konghq.com/deck/1.21.x/reference/deck_version
- https://docs.konghq.com/deck/1.22.x/reference/deck_version
- https://docs.konghq.com/deck/1.23.x/reference/deck_version
- https://docs.konghq.com/deck/1.24.x/reference/deck_version/
- https://docs.konghq.com/deck/1.25.x/reference/deck_version/
- https://docs.konghq.com/deck/1.26.x/reference/deck_version/
- https://docs.konghq.com/deck/1.27.x/reference/deck_version/
- https://docs.konghq.com/deck/1.7.x/reference/deck_version
- https://docs.konghq.com/deck/1.8.x/reference/deck_version
- https://docs.konghq.com/deck/1.9.x/reference/deck_version
- https://docs.konghq.com/gateway/3.0.x/install-support
- https://docs.konghq.com/gateway/3.1.x/install-support
- https://docs.konghq.com/gateway/3.1.x/reference/key-management
- https://docs.konghq.com/gateway/3.2.x/reference/key-management
- https://docs.konghq.com/gateway/3.3.x/reference/key-management
- https://docs.konghq.com/gateway/3.4.x/reference/key-management
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/concepts/deployment
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/concepts/deployment
- https://docs.konghq.com/assets/images/docs/konnect/api-products/api-products-overview.png
- https://docs.konghq.com/assets/images/docs/konnect/custom-reports/latency/kong-latency.png
- https://docs.konghq.com/assets/images/docs/konnect/custom-reports/latency/upstream-latency.png
- https://docs.konghq.com/assets/images/docs/konnect/dashboard/konnect-dashboard.png
- https://docs.konghq.com/assets/images/docs/konnect/konnect-intro.png
- https://docs.konghq.com/assets/images/docs/konnect/konnect-runtime-instance-kic.png
- https://docs.konghq.com/assets/images/docs/konnect/konnect-vaults.png
- https://docs.konghq.com/contributing/word-choice
- https://docs.konghq.com/konnect/account-management/
- https://docs.konghq.com/konnect/analytics/
- https://docs.konghq.com/konnect/analytics/reference
- https://docs.konghq.com/konnect/analytics/troubleshoot
- https://docs.konghq.com/konnect/analytics/use-cases/latency
- https://docs.konghq.com/konnect/api-products/
- https://docs.konghq.com/konnect/api/identity-management/identity-integration
- https://docs.konghq.com/konnect/api/
- https://docs.konghq.com/konnect/api/portal-auth/portal-rbac-guide
- https://docs.konghq.com/konnect/api/runtime-groups-config/overview
- https://docs.konghq.com/konnect/architecture
- https://docs.konghq.com/konnect/dev-portal/access-and-approval/azure
- https://docs.konghq.com/konnect/dev-portal/access-and-approval/manage-app-connections
- https://docs.konghq.com/konnect/dev-portal/access-and-approval/manage-teams
- https://docs.konghq.com/konnect/dev-portal/applications/application-overview
- https://docs.konghq.com/konnect/dev-portal/applications/dev-reg-app-service
- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/auth0
- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/azure
- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/curity
- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/
- https://docs.konghq.com/konnect/dev-portal/applications/dynamic-client-registration/okta
- https://docs.konghq.com/konnect/dev-portal/applications/enable-app-reg
- https://docs.konghq.com/konnect/dev-portal/customization/
- https://docs.konghq.com/konnect/dev-portal/customization/self-hosted-portal
- https://docs.konghq.com/konnect/dev-portal/
- https://docs.konghq.com/konnect/dev-portal/troubleshoot/
- https://docs.konghq.com/konnect/getting-started/access-account
- https://docs.konghq.com/konnect/getting-started/app-registration
- https://docs.konghq.com/konnect/getting-started/deploy-service
- https://docs.konghq.com/konnect/getting-started/import
- https://docs.konghq.com/konnect/getting-started/
- https://docs.konghq.com/konnect/getting-started/productize-service
- https://docs.konghq.com/konnect/
- https://docs.konghq.com/konnect/network-resiliency
- https://docs.konghq.com/konnect/network
- https://docs.konghq.com/konnect/org-management/audit-logging/reference
- https://docs.konghq.com/konnect/org-management/deactivation
- https://docs.konghq.com/konnect/org-management/system-accounts
- https://docs.konghq.com/konnect/org-management/teams-and-roles/
- https://docs.konghq.com/konnect/org-management/teams-and-roles/manage
- https://docs.konghq.com/konnect/org-management/teams-and-roles/roles-reference
- https://docs.konghq.com/konnect/org-management/teams-and-roles/teams-reference
- https://docs.konghq.com/konnect/org-management/users
- https://docs.konghq.com/konnect/reference/labels
- https://docs.konghq.com/konnect/reference/plugins
- https://docs.konghq.com/konnect/servicehub/
- https://docs.konghq.com/konnect/updates
- https://docs.konghq.com/konnect/upgrade-faq


### [Update: Add note about group filtering to Konnect SSO](https://github.com/Kong/docs.konghq.com/pull/6119) (2023-09-20)

Just adding a note to the Konnect SSO doc page about group filtering as it's needed in the rare case where a user in the IdP has over ~150 groups assigned which some IdPs will then not send the groups_claim in a standard manner and prevents successful authentication as a result. Customers need to use group filtering capabilities from the IdP to work effectively in that situation.

Stems from an issue discussed in Kong Support case #00037499.

#### Modified

- https://docs.konghq.com/konnect/org-management/oidc-idp



### [fix(docs): correct the influxdb - gateway startup order](https://github.com/Kong/docs.konghq.com/pull/6103) (2023-09-19)

- Update the startup order and startup InfluxDB before starting up kong-gateway.

- From 3.4.0.0 Kong doesn't release the alpine docker image anymore thus correct the doc.


#### Modified

- https://docs.konghq.com/gateway/3.3.x/breaking-changes/28x
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/28x/


### [chore: Add the 2.8.4.3 Gateway changelog](https://github.com/Kong/docs.konghq.com/pull/6029) (2023-09-18)

What did you change and why?

- Added the 2.8.4.3 Gateway changelog and the 2.8.4.3 breaking changes in preparation for the upcoming release.
- Updating AWS Lambda plugin with info related to refactor.
 


#### Modified

- https://docs.konghq.com/hub/kong-inc/aws-lambda/
- https://docs.konghq.com/hub/kong-inc/aws-lambda/overview/
- https://docs.konghq.com/gateway/3.3.x/breaking-changes/28x
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/28x/
- https://docs.konghq.com/gateway/changelog



## Week 37

### [Update(plugins): GraphQL Introspection endpoint related note](https://github.com/Kong/docs.konghq.com/pull/6090) (2023-09-12)

GraphQL Introspection endpoint will only be read from the Kong service (`service = ngx.ctx.service`) instead of reading from a specific variable or ingress - local.

Documenting this behavior so consumers are aware of how to configure correctly and know about the limitation.

#### Modified

- https://docs.konghq.com/hub/kong-inc/graphql-rate-limiting-advanced/overview/


### [[Fix]- KIC: Setting up Active and Passive health checks guide](https://github.com/Kong/docs.konghq.com/pull/6081) (2023-09-11)
 
Revised and rewrote the guide after validating.

#### Modified

- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/cp-outage-handling
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/cp-outage-handling
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/cp-outage-handling


### [fix missing keyword config in curl data](https://github.com/Kong/docs.konghq.com/pull/6075) (2023-09-12)

To enable grpc-web plugin via Admin API, the keywork `config` in curl data is missing.

#### Modified

- https://docs.konghq.com/hub/kong-inc/grpc-web/how-to/


### [fix: remove unsupported KIC feature](https://github.com/Kong/docs.konghq.com/pull/6068) (2023-09-11)

Remove the custom entities guide from KIC 2.x pages.

This feature was never actually supported in 2.x, and we removed the leftover flag [in 2.9](https://github.com/Kong/kubernetes-ingress-controller/pull/3262). In earlier 2.x versions, the flag was available but did not work.


## Week 36

### [chore: Split the gateway changelogs to archive changelogs for sunset versions](https://github.com/Kong/docs.konghq.com/pull/6073) (2023-09-08)

Our Gateway changelog page is massive. This is a problem for everyone involved:
* Bad page load times/performance
* Difficult to edit
* Lots of unnecessary info
* Documenting versions that we don't support
* And the most recent discovery, a not-insignificant chunk of our Algolia records

From now on, we will be archiving old changelogs at the same time we archive old versions of our docs. You can find the changelogs at https://legacy-gateway--kongdocs.netlify.app/enterprise/changelog/.

#### Modified

- https://docs.konghq.com/gateway/changelog


### [Post-launch tidy of Konnect API overview page + nav](https://github.com/Kong/docs.konghq.com/pull/6067) (2023-09-07)
 
Update links to api specs in overview page to reference evergreen links, repeat spec description from devportal description field, update nav links to consistently refer to API spec and use evergreen links.

#### Modified

- https://docs.konghq.com/konnect/api/


### [update urls to latest and remove mention of dev portal](https://github.com/Kong/docs.konghq.com/pull/6066) (2023-09-06)

Update urls to latest for gateway APIs.

Remove mention of dev portal from API announcement banner.

#### Modified

- https://docs.konghq.com/konnect/api/


### [Fix(plugin scopes): Consumer groups scope and application registration plugin](https://github.com/Kong/docs.konghq.com/pull/6059) (2023-09-05)

The [scopes compatibility table](https://docs.konghq.com/hub/plugins/compatibility/#scopes) was missing a column for consumer groups. This update enables generating the column and all entries from the plugins' schemas.

Additionally, the Application Registration plugin was listed as incompatible with all scopes, which is wrong - it's compatible with services only. Turns out we were selecting for the wrong key. Fixing this also fixes the display of the plugin's [config](https://docs.konghq.com/hub/kong-inc/application-registration/configuration/) and [basic examples](https://docs.konghq.com/hub/kong-inc/application-registration/how-to/basic-example/), which were both missing services.

#### Modified

- https://docs.konghq.com/hub/plugins/compatibility/


### [(fix) remove note about cloud launcher support ](https://github.com/Kong/docs.konghq.com/pull/6057) (2023-09-06)

Existing note was incorrect and causing confusion. 
https://kongstrong.slack.com/archives/CQK8J4VN3/p1693903551408579

#### Modified

- https://docs.konghq.com/konnect/runtime-manager/runtime-instances/upgrade


### [Fix "supported-router-flavors" typos](https://github.com/Kong/docs.konghq.com/pull/6056) (2023-09-05)

This change fixes small typos in the documentation.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.1.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.2.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.3.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.4.x/install/linux/ubuntu


### [Salt plugin: add konnect and update version compatibility](https://github.com/Kong/docs.konghq.com/pull/6050) (2023-09-05)

Updating for Konnect compatibility & Kong version support
taking colleagues work and putting into PR on main for Kong's docs repo

#### Modified

- https://docs.konghq.com/hub/salt/salt/_metadata.yml


### [feat: Split serverless plugins into their own pages](https://github.com/Kong/docs.konghq.com/pull/6047) (2023-09-08)

We currently document one entry for [Serverless Functions](https://docs.konghq.com/hub/kong-inc/serverless-functions/), but it’s actually two plugins: `pre-function` and `post-function`. When searching for docs, users look for one of those names, not for Serverless Function. The UI also has them as two separate plugins, so one docs entry doesn't make sense.

This PR aims to solve that by splitting Serverless Functions into Post-function and Pre-function plugins. 
* For the titles of the plugins, used the names from the Konnect and Kong Manager UIs: Kong Functions (Pre-Plugins) and Kong Functions (Post-Plugins).
* You can still search for these plugins by the term "serverless" and by their real names (post- and pre-function)
* Split out the how-to guide for the pre-function plugin into its own topic
* For the post-function plugin, wrote a how-to guide based on a KB: https://support.konghq.com/support/s/article/How-can-the-latency-and-rate-limit-plugin-header-names-be-changed
* For both plugins, also added short guide on running the plugins in multiple phases based on yet another KB: https://support.konghq.com/support/s/article/Is-it-possible-to-run-serverless-plugins-in-phases-other-than-the-access-phase

https://konghq.atlassian.net/browse/DOCU-3434

#### Added

- https://docs.konghq.com/hub/kong-inc/post-function/
- https://docs.konghq.com/hub/kong-inc/post-function/how-to/
- https://docs.konghq.com/hub/kong-inc/post-function/how-to/
- https://docs.konghq.com/hub/kong-inc/post-function/overview/
- https://docs.konghq.com/hub/kong-inc/pre-function/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/pre-function/how-to/
- https://docs.konghq.com/hub/kong-inc/pre-function/how-to/
- https://docs.konghq.com/hub/kong-inc/pre-function/overview/
- https://docs.konghq.com/hub/kong-inc/pre-function/versions.yml
- https://docs.konghq.com/assets/images/icons/hub/kong-inc_pre-function.png

#### Modified

- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/overview/
- https://docs.konghq.com/hub/kong-inc/request-transformer/overview/
- https://docs.konghq.com/gateway/3.3.x/breaking-changes/30x
- https://docs.konghq.com/gateway/3.4.x/breaking-changes/30x/
- https://docs.konghq.com/gateway/3.0.x/upgrade/
- https://docs.konghq.com/gateway/changelog
- https://docs.konghq.com/konnect/updates


### [[Fix] KIC guides](https://github.com/Kong/docs.konghq.com/pull/6043) (2023-09-06)

Update existing Kong Ingress Controller guides for consistency and readability. Audit that all guides work as intended by copy/pasting the instructions.

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/deployment/minikube
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/faq
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/configure-acl-plugin
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/getting-started
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-consumer-credential-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-kongplugin-resource
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.3.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.4.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/guides/using-tcpingress
- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/support-policy
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/support-policy
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/support-policy
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/support-policy
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/support-policy
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/support-policy
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/support-policy


### [fix: change go-apiops to deck file in deck_file_remove-tags.md](https://github.com/Kong/docs.konghq.com/pull/6037) (2023-09-06)

go-apiops cli is built for testing purposes. End users are encumbered to use this utility through deck file command

I changed `go-apiops` cli example to `deck file`. As mentioned in [go-apiops repository](https://github.com/Kong/go-apiops)
> Currently, the functionality is released as a library and as part of the [decK](https://github.com/Kong/deck) CLI tool. The 
> repository also contains a CLI named go-apiops **for local testing**. For general CLI usage, prefer the decK tool [docs](https://docs.konghq.com/deck/latest/) tool.

 `go-apiops` is used for testing and deck is encouraged for general usage.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.1.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.2.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.3.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.4.x/install/linux/ubuntu


### [Feat: Plugin hub nested overviews](https://github.com/Kong/docs.konghq.com/pull/6027) (2023-09-05)
 
Add the ability to nest overview pages to plugins, they work in the same way as the `how-tos`.
Add redirects, so that existing URLs redirect to `/overview/`.
Add `nav_title: Introduction` to existing pages.

#### Modified

- https://docs.konghq.com/hub/kong-inc/acl/how-to/
- https://docs.konghq.com/hub/kong-inc/acme/how-to/
- https://docs.konghq.com/hub/kong-inc/acme/how-to/
- https://docs.konghq.com/hub/kong-inc/acme/how-to/
- https://docs.konghq.com/hub/kong-inc/application-registration/how-to/
- https://docs.konghq.com/hub/kong-inc/graphql-proxy-cache-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/graphql-rate-limiting-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/graphql-rate-limiting-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/grpc-gateway/how-to/
- https://docs.konghq.com/hub/kong-inc/grpc-web/how-to/
- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer/how-to/
- https://docs.konghq.com/hub/kong-inc/request-transformer/how-to/


### [Adds documentation for the Filter Chain entity available in Kong Gateway 3.4 ](https://github.com/Kong/docs.konghq.com/pull/6011) (2023-09-05)

Adds documentation for the Filter Chain entity available in Kong Gateway 3.4 when WebAssembly support is enabled.

#### Modified

- https://docs.konghq.com/gateway/3.4.x/kong-manager-oss/troubleshoot/
- https://docs.konghq.com/mesh/1.7.x/features/windows
- https://docs.konghq.com/mesh/1.8.x/features/windows
- https://docs.konghq.com/mesh/1.9.x/features/windows
- https://docs.konghq.com/mesh/2.0.x/features/windows
- https://docs.konghq.com/mesh/2.1.x/features/windows


## Week 35

### [Add info about how IP address is determined for IP Restriction plugin](https://github.com/Kong/docs.konghq.com/pull/6046) (2023-08-31)

Added a blurb about how the IP Address is determined when using the IP Restriction plugin, as this was confusing customers who were unaware of the appropriate settings that needed to be tweaked for their environment so the IP could be determined accurately.

#### Modified

- https://docs.konghq.com/hub/kong-inc/ip-restriction/


### [Added info about limiting by IP address](https://github.com/Kong/docs.konghq.com/pull/6045) (2023-08-31)

We were missing details about how the IP address was determined when customers want to limit by IP address. Added these details to clarify how this works and linked to other sources for the appropriate properties that need to be set.

#### Modified

- https://docs.konghq.com/hub/kong-inc/rate-limiting/


### [Updated RLA index page to share some details from RL plugin](https://github.com/Kong/docs.konghq.com/pull/6044) (2023-08-31)

There were some missing details from the RL (Rate Limiting) plugin which I pasted into the RLA (Rate Limiting Advanced) plugin index page, including extra details about the strategies that can be used and the use-cases for each.

Also added a section for how the IP address is determined as this was missing from the details and was not obvious to customers how this worked when limiting by IP address.

#### Modified

- https://docs.konghq.com/hub/kong-inc/rate-limiting-advanced/


### [Update index.md](https://github.com/Kong/docs.konghq.com/pull/6042) (2023-08-31)

Fixed spelling mistake and commas

- Fixed spelling error: changed confict to conflict.
- Added commas

#### Modified

- https://docs.konghq.com/konnect/runtime-manager/composite-runtime-groups/


### [fix: Update OSS install instructions for Kong Manager](https://github.com/Kong/docs.konghq.com/pull/6040) (2023-08-31)

Our OSS install instructions (specifically Docker and I found some Linux ones as well) that still said that KM wasn't for OSS even though it is. I fixed those spots.

DOCU-3445

#### Modified

- https://docs.konghq.com/gateway/3.4.x/kong-manager-oss/troubleshoot/


### [chore(deps): update docs from repo source](https://github.com/Kong/docs.konghq.com/pull/6036) (2023-08-31)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/6034676360)

#### Modified

- https://docs.konghq.com/mesh/2.4.x/kuma-cp.yaml
- https://docs.konghq.com/mesh/dev/kuma-cp.yaml
- https://docs.konghq.com/mesh/raw/CHANGELOG


### [Update: Add link to changelog entry for Kong Manager OSS](https://github.com/Kong/docs.konghq.com/pull/6034) (2023-08-29)

Add link to https://docs.konghq.com/gateway/latest/kong-manager-oss/ in the feature annoucement

#### Modified

- https://docs.konghq.com/gateway/changelog


### [(Fix) Cross-ref CP-DP communication through forward proxy in Konnect docs](https://github.com/Kong/docs.konghq.com/pull/6028) (2023-08-29)

You can now find cross-reference to the "Control Plane and Data Plane Communication through a Forward Proxy" page in the "Konnect Ports and Networking Requirements" page.

Updated based on Slack feedback [here](https://kongstrong.slack.com/archives/C02CWN8C7DK/p1693260752247129). 

#### Modified

- https://docs.konghq.com/konnect/network


### [kic: update `CombinedServices` feature gate default for 2.11](https://github.com/Kong/docs.konghq.com/pull/6026) (2023-08-30)

Update `CombinedServices` feature gate default for 2.11 as it was made in https://github.com/Kong/kubernetes-ingress-controller/pull/4138

#### Modified

- https://docs.konghq.com/gateway/3.4.x/reference/wasm


### [chore(deps): bump kumahq/kuma-website from c530a7a4 to 045ff986](https://github.com/Kong/docs.konghq.com/pull/6024) (2023-08-30)

Auto upgrade PR log:

045ff9868acdb4b322759dde3f8053f41948100f feat: extend kubernetes perf tuning section (kumahq/kuma-website#1444)
cac5fd764b722ee64e1be31f26d9d006d9cf1574 fix(annotations): remove reference to injection annotation (kumahq/kuma-website#1450)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/6018914319).

#### Modified

- https://docs.konghq.com/gateway/3.4.x/kong-manager-oss/troubleshoot/


### [Edited the CP outage handling doc to add emphasis to environment variables](https://github.com/Kong/docs.konghq.com/pull/6022) (2023-08-28)

Corrected some wording and bolded the "import" and "export" portions in the environment variables as customers are often seeing these are the same variables without realizing they're different between export and import.

Reverted the bolding after I realized it didn't load correctly in the preview. Overall the final change is just a mild correction to a wrongly formatted sentence from earlier.

#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.1.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.2.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.3.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.4.x/install/linux/ubuntu


### [Add if_versions tags so windows support does not show up in KM v2.4](https://github.com/Kong/docs.konghq.com/pull/6021) (2023-08-29)

Remove Windows support from KM 2.4 onwards

#### Modified

- https://docs.konghq.com/gateway/3.4.x/reference/wasm
- https://docs.konghq.com/mesh/1.7.x/features/windows
- https://docs.konghq.com/mesh/1.8.x/features/windows
- https://docs.konghq.com/mesh/1.9.x/features/windows
- https://docs.konghq.com/mesh/2.0.x/features/windows
- https://docs.konghq.com/mesh/2.1.x/features/windows
- https://docs.konghq.com/mesh/1.7.x/gettingstarted
- https://docs.konghq.com/mesh/1.8.x/gettingstarted
- https://docs.konghq.com/mesh/1.9.x/gettingstarted
- https://docs.konghq.com/mesh/2.0.x/gettingstarted
- https://docs.konghq.com/mesh/2.1.x/gettingstarted
- https://docs.konghq.com/mesh/2.0.x/install/
- https://docs.konghq.com/mesh/2.1.x/install/
- https://docs.konghq.com/mesh/1.7.x/installation/windows
- https://docs.konghq.com/mesh/1.8.x/installation/windows
- https://docs.konghq.com/mesh/1.9.x/installation/windows
- https://docs.konghq.com/mesh/2.0.x/installation/windows
- https://docs.konghq.com/mesh/2.1.x/installation/windows


### [chore(deps): bump kumahq/kuma-website from 2064c900 to 707fb928](https://github.com/Kong/docs.konghq.com/pull/6012) (2023-08-28)

Auto upgrade PR log:

707fb928c63b3d4cc57628ecfb8f53845b4ab314 fix(MeshGateway): fix typo on example tags table (kumahq/kuma-website#1442)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/5994030906).

#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/linux/debian
- https://docs.konghq.com/gateway/3.1.x/install/linux/debian
- https://docs.konghq.com/gateway/3.2.x/install/linux/debian
- https://docs.konghq.com/gateway/3.3.x/install/linux/debian
- https://docs.konghq.com/gateway/3.4.x/install/linux/debian


### [feat(pre-built-reports): added changelog entry and an intro sentence](https://github.com/Kong/docs.konghq.com/pull/6009) (2023-08-28)

Added a changelog item to release our pre-built reports feature ([Aha ticket](https://konghq.aha.io/features/KP-204)) and an intro sentence into the Analytics section inside the Konnect intro chapter. This feature is rather small and is only for new organization. Therefore, I think we don't need a lot of docs changes.

[Here](https://docs.google.com/spreadsheets/d/1QnwrHOjR-K-H5w9FQAWltNvq_H0OF8vv-y19o-5CtD0/edit#gid=0) is a list of the pre-built reports we deploy for all new organizations.

#### Modified

- https://docs.konghq.com/konnect/
- https://docs.konghq.com/konnect/updates


### [chore(deps): update docs from repo source](https://github.com/Kong/docs.konghq.com/pull/6003) (2023-08-29)

Syncing docs from source code.

Generated by [action](https://github.com/Kong/kong-mesh/actions/runs/6009565670)

#### Added

- https://docs.konghq.com/mesh/2.4.x/crds/access-audit.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/access-role-binding.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/access-role.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_circuitbreakers.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_containerpatches.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_dataplaneinsights.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_dataplanes.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_externalservices.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_faultinjections.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_healthchecks.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshaccesslogs.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshcircuitbreakers.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshes.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshfaultinjections.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshgatewayconfigs.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshgatewayinstances.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshgatewayroutes.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshgateways.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshglobalratelimits.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshhealthchecks.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshhttproutes.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshinsights.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshloadbalancingstrategies.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshopas.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshproxypatches.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshratelimits.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshretries.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshtcproutes.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshtimeouts.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshtraces.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_meshtrafficpermissions.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_proxytemplates.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_ratelimits.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_retries.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_serviceinsights.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_timeouts.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_trafficlogs.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_trafficpermissions.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_trafficroutes.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_traffictraces.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_virtualoutbounds.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_zoneegresses.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_zoneegressinsights.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_zoneingresses.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_zoneingressinsights.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_zoneinsights.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/kuma.io_zones.yaml
- https://docs.konghq.com/mesh/2.4.x/crds/opa-policy.yaml
- https://docs.konghq.com/mesh/2.4.x/helm-values.yaml
- https://docs.konghq.com/mesh/2.4.x/kuma-cp.yaml
- https://docs.konghq.com/mesh/2.4.x/protos/OPAPolicy.json

#### Modified

- https://docs.konghq.com/mesh/1.7.x/features/windows
- https://docs.konghq.com/mesh/1.8.x/features/windows
- https://docs.konghq.com/mesh/1.9.x/features/windows
- https://docs.konghq.com/mesh/2.0.x/features/windows
- https://docs.konghq.com/mesh/2.1.x/features/windows
- https://docs.konghq.com/mesh/dev/crds/kuma.io_circuitbreakers.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_containerpatches.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_dataplaneinsights.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_dataplanes.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_externalservices.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_faultinjections.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_healthchecks.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshaccesslogs.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshcircuitbreakers.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshes.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshfaultinjections.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshgatewayconfigs.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshgatewayinstances.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshgatewayroutes.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshgateways.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshglobalratelimits.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshhealthchecks.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshhttproutes.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshinsights.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshloadbalancingstrategies.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshopas.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshproxypatches.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshratelimits.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshretries.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshtcproutes.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshtimeouts.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshtraces.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_meshtrafficpermissions.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_proxytemplates.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_ratelimits.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_retries.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_serviceinsights.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_timeouts.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_trafficlogs.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_trafficpermissions.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_trafficroutes.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_traffictraces.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_virtualoutbounds.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_zoneegresses.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_zoneegressinsights.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_zoneingresses.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_zoneingressinsights.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_zoneinsights.yaml
- https://docs.konghq.com/mesh/dev/crds/kuma.io_zones.yaml


### [fix: Docker installation for Kong Gateway OSS missing port for Kong Manager OSS](https://github.com/Kong/docs.konghq.com/pull/5998) (2023-08-29)

The installation instructions for Kong Gateway OSS on Docker were missing the Kong Manager OSS port mapping.
Adding it for 3.4, along with a troubleshooting entry, in case anyone else runs into it.

#### Added

- https://docs.konghq.com/mesh/1.7.x/features/windows
- https://docs.konghq.com/mesh/1.8.x/features/windows
- https://docs.konghq.com/mesh/1.9.x/features/windows
- https://docs.konghq.com/mesh/2.0.x/features/windows
- https://docs.konghq.com/mesh/2.1.x/features/windows

#### Modified

- https://docs.konghq.com/kubernetes-ingress-controller/2.10.x/references/feature-gates
- https://docs.konghq.com/kubernetes-ingress-controller/2.11.x/references/feature-gates
- https://docs.konghq.com/kubernetes-ingress-controller/2.5.x/references/feature-gates
- https://docs.konghq.com/kubernetes-ingress-controller/2.6.x/references/feature-gates
- https://docs.konghq.com/kubernetes-ingress-controller/2.7.x/references/feature-gates
- https://docs.konghq.com/kubernetes-ingress-controller/2.8.x/references/feature-gates
- https://docs.konghq.com/kubernetes-ingress-controller/2.9.x/references/feature-gates


### [Add blog post note to gateway install pages](https://github.com/Kong/docs.konghq.com/pull/5997) (2023-08-31)

This addition was requested by the marketing folks just to further cement usage of the new site.

#### Modified

- https://docs.konghq.com/gateway/3.4.x/reference/wasm


### [chore: Sunset Kong Gateway versions 2.1.x-2.5.x](https://github.com/Kong/docs.konghq.com/pull/5992) (2023-08-29)

As of August 24th, 2023, Kong Gateway OSS and Enterprise versions 2.1.x-2.5.x [end their sunset support](https://docs.konghq.com/gateway/latest/support-policy/#older-versions).

This PR removes all of the old versions from the docs site, as well as the `/archive` folder maintained on the `main` branch.
We no longer need that folder, since we have a legacy-gateway site.

You can find all of the archived versions at the following links:
https://legacy-gateway--kongdocs.netlify.app/enterprise/2.5.x/
https://legacy-gateway--kongdocs.netlify.app/gateway-oss/2.5.x/
https://legacy-gateway--kongdocs.netlify.app/getting-started-guide/2.5.x/overview/

For the additions to the archive, see https://github.com/Kong/docs.konghq.com/pull/5993.

https://konghq.atlassian.net/browse/DOCU-3347

---

Some specifics:
* Deleting everything to do with `enterprise`, `gateway-oss`, and `getting-started-guide` editions and URLs. All three of those editions were replaced with one `gateway` edition in 2.6.x. Since we're archiving everything before 2.6.x, we no longer need to maintain all of the exceptions for the old editions.
* Plugins: We will no longer build versions 2.5.x or earlier. There wasn't a lot of 2.5.x or earlier content that was unique, so I think that should be fine.
  * If we want to move the old plugin docs to the archive site, we will need to port the whole new plugin hub over there. I'm not sure that it's worth it yet.

#### Modified

- https://docs.konghq.com/hub/kong-inc/acme/
- https://docs.konghq.com/hub/kong-inc/aws-lambda/
- https://docs.konghq.com/hub/kong-inc/bot-detection/
- https://docs.konghq.com/hub/kong-inc/datadog/
- https://docs.konghq.com/hub/kong-inc/file-log/
- https://docs.konghq.com/hub/kong-inc/grpc-gateway/how-to/
- https://docs.konghq.com/hub/kong-inc/hmac-auth/
- https://docs.konghq.com/hub/kong-inc/http-log/
- https://docs.konghq.com/hub/kong-inc/ip-restriction/
- https://docs.konghq.com/hub/kong-inc/jwt-signer/versions.yml
- https://docs.konghq.com/hub/kong-inc/kafka-log/
- https://docs.konghq.com/hub/kong-inc/kafka-upstream/
- https://docs.konghq.com/hub/kong-inc/key-auth/
- https://docs.konghq.com/hub/kong-inc/ldap-auth-advanced/
- https://docs.konghq.com/hub/kong-inc/ldap-auth/
- https://docs.konghq.com/hub/kong-inc/loggly/
- https://docs.konghq.com/hub/kong-inc/prometheus/
- https://docs.konghq.com/hub/kong-inc/statsd-advanced/versions.yml
- https://docs.konghq.com/hub/kong-inc/syslog/
- https://docs.konghq.com/hub/kong-inc/tcp-log/
- https://docs.konghq.com/hub/kong-inc/udp-log/
- https://docs.konghq.com/hub/kong-inc/zipkin/
- https://docs.konghq.com/gateway/2.6.x/configure/auth/kong-manager/ldap
- https://docs.konghq.com/gateway/2.7.x/configure/auth/kong-manager/ldap
- https://docs.konghq.com/gateway/2.8.x/configure/auth/kong-manager/ldap

## Week 34

### [Fix missing icon](https://github.com/Kong/docs.konghq.com/pull/6007) (2023-08-25)
 
The OSS/Enterprise icon was missing. We changed it to a white version when we added it to the blue navigation, and forgot to change it back when we put it back in the TOC. 

Add missing `alt` text to konnect's dashboard image.

#### Modified

- https://docs.konghq.com/konnect/


### [Chore: Bump GW to version 3.1.1.5](https://github.com/Kong/docs.konghq.com/pull/6006) (2023-08-25)

https://konghq.atlassian.net/browse/DOCU-3410

* changelog

* updated `app/_data/kong_versions.yml`

#### Modified

- https://docs.konghq.com/gateway/changelog


### [chore(deps): bump kumahq/kuma-website from 643f230a to 2064c900](https://github.com/Kong/docs.konghq.com/pull/6001) (2023-08-25)

Auto upgrade PR log:

2064c9000e7605c6b057ac3e668708a45046c8aa chore(deps): update docs from repo source (kumahq/kuma-website#1443)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/5970254269).

#### Modified

- https://docs.konghq.com/gateway/3.2.x/kong-enterprise/cp-outage-handling
- https://docs.konghq.com/gateway/3.3.x/kong-enterprise/cp-outage-handling
- https://docs.konghq.com/gateway/3.4.x/kong-enterprise/cp-outage-handling


### [fix: Add missing metadata to appdynamics and serverless functions plugins](https://github.com/Kong/docs.konghq.com/pull/5999) (2023-08-24)

The AppDynamics and Serverless functions plugins were incorrectly listed as being incompatible with all Kong Gateway deployment modes: https://docs.konghq.com/hub/plugins/compatibility/#serverless

Fixing that by adding `network_config_opts` to the metadata files for both plugins. Both plugins can be run in DB-less, traditional, and hybrid modes.

#### Modified

- https://docs.konghq.com/hub/kong-inc/app-dynamics/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/serverless-functions/_metadata.yml


### [chore(deps): bump kumahq/kuma-website from b49b8059 to 643f230a](https://github.com/Kong/docs.konghq.com/pull/5994) (2023-08-23)

Auto upgrade PR log:

643f230ab275957febf4c5195e83939dd8bdf16e fix(retry): correct baseDuration to baseInterval (kumahq/kuma-website#1441)

Triggered by [action](https://github.com/Kong/docs.konghq.com/actions/runs/5945388060).

#### Modified

- https://docs.konghq.com/gateway/3.0.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.1.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.2.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.3.x/install/linux/ubuntu
- https://docs.konghq.com/gateway/3.4.x/install/linux/ubuntu


### [feat: Konnect API examples for plugins](https://github.com/Kong/docs.konghq.com/pull/5970) (2023-08-23)

For any plugin that is supported in Konnect, it’s now possible to configure it using the Konnect runtime groups API, via `core-entities`. This PR adds support for generated Konnect API examples in the plugin docs, which makes the Konnect API more visible and positions it as a parallel option to the Kong Admin API.

A simple service example for the Basic auth plugin:
![Screenshot 2023-08-17 at 1 54 20 PM](https://github.com/Kong/docs.konghq.com/assets/54370747/2168aff3-0bad-4d46-82f9-ed5964a083c2)

A global example for the Rate Limiting Advanced plugin:
![Screenshot 2023-08-17 at 2 57 19 PM](https://github.com/Kong/docs.konghq.com/assets/54370747/d71f434e-7689-4a7a-bad4-9298621e49eb)

Along with that, there were several fixes/improvements that I had to make:
* Placeholders in curl examples: after team discussion, settled on `{ }` as the placeholder characters for URLs. This format is heavily used in our API specs, and is the OpenAPI standard: https://swagger.io/docs/specification/describing-parameters/. Going forward, we should be using `{ }` to enclose variables **in specs and API examples**. 
  * Placeholders in other situations still need revisiting. Out of scope here.
 
* The global example now explains what "global" means in the context of Konnect, Kong Enterprise, and Kong OSS. This is a long-running painpoint, and it seems timely to add this as we add Konnect examples.

* Removed the duplicate `konnect_examples` and `manager_examples` metadata keys from plugin docs. We don't have Kong Manager examples, and we don't need a separate `konnect_examples` key. `konnect: false/true` already performs the same function.

https://konghq.atlassian.net/browse/DOCU-2949

#### Modified

- https://docs.konghq.com/hub/kong-inc/app-dynamics/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/application-registration/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/datadog/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/exit-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/jq/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/key-auth-enc/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/oauth2-introspection/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/oauth2/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/opentelemetry/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/openwhisk/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-size-limiting/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/request-transformer/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/response-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/route-by-header/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/route-transformer-advanced/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/serverless-functions/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/vault-auth/_0.3.0/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/vault-auth/_metadata.yml
- https://docs.konghq.com/hub/kong-inc/zipkin/_metadata.yml
- https://docs.konghq.com/contributing/conditional-rendering
- https://docs.konghq.com/contributing/markdown-rules
- https://docs.konghq.com/contributing/style-guide
