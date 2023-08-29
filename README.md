# BuDDy

BuDDy is a BDD package originaly created by Jørn Lind-Nielsen
[[Lind-Nielsen99](#references)]. This repository is a continuation of
[jgcoded/BuDDy](https://github.com/jgcoded/BuDDy) (now archived) which adds
CMake support for easy modern compilation and integration into your project.

## Preface

BuDDy was originally developed by Jorn Lind-Nielsen as a part of his PhD thesis.
After using BuDDy as a BDD library for long time (while getting some support
from Jorn through email), I have been suggested by Jorn to take ownership of the
project and move it to SourceForge. I invite all users who are interested to
participate in the development to contact me. (I always have desired tasks /
features awaiting...) I hope that BuDDy will prosper under my management.

-- _Haim Cohen_ (haimcohen@users.sourceforge.net)

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [BuDDy](#buddy)
    - [Preface](#preface)
    - [Getting Started](#getting-started)
    - [References](#references)

<!-- markdown-toc end -->

## Getting Started

To use this repository in your project, clone it into your folder of external
dependencies. If your project already is a Git repository, then add this as
a submodule.

```bash
git submodule add https://github.com/SSoelvsten/buddy external/buddy
git submodule update --init
```

Include the following line in your project’s _CMakeLists.txt._

```cmake
add_subdirectory (external/buddy buddy)
```

Finally, you link your executable target to _BuDDy_ in the CMakeLists.txt file as follows.

```cmake
add_executable(<target> <source.cpp>)
target_link_libraries(<target> buddy)
```

## References

- [[Lind-Nielsen99](http://www.itu.dk/research/buddy/)]
  Jørn Lind-Nielsen. “_BuDDy: A binary decision diagram package_”. Technical
  report, _Department of Information Technology, Technical University of
  Denmark_, 1999.
