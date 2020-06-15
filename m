Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567C41F9D4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HyUNQltYQ4pQc8SgT3YvnzxWaQZVWvCeVSaXgkFslQE=; b=d5s7FrxU6wOdYU
	HPSF34WXIs/NDoNvAGkvPERy0xL5JgRq6LBFTfKy72WwPURX01eogFEFLLk/gPCtfomsmXUTSe9xl
	mqjVmIbBHD4EOonR1qwlma7iI8G9ReQD+wAEIFRxLwG5ap/nBSpt5kUlU9n9dj6WUbd8zXfhR8dre
	K14yR5RLiOvs67b2dfzrHkEj1CtJLpqN96i3OjTMADRvcAk6SiTOZpyoAl5+Cg4n5JLBPMAG6T8e4
	kyV4iyQYjy75/o9auHUQqn5+BjhJeUVpbDQJSp9qeIsdYSVT6K5l7ctSEfpK4DDL29lgkIl65ly6A
	qiuEy0hC405FMckJwukA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkruu-0005u7-PS; Mon, 15 Jun 2020 16:25:00 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkruh-0005tl-88
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:24:49 +0000
Received: by mail-io1-f68.google.com with SMTP id x189so9473346iof.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YdqlCPeMy6mhxxUsYFBiIEErVyP/IfOhgQot6haL/bk=;
 b=OzITDD1+EqV7x5qDR3W43Xq/Oymg0aqgqsuVr7gx43JgQEXqwnNQnCRSKsE6z9b3v6
 H1U2Sc0JHz1jFLGo6MVUAq5Z+aSiuRBOmTFYPriuQWM8TYHqGB11PUncApKoBaIVZXmS
 fe3E9oz9fJ4tN3KkKi/eayPZohWEmYsdPillyXqmN0ixq7x1J6Ptqn16wsPqnwM9jVm/
 Loy8yR/kfEye0E43E5hm2snbSub9c1etWKdf7J9HhM2ZYptwcCWKiFJn7xtzuZyWriN1
 9BK0lJRCLrigH5/VNCRi2F6ywn+yNzedpx3lXbKQc+EiuO4GKynAzE12Cn2a54hwZc/m
 KrrQ==
X-Gm-Message-State: AOAM5333Op353yEjJSP/WOZBbeC0cGcuEq5moRZFbMt8MT9MvvsdGkrl
 wKD/Ke5d7wRk18J/BKInFx+4u7Y=
X-Google-Smtp-Source: ABdhPJw9jyd07OqpB3eUqIEGtPzpWwPUI8yPAdfXF+9S621Y7f0IepBuQ20G4JgHvwQeMt9CPRwfrA==
X-Received: by 2002:a5e:dc03:: with SMTP id b3mr29058506iok.27.1592238286532; 
 Mon, 15 Jun 2020 09:24:46 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id g64sm8166922iof.5.2020.06.15.09.24.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 09:24:46 -0700 (PDT)
Received: (nullmailer pid 1891953 invoked by uid 1000);
 Mon, 15 Jun 2020 16:24:45 -0000
Date: Mon, 15 Jun 2020 10:24:45 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: mmc: Convert imx esdhc to json-schema
Message-ID: <20200615162445.GA1885779@bogus>
References: <1591234886-15351-1-git-send-email-Anson.Huang@nxp.com>
 <1591234886-15351-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591234886-15351-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092447_292861_042FDF87 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 mpa@pengutronix.de, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 09:41:24AM +0800, Anson Huang wrote:
