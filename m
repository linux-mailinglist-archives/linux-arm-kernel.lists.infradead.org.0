Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D2332D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O14MbROq2dRz7tvo2Y2f8sKkIy5srjakxHDeJP4w6gQ=; b=q5wu+c1gANjL+O
	9Y1AtLOL9LjVcyvz0ovU9NMq8+IAZt0/ZYnNH52QVIxFBpFrwG4dMQ/4CbU+uIoLxugutKil6BYBS
	3iYJTGkG/SZJ8syVN7Cx0XYnfZNtSys+lyFxi0CnKiCBB3c27opUyx3cZPhRR618TcnR7hDo+pQqL
	KmomO0tjRd5+pO+PwVxTlN6HCMP1kCDwecypD6O90S+bjDG2hLY1ETyMKf1YP0zNA3Oljuoic+wuM
	72Ym9m67Q6TaeBYfLNtfel8TRT3EzYnWDa6xEXD3xL8P6k6cMLdTGCtldl5fSRQMW9ecftuqB1NRo
	o5o7Q2vSZRT9r0RTyezw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoOb-0001mH-US; Mon, 03 Jun 2019 14:57:09 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoOV-0001li-1b
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:57:05 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9A588FF80B;
 Mon,  3 Jun 2019 14:56:48 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Wolfram Sang <wsa@the-dreams.de>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
In-Reply-To: <20190525141821.20082-2-maxime.ripard@bootlin.com>
References: <20190525141821.20082-1-maxime.ripard@bootlin.com>
 <20190525141821.20082-2-maxime.ripard@bootlin.com>
Date: Mon, 03 Jun 2019 16:56:48 +0200
Message-ID: <87k1e2k98v.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_075703_398945_B87AE741 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../devicetree/bindings/i2c/i2c-mv64xxx.txt   |  64 -----------
>  .../bindings/i2c/marvell,mv64xxx-i2c.yaml     | 106 ++++++++++++++++++
>  2 files changed, 106 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
>
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt b/Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
> deleted file mode 100644
> index 0ffe65a316ae..000000000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
> +++ /dev/null
> @@ -1,64 +0,0 @@
> -
> -* Marvell MV64XXX I2C controller
> -
> -Required properties :
> -
> - - reg             : Offset and length of the register set for the device
> - - compatible      : Should be either:
> -                     - "allwinner,sun4i-a10-i2c"
> -                     - "allwinner,sun6i-a31-i2c"
> -                     - "marvell,mv64xxx-i2c"
> -                     - "marvell,mv78230-i2c"
> -                     - "marvell,mv78230-a0-i2c"
> -                       * Note: Only use "marvell,mv78230-a0-i2c" for a
> -                         very rare, initial version of the SoC which
> -                         had broken offload support.  Linux
> -                         auto-detects this and sets it appropriately.
> - - interrupts      : The interrupt number
> -
> -Optional properties :
> -
> - - clock-frequency : Desired I2C bus clock frequency in Hz. If not set the
> -default frequency is 100kHz
> -
> - - resets          : phandle to the parent reset controller. Mandatory
> -                     whenever you're using the "allwinner,sun6i-a31-i2c"
> -                     compatible.
> -
> - - clocks:	   : pointers to the reference clocks for this device, the
> -		     first one is the one used for the clock on the i2c bus,
> -		     the second one is the clock used to acces the registers
> -		     of the controller
> -
> - - clock-names	   : names of used clocks, mandatory if the second clock is
> -		     used, the name must be "core", and "reg" (the latter is
> -		     only for Armada 7K/8K).
> -
> -Examples:
> -
> -	i2c@11000 {
> -		compatible = "marvell,mv64xxx-i2c";
> -		reg = <0x11000 0x20>;
> -		interrupts = <29>;
> -		clock-frequency = <100000>;
> -	};
> -
> -For the Armada XP:
> -
> -	i2c@11000 {
> -		compatible = "marvell,mv78230-i2c", "marvell,mv64xxx-i2c";
> -		reg = <0x11000 0x100>;
> -		interrupts = <29>;
> -		clock-frequency = <100000>;
> -	};
> -
> -For the Armada 7040:
> -
> -	i2c@701000 {
> -		compatible = "marvell,mv78230-i2c";
> -		reg = <0x701000 0x20>;
> -		interrupts = <29>;
> -		clock-frequency = <100000>;
> -		clock-names = "core", "reg";
> -		clocks = <&core_clock>, <&reg_clock>;
> -	};
> diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> new file mode 100644
> index 000000000000..984c01dccc37
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/marvell,mv64xxx-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell MV64XXX I2C Controller Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>

If you take over the maintenanceship and became maintainer for this
driver, then update the MAINTAINERS files too. For now it was assigned
to me, but I don't mind letting this for both of you.

Actually I gave my acked-by to a patch from Wolfram adding the
Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt file to the "I2C
MV64XXX MARVELL AND ALLWINNER DRIVER" entry "MAINTAINERS: add DT
bindings to i2c-mv64xxx" so I guess this patch have to be discarded or
at least updated.

Gregory

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-i2c
> +      - items:
> +          - const: allwinner,sun7i-a20-i2c
> +          - const: allwinner,sun4i-a10-i2c
> +      - const: allwinner,sun6i-a31-i2c
> +      - items:
> +          - const: allwinner,sun8i-a23-i2c
> +          - const: allwinner,sun6i-a31-i2c
> +      - items:
> +          - const: allwinner,sun8i-a83t-i2c
> +          - const: allwinner,sun6i-a31-i2c
> +      - items:
> +          - const: allwinner,sun50i-a64-i2c
> +          - const: allwinner,sun6i-a31-i2c
> +
> +      - const: marvell,mv64xxx-i2c
> +      - const: marvell,mv78230-i2c
> +      - const: marvell,mv78230-a0-i2c
> +
> +    description:
> +      Only use "marvell,mv78230-a0-i2c" for a very rare, initial
> +      version of the SoC which had broken offload support. Linux
> +      auto-detects this and sets it appropriately.
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: Reference clock for the I2C bus
> +      - description: Bus clock (Only for Armada 7K/8K)
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - const: core
> +      - const: reg
> +    description:
> +      Mandatory if two clocks are used (only for Armada 7k and 8k).
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun4i-a10-i2c
> +              - allwinner,sun6i-a31-i2c
> +
> +    then:
> +      required:
> +        - clocks
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun6i-a31-i2c
> +
> +    then:
> +      required:
> +        - resets
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false
> +
> +examples:
> +  - |
> +    timer {
> +      compatible = "allwinner,sun4i-a10-timer";
> +      reg = <0x01c20c00 0x400>;
> +      interrupts = <22>;
> +      clocks = <&osc>;
> +    };
> +...
> -- 
> 2.21.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
