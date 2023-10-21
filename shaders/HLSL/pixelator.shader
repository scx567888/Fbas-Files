<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;
sampler s0 = sampler_state { texture = <rubyTexture>; };
float2 Pixelator;


float4 PixelPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	Pixelator.x = 100;
	Pixelator.y = 100;
	Tex.x = round(Tex.x*Pixelator.x)/Pixelator.x;
	Tex.y = round(Tex.y*Pixelator.y)/Pixelator.y;

	return tex2D(s0,Tex.xy);
}

Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 PixelPass(); }
}
  ]]></source>
</shader>