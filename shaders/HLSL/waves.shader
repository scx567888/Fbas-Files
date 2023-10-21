<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

sampler s0 = sampler_state { texture = <rubyTexture>; };


float4 WavePass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
        Tex.y = Tex.y + (sin(Tex.x*200)*0.01);
	float4 Color = tex2D( s0, Tex.xy);
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 WavePass(); }
}
  ]]></source>
</shader>