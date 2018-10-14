# Contributing

We are open for new issues and pull requests. By participating in this project, you agree to abide by our [Licence][licence].

If you'd like to contribute and don't understand something here, reach out on our issue, and we will be happy to offer solutions. Additionally, we welcome any attempts to engage with the project - through acquiring the source code, following documentation steps to get started, and then offering feedback in our communications channels on how this process could be improved.

[licence]: /gusbemacbe/suru-plus/blob/master/LICENSE

## Steps

### Fork and Clone

Fork our repository and create a clone to your personal system.

### Branches

After forking our repository, create one branch per bugs or per files or per icons on your personal repository.

The branch name should describe the bug or version ("alpha or "beta" or "new-icons" or "unstable" or "beta-emergency" or "unstable-emergency"). It should start with the bug or version number, and include a very short description of the bug, or a short version of the bug's title.

## Developing

### Gravit Designer

* You must use the app [Gravit Designer](https://gravit.io) to build the new icons.
* Please use our icon template [Suru++ 20 Icon Template](https://github.com/gusbemacbe/suru-plus/blob/beta/templates/Suru%2B%2B%2020%20Template.gvdesign), opening it with Gravit Designer. Export to SVG. 
* Also make two monochromatic and small icons: 
  * one for the folder `16`
  * another for the `symbolic` with the suffix `-symbolic`. 
  * Export both to SVG.
* It is important that not all the features of an icon are supported in the KDE environment. Here are the unsupported features:
  * Blur
  * Drop shadow blur (use the natural drop shadow in Gravit Designer)
  * Inner shadow blur (use the natural inner shadow in Gravit Designer)
  * Masks (instead, cut with intersection or vectorise all the objects)
* You must follow the rules of colours and grids of Sam Hewitt's [Suru Design Guideline](https://snwh.org/suru/guidelines). 
  * **Colours:** As for Suru++20, prefer the vivid colours of Suru plaette
  * **Grids:** A symbol must be resized to 145px and if it is a symbol in form of circle grid, use 165px. 
* We also provide a Suru colours palette. Here is the [Suru Palette](https://github.com/gusbemacbe/suru-plus/blob/beta/templates/Suru%20Palette.gvswatch).
* As for the gradients, we prepare a list of gradients for you: [Suru++ Gradients Palette](https://github.com/gusbemacbe/suru-plus/blob/beta/templates/Suru%2B%2B%20Gradients%20Palette.gvswatch).

### Inkscape

Since you are not a Gravit Designer and Gravit Designer will be no longer free in the next version, I will prepare some instructions. You also must take careful for not breaking the groups.

* Follow the same above steps
* Do not ungroup the two groups - highlighting and shape, because if you ungroup, they will lose the drop shadow. 

### Commit messages

Commit messages should generally follow [this helpful advice](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html), but please start your commit message with:
* "Added [name of icon] icon" if it is only an icon
* "Added [number of icons] icons" if it is more than icons
* "Fixes #nn:" if it is a bug
* "Improved ##nn" if it is an improvement of a file or an icon
  
It eases skimming history later. For this reason, the first line will tend to be longer than the 50 chars suggested in that article, aim to keep it less than 72 chars.

### Submitting the pull request

When you submit a pull request, please use the description field to explain in words the overall intention of your changes. A few sentences should be plenty. It's also ok to reuse the commit message, if you included a lot of discussion there.

At this point you're waiting on us. We like to at least comment on pull requests within among one and three days. We may suggest some changes or improvements or alternatives.

### Reviews

We try to avoid landing anything without at least a cursory review. We firstly may analyse your codes, your icons or anything else if they must improve. 

### Merging

When a pull request has passed review, the reviewer generally merges.

