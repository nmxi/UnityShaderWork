// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33499,y:32856,varname:node_3138,prsc:2|emission-4986-OUT;n:type:ShaderForge.SFN_TexCoord,id:4735,x:30953,y:32817,varname:node_4735,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:9520,x:31811,y:32847,varname:node_9520,prsc:2,v1:12.9898,v2:78.233;n:type:ShaderForge.SFN_Dot,id:6339,x:31996,y:32803,varname:node_6339,prsc:2,dt:0|A-1040-OUT,B-9520-OUT;n:type:ShaderForge.SFN_Sin,id:2452,x:32156,y:32803,varname:node_2452,prsc:2|IN-6339-OUT;n:type:ShaderForge.SFN_Vector1,id:8736,x:32156,y:32931,varname:node_8736,prsc:2,v1:43758.55;n:type:ShaderForge.SFN_Multiply,id:1094,x:32326,y:32836,varname:node_1094,prsc:2|A-2452-OUT,B-8736-OUT;n:type:ShaderForge.SFN_Frac,id:6223,x:32497,y:32836,varname:node_6223,prsc:2|IN-1094-OUT;n:type:ShaderForge.SFN_Floor,id:7352,x:31441,y:32752,varname:node_7352,prsc:2|IN-4190-OUT;n:type:ShaderForge.SFN_Frac,id:526,x:31441,y:32504,varname:node_526,prsc:2|IN-4190-OUT;n:type:ShaderForge.SFN_Vector2,id:5440,x:31441,y:32870,varname:node_5440,prsc:0,v1:0,v2:0;n:type:ShaderForge.SFN_Add,id:1040,x:31622,y:32786,varname:node_1040,prsc:2|A-7352-OUT,B-5440-OUT;n:type:ShaderForge.SFN_Vector2,id:3160,x:31817,y:33044,varname:node_3160,prsc:2,v1:12.9898,v2:78.233;n:type:ShaderForge.SFN_Dot,id:6233,x:32002,y:33000,varname:node_6233,prsc:2,dt:0|A-8128-OUT,B-3160-OUT;n:type:ShaderForge.SFN_Sin,id:8956,x:32162,y:33000,varname:node_8956,prsc:2|IN-6233-OUT;n:type:ShaderForge.SFN_Vector1,id:1007,x:32162,y:33128,varname:node_1007,prsc:2,v1:43758.55;n:type:ShaderForge.SFN_Multiply,id:5174,x:32332,y:33033,varname:node_5174,prsc:2|A-8956-OUT,B-1007-OUT;n:type:ShaderForge.SFN_Frac,id:8861,x:32503,y:33033,varname:node_8861,prsc:2|IN-5174-OUT;n:type:ShaderForge.SFN_Vector2,id:4634,x:31817,y:33249,varname:node_4634,prsc:2,v1:12.9898,v2:78.233;n:type:ShaderForge.SFN_Dot,id:953,x:32002,y:33205,varname:node_953,prsc:2,dt:0|A-3428-OUT,B-4634-OUT;n:type:ShaderForge.SFN_Sin,id:1327,x:32162,y:33205,varname:node_1327,prsc:2|IN-953-OUT;n:type:ShaderForge.SFN_Vector1,id:1573,x:32162,y:33333,varname:node_1573,prsc:2,v1:43758.55;n:type:ShaderForge.SFN_Multiply,id:2329,x:32332,y:33238,varname:node_2329,prsc:2|A-1327-OUT,B-1573-OUT;n:type:ShaderForge.SFN_Frac,id:4418,x:32503,y:33238,varname:node_4418,prsc:2|IN-2329-OUT;n:type:ShaderForge.SFN_Vector2,id:2070,x:31817,y:33455,varname:node_2070,prsc:2,v1:12.9898,v2:78.233;n:type:ShaderForge.SFN_Dot,id:6230,x:32002,y:33411,varname:node_6230,prsc:2,dt:0|A-9198-OUT,B-2070-OUT;n:type:ShaderForge.SFN_Sin,id:6957,x:32162,y:33411,varname:node_6957,prsc:2|IN-6230-OUT;n:type:ShaderForge.SFN_Vector1,id:3048,x:32162,y:33539,varname:node_3048,prsc:2,v1:43758.55;n:type:ShaderForge.SFN_Multiply,id:4614,x:32332,y:33444,varname:node_4614,prsc:2|A-6957-OUT,B-3048-OUT;n:type:ShaderForge.SFN_Frac,id:955,x:32503,y:33444,varname:node_955,prsc:2|IN-4614-OUT;n:type:ShaderForge.SFN_Floor,id:1492,x:31447,y:32982,varname:node_1492,prsc:2|IN-4190-OUT;n:type:ShaderForge.SFN_Vector2,id:1950,x:31447,y:33100,varname:node_1950,prsc:0,v1:1,v2:0;n:type:ShaderForge.SFN_Add,id:8128,x:31628,y:32982,varname:node_8128,prsc:2|A-1492-OUT,B-1950-OUT;n:type:ShaderForge.SFN_Floor,id:321,x:31447,y:33209,varname:node_321,prsc:2|IN-4190-OUT;n:type:ShaderForge.SFN_Vector2,id:3558,x:31447,y:33327,varname:node_3558,prsc:0,v1:0,v2:1;n:type:ShaderForge.SFN_Add,id:3428,x:31628,y:33209,varname:node_3428,prsc:2|A-321-OUT,B-3558-OUT;n:type:ShaderForge.SFN_Floor,id:5292,x:31447,y:33442,varname:node_5292,prsc:2|IN-4190-OUT;n:type:ShaderForge.SFN_Vector2,id:9501,x:31447,y:33560,varname:node_9501,prsc:0,v1:1,v2:1;n:type:ShaderForge.SFN_Add,id:9198,x:31628,y:33442,varname:node_9198,prsc:2|A-5292-OUT,B-9501-OUT;n:type:ShaderForge.SFN_Vector1,id:6568,x:31630,y:32472,varname:node_6568,prsc:2,v1:3;n:type:ShaderForge.SFN_Vector1,id:5393,x:31441,y:32650,varname:node_5393,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:8318,x:31630,y:32570,varname:node_8318,prsc:2|A-526-OUT,B-5393-OUT;n:type:ShaderForge.SFN_Subtract,id:6157,x:31824,y:32529,varname:node_6157,prsc:2|A-6568-OUT,B-8318-OUT;n:type:ShaderForge.SFN_Multiply,id:1359,x:31630,y:32347,varname:node_1359,prsc:2|A-526-OUT,B-526-OUT;n:type:ShaderForge.SFN_Multiply,id:1393,x:32230,y:32510,varname:node_1393,prsc:2|A-1359-OUT,B-6157-OUT;n:type:ShaderForge.SFN_Lerp,id:9180,x:32885,y:32868,varname:node_9180,prsc:2|A-6223-OUT,B-8861-OUT,T-1391-OUT;n:type:ShaderForge.SFN_Lerp,id:2302,x:32885,y:33033,varname:node_2302,prsc:2|A-4418-OUT,B-955-OUT,T-1391-OUT;n:type:ShaderForge.SFN_Lerp,id:4986,x:33121,y:32948,varname:node_4986,prsc:2|A-9180-OUT,B-2302-OUT,T-3624-OUT;n:type:ShaderForge.SFN_Multiply,id:4190,x:31138,y:32940,varname:node_4190,prsc:2|A-4735-UVOUT,B-868-OUT;n:type:ShaderForge.SFN_Vector1,id:868,x:30953,y:33007,varname:node_868,prsc:2,v1:8;n:type:ShaderForge.SFN_ComponentMask,id:1391,x:32626,y:32394,varname:node_1391,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1393-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3624,x:32626,y:32580,varname:node_3624,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1393-OUT;pass:END;sub:END;*/

Shader "Shader Forge/ValueNoise" {
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
                float2 node_4190 = (i.uv0*8.0);
                float2 node_526 = frac(node_4190);
                float node_6568 = 3.0;
                float2 node_8318 = (node_526*2.0);
                float2 node_1393 = ((node_526*node_526)*(node_6568-node_8318));
                float node_1391 = node_1393.r;
                float node_4986 = lerp(lerp(frac((sin(dot((floor(node_4190)+fixed2(0,0)),float2(12.9898,78.233)))*43758.55)),frac((sin(dot((floor(node_4190)+fixed2(1,0)),float2(12.9898,78.233)))*43758.55)),node_1391),lerp(frac((sin(dot((floor(node_4190)+fixed2(0,1)),float2(12.9898,78.233)))*43758.55)),frac((sin(dot((floor(node_4190)+fixed2(1,1)),float2(12.9898,78.233)))*43758.55)),node_1391),node_1393.g);
                float3 emissive = float3(node_4986,node_4986,node_4986);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
