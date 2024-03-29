<?xml version="1.0" encoding="UTF-8"?>
<!--
    Simple TV Blur, by Themaister

    This shader uses linear-filtering horizontally, and point-filtering
    vertically, to approximate the effect of a CRT's raster scan. It also
    blends the source image down to 256px across, which should cause SNES games
    that use hires or psuedo-hires modes to look 'right' even in bsnes'
    Accuracy and Performance cores, which don't blend pixels internally.

    This is also about the most complete TV emulation you can get that just
    uses scale and filter attributes, without writing any shader code. :)

    From the following forum post:

	http://board.byuu.org/viewtopic.php?p=32153#p32153
 -->
<shader language="GLSL">
  <fragment filter="linear" size_x="256"><![CDATA[
     uniform sampler2D rubyTexture;
     void main() { gl_FragColor = texture2D(rubyTexture, gl_TexCoord[0].xy); }
  ]]></fragment>
  <fragment filter="linear" outscale_x="1.0"><![CDATA[
     uniform sampler2D rubyTexture;
     void main() { gl_FragColor = texture2D(rubyTexture, gl_TexCoord[0].xy); }
  ]]></fragment>
  <fragment filter="nearest"><![CDATA[
     uniform sampler2D rubyTexture;
     void main() { gl_FragColor = texture2D(rubyTexture, gl_TexCoord[0].xy); }
  ]]></fragment>
</shader>
