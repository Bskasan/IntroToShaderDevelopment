Shader"Holistic/HelloShader" // Name of the Shader
{
    Properties {
        // Input fields like variables
        // Added field as my color.
        _myColor ( "Example Color ", Color) = (1, 1, 1, 1)
    }

    SubShader {
        CGPROGRAM // Start your CG code here
            #pragma surface surf Lambert // Compile surface shader.
            
            struct Input{
                float2 uvMainText;
            };

            fixed4 _myColor;
            
            void surf( Input IN, inout SurfaceOutput o){
                o.Albedo = _myColor.rgb;
            }
        ENDCG // End your CG code here.
    }

    FallBack "Diffuse"
    
}

