<?xml version="1.0" encoding="UTF-8"?>
<!--

  Bicubic shader:

      Copyright (C) 2010 Team XBMC
      http://www.xbmc.org
      Copyright (C) 2011 Stefanos A.
      http://www.opentk.com

  This Program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2, or (at your option)
  any later version.

  This Program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with XBMC; see the file COPYING.  If not, write to
  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
  http://www.gnu.org/copyleft/gpl.html
-->

<shader language="GLSL">
  <vertex><![CDATA[
    uniform vec2 rubyTextureSize;

    void main() {
      float x = 0.5 * (1.0 / rubyTextureSize.x);
      float y = 0.5 * (1.0 / rubyTextureSize.y);
      vec2 dg1 = vec2( x, y);
      vec2 dg2 = vec2(-x, y);
      vec2 dx = vec2(x, 0.0);
      vec2 dy = vec2(0.0, y);

      gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
      gl_TexCoord[0] = gl_MultiTexCoord0;
      gl_TexCoord[1].xy = gl_TexCoord[0].xy - dg1;
      gl_TexCoord[1].zw = gl_TexCoord[0].xy - dy;
      gl_TexCoord[2].xy = gl_TexCoord[0].xy - dg2;
      gl_TexCoord[2].zw = gl_TexCoord[0].xy + dx;
      gl_TexCoord[3].xy = gl_TexCoord[0].xy + dg1;
      gl_TexCoord[3].zw = gl_TexCoord[0].xy + dy;
      gl_TexCoord[4].xy = gl_TexCoord[0].xy + dg2;
      gl_TexCoord[4].zw = gl_TexCoord[0].xy - dx;
    }
  ]]></vertex>

  <fragment filter="nearest" scale="2.0"><![CDATA[
    uniform sampler2D rubyTexture;

    const float mx = 0.325;      // start smoothing wt.
    const float k = -0.250;      // wt. decrease factor
    const float max_w = 0.25;    // max filter weigth
    const float min_w =-0.05;    // min filter weigth
    const float lum_add = 0.25;  // effects smoothing

    void main() {
      vec3 c00 = texture2D(rubyTexture, gl_TexCoord[1].xy).xyz; 
      vec3 c10 = texture2D(rubyTexture, gl_TexCoord[1].zw).xyz; 
      vec3 c20 = texture2D(rubyTexture, gl_TexCoord[2].xy).xyz; 
      vec3 c01 = texture2D(rubyTexture, gl_TexCoord[4].zw).xyz; 
      vec3 c11 = texture2D(rubyTexture, gl_TexCoord[0].xy).xyz; 
      vec3 c21 = texture2D(rubyTexture, gl_TexCoord[2].zw).xyz; 
      vec3 c02 = texture2D(rubyTexture, gl_TexCoord[4].xy).xyz; 
      vec3 c12 = texture2D(rubyTexture, gl_TexCoord[3].zw).xyz; 
      vec3 c22 = texture2D(rubyTexture, gl_TexCoord[3].xy).xyz; 
      vec3 dt = vec3(1.0, 1.0, 1.0);

      float md1 = dot(abs(c00 - c22), dt);
      float md2 = dot(abs(c02 - c20), dt);

      float w1 = dot(abs(c22 - c11), dt) * md2;
      float w2 = dot(abs(c02 - c11), dt) * md1;
      float w3 = dot(abs(c00 - c11), dt) * md2;
      float w4 = dot(abs(c20 - c11), dt) * md1;

      float t1 = w1 + w3;
      float t2 = w2 + w4;
      float ww = max(t1, t2) + 0.0001;

      c11 = (w1 * c00 + w2 * c20 + w3 * c22 + w4 * c02 + ww * c11) / (t1 + t2 + ww);

      float lc1 = k / (0.12 * dot(c10 + c12 + c11, dt) + lum_add);
      float lc2 = k / (0.12 * dot(c01 + c21 + c11, dt) + lum_add);

      w1 = clamp(lc1 * dot(abs(c11 - c10), dt) + mx, min_w, max_w);
      w2 = clamp(lc2 * dot(abs(c11 - c21), dt) + mx, min_w, max_w);
      w3 = clamp(lc1 * dot(abs(c11 - c12), dt) + mx, min_w, max_w);
      w4 = clamp(lc2 * dot(abs(c11 - c01), dt) + mx, min_w, max_w);

      gl_FragColor.xyz = w1 * c10 + w2 * c21 + w3 * c12 + w4 * c01 + (1.0 - w1 - w2 - w3 - w4) * c11;
    }
  ]]></fragment>

  <vertex><![CDATA[
   void main()
   {
     gl_TexCoord[0] = gl_MultiTexCoord0;         //center
     gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
   }
  ]]></vertex>

  <fragment filter="nearest"><![CDATA[
   uniform sampler2D rubyTexture;
   uniform vec2 rubyTextureSize;
   
   float weight(float x)
   {
      float ax = abs(x);
      // Mitchel-Netravali coefficients.
      // Best psychovisual result.
      const float B = 1.0 / 3.0;
      const float C = 1.0 / 3.0;
      
      // Sharper version.
      // May look better in some cases.
      //const float B = 0.0;
      //const float C = 0.75;

      if (ax < 1.0)
      {
         return
            (
               pow(x, 2.0) * ((12.0 - 9.0 * B - 6.0 * C) * ax + (-18.0 + 12.0 * B + 6.0 * C)) +
               (6.0 - 2.0 * B)
            ) / 6.0;
      }
      else if ((ax >= 1.0) && (ax < 2.0))
      {
         return
            (
               pow(x, 2.0) * ((-B - 6.0 * C) * ax + (6.0 * B + 30.0 * C)) +
               (-12.0 * B - 48.0 * C) * ax + (8.0 * B + 24.0 * C)
            ) / 6.0;
      }
      else
      {
         return 0.0;
      }
   }
   
   vec4 weight4(float x)
   {
      return vec4(
         weight(x + 1.0),
         weight(x),
         weight(1.0 - x),
         weight(2.0 - x));
   }

   vec3 pixel(float xpos, float ypos)
   {
     return texture2D(rubyTexture, vec2(xpos, ypos)).rgb;
   }

   vec3 line(float ypos, vec4 xpos, vec4 linetaps)
   {
     return
      pixel(xpos.r, ypos) * linetaps.r +
      pixel(xpos.g, ypos) * linetaps.g +
      pixel(xpos.b, ypos) * linetaps.b +
      pixel(xpos.a, ypos) * linetaps.a;
   }

   void main()
   {
      vec2 stepxy = 1.0 / rubyTextureSize.xy;
      vec2 pos = gl_TexCoord[0].xy + stepxy * 0.5;
      vec2 f = fract(pos / stepxy);
      
      vec4 linetaps   = weight4(f.x);
      vec4 columntaps = weight4(f.y);

      //make sure all taps added together is exactly 1.0, otherwise some (very small) distortion can occur
      linetaps /= linetaps.r + linetaps.g + linetaps.b + linetaps.a;
      columntaps /= columntaps.r + columntaps.g + columntaps.b + columntaps.a;

      vec2 xystart = (-1.5 - f) * stepxy + pos;
      vec4 xpos = vec4(xystart.x, xystart.x + stepxy.x, xystart.x + stepxy.x * 2.0, xystart.x + stepxy.x * 3.0);

      gl_FragColor.rgb =
         line(xystart.y                 , xpos, linetaps) * columntaps.r +
         line(xystart.y + stepxy.y      , xpos, linetaps) * columntaps.g +
         line(xystart.y + stepxy.y * 2.0, xpos, linetaps) * columntaps.b +
         line(xystart.y + stepxy.y * 3.0, xpos, linetaps) * columntaps.a;

      gl_FragColor.a = gl_Color.a;
   }
  ]]></fragment>
</shader>