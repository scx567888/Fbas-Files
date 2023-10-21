<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;
float rubyTimer;

sampler s0 = sampler_state { texture = <rubyTexture>; };


float4 WaterPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
        float2 fTexCoords = Tex.xy;
        fTexCoords.x = fTexCoords.x + (sin((fTexCoords.y + rubyTimer) * 30) * 0.05f);
        Tex.x = fTexCoords.x;
	float4 Color = tex2D( s0, Tex.xy);
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 WaterPass(); }
}
  ]]></source>
</shader>