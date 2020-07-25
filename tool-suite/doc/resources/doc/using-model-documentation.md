### How to use model documentation

In order to get the maximum value of Nasdanika modeling tools it is important to understand the structure of the models being created.
Such structure is called a meta-model - a model explaining the structure of another model.

The model documentation serves as an educational and reference resource about the structure of Nasdanika models. 
It is generated from the models and as such is always in sync with the model structure/code.

Modeling can be compared to speaking or writing. In modeling models are composed of model elements and in speaking or writing sentences are composed of words. 
Using this metaphor the model documentation is a dictionary - it explains meaning of model elements.

#### Meta-model concepts

Nasdanika models are defined in [EMF Ecore](https://www.vogella.com/tutorials/EclipseEMF/article.html). 

Below is a succinct description of essential Ecore model elements:

* EPackage - a container of EClassifiers
* EClassifiers
    * EClass - defines structure of model elements such as, say, ${ecore-doc/vinci-app/ActionBase}. Model elements are instances of EClasses.  
        * EAttribute - EClass may define zero or more attributes. For example ``tooltip`` is an attribute of textual type. During modeling attributes are edited in the properties view. Attributes may be defined to hold one or multiple values. 
        * EReference - references other model elements. References may be containing and non-containing. For example, Action contains its content, but ${ecore-doc/vinci-app/ActionMapping} references actions defined/contained elsewhere. Non-containment references are edited via property views and diagrams. Containment references are edited via diagram, tree, and other representations. References may point to one or more model elements. Also references may be uni- and bi-directional. 
        * EOperation - something that class instances can "do". Not available via modeling tools directly, but can be exposed by developers via context menus and other UI elements.
    * EEnum - enumeration of things. E.g. colors or pre-defined sizes.
    * EDataType - reference to a Java type.
* EAnnotation - some additional information attached to Ecore model elements. In Nasdanika models EAnnotations are used to document model elements and to modify behavior of code which works with the models.       

#### Model documentation structure

Model documentation is a tree of EPackages and contained EClassifiers.

##### Diagrams 
 
EPackage and EClass documentation pages feature UML diagrams.

EClass'es on package and class context diagrams are depicted using an extended UML notation - in addition to attributes (fields) and operations (methods) compartment there is also
a references compartment between the above two.
This compartment contains EReferences which can not be shown on the diagram as an arrow because the target element is not present in the diagram. 
For example, on a package diagram references to classes in other packages would be shown in the references compartment, and references to classes in the same package would be shown as arrows.

EClassifers on diagrams have tooltips which show the first sentence of the element documentation. It helps in understanding the diagram without navigating to the Eclassifers pages.
Tooltips appear on mouse-over.

Also EClassifiers on diagrams are linked to documentation pages of respective EClassifiers - a mouse click on a diagram shape opens documentation page.     

##### EPackage 

EPackage documentation features a package diagram and a list of EClassfiers in the package.
The diagram shows EPackage EClassifiers and their references to each other. References to and from EClassifiers in other packages are not shown.

##### EClass

EClass documentation provides a description of the class, instance class name optionally linked to Javadoc, a context diagram, member documentation, referrers and usage documentation.
 
The context diagram contains the EClass and its related elements - super and sub classes, referenced and referencing elements, and dependencies, e.g. data types and enumerations used as attribute types, operation return and exception types, and parameter types. 
Related elements are shown in a different color from the context element.

Referrers list contains classes which have inbound references to this class.

Usage information contains a list of all known classes using this classifier in EOperations - return type and thrown exceptions, or EParameters.

##### EEnum

EEnum documentation provides a description of the enumeration, instance class name optionally linked to Javadoc, a table of elements with descriptions of each element, and usage information.

Usage information contains a list of all classes using this enumeration in their EAttributes, EOperations return type, and EParameters. 

##### EDataType

EDataType documentation provides a description of the data type, instance class name optionally linked to Javadoc, and usage information.

Usage information contains a list of all classes using this data type in EAttributes, EOperations return type, and EParameters. 
