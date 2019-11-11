Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A632F7CEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zl53aphZkkJ1V94IvY5YlZjLgQBXgkbAC26uQfbpWUw=; b=cfiD2EdOfYHdA7
	Kxrb3f/L5wZa7Igm3d8mOCNv2mwMJ/aeFN89C9+zwH4TdXK2aMb90eKj0XmYaxuRxACXepEMz9Lkk
	WXL40HX0etxJLFDvbY4HuZlvO3rulUfNnG2KAnqQFmc5lLt6F2oQ6Eda15OHon9WMeziIFuxNI77Q
	iN7DXhkGUQgevIaDxnfZDuQM/VuRA6Sw1pj5EQh+Mnjk9/oN8L7bwCYaPY7pMrR8YfoMkJXdYIY1j
	9d7weROjZykx9GgfrljZ6JpTJpSy/z0YQaBLlgm9tayI+Y4SPZUrlzMv3y3JzOsptKeju7wHzNcQd
	jbl4eoGJc8p0zgwDJIUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEmT-0000OD-EW; Mon, 11 Nov 2019 18:51:17 +0000
Received: from emh04.mail.saunalahti.fi ([62.142.5.110])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEmK-0000MQ-KH
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:51:11 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-35-58-nat.elisa-mobile.fi
 [85.76.35.58])
 by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 18B2A30088;
 Mon, 11 Nov 2019 20:51:01 +0200 (EET)
Date: Mon, 11 Nov 2019 20:51:01 +0200
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] ARM: OMAP1: drop duplicated dependency on ARCH_OMAP1
Message-ID: <20191111185101.GA27282@darkstar.musicnaut.iki.fi>
References: <20191111171034.28896-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111171034.28896-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_105109_008442_F1FDE21A 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.110 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Nov 11, 2019 at 06:10:34PM +0100, Uwe Kleine-K=F6nig wrote:
> All of arch/arm/mach-omap1/Kconfig is enclosed in a big "if ARCH_OMAP1"
> and so every symbol already has a dependency on ARCH_OMAP1 even without
> mentioning it in their list of dependencies.
> =

> Also dependencies on ARCH_OMAP can be dropped as it is selected by
> ARCH_OMAP1.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

Acked-by: Aaro Koskinen <aaro.koskinen@iki.fi>

A.

> ---
>  arch/arm/mach-omap1/Kconfig | 33 +++++++++++++--------------------
>  1 file changed, 13 insertions(+), 20 deletions(-)
> =

> diff --git a/arch/arm/mach-omap1/Kconfig b/arch/arm/mach-omap1/Kconfig
> index 2a17dc1d122c..948da556162e 100644
> --- a/arch/arm/mach-omap1/Kconfig
> +++ b/arch/arm/mach-omap1/Kconfig
> @@ -4,30 +4,25 @@ if ARCH_OMAP1
>  menu "TI OMAP1 specific features"
>  =

>  comment "OMAP Core Type"
> -	depends on ARCH_OMAP1
>  =

>  config ARCH_OMAP730
> -	depends on ARCH_OMAP1
>  	bool "OMAP730 Based System"
>  	select ARCH_OMAP_OTG
>  	select CPU_ARM926T
>  	select OMAP_MPU_TIMER
>  =

>  config ARCH_OMAP850
> -	depends on ARCH_OMAP1
>  	bool "OMAP850 Based System"
>  	select ARCH_OMAP_OTG
>  	select CPU_ARM926T
>  =

>  config ARCH_OMAP15XX
> -	depends on ARCH_OMAP1
>  	default y
>  	bool "OMAP15xx Based System"
>  	select CPU_ARM925T
>  	select OMAP_MPU_TIMER
>  =

>  config ARCH_OMAP16XX
> -	depends on ARCH_OMAP1
>  	bool "OMAP16xx Based System"
>  	select ARCH_OMAP_OTG
>  	select CPU_ARM926T
> @@ -35,7 +30,6 @@ config ARCH_OMAP16XX
>  =

>  config OMAP_MUX
>  	bool "OMAP multiplexing support"
> -	depends on ARCH_OMAP
>  	default y
>  	help
>  	  Pin multiplexing support for OMAP boards. If your bootloader
> @@ -60,25 +54,24 @@ config OMAP_MUX_WARNINGS
>  	  printed, it's safe to deselect OMAP_MUX for your product.
>  =

>  comment "OMAP Board Type"
> -	depends on ARCH_OMAP1
>  =

>  config MACH_OMAP_INNOVATOR
>  	bool "TI Innovator"
> -	depends on ARCH_OMAP1 && (ARCH_OMAP15XX || ARCH_OMAP16XX)
> +	depends on ARCH_OMAP15XX || ARCH_OMAP16XX
>  	help
>            TI OMAP 1510 or 1610 Innovator board support. Say Y here if you
>            have such a board.
>  =

