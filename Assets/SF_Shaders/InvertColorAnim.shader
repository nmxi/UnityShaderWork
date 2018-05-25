// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33127,y:32776,varname:node_3138,prsc:2|emission-1591-OUT;n:type:ShaderForge.SFN_Vector2,id:3,x:31974,y:33012,varname:node_3,prsc:2,v1:12.9898,v2:78.233;n:type:ShaderForge.SFN_TexCoord,id:2468,x:31974,y:32817,varname:node_2468,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Dot,id:381,x:32233,y:32916,varname:node_381,prsc:2,dt:0|A-2468-UVOUT,B-3-OUT;n:type:ShaderForge.SFN_Sin,id:238,x:32435,y:32916,varname:node_238,prsc:2|IN-381-OUT;n:type:ShaderForge.SFN_Lerp,id:1591,x:32843,y:32875,varname:node_1591,prsc:2|A-5410-OUT,B-4592-OUT,T-238-OUT;n:type:ShaderForge.SFN_Time,id:222,x:32187,y:32578,varname:node_222,prsc:2;n:type:ShaderForge.SFN_Sin,id:6549,x:32461,y:32631,varname:node_6549,prsc:2|IN-222-TTR;n:type:ShaderForge.SFN_Cos,id:4455,x:32461,y:32763,varname:node_4455,prsc:2|IN-222-TTR;n:type:ShaderForge.SFN_Abs,id:5410,x:32642,y:32631,varname:node_5410,prsc:2|IN-6549-OUT;n:type:ShaderForge.SFN_Abs,id:4592,x:32642,y:32763,varname:node_4592,prsc:2|IN-4455-OUT;pass:END;sub:END;*/

Shader "Shader Forge/InvertColorAnim" {
    Properties {
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
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_222 = _Time;
                float node_1591 = lerp(abs(sin(node_222.a)),abs(cos(node_222.a)),sin(dot(i.uv0,float2(12.9898,78.233))));
                float3 emissive = float3(node_1591,node_1591,node_1591);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
