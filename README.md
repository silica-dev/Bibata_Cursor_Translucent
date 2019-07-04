<a href="https://github.com/Silicasandwhich/Bibata_Cursor_Translucent">
  <p align="center"><img title="Bibata" src="https://github.com/Silicasandwhich/Bibata_Cursor_Translucent/blob/master/image/Bibata.png"></p>
</a>

[![HitCount](http://hits.dwyl.io/Silicasandwhich/Bibata_Cursor_Translucent.svg)](http://hits.dwyl.io/Silicasandwhich/Bibata_Cursor_Translucent)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GitHub contributors](https://img.shields.io/github/contributors/Silicasandwhich/Bibata_Cursor_Translucent.svg)](https://GitHub.com/Silicasandwhich/Bibata_Cursor_Translucent/graphs/contributors/)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Silicasandwhich/Bibata_Cursor_Translucent/graphs/commit-activity)
![PRs](https://img.shields.io/badge/PRs-Welcome-red.svg)
[![Code Of Conduct](https://img.shields.io/badge/COC-yes-pink.svg)](https://github.com/Silicasandwhich/Bibata_Cursor_Translucent/blob/master/CODE_OF_CONDUCT.md)

![Open Source Love png1](https://badges.frapsoft.com/os/v1/open-source.png?v=103)
![Bash Shell](https://badges.frapsoft.com/bash/v1/bash.png?v=103)

[![GitHub forks](https://img.shields.io/github/forks/Silicasandwhich/Bibata_Cursor_Transulent.svg?style=social&label=Fork&maxAge=2592000)](https://github.com/Silicasandwhich/Bibata_Cursor_Transulent/network)
[![GitHub watchers](https://img.shields.io/github/watchers/Silicasandwhich/Bibata_Cursor_Transulent.svg?style=social&label=Watch&maxAge=2592000)](https://GitHub.com/Silicasandwhich/Bibata_Cursor_Transulent/watchers/)
[![GitHub stars](https://img.shields.io/github/stars/Silicasandwhich/Bibata_Cursor_Transulent.svg?style=social&label=Star&maxAge=2592000)](https://GitHub.com/Silicasandwhich/Bibata_Cursor_Transulent/stargazers/)
[![GitHub followers](https://img.shields.io/github/followers/Silicasandwhich.svg?style=social&label=Follow&maxAge=2592000)](https://github.com/Silicasandwhich?tab=followers)

<br />

## How to get Project Message and Updates

I'll work on a way to get messages out to everybody, but for now you're just going to have to follow this repository.


## Table Of Contents
<!--ts-->
   * [How to get Project Message and Updates](#how-to-get-project-message-and-updates)
   * [Table Of Contents](#table-of-contents)
   * [What is Bibata Translucent?](#what-is-bibata-translucent)
   * [Gallery](#Gallery)
   * [Dependencies](#dependencies)
      * [Build dependencies](#build-dependencies)
   * [Installation](#installation)
      * [Build From Source Code](#build-from-source-code)
      * [Package](#package)
      * [Windows](#windows)
   * [Quick Fixes](#quick-fixes)
   * [Work in Progress](#work-in-progress)
   * [Bugs](#bugs)
   * [License & Terms](#license-and-terms)
   * [Getting help](#getting-help)
   * [Contributions & Suggestions](#contributions-and-suggestions)
   * [Looking For Another Bibata?](#looking-for-another-bibata)
      * [Bibata Extra](#bibata-extra)
      * [Bibata Adapta](#bibata-adapta)
      * [Bibata](#bibata)
   * [Contributors](#contributors)
   * [Maintainers](#maintainers)
<!--te-->

**Who Am I?**

I'm an open source enthusiest and hobbyist programmer who wants to improve the ui/ux of linux. I've been contributing a lot to the original bibata_cursor repo because there's many issues on there that I as an ameteur programmer/graphic designer can handle. 



## What is Bibata Translucent

|      Name      |     Description     |
| :-----------:  | :------------------ |
|     Bibata Translucent     | Bibata translucent is a translucent flavor of the original ```bibata_cursor``` cursor set.|
|   Bibata Ghost   | Dark translucent Theme  |
|   Bibata Spirit   | Light translucent Theme  |
|   Bibata Tinted | Yellowish-Orange translucent Theme |

## Gallery

<p align="center"><img title="Bibata Ghost" src="https://github.com/Silicasandwhich/Bibata_Cursor_Translucent/blob/master/image/Bibata_Ghost.png">
</br><sub>Bibata Ghost</sub></p>
<p align="center"><img title="Bibata Spirit" src="https://github.com/Silicasandwhich/Bibata_Cursor_Translucent/blob/master/image/Bibata_Spirit.png">
</br><sub>Bibata Spirit</sub></p>
<p align="center"><img title="Bibata Tinted" src="https://github.com/Silicasandwhich/Bibata_Cursor_Translucent/blob/master/image/Bibata_Tinted.png">
</br><sub>Bibata Tinted</sub></p>

## Dependencies

### Build dependencies

* [Xcursorgen](https://github.com/freedesktop/xcursorgen)
* [Inkscape](https://gitlab.com/inkscape/inkscape)
* [gnome-themes-standard](https://launchpad.net/ubuntu/+source/gnome-themes-standard)

## Installation

### Build From Source Code (linux)

1. Make sure you have installed all [Dependencies](#dependencies).

2. **Build & Install**:
    ```bash
    $git clone https://github.com/Silicasandwhich/Bibata_Cursor_Transulent.git
    $cd Bibata_Cursor_translucent/
    $chmod +x build.sh
    $./build.sh
    $chmod +x ./Installer_Bibata.sh
    ```
    Install (As ROOT User)
    ```bash
    $sudo ./Installer_Bibata.sh
    ```
    Install (As Local User)
    ```
    $./Installer_Bibata.sh
    ```
3. **Uninstall**:

     Using ```Script``` :

      ```bash
      #From ROOT
      $sudo ./Installer_Bibata.sh
      #From Local User
      $./Installer_Bibata.sh
      ```

     Without ```Script``` :
     ```bash
     #From ROOT
     $sudo rm -r /usr/share/icons/Bibata_*
     #from Local User
     $rm -r ~/.icons/Bibata_*
     #Note : Your replace * with flavor Name to remove individual
     ```
  ### Packages (linux)

  I am working on creating packages for all major distributions, but for now you will have to build from source.

  ### Windows

  The Windows cursors are stored in the Windows directory of each flavor. 

## Quick Fixes
Most problems can be fixed by following instructions in the original ```Bibata_Cursor``` readme. 

## Work in progress

| Completed Tasks | ![](https://github.com/adapta-project/adapta-github-resources/blob/master/images/check-on.png?raw=true) | In Progress | ![]( https://github.com/adapta-project/adapta-github-resources/blob/master/images/check-off.png?raw=true) |
|-----------------|---------------------------------------------------------------------------------------------------------|-------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Create Bibata Translucent cursor set | ![](https://github.com/adapta-project/adapta-github-resources/blob/master/images/check-on.png?raw=true) | Fix inconsistencies on shadows in general | ... |
|  |  | Add to AUR | ... |
|  |  | Debian package | ... |
|  |  | Fedora package | ... |
|  |  | Ubuntu repo | ... |
|  |  | Port to ```Windows``` | ... |
|  |  | Make more cursors actually transparent | (most are but I can't find ways to deal with some of them) |
|  |  | Fix shadows on animated cursors | ... |

## Bugs

Bugs should be reported [here](https://github.com/Silicasandwhich/Bibata_Cursor_Translucent/issues) on the Github issues page.


## License and Terms

```Bibata Cursor SET``` Collection is available under the terms of the GPL-3.0 license See [`LICENSE`](https://github.com/Silicasandwhich/Bibata_Cursor_Translucent/blob/master/LICENSE) for details.

## Getting help

You can create a issue, I will help you.

## Contributions and Suggestions

Any suggestions for features and contributions to the continuing code masterelopment can be made via the issue tracker or code contributions via a ```Fork``` & ```Pull requests```.
###

## Looking For Another Bibata

###### Bibata Extra

Bibata Extra **</>** and maintained by @KaizIqbal you find it at [GitHub](https://github.com/KaizIqbal/Bibata_Extra_Cursor)

###### Bibata Adapta

Bibata Adapta **</>** and maintained by @cscs you find it at [Gitlab](https://gitlab.com/cscs/Bibata_AdaptaBreath_Cursors)

###### Bibata

Bibata **</>** Is the original repo that this was forked from. It is maintained by @KaizIqbal and You can find it on [GitHub](https://github.com/KaizIqbal/Bibata_Cursor)
## Contributors
Thanks goes to these wonderful people for their work on the original ```Bibata_Cursor``` Repository

|                |                |                |                |                |                |       
| :------------- | :------------- | :------------- | :------------- | :------------- | :------------- |
| [<img src="https://avatars3.githubusercontent.com/u/6747270?s=400&v=4" width="100px;"/><br /><sub><b>mleyen</b></sub>](https://github.com/mleyen)      | [<img src="https://avatars2.githubusercontent.com/u/14180792?s=400&v=4" width="100px;"/><br /><sub><b>eti0</b></sub>](https://github.com/eti0)       | [<img src="https://avatars0.githubusercontent.com/u/6218030?s=400&v=4" width="100px;"/><br /><sub><b>mmetak</b></sub>](https://github.com/mmetak) | [<img src="https://avatars0.githubusercontent.com/u/11244308?s=400&v=4" width="100px;"/><br /><sub><b>alex285</b></sub>](https://github.com/alex285) | [<img src="https://avatars0.githubusercontent.com/u/20587163?s=400&v=4" width="100px;"/><br /><sub><b>commonsourcecs</b></sub>](https://github.com/commonsourcecs) | [<img src="https://avatars0.githubusercontent.com/u/24286590?s=400&v=4" width="100px"/><br /><sub><b>KaizIqbal</b></sub>](https://github.com/KaizIqbal) |

Maintainers
-----------
 <p align="center"></br>
<img src="https://avatars0.githubusercontent.com/u/43558271?s=460&v=4" width="100px"/><br /><sub ><b><a href="https://www.github.com/Silicasandwhich">SilicaSandwhich</a></b></sub>
</p>
