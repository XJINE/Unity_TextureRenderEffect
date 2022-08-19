Shader "ImageEffect/TextureRenderEffect"
{
    Properties
    {
        [NoScaleOffset] _Texture ("Texture", 2D) = "white" {}
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM

            #include "UnityCG.cginc"
            #pragma vertex vert_img
            #pragma fragment frag

            sampler2D _Texture;

            fixed4 frag(v2f_img input) : SV_Target
            {
                return  tex2D(_Texture, input.uv);
            }

            ENDCG
        }
    }
}