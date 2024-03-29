<?xml version="1.0" encoding="UTF-8"?>
<shader language="GLSL">
   <fragment filter="nearest" size_x="256" scale_y="1.0"><![CDATA[#version 120

      uniform sampler2D     rubyTexture;
      uniform vec2          rubyTextureSize;
      uniform vec2          rubyInputSize;
      uniform int rubyFrameCount;

      #define TEX2D(c) texture2D(rubyTexture,(c))

      #define PI 3.14159265

      void main()
      {
        vec2 xy = gl_TexCoord[0].st;

        vec2 xyp = xy * rubyTextureSize * 4.0*PI/3.0;
        xyp.y = xyp.y / 2.0 + 2.0 * mod(rubyFrameCount,2);

        vec4 rgb = TEX2D(xy);

        mat3x3 rgb2yuv = mat3x3(0.299,-0.14713, 0.615,
                 0.587,-0.28886,-0.51499,
                 0.114, 0.436  ,-0.10001);

        vec3 yuv;
        yuv = rgb2yuv * rgb.rgb;

        float dx = PI/3.0;
        xyp.x = xyp.x * rubyInputSize.x/256.0;
        float c0 = yuv.x + yuv.y * sin(xyp.x+xyp.y) + yuv.z*cos(xyp.x+xyp.y);
        float c1 = yuv.x + yuv.y * sin(xyp.x+xyp.y+dx) + yuv.z * cos(xyp.x+xyp.y+dx);
        rgb = TEX2D(xy + vec2(1.0/rubyTextureSize.x * rubyInputSize.x / 512.0, 0.0));
        yuv = rgb2yuv * rgb.rgb;
        float c2 = yuv.x + yuv.y * sin(xyp.x+xyp.y+2.0*dx) + yuv.z * cos(xyp.x+xyp.y+2.0*dx);
        float c3 = yuv.x + yuv.y * sin(xyp.x+xyp.y+3.0*dx) + yuv.z * cos(xyp.x+xyp.y+3.0*dx);

        gl_FragColor = (vec4(c0,c1,c2,c3)+0.65)/2.3;
      }
   ]]></fragment>

   <fragment filter="nearest" size_x="1024" scale_y="4.0"><![CDATA[#version 120

      uniform sampler2D     rubyTexture;
      uniform vec2          rubyTextureSize;
      uniform vec2          rubyOutputSize;
      uniform int rubyFrameCount;

      #define TEX2D(c) texture2D(rubyTexture,(c))

      #define PI 3.14159265

      void main()
      {
        vec2 xy = gl_TexCoord[0].st;

        vec2 xyf = fract(xy * rubyTextureSize);
        vec2 xyp = floor(xy * rubyTextureSize)+vec2(0.5);
        xy = xyp / rubyTextureSize;
        xyp.y = -xyp.y-1.0; // fix for inconsistent texture coordinates
        float offs = mod(rubyFrameCount,2)/2.0;
        vec4 phases = (vec4(0.0,0.25,0.5,0.75) + vec4(xyp.x+xyp.y/2.0+offs)) *4.0*PI/3.0;
        vec4 phsin = sin(phases);
        vec4 phcos = cos(phases);
        vec4 phsinl= vec4(phsin.zw, -phsin.yz);
        vec4 phcosl= vec4(phcos.zw, -phcos.yz);
        vec4 phsinr= vec4(-phsin.yz, phsin.xy);
        vec4 phcosr= vec4(-phcos.yz, phcos.xy);
        vec4 phone = vec4(1.0);

        vec2 one = 1.0/rubyTextureSize;

        vec4 c = TEX2D(xy)*2.3-0.65;
        vec4 cl= TEX2D(xy + vec2(-one.x,0.0))*2.3-0.65;
        vec4 cr= TEX2D(xy + vec2( one.x,0.0))*2.3-0.65;

        vec3 yuva = vec3((dot(cl.zw,phone.zw)+dot(c.xyz,phone.xyz)+0.5*(cl.y+c.w))/6.0, (dot(cl.zw,phsinl.zw)+dot(c.xyz,phsin.xyz)+0.5*(cl.y*phsinl.y+c.w*phsin.w))/3.0, (dot(cl.zw,phcosl.zw)+dot(c.xyz,phcos.xyz)+0.5*(cl.y*phcosl.y+c.w*phcos.w))/3.0);

        vec3 yuvb = vec3((cl.w*phone.w+dot(c.xyzw,phone.xyzw)+0.5*(cl.z+cr.x))/6.0, (cl.w*phsinl.w+dot(c.xyzw,phsin.xyzw)+0.5*(cl.z*phsinl.z+cr.x*phsinr.x))/3.0, (cl.w*phcosl.w+dot(c.xyzw,phcos.xyzw)+0.5*(cl.z*phcosl.z+cr.x*phcosr.x))/3.0);

        vec3 yuvc = vec3((cr.x*phone.x+dot(c.xyzw,phone.xyzw)+0.5*(cl.w+cr.y))/6.0, (cr.x*phsinr.x+dot(c.xyzw,phsin.xyzw)+0.5*(cl.w*phsinl.w+cr.y*phsinr.y))/3.0, (cr.x*phcosr.x+dot(c.xyzw,phcos.xyzw)+0.5*(cl.w*phcosl.w+cr.y*phcosr.y))/3.0);

        vec3 yuvd = vec3((dot(cr.xy,phone.xy)+dot(c.yzw,phone.yzw)+0.5*(c.x+cr.z))/6.0, (dot(cr.xy,phsinr.xy)+dot(c.yzw,phsin.yzw)+0.5*(c.x*phsin.x+cr.z*phsinr.z))/3.0, (dot(cr.xy,phcosr.xy)+dot(c.yzw,phcos.yzw)+0.5*(c.x*phcos.x+cr.z*phcosr.z))/3.0);

        mat3x3 yuv2rgb = mat3x3(1.0, 1.0, 1.0,
                 0.0,-0.39465,2.03211,
                 1.13983,-0.58060,0.0);


        float s1 = step(0.25, xyf.x);
        float s2 = step(0.5 , xyf.x);
        float s3 = step(0.75, xyf.x);
        vec3 yuv = vec3(s3) * yuvd + vec3(s2*(1-s3))* yuvc + vec3(s1*(1-s2))*yuvb + vec3(1-s1)*yuva;

        gl_FragColor = vec4(yuv2rgb*yuv, 0.0);
      }
   ]]></fragment>
   
   <fragment filter="nearest" scale="1.0"><![CDATA[#version 120

      uniform sampler2D rubyTexture;
      uniform vec2      rubyInputSize;
      uniform vec2      rubyTextureSize;
      uniform vec2      rubyOutputSize;

      #define TEX2D(v) texture2D(rubyTexture, (v))

      void main()
      {
        mat3x3 rgb2yuv = mat3x3(0.299,-0.14713, 0.615,
                 0.587,-0.28886,-0.51499,
                 0.114, 0.436  ,-0.10001);
        mat3x3 yuv2rgb = mat3x3(1.0, 1.0, 1.0,
                 0.0,-0.39465,2.03211,
                 1.13983,-0.58060,0.0);


        vec4 sum   = vec4(0.0);

        const float wid = 2.0;
        const vec4 c1 = vec4(exp(-1.0/wid/wid));
        const vec4 c2 = vec4(exp(-4.0/wid/wid));
        const vec4 c3 = vec4(exp(-9.0/wid/wid));
        const vec4 c4 = vec4(exp(-16.0/wid/wid));
        const vec4 norm = 1.0 / (vec4(1.0) + vec4(2.0)*(c1+c2+c3+c4));

        vec2 xy = gl_TexCoord[0].st;
        float onex = 4.0 / rubyTextureSize.x;

        sum += TEX2D(xy + vec2(-4.0 * onex,  0.0)) * c4;
        sum += TEX2D(xy + vec2(-3.0 * onex,  0.0)) * c3;
        sum += TEX2D(xy + vec2(-2.0 * onex,  0.0)) * c2;
        sum += TEX2D(xy + vec2(-1.0 * onex,  0.0)) * c1;
        sum += TEX2D(xy);
        sum += TEX2D(xy + vec2(+1.0 * onex,  0.0)) * c1;
        sum += TEX2D(xy + vec2(+2.0 * onex,  0.0)) * c2;
        sum += TEX2D(xy + vec2(+3.0 * onex,  0.0)) * c3;
        sum += TEX2D(xy + vec2(+4.0 * onex,  0.0)) * c4;

        float y = (rgb2yuv * TEX2D(xy).rgb).x;
        vec2 uv = (rgb2yuv * (sum.rgb*norm.rgb)).yz;

        gl_FragColor = vec4(yuv2rgb * vec3(y, uv), 0.0);
      }
   ]]></fragment>
</shader>