// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33495,y:32814,varname:node_3138,prsc:2;n:type:ShaderForge.SFN_Vector2,id:4128,x:32487,y:32631,varname:node_4128,prsc:2,v1:127.1,v2:311.7;n:type:ShaderForge.SFN_Vector2,id:5528,x:32487,y:32812,varname:node_5528,prsc:2,v1:269.5,v2:183.3;n:type:ShaderForge.SFN_Vector1,id:2267,x:32869,y:32751,varname:node_2267,prsc:2,v1:43758.55;n:type:ShaderForge.SFN_Dot,id:4691,x:32685,y:32631,varname:node_4691,prsc:2,dt:0|B-4128-OUT;n:type:ShaderForge.SFN_Dot,id:9944,x:32685,y:32784,varname:node_9944,prsc:2,dt:0|B-5528-OUT;n:type:ShaderForge.SFN_Frac,id:2527,x:33203,y:32630,varname:node_2527,prsc:2|IN-5825-OUT;n:type:ShaderForge.SFN_Frac,id:4934,x:33203,y:32810,varname:node_4934,prsc:2|IN-8384-OUT;n:type:ShaderForge.SFN_Sin,id:1111,x:32869,y:32629,varname:node_1111,prsc:2|IN-4691-OUT;n:type:ShaderForge.SFN_Sin,id:5002,x:32869,y:32810,varname:node_5002,prsc:2|IN-9944-OUT;n:type:ShaderForge.SFN_Multiply,id:8384,x:33040,y:32810,varname:node_8384,prsc:2|A-2267-OUT,B-5002-OUT;n:type:ShaderForge.SFN_Multiply,id:5825,x:33040,y:32629,varname:node_5825,prsc:2|A-1111-OUT,B-2267-OUT;n:type:ShaderForge.SFN_TexCoord,id:4369,x:31827,y:32623,varname:node_4369,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:2642,x:31827,y:32837,ptovrint:False,ptlb:_CellularNoiseScale,ptin:_CellularNoiseScale,varname:node_2642,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:976,x:31827,y:32902,varname:node_976,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:6829,x:32002,y:32764,varname:node_6829,prsc:2|A-4369-UVOUT,B-2642-OUT,C-976-OUT;n:type:ShaderForge.SFN_Floor,id:1672,x:32197,y:32675,cmnt:i_st,varname:node_1672,prsc:2|IN-6829-OUT;n:type:ShaderForge.SFN_Frac,id:6107,x:32197,y:32862,cmnt:f_st,varname:node_6107,prsc:2|IN-6829-OUT;proporder:2642;pass:END;sub:END;*/

Shader "Shader Forge/CellularNoise" {
    Properties {
        _CellularNoiseScale ("_CellularNoiseScale", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
