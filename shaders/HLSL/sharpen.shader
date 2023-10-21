<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

sampler s0 = sampler_state { texture = <rubyTexture>; };


float4 SharpenPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	float4 Color = tex2D( s0, Tex.xy );
	float Sharpenfactor = 30; //Make this between 10 and 50;

        Color -= tex2D( s0, Tex.xy+0.0001)*Sharpenfactor;
	Color += tex2D( s0, Tex.xy-0.0001)*Sharpenfactor;

	Color.a = 1.0;
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 SharpenPass(); }
}
  ]]></source>
</shader>