Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39B39759B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08Ioa3svPMFiLzxvY5LxFnYiKHMEf4CLxOUgD9bD8mA=; b=AWTUF1ePPSzfwA
	LgplUov537DBSNaQYv8BnYdMJsBLORiyNtJ8xtlmwetm89iDCCJLzBX8zadrW4FOd92XKnjiV30zC
	1SvuuRrD96FIJ+j+J0WJ/AC+TpVyH2FKVHQuUOCYsv8suw28FDsFuHyNkKJq5pOgTO8hlg3JmL5Zi
	mYiOpLPdkbdkuQaYpfpxHQUW3EzdTVG1c+yE9XgOMY6GKX0x5n75j8iNf8Wl1fHlS9acVhT1RpaxF
	Zl8AvFeZDw+5q7AbBRq1CDEosbbtdFT22egH7YtrbzeoAbuqrfFGvWtArExG3RUMezNtoNciPYx0m
	ZiSSxLLoJS4+NyQGehUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MaU-0001YW-Gp; Wed, 21 Aug 2019 09:07:26 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ma9-0001Xa-6f
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:07:08 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D528825B7C3;
 Wed, 21 Aug 2019 19:06:59 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id BDAD29405AE; Wed, 21 Aug 2019 11:06:57 +0200 (CEST)
Date: Wed, 21 Aug 2019 11:06:57 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: debug-ll: Add support for r7s9210
Message-ID: <20190821090657.shogjxxe5kdwfgut@verge.net.au>
References: <20190807085415.24854-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807085415.24854-1-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_020706_835507_26E62B42 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Chris Brandt <chris.brandt@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 10:54:15AM +0200, Geert Uytterhoeven wrote:
> Enable low-level debugging support for RZ/A2M (r7s9210).
> 
> The RZA2MEVB board uses either SCIF2 (SDRAM enabled) or SCIF4 (HyperRAM
> only) for the serial console.
> 
> Note that "SCIFA" serial ports on RZ/A2 SoCs use a compressed register
> layout, hence add support for that to renesas-scif.S.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
>  arch/arm/Kconfig.debug                | 20 +++++++++++++++++++-
>  arch/arm/include/debug/renesas-scif.S |  6 +++++-
>  2 files changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 85710e078afb4878..9fe038aecc553deb 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -924,6 +924,20 @@ choice
>  		  Say Y here if you want kernel low-level debugging support
>  		  via SCIF2 on Renesas RZ/A1H (R7S72100).
>  
> +	config DEBUG_R7S9210_SCIF2
> +		bool "Kernel low-level debugging messages via SCIF2 on R7S9210"
> +		depends on ARCH_R7S9210
> +		help
> +		  Say Y here if you want kernel low-level debugging support
> +		  via SCIF2 on Renesas RZ/A2M (R7S9210).
> +
> +	config DEBUG_R7S9210_SCIF4
> +		bool "Kernel low-level debugging messages via SCIF4 on R7S9210"
> +		depends on ARCH_R7S9210
> +		help
> +		  Say Y here if you want kernel low-level debugging support
> +		  via SCIF4 on Renesas RZ/A2M (R7S9210).
> +
>  	config DEBUG_RCAR_GEN1_SCIF0
>  		bool "Kernel low-level debugging messages via SCIF0 on R8A7778"
>  		depends on ARCH_R8A7778
> @@ -1537,6 +1551,8 @@ config DEBUG_LL_INCLUDE
>  	default "debug/msm.S" if DEBUG_QCOM_UARTDM
>  	default "debug/omap2plus.S" if DEBUG_OMAP2PLUS_UART
>  	default "debug/renesas-scif.S" if DEBUG_R7S72100_SCIF2
> +	default "debug/renesas-scif.S" if DEBUG_R7S9210_SCIF2
> +	default "debug/renesas-scif.S" if DEBUG_R7S9210_SCIF4
>  	default "debug/renesas-scif.S" if DEBUG_RCAR_GEN1_SCIF0
>  	default "debug/renesas-scif.S" if DEBUG_RCAR_GEN1_SCIF2
>  	default "debug/renesas-scif.S" if DEBUG_RCAR_GEN2_SCIF0
> @@ -1666,7 +1682,8 @@ config DEBUG_UART_PHYS
>  	default 0xe6e60000 if DEBUG_RCAR_GEN2_SCIF0
>  	default 0xe6e68000 if DEBUG_RCAR_GEN2_SCIF1
>  	default 0xe6ee0000 if DEBUG_RCAR_GEN2_SCIF4
> -	default 0xe8008000 if DEBUG_R7S72100_SCIF2
> +	default 0xe8008000 if DEBUG_R7S72100_SCIF2 || DEBUG_R7S9210_SCIF2
> +	default 0xe8009000 if DEBUG_R7S9210_SCIF4
>  	default 0xf0000000 if DEBUG_DIGICOLOR_UA0
>  	default 0xf0000be0 if ARCH_EBSA110
>  	default 0xf1012000 if DEBUG_MVEBU_UART0_ALTERNATE
> @@ -1699,6 +1716,7 @@ config DEBUG_UART_PHYS
>  		DEBUG_LL_UART_EFM32 || \
>  		DEBUG_UART_8250 || DEBUG_UART_PL01X || DEBUG_MESON_UARTAO || \
>  		DEBUG_QCOM_UARTDM || DEBUG_R7S72100_SCIF2 || \
> +		DEBUG_R7S9210_SCIF2 || DEBUG_R7S9210_SCIF4 || \
>  		DEBUG_RCAR_GEN1_SCIF0 || DEBUG_RCAR_GEN1_SCIF2 || \
>  		DEBUG_RCAR_GEN2_SCIF0 || DEBUG_RCAR_GEN2_SCIF1 || \
>  		DEBUG_RCAR_GEN2_SCIF2 || DEBUG_RCAR_GEN2_SCIF4 || \
> diff --git a/arch/arm/include/debug/renesas-scif.S b/arch/arm/include/debug/renesas-scif.S
> index 1c5f795587fc5681..25f06663a9a4e2c1 100644
> --- a/arch/arm/include/debug/renesas-scif.S
> +++ b/arch/arm/include/debug/renesas-scif.S
> @@ -11,7 +11,11 @@
>  #define SCIF_PHYS	CONFIG_DEBUG_UART_PHYS
>  #define SCIF_VIRT	((SCIF_PHYS & 0x00ffffff) | 0xfd000000)
>  
> -#if CONFIG_DEBUG_UART_PHYS < 0xe6e00000
> +#if defined(CONFIG_DEBUG_R7S9210_SCIF2) || defined(CONFIG_DEBUG_R7S9210_SCIF4)
> +/* RZ/A2 SCIFA */
> +#define FTDR		0x06
> +#define FSR		0x08
> +#elif CONFIG_DEBUG_UART_PHYS < 0xe6e00000
>  /* SCIFA */
>  #define FTDR		0x20
>  #define FSR		0x14
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
