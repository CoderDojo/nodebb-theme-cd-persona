# CoderDojo Persona Theme for NodeBB

The CoderDojo Persona theme is a fork [Persona](https://github.com/psychobunny/nodebb-theme-persona) base theme.
A fork is currently required, rather than using NodeBB's theme inheritence model, as the Persona theme already inherits from the Vanilla theme, and [more than one level of inheritence is not currently supported.](https://community.nodebb.org/topic/5395/basetheme-causing-issues/2)

See [NodeBB Theme Documentation](https://docs.nodebb.org/en/latest/themes/create.html) for more information. Also search for `nodebb-theme` on [NPM](https://www.npmjs.com/search?q=nodebb-theme) for inspiration.

Reference variables in cd-variables.less for colour scheme.

## Features

* overrides the login template to show the CoderDojo logo & text
* overrides the login language file to be CoderDojo specific (only English for now)
* sets up styles consistant with CoderDojo site
* adds CoderDojo navbar to header

## Local development

This guide assumes that database dependencies have been installed and are running. (Mongo or Redis)

* git clone this theme somewhere locally, e.g.

```
~/work $ git clone git@github.com:CoderDojo/nodebb-theme-cd-persona.git
~/work $ cd nodebb-theme-cd-persona
~/work/nodebb-theme-cd-persona $ npm install
~/work/nodebb-theme-cd-persona $ npm link .
```

* git clone the sso plugin somewhere locally, e.g.

```
~/work $ git clone git@github.com:CoderDojo/nodebb-plugin-sso-coderdojo.git
~/work $ cd nodebb-plugin-sso-coderdojo
~/work/nodebb-theme-cd-persona $ npm install
~/work/nodebb-theme-cd-persona $ npm link .
```

* git clone NodeBB, and link plugin and theme

```
~/work $ git clone -b v0.7.x https://github.com/NodeBB/NodeBB.git
~/work $ cd NodeBB
~/work/NodeBB $ npm install
~/work/NodeBB $ npm link nodebb-theme-cd-persona
~/work/NodeBB $ npm link nodebb-plugin-sso-coderdojo
```

* copy coderdojo setup data, and install nodebb

```
~/work/NodeBB $ cp ./node_modules/nodebb-theme-cd-persona/install/data/* ./install/data
~/work/NodeBB $ ./nodebb setup
~/work/NodeBB $ ./nodebb start
```

* choose theme using admin page

```
http://localhost:4567/admin
Appearance >> Themes >> <Use CD-Persona Theme>
Restart NodeBB (either from admin Dashboard >> Restart or terminal ./nodebb restart)
```

* upload logo using admin page

```
http://localhost:4567/admin
Site Logo >> Upload Logo
Logo can be found at nodebb-theme-cd-persona/static/images/logo.png
```
* other suggested admin settings

```
http://localhost:4567/admin
Settings >> General >> Site Tite: forum
Setting >> General >> Browser Title: CoderDojoBB
Settings >> User >> Allow local registration: disabled
Settings >> User >> Allow local login: disabled (make sure sso plugin is working first, or you could lock yourself out!)
```
