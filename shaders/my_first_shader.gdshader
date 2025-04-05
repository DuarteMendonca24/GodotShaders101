shader_type canvas_item;
// canvas_item tells godot it is for 2D, spatial is for 3D
// ivec vector for int , bvec vector for bool

void vertex() {
	// Called for every vertex the material is visible on.
	// Acessing the top left corner vertice, remember there are 4 vertices, its
	// a rectangle drawn by two triangles
	if (VERTEX.x < 0.0 && VERTEX.y < 0.0){
		VERTEX += vec2(64.0, 0.0);
	}
}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
