shader_type canvas_item;

uniform vec2 tiling = vec2(1.0);
uniform vec2 offset;

void vertex() {
	// UV coordinates normally go from 0.0 to 1.0 — covering the texture once.
	// Multiplying UV increases the range (e.g., 0.0 to 2.0), so the texture is sampled multiple times.
	// Since textures wrap by default, this causes the texture to repeat (tile) across the surface.

	// In the fragment() stage, UV is read-only — it's an interpolated value
	// coming from the vertex() stage.
	UV = UV * tiling + offset * TIME;
}