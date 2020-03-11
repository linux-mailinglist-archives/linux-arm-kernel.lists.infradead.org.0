Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E6B181C72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 16:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aFMyHrtzFnaty4MfyVX9ExSmAh5iCYCE+zQo3MNqI0=; b=qrUOjiKxB1unUR
	VWhqJiR+ouk8Xb0v3N2f9I7KBsXAGuvzQoLxszdmQVLGtDAMUXsW/NHBg2NrDVOx4SqIj7l5dAvT4
	/AVmpWXlNlMKG8ekAfP3uktC9e2L78Tx4FocIhStnEYNjNzS9ImfdYChSEWoFGdt5zt0pUi2q5YiG
	onLzaGP5sKXzj0aOdX0quLTHUnh0bUICoDqPXCph63TAkXQ4OSQKXX0kThWVL5wXnBbZ10PH5xv70
	6szE/1AEkHym9fBnOQwH2Tb8xXbCcOusBv0jgWHfjk8OzwX1AtDh3WdvGhpL1O5Yp2qr9CMFsJe13
	Y2O/d9sW+dI9nCSNmHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3QD-000218-GJ; Wed, 11 Mar 2020 15:37:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3Q5-00020W-BX
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 15:37:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02BFSPxx026781; Wed, 11 Mar 2020 16:37:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=u63TEdJ10J2us4hSAuYiOHvOIMguRMztS88+drjyDZw=;
 b=HjGJVrAW31p7gwahbFPcZxSlROIX/swYnqb52tJgFeutkdeArCT5ZYgmjy/2sFfGt1ek
 DpapKTeYa9pi+gDpXKA2KbJvXErQh6rUgdaiW3M1X3TXpA7HjuUCzD2zsnOAXz1s6LRY
 jENYvFKNYjA3OGTkkG9+11n2fMI67fG8ahuNh9YMlzuhqkDkFD3jD34XbitHG6Jw4wPA
 sZs55nMDeUqViHtIYCQKEahtQPbUc6Yx3sBu3nkE7wIdvQW2UUCmoc5uml+C7EzGOOLf
 uMIhwKGpQmS8juckdm0HhAJ1JVO4rQ1+tj22dm0UzX2SNxtcJNLWD52bboXM6ZINT+WC gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ym1mh3ufu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 Mar 2020 16:37:05 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C8AF6100034;
 Wed, 11 Mar 2020 16:37:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8897A2BE238;
 Wed, 11 Mar 2020 16:37:01 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 11 Mar
 2020 16:37:01 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Wed, 11 Mar 2020 16:37:01 +0100
From: Olivier MOYSAN <olivier.moysan@st.com>
To: "lgirdwood@gmail.com" <lgirdwood@gmail.com>, "broonie@kernel.org"
 <broonie@kernel.org>, "perex@perex.cz" <perex@perex.cz>, "tiwai@suse.com"
 <tiwai@suse.com>, "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, "alsa-devel@alsa-project.org"
 <alsa-devel@alsa-project.org>, "robh@kernel.org" <robh@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] ASoC: dt-bindings: stm32: convert spdfirx to
 json-schema
Thread-Topic: [PATCH v3] ASoC: dt-bindings: stm32: convert spdfirx to
 json-schema
Thread-Index: AQHVzVgef9G3dBVxwE2KXAseUjc6eKhDylsA
Date: Wed, 11 Mar 2020 15:37:01 +0000
Message-ID: <d792a2b8-3b59-f04e-c24d-06185d60c734@st.com>
References: <20200117170352.16040-1-olivier.moysan@st.com>
In-Reply-To: <20200117170352.16040-1-olivier.moysan@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <DE5E72739C615C4AACA966C364D359B6@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-11_05:2020-03-11,
 2020-03-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_083717_866476_F9D3D713 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
Kind reminder for this patch.
Thanks
Olivier

