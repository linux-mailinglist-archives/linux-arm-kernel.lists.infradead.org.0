Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E053317F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6a1PRzz5mEhCFes3N4GqzVhMsBtL6SgEseLQWvepk2E=; b=mZww9K2AoOECoe
	d+KxusaatsqP2/E85o/yTGrQiVEbraZMpyLCHoKTwp6Os+8AJZWzdkatmzTrVj5BWvxFcvIv2TqSv
	8Oclgy1GVCXfnzFF5hSEizE6bc8A5hAAiCW3r2INq3CA7iLBEOJTeDmi/qwyKK8dWAB2svftua5RK
	WDx3sROkm+6peSXjB+NMOidDMOcdevXr0L1+vwsjhBrPo0kMyvRE5h9pofsX7jQuzeX2gQ7LmMh1x
	oFmE2yq9D/eYMDtKgoJFw0AA5z9zKlr9U3aJgYk/1vKvufkyflM6cnzGEvDpJHdhzThq/WczPh0yh
	I/mCqlEJQUoAqZac+YxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnL7-0005rj-S2; Mon, 03 Jun 2019 13:49:29 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnKf-0005Y9-7R
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:49:06 +0000
Received: by mail-ua1-x941.google.com with SMTP id e9so6475834uar.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 06:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YXhr+BwIgUPhgF4d09b3r0Qo13e2PHna1eP3jnT6Qi8=;
 b=TXfcW5K5F21xYiVGqdDr8P2/r41vdZUFtyMAIbmEa4PA9HQBrjCXpmwxgPeCaxc5Kn
 71pRxtejDttuMkZIgC0eHVUxzdpXYQfdUg3XmHLRAn1qReEUCbrPnW5cYs08wGLwVwc/
 ef7Wbra9MWQnM9fu2clZCXG/Vj1K+nFSkHnPJVk2HFhWS0U4jUN9txyKWA4ZyIALEatd
 fawasUZ15AvzKv/qiZ47GVpHfQXqQp0ei6/mNxX9dPNT8IkV3us/IjQpswC31ust9lnJ
 So3hEjUkkZ9DyIz2lkAENfADiQ8eo5g4Nhf/vOm74jsGYSURWLPOQo9T2S+RMoTyqpjf
 dYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YXhr+BwIgUPhgF4d09b3r0Qo13e2PHna1eP3jnT6Qi8=;
 b=rAV8yc7tAmh3sN3qrv0Q5vLS0ztA0cACpplicSfitiFmlkWQl/IYpZ4TzUkWYMaRDE
 XsWmxz+eL0lxjgjXCz93tcCtUB3bOCbuth7X2vRrYyHX0jZt2CIGrmT7RMnnO3SccPGX
 b1H7za5R7Lrx53T9hOPZQB3Fll/nk6pC1E0M9we+JDRBCboG3Y1CfEUjyYFfL2Nze/lK
 XX9Sna4R8vWftLaxqqIxs9HooM2EgkmZ5img+RevC7wWfMK/2QRc7E1uLW/gGNHRrQmY
 uShvIivO4aDeQFUVaCQBkck7XzlJtY70LVw8Nz4Qd2mqixk3yar/CBid1dVPVPNirI2W
 iJvg==
X-Gm-Message-State: APjAAAWM02AzqtY7QerE19xQyAifuyEXY03m5NL8P3Sv+mW4Nw5CibK3
 1ERLHf9iHWKK/6M+51SVNl9/HMk/e9moj6X/P+mzPQ==
X-Google-Smtp-Source: APXvYqzrxZO8qBHiLmue4vi0qZqpShO+FpOyBYDHmeL01dvSwUywWOH3kWLiqCHfZO66hriRv5CuPb4xhbSbdFDpnng=
X-Received: by 2002:ab0:16da:: with SMTP id g26mr5873388uaf.15.1559569740038; 
 Mon, 03 Jun 2019 06:49:00 -0700 (PDT)
MIME-Version: 1.0
References: <fab0ec653b4e059cdb1206f65bfca051c8b0a7de.1559114458.git-series.maxime.ripard@bootlin.com>
 <18bb36183d93fd6bc03a401c2b6b498c0171d375.1559114458.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <18bb36183d93fd6bc03a401c2b6b498c0171d375.1559114458.git-series.maxime.ripard@bootlin.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 3 Jun 2019 15:48:23 +0200
Message-ID: <CAPDyKFrjXAdiuYZRT9+BQ9omPT0g+SaAO3NbEHBkF03S3mzDJA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: mmc: sun4i: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_064901_329847_FD408A53 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 at 09:23, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied for next, thanks!

Kind regards
Uffe


