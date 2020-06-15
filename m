Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A9D1F9E23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edsiOrS4CRTYTlkC+XlqPTwpWvsaaXGz+2OxKu9yBi4=; b=pKu40bD34dFBEc
	lqE3u6AXu2SII/w3KRf8Fj2YoyVE3LN8xwJAMEsjlzU/l2LBfirtPFqpNCOt4ZP1Ssb62k9L/iKIP
	mQ3uLXn5eXfIQ15urOZfvBUendvHgpP9kTZK59eAxIIS0yEM/+SX6qfCKnATQByqvP+CCGEe7gOP1
	lTx96iiPo+SIJ+wbj6BtF7NK59u4ZJNXGAojcv5143hxkWuBmHZqAEn3p4eXe1dg6t3dMvsFgTWo8
	4STGuVdmTwebsCtg7GU3ekZMAWMsrSoirmyad1YXJiDYiOlR0q0W3upO3Xiw3M7UZpZnJzxA33CeL
	vyTVJNsHcXxBSbaGJRGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkscy-00074M-5H; Mon, 15 Jun 2020 17:10:32 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksco-0006yM-Ir
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:10:24 +0000
Received: by mail-il1-f195.google.com with SMTP id l6so16062402ilo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:10:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=r803xRFcPvmpXFa1K2XnBd/d3Bh9X4F37U/xu3Rfl4k=;
 b=NWBvHJOV9qWLgzJJU+/ihbwA1cpzxOkiIamL6PJF/vyUKWzvkTV9RoF1N+0e3pG4+R
 LDqw9FlRG4OreCKRam/hx+cjQpS6wjeojgb/GBmgxPI7/+GHVRCgUeKfeHl1pHls5Fn8
 bgR6lf72TxZkLsagN89eP/Xw44wy9Qg32aQ4/4T4VRxhmPJoc2EAJsiLfUOAZDsSkQrW
 OZ/hU+6umgELwljFOhNhdmUbhILTqtyXTWvvjHSNhlx9Iu/HNu/r7ZFz/ZgHIMqjK2RX
 5cxF1WuK8wenlmlMWfiK/QTiSZ1pd1yXqDRj+7aZeeW2CQFrPCwKkPMWEO5psg0VvAvb
 Pgaw==
X-Gm-Message-State: AOAM530yf1qBdIulQK+A9GtGjYPTcVoJTBZ2eNVgNsDCKiZ/fvDewka9
 +SlDlHrgah27FioXyyfiJ/AvKf8=
X-Google-Smtp-Source: ABdhPJwYFOkv4MBunz1/x3wynbR0mIu9yWv9/lv+W7Wq5EC//9bf9NoG5DNwv6k7SCoCT0S73eCFaQ==
X-Received: by 2002:a92:1b86:: with SMTP id f6mr28209946ill.9.1592241021829;
 Mon, 15 Jun 2020 10:10:21 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id g15sm8155694ilq.39.2020.06.15.10.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:10:20 -0700 (PDT)
Received: (nullmailer pid 1967664 invoked by uid 1000);
 Mon, 15 Jun 2020 17:10:18 -0000
Date: Mon, 15 Jun 2020 11:10:18 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 3/3] dt-bindings: i2c: Convert imx i2c to json-schema
Message-ID: <20200615171018.GA1961591@bogus>
References: <1591235358-15516-1-git-send-email-Anson.Huang@nxp.com>
 <1591235358-15516-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591235358-15516-4-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_101022_637818_51C45B37 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, wolfram@the-dreams.de,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, linux-i2c@vger.kernel.org, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 09:49:18AM +0800, Anson Huang wrote:
