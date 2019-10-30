Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0742E9A3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bLJWXEm0cZ9dBIpA+amz1lofVx8lCIZ6C6olW9T9Zx4=; b=udsMP1w778+yoQBaShvygSwAf
	lRdMNh6iVyBXLQmi1dfgHYPJF0hMuOsl80gBLGHoN3Ar6NMV8l2nqTzS0SapwlhJ9+c6Umr99v4tZ
	AN0xIC91p4t7cyR/BQ0FFIDRB01x+w0az/LFl3um3Ad1y/3sQuiBPRaHvF4ZeNcKiP2pYjKDGHEZl
	/a3dXAkNOrLVkCA2zU7k2oSGCdMSHoKqWwNTfSSokOnTvhAgkkPVEYbxPfl8kTgrpYox6lgxI1NbC
	RbhAcV7pi4ncirPrX1bpCfpp/IDj8LwF/8rcpfn9cElFBVRrG5e4neJZ5LFFvU7kwF3ZD6jBFgX4l
	7OQCt+I1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlPn-0007qw-Qn; Wed, 30 Oct 2019 10:41:23 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlPb-0007p7-9O
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:41:13 +0000
Received: from [172.20.50.122] ([91.217.168.176])
 by smtp-cloud9.xs4all.net with ESMTPA
 id PlPWiZFXDsBskPlPZiLt31; Wed, 30 Oct 2019 11:41:09 +0100
Subject: Re: [PATCH v3] dt-bindings: media: Convert stm32 dcmi bindings to
 json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>, mchehab@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, alexandre.torgue@st.com,
 yannick.fertre@st.com, philippe.cornu@st.com, hugues.fruchet@st.com
References: <20191014092021.24020-1-benjamin.gaignard@st.com>
 <20191014092021.24020-2-benjamin.gaignard@st.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <97b5168e-d8dc-7b1c-d2b8-0f9f32f50b82@xs4all.nl>
Date: Wed, 30 Oct 2019 11:41:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191014092021.24020-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGp9a3NRY0Ggs+fdGrrHavZL63Z181GPyoPphlsnKFFsVi7P2VlV3KElK1+SrSOMZuqJMorZLW0GVG5kuKoPGCcB6hxOyAZ/R3qOUP54Z/UnBEp4XeQT
 u1gu82U6Ru/UQoa0rwz5vS8iAt+isUg32iTul5XwMc1vhtIMz/ks+ao4JYMmYXnok1occTrRDXL3/QF7zc3TQiRUD8KHbby7xxVLjaRTGJ3IuZ3WK28/lElS
 orNEgi2GKSsjEkef/HmurO/C9VzNzbQh5ttU/4jhtx0DpjAxJRSy7ZHyOkhpSrcattS1e0TuoLaBwP4Ez0ZPMTmsUoy3OrE3rsVjH92eC4+U5MfYhwz+M1dz
 J5uU9XG0sBvf+V+9/dASBepwhhPjfZ5bwTjQsDwUOZ5gbIKAGNJq7IkFgcSBxGa+4mbRg6IEfjcTDPTTySqFm7TiotWFMU4jZ+ZJ7PO+IklAKeIDoEwLhYzC
 P9sJhBM+lwy65TFke4d0N8lk6cCe7nhA2tloyO2WUxaNJQJwYpaAuChNN8Qrhs6AA4HSi1R32ltShhfAoZzWAMBc7jpowo8zM1REjnBpFR6O/4zkMIxEpnPm
 ByDNPKR5wIUWwyKPi2Jrjt80A2M7rxQEvdZ9FvxFqNF0YUVebjjBKavAC+3Om41peNI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_034111_482266_2D8BB41A 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/14/19 11:20 AM, Benjamin Gaignard wrote:
> Convert the STM32 dcmi binding to DT schema format using json-schema

