
Nasdanika specializes in creating tools and solutions for Model-Driven development and code generation.

## Products

### Vinci 

Nasdanika Vinci is a visual modeling tool for creating models of web sites and then generating static web sites from the models.

* [Get Started](doc/guides/vinci/get-started/index.html)
* [User Guide](doc/guides/vinci/user/index.html)
* [Developer Guide](doc/guides/vinci/developer/index.html) 

#### Ресурсы на русском (Resources in Russian)

* Создаём web-портфолио с генератором сайтов Nasdanika Vinci - три варианта:
    * [Юдеми курс](https://www.udemy.com/course/nasdanika-vinci-level-1/) (Udemy course).
    * [Веб сайт](https://tanchora.github.io/vinci_udemy_base_course/courseprogram/) (Web site) - создан в Винчи. 
    * [Ютуб лист](https://www.youtube.com/playlist?list=PLqZWa5YR2-FhWXAS_yKuAOUtUmLYDGcpf) (YouTube list).
    
### Codegen

Nasdanika Codegen provides a meta-model and editors for visual creation of code generation models as well as a Command-Line and HTTP server for execution of generation models.

* [Get Started Presentation](doc/guides/codegen/nasdanika-codegen-get-started.pdf) 

## Packages

We provide our products in a form of a Eclipse package - Nasdanika Tool Suite. 
We also provide another package - Nasdanika Developer Tools - a collection of third-party tools extending the Eclipse Modeling package. 

By downloading Nasdanika packages your are agreeing to the ${action-mappings/terms-of-use}.

### Tool Suite

* Packages:
    * [Nasdanika Tool Suite for Windows JDK bundle](packages/tool-suite/nasdanika-tool-suite-2020-12-openjdk-8-win32-x86_64.zip) - a self-contained package which includes [Zulu Community OpenJDK 8](https://www.azul.com/downloads/zulu-community/?architecture=x86-64-bit&package=jdk) 
    * [Nasdanika Tool Suite for Windows](packages/tool-suite/nasdanika-tool-suite-2020-12-win32-x86_64.zip) - requires Java Runtime Environment
* [![Drag to your running Eclipse* workspace. *Requires Eclipse Marketplace Client](https://marketplace.eclipse.org/sites/all/themes/solstice/public/images/marketplace/btn-install.png)](http://marketplace.eclipse.org/marketplace-client-intro?mpc_install=5133210 "Drag to your running Eclipse* workspace. *Requires Eclipse Marketplace Client") - drag into your running Eclipse workspace. Requires Eclipse Marketplace Client. It is recommended to install into the [Eclipse Modeling Tools](https://www.eclipse.org/downloads/packages/release/2020-03/r/eclipse-modeling-tools) package for the best modeling experience in the [Modeling Perspective](https://www.eclipse.org/sirius/doc/user/general/Modeling%20Project.html#ModelingPerspective).
* P2 repository (update site):
    * URL: ``${base-uri}packages/tool-suite/repository``
    * [Archived](packages/tool-suite/org.nasdanika.tools.repository-2020.12.00-SNAPSHOT.zip)

### Developer Tools

* [Nasdanika Developer Tools for Windows](packages/nasdanika-developer-tools-2020-12-win32-x86_64.zip)
* [Nasdanika Developer Tools for Windows JDK bundle](packages/nasdanika-developer-tools-2020-12-open-jdk-8-win32-x86_64.zip) - a self-contained package which includes [Zulu Community OpenJDK 8](https://www.azul.com/downloads/zulu-community/?architecture=x86-64-bit&package=jdk) 

## Reference documentation

* [Model](doc/refernce/model-doc/index.html)
* [Command Line Interface](doc/reference/cli/index.html) (CLI)
* [Javadoc](doc/reference/javadoc/index.html)

## Sample projects

* [get-started.zip](get-started.zip) - sources of the get started project.

## Case study

This site and the [documentation](doc/index.html) site were created and generated with Nasdanika Vinci:

* Root models were created in the Vinci model editor,
* CLI and Model documentation models were generated from Java sources and Ecore models respectively by [Nasdanika CLI](doc/cli/index.html) as part of the build process. The root models reference the generated models. 
* The site content and the Eclipse help were generated as part of the build process by Nasdanika CLI as well. 

The models and the build file (pom.xml) can be found in the [Tool Suite doc bundle on GitHub](https://github.com/Nasdanika/release/tree/master/tool-suite/doc). 
