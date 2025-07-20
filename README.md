# serein-niri
---
## Note for launching Xorg apps in Niri

- Niri does not have built in support for Xwayland, please consider look at [the Xwayland of Niri wiki](https://github.com/YaLTeR/niri/wiki/Xwayland).

- But personally I run Xwayland directly and uses a minimal wm like [Openbox](https://openbox.org/).

- An example uses case for launching games in Steam

First launch Xwayland in terminal:

```bash
Xwayland
```

Then we use [Openbox](https://openbox.org/) or any other similar options as a wm because if you don't run an X11 window manager, Xwayland will close and re-open its window every time all X11 windows close and a new one opens. To prevent this, we use a X11 WM inside as mentioned above, or open some other long-running X11 window.

```bash
env DISPLAY=:0 openbox &
```

Then we launch an app by choice, in this example Steam with nvidia arguments and mangohud:

```bash
env DISPLAY=:0 __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia mangohud steam
```
