# Pictures

Free domain, or free to use and share.

[metadata.json](./metadata.json) lists the pictures, with some metadata:

```json
  {
    "file": "petanque.jpg",
    "tags": "occupapp",
    "reference": "https://www.flickr.com/photos/wallyg/824090915/in/photostream/",
    "license": "CC BY-NC-ND 2.0",
    "author": "Wally Gobetz",
    "height": 1745,
    "width": 2620
  },
```

All images are available in eight widths (see
[why](https://medium.com/hceverything/applying-srcset-choosing-the-right-sizes-for-responsive-images-at-different-breakpoints-a0433450a4a3)):

- Original: https://github.com/severo/pictures/raw/master/images/petanque.jpg
- 1920px:
  https://github.com/severo/pictures/raw/master/images,w_1920/petanque.jpg
- 1600px:
  https://github.com/severo/pictures/raw/master/images,w_1600/petanque.jpg
- 1366px:
  https://github.com/severo/pictures/raw/master/images,w_1366/petanque.jpg
- 1024px:
  https://github.com/severo/pictures/raw/master/images,w_1024/petanque.jpg
- 768px: https://github.com/severo/pictures/raw/master/images,w_768/petanque.jpg
- 640px: https://github.com/severo/pictures/raw/master/images,w_640/petanque.jpg
- 320px: https://github.com/severo/pictures/raw/master/images,w_320/petanque.jpg

Use the images as a simple image:

```html
<img
  src="https://github.com/severo/pictures/raw/master/images/petanque.jpg"
  alt="NYC - Brooklyn - Boerum Hill: Grand Petanque Tournament"
/>
```

or as a responsive image:

```html
<picture>
  <img
    sizes="(max-width: 1920px) 100vw, 1920px"
    srcset="
      https://github.com/severo/pictures/raw/master/images,w_320/petanque.jpg   320w,
      https://github.com/severo/pictures/raw/master/images,w_640/petanque.jpg   640w,
      https://github.com/severo/pictures/raw/master/images,w_768/petanque.jpg   768w,
      https://github.com/severo/pictures/raw/master/images,w_1024/petanque.jpg 1024w,
      https://github.com/severo/pictures/raw/master/images,w_1366/petanque.jpg 1366w,
      https://github.com/severo/pictures/raw/master/images,w_1600/petanque.jpg 1600w,
      https://github.com/severo/pictures/raw/master/images,w_1920/petanque.jpg 1920w
    "
    src="https://github.com/severo/pictures/raw/master/images,w_1920/petanque.jpg"
    alt="NYC - Brooklyn - Boerum Hill: Grand Petanque Tournament"
  />
</picture>
```

Regenerate all the images with:

```bash
./build.sh
```
