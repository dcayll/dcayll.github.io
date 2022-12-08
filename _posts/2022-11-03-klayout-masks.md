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

This post is to describe how to perform certain tasks in klayout to create photolithography masks for ultrasonic sensors for my Ph.D. 



## To create a hexagonal array: 
___
1. Create a cell with a pcell array of 2 circles and space them out according to the geometry required to create a hexagonal array. Refer to excel sheet for dimensions.
2. Create an array of the above pcell array to fill the backplate. refer to the excel doc for spacing of this array.
3. center the array of holes with the backplate circle using align tool. Make sure you're on the level of the array of holes, then select both the array and the backplate circle.
edit -> selection -> align and then center for x and y direction.
4. Once all possible circles and spacings are determined, flatten all of the "SubHole" circles.
 - Copy the base cell just in case it gets deleted.
 - The level you are at when you do this matters. Flatten when at the array of subHoles (level 1)
5. Now that the subholes are flattened, they can be subtracted from a larger circle to create the backplate.
 - First select the large backplate circle, then all the smaller circles
 - Next, select edit -> selction -> first into inside/ outside others
 - this will create an outline object and then also the individual hole
6. Next, use the search and replace tool to find partial circles and remove them from the circle array. Find objects that have less area than what would be expected for a full circle.


## For alignment of things to arbitrary origin
___
1. Start with cell centered around origin
2. Place in the general location the final cell will be at
3. Then subtract levels until you see the cell you just added and double click it to see the location
4. From there, set the exact location it should be at
  - Note the location of the cell. It will be necessary for the next step
5. Go back to the original cell, use "edit -> selection -> move to" and input the location noted in the previous step
6. Now return to the overarching cell where the subcell is pasted into and move the smaller cell into the origin, and the alignment should be perfect with the subcell origin at the origin of the overarching cell
7. This can be repeated for all cells in an overarching cell, as long as it makes sense to use a single origin for all of them


## Random Notes:
___
- Search and replace feature doesn't accept expressions. you must compute the area or perimeter you'd like to search for and type in the number.