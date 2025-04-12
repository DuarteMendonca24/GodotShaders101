shader_type canvas_item;
// canvas_item tells godot it is for 2D, spatial is for 3D
// ivec vector for int , bvec vector for bool

void vertex() {
	// Called for every vertex the material is visible on.
	// Acessing the top left corner vertice, remember there are 4 vertices, its
	// a rectangle drawn by two triangles
	if (VERTEX.x < 0.0 && VERTEX.y < 0.0){
		//VERTEX += vec2(64.0, 0.0);
	}

	if (VERTEX.x < 0.0 && VERTEX.y < 0.0 || VERTEX.x > 0.0 && VERTEX.y > 0.0){
		float speed = 10.0;
		// *10.0 is basically the radius, we can incresae or decrease to make a larger
		// or smaller circle
		//VERTEX += vec2(cos(TIME*speed)*10.0,sin(TIME*speed)*10.0);
	}
	// Makes it go in circles, think of the trignometric circle, sin between
	// -1 and 1 in the y axis and cos between -1 and 1 in the x axis
	//VERTEX += vec2(cos(TIME)*100.0,sin(TIME)*100.0);
}

void fragment() {
	// Called for every pixel the material is visible on.

	vec4 color1 = vec4(1.0,0.0,0.0,1.0);
	vec4 color2= vec4(0.0,1.0,0.0,1.0);
	// mix takes 3 values, the first color, the second color, and how much we want
	// to mix them together, if mix percentage is 0, it uses color 1 fully, max value
	// is 1, if 1 will use the color 2 exclusively

	// sin and cosin give values between -1 and 1, so we add 1 and divide by 2
	// to get values between 0 and 1
	float mix_percentage = (sin(TIME) + 1.0) / 2.0;
	vec4 output_color = mix(color1,color2,mix_percentage);

	COLOR = output_color;

}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
