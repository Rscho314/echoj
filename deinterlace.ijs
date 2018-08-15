NB. stacks subfields on top of each other
NB. 3 channels (RGB)
stackfields3=: 3 : 0
,"3 (> 4 4 ; 4 4) {."2 ;. 3 y
)
NB. 1 channel (RGB as int or grayscale)
stackfields1=: 3 : 0
(> 4 4 ; 4 4) {."2 ;. 3 y
)

NB. usage: x=0 | 3 | 6 | 9 (field id) y=original image
getfield3=: 4 : 0
((0 0 , x) ,: 144 180 3) ];.0 y
)

NB. usage: x=0 | 1 | 2 | 3
getfield1=: 4 : 0
|: ,"1/ ((0 0 , x) ,: 144 180 1) ];.0 y
)
