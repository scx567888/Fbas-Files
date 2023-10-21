<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

sampler s0 = sampler_state { texture = <rubyTexture>; };

float2 samples[12]
=	{
		-0.326212, -0.405805,
		-0.840144, -0.073580,
		-0.695914,  0.457137,
		-0.203345,  0.620716,
		 0.962340, -0.194983,
		 0.473434, -0.480026,
		 0.519456,  0.767022,
		 0.185461, -0.893124,
		 0.507431,  0.064425,
		 0.896420,  0.412458,
		-0.321940, -0.932615,
		-0.791559, -0.597705
	};


float4 BlurPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	float4 color = tex2D( s0, Tex.xy);
        float BlurFactor = 0.01; //set between 0.001 and 0.05 

	for (int i = 0; i < 12; i++)
	{
		color += tex2D(s0, Tex + BlurFactor * samples[i]);
	}


	return color / 13;
}

Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 BlurPass(); }
}
  ]]></source>
</shader>