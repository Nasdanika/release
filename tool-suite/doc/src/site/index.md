
Nasdanika specializes in creating tools and solutions for Model-Driven development and code generation.

## Products

### Vinci 

Nasdanika Vinci is a visual modeling tool  for creating models of web sites and then generating static web sites from the models.

* [Getting Started](doc/products/vinci/getting-started.html)
* [User Guide](doc/products/vinci/user-guide/index.html)
* [Developer Guide](doc/products/vinci/developer-guide/index.html) 

## Packages

We provide our products in a form of a Eclipse package - Nasdanika Tool Suite. 
We also provide another package - Nasdanika Developer Tools - a collection of third-party tools extending the Eclipse Modeling package.    

By downloading Nasdanika packages your are agreeing to the ${action-mappings/terms-of-use}.

### Tool Suite

* P2 repository (update site):
    * URL: ``${base-uri}packages/tool-suite/repository``
    * [Archived](packages/tool-suite/org.nasdanika.tools.repository-2020.03.00-SNAPSHOT.zip)
* Packages:
    * [Nasdanika Tool Suite for Windows](packages/tool-suite/nasdanika-tool-suite-2020-03-win32-x86_64.zip) - requires Java Runtime Environment
    * [Nasdanika Tool Suite for Windows JDK bundle](packages/tool-suite/nasdanika-tool-suite-2020-03-openjdk-8-win32-x86_64.zip) - a self-contained package which includes [Zulu Community OpenJDK 8](https://www.azul.com/downloads/zulu-community/?architecture=x86-64-bit&package=jdk)     

### Developer Tools

* [Nasdanika Developer Tools for Windows]()
* [Nasdanika Developer Tools for Windows JDK bundle]() - a self-contained package which includes [Zulu Community OpenJDK 8](https://www.azul.com/downloads/zulu-community/?architecture=x86-64-bit&package=jdk)     

## Reference documentation

* [Model](doc/model-doc/index.html)
* [Command Line Interface](doc/cli/index.html) (CLI)
* [Javadoc](doc/javadoc/index.html)

## Case study

This site and the [documentation](doc/index.html) site were created and generated with Nasdanika Vinci:

* Root models were created in the Vinci model editor,
* CLI and Model documentation models from Java sources and Ecore models respectively  by [Nasdanika CLI](doc/cli/index.html) during the build process. The root models reference the generated models. 
* The site content and the Eclipse help were generated as part of the build process by Nasdanika CLI . 

The models and the build file can be found in the [Tool Suite doc bundle on GitHub](https://github.com/Nasdanika/release/tree/master/tool-suite/doc).  
