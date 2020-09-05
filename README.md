# Release

Nasdanika release repository inlcudes:

* Foundation dependencies
* Pipeline definition which builds and deploys all the release projects.
* Nasdanika Tool Suite
* Site

## Release process

Nasdanika release is built from the following repositories/components:

* ``core`` - depends on foundation.
* ``html`` - depends on ``core``.
* ``vinci`` - depends on ``html``.
* ``release`` - contains the release pipeline definition, third party dependencies, the tool suite and the site. 
    * foundation - third-party dependencies, composite repository referencing the base Eclipse/Orbit repositories, developer tools. 
    * pipeline - builds the release end-to-end
    * tool suite - build the tool suite repository and binary
    * site - Nasdanika site model referencing product site models (federated). 
    
All Build jobs for the release participants are parameterized. 
The ``release`` pipeline build is parameterized with the branch name, e.g. ``develop`` or ``release/2020-06``, the default value is ``develop``. 
This the branch name is used for the build deployment directory. 
Builds are deployed to ``https://www.nasdanika.org/builds/<release branch>``.
``https://www.nasdanika.org/`` redirects to ``https://www.nasdanika.org/builds/master``.

The other build jobs take two parameters - release branch and component branch. 
The release branch value defines where to deploy the component, and the component branch defines which branch to build.
In the pipeline build the pipeline specifies which component branch to use and the release value comes from the pipeline release parameter.
When builds are triggered individually, parameters are provided by the person triggering the build.
Default values for the parameters are ``develop`` and ``develop``.

[Release Engineering Reference](release-engineering.pdf).

## Release phases

### Planning

At this phase a new release milestone is created in the release repository
and new features are assigned to the milestone. 
The planning phase typically starts at the same time as the pre-release phase of the previous release
so non-critial issues discovered in the previous release can be scheduled for the new upcoming release.


### Development 

Development is done off feature branches. 
These branches are created off the ``develop`` branch and are merged into the develop branch. 
Any feature branch merges into the develop branch done before creation of release branches off the develop branch are included into the release. 

Minor changes and development of small features can be done on the ``develop`` branch. 
Feature branches are created for larger features following ``feature/<feature name>`` naming convention.
The feature name many include feature issue ID.
Major features may require creation of feature branches in multiple components/repositories including the release repository. 
In this case feature builds can be executed and deployed. 
Also, GitHub projects can be created to track implementation of major features.

Once a feature is implemented and tested its issue on GitHub shall be updated with details and the issue shall be closed.

The development phase can start as soon as there are issues scheduled for the release milestone on GitHub.

Initiation:

* Update the release number in the sources and execute an end-to-end build.
* Upgrade the third party dependencies to the most recent version at the time.
* Update the target platform definition and address compilation and build problems caused by upgrades by either updating the code to be compatible with the new versions of dependencies, or rolling back the problematic upgrades.
 
Creating a feature branch off develop:

```
git checkout -b feature/myfeature develop
```	

Pushing a new branch to remote and tracking it:

```
git push -u origin feature/myfeature
```

Merging to develop deleting the feature branch and pushing to upstream:

```
git checkout develop
git merge --no-ff feature/myfeature
git branch -d feature/myfeature
git push origin --delete feature/myfeature
``` 

The same can be achieved with [EGit](https://wiki.eclipse.org/EGit/User_Guide).

Also delete the feature branch directory on the web server.

### Pre-release

At some time before the release date release branches are created for all components. 
The release branches shall be named ``release/<release name>``, e.g. ``release/2020-06``. 
The pipeline definition in the ``release`` component's release branch is updated to point to the release branches of other components.

Any features scheduled for the release which haven't been merged into ``develop`` before the creation of release branches are 
moved to the backlog or to the next release milestone once it is created.

#### Fixes

Release branches are used only to receive fixes, no new features shall be added to the release branches.

Fixes shall be done in ``fix/<fix name>``. The fix name may contain issue number. 
Trivial fixes may be done directly in the release branches.
 
When fixes are made in the release branches they shall be merged into the develop.

### Release

During release:

* Semantic versions of the components are bumped to reflect the nature of modifications during the release.
* A final release build is executed off the release branches.
* Release branches for all components are merged into ``master`` and ``develop`` and deleted.
* Pipeline definitions are edited to point to master and develop branches of the components respectively.
* Release tags are created. The tag name shall be ``release-<release name>`` or ``release-<version name>-<release name>``. E.g. ``release-2020-06`` or ``release-1.0.5-2020-06`` - this form indicates both the semantic version and the target (release) it was built against.
* End-to-end pipeline builds are executed off the master and develop branches. At this point these builds shall be identical to the release build. 

Tagging:

```
git tag release-1.0.5
git push origin release-1.0.5
```

### Service releases

Hot fixes are delivered via service releases.
Service release branches are created off the release tags. 
Fixes are implemented in fix branches which are merged into the service release branches. 
Once all the fixes for a service release are implemented the release branches are merged into master/develop, tagged and become immutable.

### Release schedule

Nasdanika releases use ``YYYY-MM`` format, e.g. ``2020-06``, components may use semantic versioning. 
``-SRX`` suffix is used for service releases after the release date, e.g. ``2020-06-SR1``. 
New releases are produced quarterly - 03, 06, 09, and 12.
Pre-release phase starts a month before the release date. Respectively, the development phase starts 4 months before the release date.

### Issue management

It is recommended for developers to use [Mylyn](https://wiki.eclipse.org/Mylyn/User_Guide) during development.
