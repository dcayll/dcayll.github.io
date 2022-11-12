---
title: "Notes on creating masks for MEMS devices on klayout"
excerpt: ""
categories:
  - engineering
tags:
  - klayout
  - photolithography-masks
  - MEMS
---

Notes
- Search and replace feature doesn't accept expressions. you must compute the area or perimeter you'd like to search for and type in the number.
-

To create backplate holes:
1. Create a cell with a pcell array of 2 circles and space them out according to the geometry required to create a hexagonal array. Refer to excel sheet for dimensions.
2. Once all possible circles and spacings are determined, flatten all of the "SubHole" circles.
3. Now that the subholes are flattened, they can be subtracted from a larger circle to create the backplate. 
