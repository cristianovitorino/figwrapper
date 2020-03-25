<p align="center">
    <img src="https://raw.githubusercontent.com/cristianovitorino/figwrapper/master/Images/icon.png"
    alt="icon"/>
</p>

<h1 align="center">
    Figwrapper
</h1>
    
`Figwrapper` is a script that integrates the [Figma](https://www.figma.com/) design tool (web version) generated by [nativefier](https://github.com/jiahaog/nativefier) into a complete, fully integrated application for Linux. It uses the [Electron](https://github.com/electron/electron) wrapper generated, which is further customized, to behave like a proper Linux app.

<h1 align="center">
    Why not just use nativefier?
</h1>

Convenience. Because I use it a lot and wanted a full Linux integration and automated install. Figwrapper offers improvement over the generated nativefier files, transforms it into a full, proper Linux application, allows for a quicker workflow due to it's full Linux integration, with proper Linux standard file system paths, system-wide icon and executable binary, proper .desktop. You can manipulate it the way you want through terminal commands, scripts, dmenu/rofi calls, etc and with your WM of choice as well. A systray funcionality/icon is also possible, but currently there is no feature planned for it, therefore it's disabled by default.

It behaves exactly as if you had installed it through your distro's package manager.

<p align="center">
    <img src="https://raw.githubusercontent.com/cristianovitorino/figwrapper/master/Images/screenshot.png"
    alt="screenshot"/>
</p>

## Requirement
* Internet connection.

## Install
**Don't** download the Zip file from the repo, **it will not** download the main binary since it's stored through Git LFS, you need to clone the repo through git. Git LFS is required. Install it through your distro and initialize it with `git lfs install`.

```bash
> git clone https://github.com/cristianovitorino/figwrapper.git
> cd figwrapper
> chmod u+x InstallFigma.sh
> sh ./InstallFigma.sh
```

## Uninstall

```bash
> chmod u+x InstallFigma.sh
> sh ./UninstallFigma.sh
```

## Copyright

Figwrapper © 2020 Cristiano Vitorino, MIT License

<div>
<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/80x15.png" /></a><br />The Figwrapper logo is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>
</div>
<br>

*The Figma logo is a trademark and property of Figma, Inc. and is not affiliated with nor does Figma, Inc. endorse Cristiano Vitorino.*

---
## Donation
If you like my work and want to show some :heart:

<a href="https://www.buymeacoffee.com/cristianovitorino" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
