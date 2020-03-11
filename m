Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E842F181663
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:00:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daa/oJh6NxMfJC2Czs9DsDTcmTCGDR4Kuo/hjVlNe0c=; b=PBU75AH8xKRWj6
	42tKb3tjsENJORyPLDm/VwiYEDDapxM1F0tCWmeDNE0DWDq5V8xBFqeNs9HAt6GnSA/dmyYBWjPCO
	miiKBQxL8ORKk1+s6WsSMdeziUlNHJxfzgigMFednrYsvgiXTpBqKalNvHmE13G6zffUFnGrz4IK7
	kz9Fb98ooELC1FBTYl1QQw2lVI82UVZR1pqC7Nl65i5AzKfZVsj4NuRDEuCiII17oCcloS1yLGL0x
	UibiWpq9+VDZW8hTVm7UCaSEOO5RYT0y8Uy63+tkkB1N0/PoXSYHpbbX+V5Lu+ObiW9Iou7Ynh94q
	1jvVmeuW+Qd1M590zUZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBz5j-0003oD-8G; Wed, 11 Mar 2020 10:59:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBz5b-0003nb-05
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:59:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 147311FB;
 Wed, 11 Mar 2020 03:59:50 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 335663F6CF;
 Wed, 11 Mar 2020 03:59:49 -0700 (PDT)
Date: Wed, 11 Mar 2020 10:59:37 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 1/3] ARM: dts: sun8i: r40: Move AHCI device node based
 on address order
Message-ID: <20200311105937.040cd947@donnerap.cambridge.arm.com>
In-Reply-To: <20200310174709.24174-2-wens@kernel.org>
References: <20200310174709.24174-1-wens@kernel.org>
 <20200310174709.24174-2-wens@kernel.org>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035951_084199_4B02E761 
X-CRM114-Status: GOOD (  16.96  )
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

On Wed, 11 Mar 2020 01:47:07 +0800
Chen-Yu Tsai <wens@kernel.org> wrote:

> From: Chen-Yu Tsai <wens@csie.org>
> 
> When the AHCI device node was added, it was added in the wrong location
> in the device tree file. The device nodes should be sorted by register
> address.
> 
> Move the device node to before EHCI1, where it belongs.
> 
> Fixes: 41c64d3318aa ("ARM: dts: sun8i: r40: add sata node")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index d5442b5b6fd2..b278686d0c22 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -307,6 +307,17 @@ crypto: crypto@1c15000 {
>  			resets = <&ccu RST_BUS_CE>;
>  		};
>  
> +		ahci: sata@1c18000 {
> +			compatible = "allwinner,sun8i-r40-ahci";
> +			reg = <0x01c18000 0x1000>;
> +			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_SATA>, <&ccu CLK_SATA>;
> +			resets = <&ccu RST_BUS_SATA>;
> +			reset-names = "ahci";
> +			status = "disabled";
> +

Did this empty line serve any particular purpose before? If not, you could remove it on the way.

With that fixed:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Thanks,
Andre.

> +		};
> +
>  		ehci1: usb@1c19000 {
>  			compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
>  			reg = <0x01c19000 0x100>;
> @@ -733,17 +744,6 @@ spi3: spi@1c0f000 {
>  			#size-cells = <0>;
>  		};
>  
> -		ahci: sata@1c18000 {
> -			compatible = "allwinner,sun8i-r40-ahci";
> -			reg = <0x01c18000 0x1000>;
> -			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&ccu CLK_BUS_SATA>, <&ccu CLK_SATA>;
> -			resets = <&ccu RST_BUS_SATA>;
> -			reset-names = "ahci";
> -			status = "disabled";
> -
> -		};
> -
>  		gmac: ethernet@1c50000 {
>  			compatible = "allwinner,sun8i-r40-gmac";
>  			syscon = <&ccu>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
