Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DED1816C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SXghySkxrTyEqyJL9LxTyTHkSDWV6qaJh0/frt3TWE=; b=d34fnH3qODI7qI
	RLx391XWo8YhYI3tGwpINYKxUjbpbHB12whznYKVCQremXpIXbnTprQL+lMnvwhWLLMHxIcq7jBGO
	BwUcSU1JJlChPaEEnkS8/2oP45yUNxK0p6x/djlB2mTEfZsExSwADB5sBIQ5zp6XlGLCvLz6pz6kp
	+JTGCzOqk1edRYrJQsmvUNGITCxQYje8+S52j4Mkc6Qy2qd3jGVWIRwQgwPJM7AEkC1BhEPl50fVk
	2OnbnoO80N6GSXLvVYDFCBXUedyQplmMxBqiCFGK1Io7lfO5WGnLqoErJvV8RxVOa+tJ1RhKX1dFj
	dPx/lzUwBpd1EyVBQFNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzRW-0005Pk-8N; Wed, 11 Mar 2020 11:22:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzRO-0005PD-HX
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:22:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E20051FB;
 Wed, 11 Mar 2020 04:22:21 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 06B013F6CF;
 Wed, 11 Mar 2020 04:22:20 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:22:18 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 2/3] ARM: dts: sun8i: r40: Fix register base address for
 SPI2 and SPI3
Message-ID: <20200311112218.3537478b@donnerap.cambridge.arm.com>
In-Reply-To: <20200310174709.24174-3-wens@kernel.org>
References: <20200310174709.24174-1-wens@kernel.org>
 <20200310174709.24174-3-wens@kernel.org>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042222_624238_DFD7A022 
X-CRM114-Status: GOOD (  14.87  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 juanesf91@gmail.com, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Mar 2020 01:47:08 +0800
Chen-Yu Tsai <wens@kernel.org> wrote:

Hi Chen-Yu,

sorry, didn't spot this before posting my version!

> From: Chen-Yu Tsai <wens@csie.org>
> 
> When the SPI device nodes were added, SPI2 and SPI3 had incorrect
> register base addresses.
> 
> Fix the base address for both of them.
> 
> Fixes: 554581b79139 ("ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

As you suggested, it would be nice to add Juan's reported by, since he reported this before:
https://groups.google.com/forum/#!topic/linux-sunxi/5ZzkDXx2F-M

Cheers,
Andre

> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index b278686d0c22..81cc92ddc78b 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -718,10 +718,10 @@ spi1: spi@1c06000 {
>  			#size-cells = <0>;
>  		};
>  
> -		spi2: spi@1c07000 {
> +		spi2: spi@1c17000 {
>  			compatible = "allwinner,sun8i-r40-spi",
>  				     "allwinner,sun8i-h3-spi";
> -			reg = <0x01c07000 0x1000>;
> +			reg = <0x01c17000 0x1000>;
>  			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
>  			clock-names = "ahb", "mod";
> @@ -731,10 +731,10 @@ spi2: spi@1c07000 {
>  			#size-cells = <0>;
>  		};
>  
> -		spi3: spi@1c0f000 {
> +		spi3: spi@1c1f000 {
>  			compatible = "allwinner,sun8i-r40-spi",
>  				     "allwinner,sun8i-h3-spi";
> -			reg = <0x01c0f000 0x1000>;
> +			reg = <0x01c1f000 0x1000>;
>  			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
>  			clock-names = "ahb", "mod";


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