>  config MACH_OMAP_H2
>  	bool "TI H2 Support"
> -	depends on ARCH_OMAP1 && ARCH_OMAP16XX
> +	depends on ARCH_OMAP16XX
>      	help
>  	  TI OMAP 1610/1611B H2 board support. Say Y here if you have such
>  	  a board.
>  =

>  config MACH_OMAP_H3
>  	bool "TI H3 Support"
> -	depends on ARCH_OMAP1 && ARCH_OMAP16XX
> +	depends on ARCH_OMAP16XX
>      	help
>  	  TI OMAP 1710 H3 board support. Say Y here if you have such
>  	  a board.
> @@ -91,7 +84,7 @@ config MACH_HERALD
>  =

>  config MACH_OMAP_OSK
>  	bool "TI OSK Support"
> -	depends on ARCH_OMAP1 && ARCH_OMAP16XX
> +	depends on ARCH_OMAP16XX
>      	help
>  	  TI OMAP 5912 OSK (OMAP Starter Kit) board support. Say Y here
>            if you have such a board.
> @@ -106,21 +99,21 @@ config OMAP_OSK_MISTRAL
>  =

>  config MACH_OMAP_PERSEUS2
>  	bool "TI Perseus2"
> -	depends on ARCH_OMAP1 && ARCH_OMAP730
> +	depends on ARCH_OMAP730
>      	help
>  	  Support for TI OMAP 730 Perseus2 board. Say Y here if you have such
>  	  a board.
>  =

>  config MACH_OMAP_FSAMPLE
>  	bool "TI F-Sample"
> -	depends on ARCH_OMAP1 && ARCH_OMAP730
> +	depends on ARCH_OMAP730
>      	help
>  	  Support for TI OMAP 850 F-Sample board. Say Y here if you have such
>  	  a board.
>  =

>  config MACH_OMAP_PALMTE
>  	bool "Palm Tungsten E"
> -	depends on ARCH_OMAP1 && ARCH_OMAP15XX
> +	depends on ARCH_OMAP15XX
>  	help
>  	  Support for the Palm Tungsten E PDA.  To boot the kernel, you'll
>  	  need a PalmOS compatible bootloader; check out
> @@ -129,7 +122,7 @@ config MACH_OMAP_PALMTE
>  =

>  config MACH_OMAP_PALMZ71
>  	bool "Palm Zire71"
> -	depends on ARCH_OMAP1 && ARCH_OMAP15XX
> +	depends on ARCH_OMAP15XX
>  	help
>  	 Support for the Palm Zire71 PDA. To boot the kernel,
>  	 you'll need a PalmOS compatible bootloader; check out
> @@ -138,7 +131,7 @@ config MACH_OMAP_PALMZ71
>  =

>  config MACH_OMAP_PALMTT
>  	bool "Palm Tungsten|T"
> -	depends on ARCH_OMAP1 && ARCH_OMAP15XX
> +	depends on ARCH_OMAP15XX
>  	help
>  	  Support for the Palm Tungsten|T PDA. To boot the kernel, you'll
>  	  need a PalmOS compatible bootloader (Garux); check out
> @@ -147,7 +140,7 @@ config MACH_OMAP_PALMTT
>  =

>  config MACH_SX1
>  	bool "Siemens SX1"
> -	depends on ARCH_OMAP1 && ARCH_OMAP15XX
> +	depends on ARCH_OMAP15XX
>  	select I2C
>  	help
>  	  Support for the Siemens SX1 phone. To boot the kernel,
> @@ -159,14 +152,14 @@ config MACH_SX1
>  =

>  config MACH_NOKIA770
>  	bool "Nokia 770"
> -	depends on ARCH_OMAP1 && ARCH_OMAP16XX
> +	depends on ARCH_OMAP16XX
>  	help
>  	  Support for the Nokia 770 Internet Tablet. Say Y here if you
>  	  have such a device.
>  =

>  config MACH_AMS_DELTA
>  	bool "Amstrad E3 (Delta)"
> -	depends on ARCH_OMAP1 && ARCH_OMAP15XX
> +	depends on ARCH_OMAP15XX
>  	select FIQ
>  	select GPIO_GENERIC_PLATFORM
>  	select LEDS_GPIO_REGISTER
> @@ -178,7 +171,7 @@ config MACH_AMS_DELTA
>  =

>  config MACH_OMAP_GENERIC
>  	bool "Generic OMAP board"
> -	depends on ARCH_OMAP1 && (ARCH_OMAP15XX || ARCH_OMAP16XX)
> +	depends on ARCH_OMAP15XX || ARCH_OMAP16XX
>  	help
>            Support for generic OMAP-1510, 1610 or 1710 board with
>            no FPGA. Can be used as template for porting Linux to
> -- =

> 2.23.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