>
> ---
>
> Changes from v2
>   - Add Rob's Reviewed-by
> ---
>  Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml | 98 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/mmc/sunxi-mmc.txt                | 52 +--------------------------------------
>  2 files changed, 98 insertions(+), 52 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sunxi-mmc.txt
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> new file mode 100644
> index 000000000000..df0280edef97
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/allwinner,sun4i-a10-mmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 MMC Controller Device Tree Bindings
> +
> +allOf:
> +  - $ref: "mmc-controller.yaml"
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  "#address-cells": true
> +  "#size-cells": true
> +
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-mmc
> +      - const: allwinner,sun5i-a13-mmc
> +      - const: allwinner,sun7i-a20-mmc
> +      - const: allwinner,sun8i-a83t-emmc
> +      - const: allwinner,sun9i-a80-mmc
> +      - const: allwinner,sun50i-a64-emmc
> +      - const: allwinner,sun50i-a64-mmc
> +      - items:
> +          - const: allwinner,sun8i-a83t-mmc
> +          - const: allwinner,sun7i-a20-mmc
> +      - items:
> +          - const: allwinner,sun50i-h6-emmc
> +          - const: allwinner,sun50i-a64-emmc
> +      - items:
> +          - const: allwinner,sun50i-h6-mmc
> +          - const: allwinner,sun50i-a64-mmc
> +      - items:
> +          - const: allwinner,sun8i-r40-emmc
> +          - const: allwinner,sun50i-a64-emmc
> +      - items:
> +          - const: allwinner,sun8i-r40-mmc
> +          - const: allwinner,sun50i-a64-mmc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 4
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +      - description: Output Clock
> +      - description: Sample Clock
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 4
> +    items:
> +      - const: ahb
> +      - const: mmc
> +      - const: output
> +      - const: sample
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: ahb
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    mmc0: mmc@1c0f000 {
> +        compatible = "allwinner,sun5i-a13-mmc";
> +        reg = <0x01c0f000 0x1000>;
> +        clocks = <&ahb_gates 8>, <&mmc0_clk>;
> +        clock-names = "ahb", "mmc";
> +        interrupts = <32>;
> +        bus-width = <4>;
> +        cd-gpios = <&pio 7 1 0>;
> +    };
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false
> +
> +...
> diff --git a/Documentation/devicetree/bindings/mmc/sunxi-mmc.txt b/Documentation/devicetree/bindings/mmc/sunxi-mmc.txt
> deleted file mode 100644
> index e9cb3ec5e502..000000000000
> --- a/Documentation/devicetree/bindings/mmc/sunxi-mmc.txt
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -* Allwinner sunxi MMC controller
> -
> -The highspeed MMC host controller on Allwinner SoCs provides an interface
> -for MMC, SD and SDIO types of memory cards.
> -
> -Supported maximum speeds are the ones of the eMMC standard 4.5 as well
> -as the speed of SD standard 3.0.
> -Absolute maximum transfer rate is 200MB/s
> -
> -Required properties:
> - - compatible : should be one of:
> -   * "allwinner,sun4i-a10-mmc"
> -   * "allwinner,sun5i-a13-mmc"
> -   * "allwinner,sun7i-a20-mmc"
> -   * "allwinner,sun8i-a83t-emmc"
> -   * "allwinner,sun9i-a80-mmc"
> -   * "allwinner,sun50i-a64-emmc"
> -   * "allwinner,sun50i-a64-mmc"
> -   * "allwinner,sun50i-h6-emmc", "allwinner.sun50i-a64-emmc"
> -   * "allwinner,sun50i-h6-mmc", "allwinner.sun50i-a64-mmc"
> - - reg : mmc controller base registers
> - - clocks : a list with 4 phandle + clock specifier pairs
> - - clock-names : must contain "ahb", "mmc", "output" and "sample"
> - - interrupts : mmc controller interrupt
> -
> -Optional properties:
> - - resets : phandle + reset specifier pair
> - - reset-names : must contain "ahb"
> - - for cd, bus-width and additional generic mmc parameters
> -   please refer to mmc.txt within this directory
> -
> -Examples:
> -       - Within .dtsi:
> -       mmc0: mmc@1c0f000 {
> -               compatible = "allwinner,sun5i-a13-mmc";
> -               reg = <0x01c0f000 0x1000>;
> -               clocks = <&ahb_gates 8>, <&mmc0_clk>, <&mmc0_output_clk>, <&mmc0_sample_clk>;
> -               clock-names = "ahb", "mod", "output", "sample";
> -               interrupts = <0 32 4>;
> -               status = "disabled";
> -       };
> -
> -       - Within dts:
> -       mmc0: mmc@1c0f000 {
> -               pinctrl-names = "default", "default";
> -               pinctrl-0 = <&mmc0_pins_a>;
> -               pinctrl-1 = <&mmc0_cd_pin_reference_design>;
> -               bus-width = <4>;
> -               cd-gpios = <&pio 7 1 0>; /* PH1 */
> -               cd-inverted;
> -               status = "okay";
> -       };
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
