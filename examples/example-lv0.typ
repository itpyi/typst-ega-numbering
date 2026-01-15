#import "../src/ega.typ": *

// #set text(font: ("Libertinus Serif", "Songti SC"), size: 12pt)
#show: ega-rules

#align(
  center,
  text(17pt)[
    *Example for the ega-numbering package\ with numbering level 0*
  ]
)

#num-par[
The level of the counter is set by

```typst
#show: dingli-rules.with(level: 0)
```
]<level>

= Section

#num-par[
  In this section, we discuss ...
]

#num-par([Theorem])[
  This is a theorem ...
]

== Subsection

#num-par[
We discussed how to set the level of the counter in @level.
]



