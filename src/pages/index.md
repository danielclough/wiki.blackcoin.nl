---
title: Home
---
## An awesome wiki for Blackcoin!


### To Contribute to the Wiki -> Learn these (in order of importance)

1 ⚡️ Get Started with [Markdown](https://daringfireball.net/projects/markdown/syntax)

1 🔥 Go Pro with [MDSv](https://alexxnb.github.io/svelte-preprocess-markdown/)

---

By creating a MD file inside your `/src/pages/` folder it will be created as a page; with the path defined by the filename.
Inside all docs files you can define the following options:

<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>Key</th>
      <th>Required?</th>
      <th>Description</th>
    </tr>
    <tr>
      <td>title</td>
      <td>Yes</td>
      <td>Page title</td>
    </tr>
    <tr>
      <td>description</td>
      <td>No</td>
      <td>Page description</td>
    </tr>
    <tr>
      <td>image</td>
      <td>No</td>
      <td>Used for og:image</td>
    </tr>
  </table>
</div>

### Example:

```md
---
title: 'My Example'
description: 'A simple description for this page'
image: /banner.jpeg
---

Wow, this is a nice page!
```

## Embeding files

<iframe width="1920" height="1080" src="https://www.youtube.com/embed/Zl6DizyZgFY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Navigation

Add your new page to the `/src/includes/sidebar.md` file.

```md title=sidebar.md
* Blackcoin Today
    - [Overview](blackcoin-today/overview)
    - [Services](blackcoin-today/services)
    - [POSv3](blackcoin-today/posv3)
* History
    - [History](history/history)
    - [POSv2](history/posv2)
```

You can also add external links:

```md
* [Github](https://github.com/danielclough/blackcoin-wiki)
```
