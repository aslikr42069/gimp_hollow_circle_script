(define
 (draw-a-rect image drawable radius)
 (gimp-context-push)
 (gimp-selection-border image radius)
 (gimp-drawable-edit-fill drawable 0)
 (gimp-selection-none image)
 (gimp-displays-flush)
 (gimp-context-pop)
)



(script-fu-register "draw-a-rect"
                    "Draw Rectangle"
                     "Creates a hollow ellipse"
                     "Lorena"
                     "Copyright 2021, Lorena"
                     "30 May 2021"
                     "" 
                     SF-IMAGE      "Image"                          1
                     SF-DRAWABLE   "Layer"                          1
                     SF-VALUE      "Perimeter Outline Radius"      "5"
                     )

(script-fu-menu-register "draw-a-rect" "<Image>/File/Create")