On 1/17/20 6:03 PM, Olivier Moysan wrote:
> Convert the STM32 SPDIFRX bindings to DT schema format using json-schema.
>
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> Changes in v2:
> - Add "additionalProperties: false"
> - Also change minItems to 2 for dmas property, as both DMAs are required.
>
> Changes in v3:
> - Drop minItems/maxItems for dmas property, remove ref to stm32-dma.txt.
> ---
>   .../bindings/sound/st,stm32-spdifrx.txt       | 56 -------------
>   .../bindings/sound/st,stm32-spdifrx.yaml      | 80 +++++++++++++++++++
>   2 files changed, 80 insertions(+), 56 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
>   create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
>
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
> deleted file mode 100644
> index 33826f2459fa..000000000000
> --- a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
> +++ /dev/null
> @@ -1,56 +0,0 @@
> -STMicroelectronics STM32 S/PDIF receiver (SPDIFRX).
> -
> -The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
> -IEC-60958 and IEC-61937.
> -
> -Required properties:
> -  - compatible: should be "st,stm32h7-spdifrx"
> -  - reg: cpu DAI IP base address and size
> -  - clocks: must contain an entry for kclk (used as S/PDIF signal reference)
> -  - clock-names: must contain "kclk"
> -  - interrupts: cpu DAI interrupt line
> -  - dmas: DMA specifiers for audio data DMA and iec control flow DMA
> -    See STM32 DMA bindings, Documentation/devicetree/bindings/dma/stm32-dma.txt
> -  - dma-names: two dmas have to be defined, "rx" and "rx-ctrl"
> -
> -Optional properties:
> -  - resets: Reference to a reset controller asserting the SPDIFRX
> -
> -The device node should contain one 'port' child node with one child 'endpoint'
> -node, according to the bindings defined in Documentation/devicetree/bindings/
> -graph.txt.
> -
> -Example:
> -spdifrx: spdifrx@40004000 {
> -	compatible = "st,stm32h7-spdifrx";
> -	reg = <0x40004000 0x400>;
> -	clocks = <&rcc SPDIFRX_CK>;
> -	clock-names = "kclk";
> -	interrupts = <97>;
> -	dmas = <&dmamux1 2 93 0x400 0x0>,
> -	       <&dmamux1 3 94 0x400 0x0>;
> -	dma-names = "rx", "rx-ctrl";
> -	pinctrl-0 = <&spdifrx_pins>;
> -	pinctrl-names = "default";
> -
> -	spdifrx_port: port {
> -		cpu_endpoint: endpoint {
> -			remote-endpoint = <&codec_endpoint>;
> -		};
> -	};
> -};
> -
> -spdif_in: spdif-in {
> -	compatible = "linux,spdif-dir";
> -
> -	codec_port: port {
> -		codec_endpoint: endpoint {
> -			remote-endpoint = <&cpu_endpoint>;
> -		};
> -	};
> -};
> -
> -soundcard {
> -	compatible = "audio-graph-card";
> -	dais = <&spdifrx_port>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
> new file mode 100644
> index 000000000000..b7f7dc452231
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/st,stm32-spdifrx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 S/PDIF receiver (SPDIFRX)
> +
> +maintainers:
> +  - Olivier Moysan <olivier.moysan@st.com>
> +
> +description: |
> +  The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
> +  IEC-60958 and IEC-61937.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32h7-spdifrx
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: kclk
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  dmas:
> +    items:
> +      - description: audio data capture DMA
> +      - description: IEC status bits capture DMA
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: rx-ctrl
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - "#sound-dai-cells"
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - dmas
> +  - dma-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    spdifrx: spdifrx@40004000 {
> +        compatible = "st,stm32h7-spdifrx";
> +        #sound-dai-cells = <0>;
> +        reg = <0x40004000 0x400>;
> +        clocks = <&rcc SPDIF_K>;
> +        clock-names = "kclk";
> +        interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
> +        dmas = <&dmamux1 2 93 0x400 0x0>,
> +               <&dmamux1 3 94 0x400 0x0>;
> +        dma-names = "rx", "rx-ctrl";
> +        pinctrl-0 = <&spdifrx_pins>;
> +        pinctrl-names = "default";
> +    };
> +
> +...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
