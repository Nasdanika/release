### How to use model documentation

In order to get the maximum of Nasdanika modeling tools it is important to understand the structure of the models being created.
Such structure is called a meta-model - a model explaining the structure of another model.

The model documentation serves as an educational and reference resource about the structure of Nasdanika models. 
It is generated from the models and as such is always in sync with the model structure/code.

Modeling can be compared to speaking or writing. In modeling models are composed of model elements and in speaking or writing sentences are composed of words. 
Using this metaphor the model documentation is a dictionary - it explains meaning of model elements.

#### Meta-model concepts

Nasdanika models are defined in [EMF Ecore](https://www.vogella.com/tutorials/EclipseEMF/article.html). 

Below is a very succinct description of essential Ecore model elements:

* EPackage - a container of EClassifiers
* EClassifiers
    * EClass - defines structure of model elements such as, say, ${ecore-doc/vinci-app/ActionBase}. Model elements are instances of EClasses.  
        * EAttribute - EClass may define zero or more attributes. For example ``tooltip`` is an attribute of textual type. During modeling attributes are edited in the properties view. Attributes may be defined to hold one or multiple values. 
        * EReference - references other model elements. References may be containing and non-containing. For example, Action contains its content, but ${ecore-doc/vinci-app/ActionMapping} references actions defined/contained elsewhere. Non-containment references are edited via property views and diagrams. Containment references are edited via diagram, tree, and other representations. References may point to one or more model elements. Also references may be uni- and bi-directional. 
        * EOperation - something that class instances can "do". Not available via modeling tools directly, but can be exposed by developers via context menus and other UI elements.
    * EEnum - enumeration of things. E.g. colors or pre-defined sizes.
    * EDataType - reference to a Java type.
* EAnnotation - some additional information attached to Ecore model elements. In Nasdanika models EAnnotations are used to document model elements and to modify behavior of code which works with the models.       

--- Work in progress ---

Models are organized into       

tooltips links, compoartments, package and class context diagrams