It looks like the MAINTAINERS entry isn't updated. Can you post a separate patch for that?

	Hans

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in v3:
> -use (GPL-2.0-only OR BSD-2-Clause) license
> 
> changes in v2:
> - use BSD-2-Clause license
> - remove useless dma descriptions
> - fix clock property
> - add additionalProperties: false
> - fix reset indentation
> 
>   .../devicetree/bindings/media/st,stm32-dcmi.txt    | 45 -----------
>   .../devicetree/bindings/media/st,stm32-dcmi.yaml   | 86 ++++++++++++++++++++++
>   2 files changed, 86 insertions(+), 45 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
>   create mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt b/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
> deleted file mode 100644
> index 3122ded82eb4..000000000000
> --- a/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
> +++ /dev/null
> @@ -1,45 +0,0 @@
> -STMicroelectronics STM32 Digital Camera Memory Interface (DCMI)
> -
> -Required properties:
> -- compatible: "st,stm32-dcmi"
> -- reg: physical base address and length of the registers set for the device
> -- interrupts: should contain IRQ line for the DCMI
> -- resets: reference to a reset controller,
> -          see Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
> -- clocks: list of clock specifiers, corresponding to entries in
> -          the clock-names property
> -- clock-names: must contain "mclk", which is the DCMI peripherial clock
> -- pinctrl: the pincontrol settings to configure muxing properly
> -           for pins that connect to DCMI device.
> -           See Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml.
> -- dmas: phandle to DMA controller node,
> -        see Documentation/devicetree/bindings/dma/stm32-dma.txt
> -- dma-names: must contain "tx", which is the transmit channel from DCMI to DMA
> -
> -DCMI supports a single port node with parallel bus. It should contain one
> -'port' child node with child 'endpoint' node. Please refer to the bindings
> -defined in Documentation/devicetree/bindings/media/video-interfaces.txt.
> -
> -Example:
> -
> -	dcmi: dcmi@50050000 {
> -		compatible = "st,stm32-dcmi";
> -		reg = <0x50050000 0x400>;
> -		interrupts = <78>;
> -		resets = <&rcc STM32F4_AHB2_RESET(DCMI)>;
> -		clocks = <&rcc 0 STM32F4_AHB2_CLOCK(DCMI)>;
> -		clock-names = "mclk";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&dcmi_pins>;
> -		dmas = <&dma2 1 1 0x414 0x3>;
> -		dma-names = "tx";
> -		port {
> -			dcmi_0: endpoint {
> -				remote-endpoint = <...>;
> -				bus-width = <8>;
> -				hsync-active = <0>;
> -				vsync-active = <0>;
> -				pclk-sample = <1>;
> -			};
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> new file mode 100644
> index 000000000000..3fe778cb5cc3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/st,stm32-dcmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Digital Camera Memory Interface (DCMI) binding
> +
> +maintainers:
> +  - Hugues Fruchet <hugues.fruchet@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-dcmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: mclk
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    items:
> +      - const: tx
> +
> +  resets:
> +    maxItems: 1
> +
> +  port:
> +    type: object
> +    description:
> +      DCMI supports a single port node with parallel bus. It should contain
> +      one 'port' child node with child 'endpoint' node. Please refer to the
> +      bindings defined in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - dmas
> +  - dma-names
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    dcmi: dcmi@4c006000 {
> +        compatible = "st,stm32-dcmi";
> +        reg = <0x4c006000 0x400>;
> +        interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +        resets = <&rcc CAMITF_R>;
> +        clocks = <&rcc DCMI>;
> +        clock-names = "mclk";
> +        dmas = <&dmamux1 75 0x400 0x0d>;
> +        dma-names = "tx";
> +
> +        port {
> +             dcmi_0: endpoint {
> +                   remote-endpoint = <&ov5640_0>;
> +                   bus-width = <8>;
> +                   hsync-active = <0>;
> +                   vsync-active = <0>;
> +                   pclk-sample = <1>;
> +             };
> +        };
> +    };
> +
> +...
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
