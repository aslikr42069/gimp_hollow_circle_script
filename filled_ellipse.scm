(define
 (draw-an-ellipse image drawable radius)
 (define x (car (cdr (gimp-selection-bounds image))))
 (define y (car (cdr (cdr (gimp-selection-bounds image)))))
 (define width (- (car (cdr (cdr (cdr (gimp-selection-bounds image))))) x))
 (define height (- (car (cdr (cdr (cdr (cdr (gimp-selection-bounds image)))))) y))
 (gimp-context-push)
 (gimp-image-select-ellipse image 2 x y width height)
 (gimp-selection-border image radius)
 (gimp-drawable-edit-fill drawable 0)
 (gimp-selection-none image)
 (gimp-displays-flush)
 (gimp-context-pop)
)



(script-fu-register "draw-an-ellipse"
                    "Draw Ellipse"
                     "Creates a hollow ellipse"
                     "Lorena"
                     "Copyright 2021, Lorena"
                     "30 May 2021"
                     "" 
                     SF-IMAGE      "Image"                          1
                     SF-DRAWABLE   "Layer"                          1
                     SF-VALUE      "Perimeter Outline Radius"      "5"
                     )

(script-fu-menu-register "draw-an-ellipse" "<Image>/File/Create")
