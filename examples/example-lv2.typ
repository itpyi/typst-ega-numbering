#import "../src/ega.typ": *

#set heading(numbering: "1.")

#show: ega-rules.with(level: 2)

#align(
  center,
  text(17pt)[
    *Example for the ega-numbering package\ with numbering level 2*
  ]
)

#num-par[
The level of the counter is set by

```typst
#show: ega-rules.with(level: 2)
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

= Section 

#num-par[
  #lorem(20)

  #lorem(30)
]

#num-par[#lorem(20)]
