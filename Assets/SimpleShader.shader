Shader "Unlit/SimpleShader"
{
    Properties
    {
        // _MainTex ("Texture", 2D) = "white" {}
    }
    
    // This is where actual shader starts!!!
    SubShader
    {
        Tags { "RenderType"="Opaque" }

        Pass {
            CGPROGRAM // Indiacator - after that cg code works

            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"
            

            // Mesh Data:
            // Vertex Position,
            // Vertex normal,
            // UVs,
            // Tangents,
            // Vertex colors
            struct VertexInput {
                float4 vertex : POSITION;
                float4 colors : COLOR;
                float4 normal : NORMAL;
                float4 tangent : TANGENT;
                float4 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
            };

            struct v2f {
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;

            v2f vert (VertexInput v) {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);              
                return o;
            }

            fixed4 frag (v2f i) : SV_Target {
                return float4(1,1,1,0);
            }

            ENDCG // Ends the actual code.
        }
    }
}
