# Third party

Third party dependencies used by Nasdanika products which cannot be introduced with [Maven OSGi](../maven-osgi).

* P2 repository - ``https://www.nasdanika.org/home/products/third-party/repository``
* [Archived repository](org.nasdanika.third-party.repository-2.2019.04-SNAPSHOT.zip).
* [Sources](third-party.zip)

## Features

* Equinox - Eclipse Equinox runtime bundles.
* Jetty - Jetty runtime bundles.

## Bundles

| Bundle        | Version      | Description  |
|---------------|-------------:|--------------|
| org.vladsch.flexmark      | 0.46.2 | [Flexmark](https://github.com/vsch/flexmark-java) with all dependencies. Only flexmark packages are exported. |
| io.jsonwebtoken      | 0.10.5 | [JJWT](https://github.com/jwtk/jjwt) with ``org.json`` dependency. |