> Convert the i.MX I2C binding to DT schema format using json-schema,
> some improvements applied, such as update example based on latest DT
> file, add more compatible for existing SoCs, and remove unnecessary
> common property "pinctrl".
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "additionalProperties: false".
> ---
>  Documentation/devicetree/bindings/i2c/i2c-imx.txt  |  49 ---------
>  Documentation/devicetree/bindings/i2c/i2c-imx.yaml | 119 +++++++++++++++++++++
>  2 files changed, 119 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.txt b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> deleted file mode 100644
> index b967544..0000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -* Freescale Inter IC (I2C) and High Speed Inter IC (HS-I2C) for i.MX
> -
> -Required properties:
> -- compatible :
> -  - "fsl,imx1-i2c" for I2C compatible with the one integrated on i.MX1 SoC
> -  - "fsl,imx21-i2c" for I2C compatible with the one integrated on i.MX21 SoC
> -  - "fsl,vf610-i2c" for I2C compatible with the one integrated on Vybrid vf610 SoC
> -- reg : Should contain I2C/HS-I2C registers location and length
> -- interrupts : Should contain I2C/HS-I2C interrupt
> -- clocks : Should contain the I2C/HS-I2C clock specifier
> -
> -Optional properties:
> -- clock-frequency : Constains desired I2C/HS-I2C bus clock frequency in Hz.
> -  The absence of the property indicates the default frequency 100 kHz.
> -- dmas: A list of two dma specifiers, one for each entry in dma-names.
> -- dma-names: should contain "tx" and "rx".
> -- scl-gpios: specify the gpio related to SCL pin
> -- sda-gpios: specify the gpio related to SDA pin
> -- pinctrl: add extra pinctrl to configure i2c pins to gpio function for i2c
> -  bus recovery, call it "gpio" state
> -
> -Examples:
> -
> -i2c@83fc4000 { /* I2C2 on i.MX51 */
> -	compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
> -	reg = <0x83fc4000 0x4000>;
> -	interrupts = <63>;
> -};
> -
> -i2c@70038000 { /* HS-I2C on i.MX51 */
> -	compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
> -	reg = <0x70038000 0x4000>;
> -	interrupts = <64>;
> -	clock-frequency = <400000>;
> -};
> -
> -i2c0: i2c@40066000 { /* i2c0 on vf610 */
> -	compatible = "fsl,vf610-i2c";
> -	reg = <0x40066000 0x1000>;
> -	interrupts =<0 71 0x04>;
> -	dmas = <&edma0 0 50>,
> -		<&edma0 0 51>;
> -	dma-names = "rx","tx";
> -	pinctrl-names = "default", "gpio";
> -	pinctrl-0 = <&pinctrl_i2c1>;
> -	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> -	scl-gpios = <&gpio5 26 GPIO_ACTIVE_HIGH>;
> -	sda-gpios = <&gpio5 27 GPIO_ACTIVE_HIGH>;
> -};
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.yaml b/Documentation/devicetree/bindings/i2c/i2c-imx.yaml
> new file mode 100644
> index 0000000..63cceab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/i2c-imx.yaml
> @@ -0,0 +1,119 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/i2c-imx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Inter IC (I2C) and High Speed Inter IC (HS-I2C) for i.MX
> +
> +maintainers:
> +  - Wolfram Sang <wolfram@the-dreams.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: fsl,imx1-i2c
> +      - const: fsl,imx21-i2c
> +      - const: fsl,vf610-i2c
> +      - items:
> +          - const: fsl,imx35-i2c
> +          - const: fsl,imx1-i2c
> +      - items:
> +          - enum:
> +            - fsl,imx25-i2c
> +            - fsl,imx27-i2c
> +            - fsl,imx31-i2c
> +            - fsl,imx50-i2c
> +            - fsl,imx51-i2c
> +            - fsl,imx53-i2c
> +            - fsl,imx6q-i2c
> +            - fsl,imx6sl-i2c
> +            - fsl,imx6sx-i2c
> +            - fsl,imx6sll-i2c
> +            - fsl,imx6ul-i2c
> +            - fsl,imx7s-i2c
> +            - fsl,imx8mq-i2c
> +            - fsl,imx8mm-i2c
> +            - fsl,imx8mn-i2c
> +            - fsl,imx8mp-i2c
> +          - const: fsl,imx21-i2c
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
> +    const: ipg
> +
> +  clock-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Already has a type.

> +    description: |
> +      Constains desired I2C/HS-I2C bus clock frequency in Hz.
> +      The absence of the property indicates the default frequency 100 kHz.
> +    default: 100000

The bus default is up to 3MHz. Is that valid here?

> +
> +  dmas:
> +    items:
> +      - description: DMA controller phandle and request line for RX
> +      - description: DMA controller phandle and request line for TX
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: tx
> +
> +  sda-gpios:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'

*-gpios already has a type

> +    description: |
> +      gpio used for the sda signal, this should be flagged as
> +      active high using open drain with (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)
> +      from <dt-bindings/gpio/gpio.h> since the signal is by definition
> +      open drain.
> +    maxItems: 1
> +
> +  scl-gpios:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: |
> +      gpio used for the scl signal, this should be flagged as
> +      active high using open drain with (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)
> +      from <dt-bindings/gpio/gpio.h> since the signal is by definition
> +      open drain.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx5-clock.h>
> +    #include <dt-bindings/clock/vf610-clock.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    i2c@83fc4000 {
> +        compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
> +        reg = <0x83fc4000 0x4000>;
> +        interrupts = <63>;
> +        clocks = <&clks IMX5_CLK_I2C2_GATE>;
> +    };
> +
> +    i2c@40066000 {
> +        compatible = "fsl,vf610-i2c";
> +        reg = <0x40066000 0x1000>;
> +        interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clks VF610_CLK_I2C0>;
> +        clock-names = "ipg";
> +        dmas = <&edma0 0 50>,
> +               <&edma0 0 51>;
> +        dma-names = "rx","tx";

space                       ^

> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
