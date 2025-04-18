/** Size of TFT "pixels" */
float resolution = 4.0;
/** Strength of effect */
float strength = 0.1;

void _scanline(inout vec3 color, vec2 uv)
{
    float scanline = step(1.2, mod(uv.y * iResolution.y, resolution));
    float grille   = step(1.2, mod(uv.x * iResolution.x, resolution));
    // Apply scanline effect only to RGB
    color *= max(1.0 - strength, scanline * grille);
}

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    vec2 uv = fragCoord.xy / iResolution.xy;
    vec4 texColor = texture(iChannel0, uv);
    vec3 color = texColor.rgb;
    _scanline(color, uv);
    // Combine the affected RGB with original alpha
    fragColor = vec4(color, texColor.a);
}
