Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25561816C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZdyNDJkqzLtOfo/mvRcbdWdvZJMJeA5B2KvownEARM=; b=UfKlBfdBXvu2aC
	hSdo2364WnFExUQOntjzHy20FPL/+cCdnx7mtOQ1GKYP1KMpagPREVfGtaD8FEXLRdhqASmZSvv+8
	j7hWWby8/bzw5e9cXnOtudf7CG6PqZq32UIrDnRId07jko5uofMaYevCH52oUzD1q8Sxx+KslqJ8U
	DDQ17NRNIKIpWGotR4dfY9gDtANoD51NuYR57i84sZcp/DXwW8Yl9u4Cq0aRdURBndBMgdh9rtfgv
	SeE2vV+tq9ai0JVVgqlH+Cdy/g0qyFN+cj/4J6HQJizyJfld85+vZ4Q9rpD2o0Web6oWuQ1QyhjIW
	rm52oTeqnrIga+hbZ2Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzRo-0005i3-Qr; Wed, 11 Mar 2020 11:22:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzRe-0005h8-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:22:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F5BC1FB;
 Wed, 11 Mar 2020 04:22:38 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A60F3F6CF;
 Wed, 11 Mar 2020 04:22:37 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:22:35 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: r40: Move SPI device nodes based
 on address order
Message-ID: <20200311112235.62d89683@donnerap.cambridge.arm.com>
In-Reply-To: <20200310174709.24174-4-wens@kernel.org>
References: <20200310174709.24174-1-wens@kernel.org>
 <20200310174709.24174-4-wens@kernel.org>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042238_997052_83B3CA93 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Mar 2020 01:47:09 +0800
Chen-Yu Tsai <wens@kernel.org> wrote:

> From: Chen-Yu Tsai <wens@csie.org>
> 
> When the SPI device nodes were added, they were added in the wrong
> location in the device tree file. The device nodes should be sorted
> by register address.
> 
> Move the devices node to their correct positions within the file.

Diffed the minus and plus lines, it's indeed a pure move:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> 
> Fixes: 554581b79139 ("ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 104 +++++++++++++++----------------
>  1 file changed, 52 insertions(+), 52 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index 81cc92ddc78b..f0ede4f52aa3 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -198,6 +198,32 @@ nmi_intc: interrupt-controller@1c00030 {
>  			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		spi0: spi@1c05000 {
> +			compatible = "allwinner,sun8i-r40-spi",
> +				     "allwinner,sun8i-h3-spi";
> +			reg = <0x01c05000 0x1000>;
> +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
> +			clock-names = "ahb", "mod";
> +			resets = <&ccu RST_BUS_SPI0>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		spi1: spi@1c06000 {
> +			compatible = "allwinner,sun8i-r40-spi",
> +				     "allwinner,sun8i-h3-spi";
> +			reg = <0x01c06000 0x1000>;
> +			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
> +			clock-names = "ahb", "mod";
> +			resets = <&ccu RST_BUS_SPI1>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
>  		csi0: csi@1c09000 {
>  			compatible = "allwinner,sun8i-r40-csi0",
>  				     "allwinner,sun7i-a20-csi0";
> @@ -307,6 +333,19 @@ crypto: crypto@1c15000 {
>  			resets = <&ccu RST_BUS_CE>;
>  		};
>  
> +		spi2: spi@1c17000 {
> +			compatible = "allwinner,sun8i-r40-spi",
> +				     "allwinner,sun8i-h3-spi";
> +			reg = <0x01c17000 0x1000>;
> +			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
> +			clock-names = "ahb", "mod";
> +			resets = <&ccu RST_BUS_SPI2>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
>  		ahci: sata@1c18000 {
>  			compatible = "allwinner,sun8i-r40-ahci";
>  			reg = <0x01c18000 0x1000>;
> @@ -364,6 +403,19 @@ ohci2: usb@1c1c400 {
>  			status = "disabled";
>  		};
>  
> +		spi3: spi@1c1f000 {
> +			compatible = "allwinner,sun8i-r40-spi",
> +				     "allwinner,sun8i-h3-spi";
> +			reg = <0x01c1f000 0x1000>;
> +			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
> +			clock-names = "ahb", "mod";
> +			resets = <&ccu RST_BUS_SPI3>;
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
>  		ccu: clock@1c20000 {
>  			compatible = "allwinner,sun8i-r40-ccu";
>  			reg = <0x01c20000 0x400>;
> @@ -692,58 +744,6 @@ i2c4: i2c@1c2c000 {
>  			#size-cells = <0>;
>  		};
>  
> -		spi0: spi@1c05000 {
> -			compatible = "allwinner,sun8i-r40-spi",
> -				     "allwinner,sun8i-h3-spi";
> -			reg = <0x01c05000 0x1000>;
> -			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
> -			clock-names = "ahb", "mod";
> -			resets = <&ccu RST_BUS_SPI0>;
> -			status = "disabled";
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -		};
> -
> -		spi1: spi@1c06000 {
> -			compatible = "allwinner,sun8i-r40-spi",
> -				     "allwinner,sun8i-h3-spi";
> -			reg = <0x01c06000 0x1000>;
> -			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&ccu CLK_BUS_SPI1>, <&ccu CLK_SPI1>;
> -			clock-names = "ahb", "mod";
> -			resets = <&ccu RST_BUS_SPI1>;
> -			status = "disabled";
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -		};
> -
> -		spi2: spi@1c17000 {
> -			compatible = "allwinner,sun8i-r40-spi",
> -				     "allwinner,sun8i-h3-spi";
> -			reg = <0x01c17000 0x1000>;
> -			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
> -			clock-names = "ahb", "mod";
> -			resets = <&ccu RST_BUS_SPI2>;
> -			status = "disabled";
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -		};
> -
> -		spi3: spi@1c1f000 {
> -			compatible = "allwinner,sun8i-r40-spi",
> -				     "allwinner,sun8i-h3-spi";
> -			reg = <0x01c1f000 0x1000>;
> -			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
> -			clock-names = "ahb", "mod";
> -			resets = <&ccu RST_BUS_SPI3>;
> -			status = "disabled";
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -		};
> -
>  		gmac: ethernet@1c50000 {
>  			compatible = "allwinner,sun8i-r40-gmac";
>  			syscon = <&ccu>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