> Convert the i.MX ESDHC binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "unevaluatedProperties: false".
> ---
>  .../devicetree/bindings/mmc/fsl-imx-esdhc.txt      |  67 -----------
>  .../devicetree/bindings/mmc/fsl-imx-esdhc.yaml     | 124 +++++++++++++++++++++
>  2 files changed, 124 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> deleted file mode 100644
> index de1b8bd..0000000
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> +++ /dev/null
> @@ -1,67 +0,0 @@
> -* Freescale Enhanced Secure Digital Host Controller (eSDHC) for i.MX
> -
> -The Enhanced Secure Digital Host Controller on Freescale i.MX family
> -provides an interface for MMC, SD, and SDIO types of memory cards.
> -
> -This file documents differences between the core properties described
> -by mmc.txt and the properties used by the sdhci-esdhc-imx driver.
> -
> -Required properties:
> -- compatible : Should be "fsl,<chip>-esdhc", the supported chips include
> -	       "fsl,imx25-esdhc"
> -	       "fsl,imx35-esdhc"
> -	       "fsl,imx51-esdhc"
> -	       "fsl,imx53-esdhc"
> -	       "fsl,imx6q-usdhc"
> -	       "fsl,imx6sl-usdhc"
> -	       "fsl,imx6sx-usdhc"
> -	       "fsl,imx6ull-usdhc"
> -	       "fsl,imx7d-usdhc"
> -	       "fsl,imx7ulp-usdhc"
> -	       "fsl,imx8mq-usdhc"
> -	       "fsl,imx8mm-usdhc"
> -	       "fsl,imx8mn-usdhc"
> -	       "fsl,imx8mp-usdhc"
> -	       "fsl,imx8qm-usdhc"
> -	       "fsl,imx8qxp-usdhc"
> -
> -Optional properties:
> -- fsl,wp-controller : Indicate to use controller internal write protection
> -- fsl,delay-line : Specify the number of delay cells for override mode.
> -  This is used to set the clock delay for DLL(Delay Line) on override mode
> -  to select a proper data sampling window in case the clock quality is not good
> -  due to signal path is too long on the board. Please refer to eSDHC/uSDHC
> -  chapter, DLL (Delay Line) section in RM for details.
> -- voltage-ranges : Specify the voltage range in case there are software
> -  transparent level shifters on the outputs of the controller. Two cells are
> -  required, first cell specifies minimum slot voltage (mV), second cell
> -  specifies maximum slot voltage (mV). Several ranges could be specified.
> -- fsl,tuning-start-tap: Specify the start dealy cell point when send first CMD19
> -  in tuning procedure.
> -- fsl,tuning-step: Specify the increasing delay cell steps in tuning procedure.
> -  The uSDHC use one delay cell as default increasing step to do tuning process.
> -  This property allows user to change the tuning step to more than one delay
> -  cells which is useful for some special boards or cards when the default
> -  tuning step can't find the proper delay window within limited tuning retries.
> -- fsl,strobe-dll-delay-target: Specify the strobe dll control slave delay target.
> -  This delay target programming host controller loopback read clock, and this
> -  property allows user to change the delay target for the strobe input read clock.
> -  If not use this property, driver default set the delay target to value 7.
> -  Only eMMC HS400 mode need to take care of this property.
> -
> -Examples:
> -
> -esdhc@70004000 {
> -	compatible = "fsl,imx51-esdhc";
> -	reg = <0x70004000 0x4000>;
> -	interrupts = <1>;
> -	fsl,wp-controller;
> -};
> -
> -esdhc@70008000 {
> -	compatible = "fsl,imx51-esdhc";
> -	reg = <0x70008000 0x4000>;
> -	interrupts = <2>;
> -	cd-gpios = <&gpio1 6 0>; /* GPIO1_6 */
> -	wp-gpios = <&gpio1 5 0>; /* GPIO1_5 */
> -};
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> new file mode 100644
> index 0000000..74db24aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -0,0 +1,124 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/fsl-imx-esdhc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Enhanced Secure Digital Host Controller (eSDHC) for i.MX
> +
> +maintainers:
> +  - Shawn Guo <shawn.guo@linaro.org>
> +
> +allOf:
> +  - $ref: "mmc-controller.yaml"
> +
> +description: |
> +  The Enhanced Secure Digital Host Controller on Freescale i.MX family
> +  provides an interface for MMC, SD, and SDIO types of memory cards.
> +
> +  This file documents differences between the core properties described
> +  by mmc.txt and the properties used by the sdhci-esdhc-imx driver.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx25-esdhc
> +      - fsl,imx35-esdhc
> +      - fsl,imx51-esdhc
> +      - fsl,imx53-esdhc
> +      - fsl,imx6q-usdhc
> +      - fsl,imx6sl-usdhc
> +      - fsl,imx6sx-usdhc
> +      - fsl,imx6ull-usdhc
> +      - fsl,imx7d-usdhc
> +      - fsl,imx7ulp-usdhc
> +      - fsl,imx8mq-usdhc
> +      - fsl,imx8mm-usdhc
> +      - fsl,imx8mn-usdhc
> +      - fsl,imx8mp-usdhc
> +      - fsl,imx8qm-usdhc
> +      - fsl,imx8qxp-usdhc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  fsl,wp-controller:
> +    description: |
> +      boolean, if present, indicate to use controller internal write protection.
> +    type: boolean
> +
> +  fsl,delay-line:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Specify the number of delay cells for override mode.
> +      This is used to set the clock delay for DLL(Delay Line) on override mode
> +      to select a proper data sampling window in case the clock quality is not good
> +      due to signal path is too long on the board. Please refer to eSDHC/uSDHC
> +      chapter, DLL (Delay Line) section in RM for details.
> +    default: 0
> +
> +  voltage-ranges:
> +    $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
> +    description: |
> +      Specify the voltage range in case there are software
> +      transparent level shifters on the outputs of the controller. Two cells are
> +      required, first cell specifies minimum slot voltage (mV), second cell
> +      specifies maximum slot voltage (mV). Several ranges could be specified.
> +    items:
> +      items:
> +        - description: value for minimum slot voltage
> +        - description: value for maximum slot voltage
> +    maxItems: 1

This contradicts 'Several ranges could be specified.'

> +
> +  fsl,tuning-start-tap:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Specify the start dealy cell point when send first CMD19 in tuning procedure.

typo: delay

> +    default: 0
> +
> +  fsl,tuning-step:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Specify the increasing delay cell steps in tuning procedure.
> +      The uSDHC use one delay cell as default increasing step to do tuning process.
> +      This property allows user to change the tuning step to more than one delay
> +      cells which is useful for some special boards or cards when the default
> +      tuning step can't find the proper delay window within limited tuning retries.
> +    default: 0
> +
> +  fsl,strobe-dll-delay-target:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Specify the strobe dll control slave delay target.
> +      This delay target programming host controller loopback read clock, and this
> +      property allows user to change the delay target for the strobe input read clock.
> +      If not use this property, driver default set the delay target to value 7.
> +      Only eMMC HS400 mode need to take care of this property.
> +    default: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    mmc@70004000 {
> +        compatible = "fsl,imx51-esdhc";
> +        reg = <0x70004000 0x4000>;
> +        interrupts = <1>;
> +        fsl,wp-controller;
> +    };
> +
> +    mmc@70008000 {
> +        compatible = "fsl,imx51-esdhc";
> +        reg = <0x70008000 0x4000>;
> +        interrupts = <2>;
> +        cd-gpios = <&gpio1 6 0>; /* GPIO1_6 */
> +        wp-gpios = <&gpio1 5 0>; /* GPIO1_5 */
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
