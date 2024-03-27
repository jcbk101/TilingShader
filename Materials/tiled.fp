varying highp vec2 var_texcoord0;
varying mediump vec4 var_position;

uniform lowp sampler2D texture_sampler;
uniform lowp vec4 tint;
uniform lowp vec4 scaler;
uniform highp vec4 ratio;
uniform highp vec4 offset;

void main()
{    
    lowp vec2 uv = vec2(var_texcoord0.x * scaler.x, var_texcoord0.y * scaler.y);    
    uv = vec2(mod(uv.x, (ratio.z / ratio.x)) * ratio.x, mod(uv.y, -(ratio.w / ratio.y)) * ratio.y);
        
    gl_FragColor = texture2D(texture_sampler, uv + offset.xy);
}
