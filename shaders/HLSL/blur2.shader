<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

sampler s0 = sampler_state { texture = <rubyTexture>; };

float4 BlurPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	float4 color = tex2D( s0, Tex.xy);
	color += tex2D(s0, Tex.xy+0.001*4);
	color += tex2D(s0, Tex.xy-0.001*4);
        color /=3;

	return color;
}

Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 BlurPass(); }
}
  ]]></source>
</shader>