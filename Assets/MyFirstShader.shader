Shader"Holistic/HelloShader" // Name of the Shader
{
    Properties {
        // Input fields like variables
        // Added field as my color.
        _myColor ( "Example Color ", Color) = (1, 1, 1, 1)
        _myEmission( "Emission Color", Color) = (1, 1, 1, 1)
        _myNormal("Normal Color", Color) = (1, 1, 1, 1)
    }

    SubShader {
        CGPROGRAM // Start your CG code here
            #pragma surface surf Lambert // Compile surface shader.
            
            struct Input{ // Input data from the model's mesh( vertices, normals, uvs..)
                float2 uvMainText;
            };

            fixed4 _myColor;
            fixed4 _myEmission;
            fixed4 _myNormal;
            // Properties that you want availabe to your shader function.
            // to use them
            
            
            // Shader Function
            void surf( Input IN, inout SurfaceOutput o){
                // Two color interact with each other.
                o.Albedo = _myColor.rgb;
                o.Emission = _myEmission.rgb;
                o.Normal = _myNormal;
            }
        ENDCG // End your CG code here.
    }

    FallBack "Diffuse"
    
}

