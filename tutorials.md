- [Where is the icons theme customization?](#where-is-the-icons-theme-customization)
- [Suru++](#suru)
  - [How to change the colors of folders and of all 16px icons?](#how-to-change-the-colors-of-folders-and-of-all-16px-icons)
  - [How to enable gradient colours of Suru++?](#how-to-enable-gradient-colours-of-suru)
- [Suru++ Asprómauros](#suru-aspr%C3%B3mauros)
  - [How to change the colors of all 16px icons?](#how-to-change-the-colors-of-all-16px-icons)
  - [How to enable gradient colours of Suru++ Asprómauros?](#how-to-enable-gradient-colours-of-suru-aspr%C3%B3mauros)
- [How to export icons theme?](#how-to-export-icons-theme)
- [Where are exported icons theme?](#where-are-exported-icons-theme)
- [How to import unlisted icons theme to Oomox?](#how-to-import-unlisted-icons-theme-to-oomox)

### Where is the icons theme customization?

<p align="center">
  <img src="https://raw.githubusercontent.com/gusbemacbe/suru-plus/beta/examples/Oomox%20%E2%80%93%20Example%201%20%E2%80%93%20Icons%20Theme.gif" alt="Example 1 – Icons theme customization" width="80%">
</p>

### Suru++ 

#### How to change the colors of folders and of all 16px icons?

<p align="center">
  <img src="https://raw.githubusercontent.com/gusbemacbe/suru-plus/beta/examples/Oomox%20%E2%80%93%20Example%202%20%E2%80%93%20Icons%20Colours.gif" alt="Example 2 – Icons colours" width="80%">
</p>

#### How to enable gradient colours of Suru++?

It is important to observe that icons of `actions`, `panel` and `status` do not support gradient colour.

<p align="center">
  <img src="https://raw.githubusercontent.com/gusbemacbe/suru-plus/beta/examples/Oomox%20%E2%80%93%20Example%203%20%E2%80%93%20Gradient%20Colours.gif" alt="Example 3 – Gradient Colours" width="80%">
</p>

### Suru++ Asprómauros

#### How to change the colors of all 16px icons?

It is important to observe that this icons set do not have colourful folders. Now folders are fully monochromatic and support gradient colour. 

<p align="center">
  <img src="https://raw.githubusercontent.com/gusbemacbe/suru-plus/beta/examples/Oomox%20%E2%80%93%20Example%204%20%E2%80%93%20Suru%2B%2B%20Aspr%C3%B3mauros%20Colours.gif" alt="Example 4 – Suru++ Asprómauros Colours" width="80%">
</p>

#### How to enable gradient colours of Suru++ Asprómauros?

Like Suru++, it is important to observe that icons of `actions`, `panel` and `status` do not support gradient colour.

<p align="center">
  <img src="https://raw.githubusercontent.com/gusbemacbe/suru-plus/beta/examples/Oomox – Example 5 – Suru%2B%2B Asprómauros Gradient Colours.gif" alt="Example 5 – Suru++ Asprómauros Gradient Colours" width="80%">
</p>

### How to export icons theme?

<p align="center">
  <img src="https://raw.githubusercontent.com/gusbemacbe/suru-plus/beta/examples/Oomox – Example 6 – Export icons.gif" alt="Example 6 – Export icons theme" width="80%">
</p>

### Where are exported icons theme?

* If you exported Suru++ and Suru++ Asprómauros, see the reference [How to export icons theme?](#how-to-export-icons-theme), in the which you choose the path you wish to export.
* If you exported non-Suru++ icons theme, the icons themes are exported by default into `~/.icons/`.

### How to import unlisted icons theme to Oomox?

* There is no option of importing unlisted icons theme to Oomox because they do not have plugins to work on Oomox. 
* You need to create the own plugins for unlisted icons theme.
* If you need to modify ePapirus, Papirus-Light and Papirus-Dark, you can duplicate and modify the plugin called `icons_papirus` which is located in `oomox/plugins` or request to [@SmartFinn](/SmartFinn). 
* If you need to modify eSuru++ and Suru++ Dark, you can duplicate and modify the plugin called `icons_suruplus` which is located in `oomox/plugins` or request to [@gusbemacbe](/gusbemacbe). 
* If the certain icons theme is unlisted in Oomox, you must request to the author of that icons theme. 

**IMPORTANT OBSERVATION:** Do not forget of copying the icons theme to `oomox/plugins/icons_NEW_PLUGIN/PASTE_ICONS_THEME_HERE` if you do not want to add to `.gitmodules`!
