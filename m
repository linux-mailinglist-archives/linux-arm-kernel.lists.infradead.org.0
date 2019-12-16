Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E95120924
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3eefAu80L0B4HYfivLbR+VpoOlCm1KxUmKUrMf+xFU=; b=o4R8Wsr42xPOk+
	Nr3GcvKe6gydp5M+JzDvwdxzV0u+0TYycL1o/+TegeltOSCZGZbaNhWbQIeBE9fBrKVU3Lfr7BOob
	WS7mJOhxxk0PWT37qOurukVyDkpiwQ/1qjpYAH1ItTPR4rcwv3P0IleOChtPNbdWyuewYHudxe46s
	vDWkBywaHjbsDIs+xWnOgquQZ+09YI1uegMPYSmElTNV8BfCCAWaLjkx8gN+Q0y5sp//ZK8oHfGMq
	PNltr3eB9+fituFkqSOvrxXM1M3X8x/9OlLtXspJRtL9mcchgixp+SmlV3QCYtaSWAl8H161U0Mbl
	WG638ayvm6bXFMkKEfqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrr3-0004ei-PJ; Mon, 16 Dec 2019 15:00:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrqn-0004cq-Ak
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 14:59:58 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 0E8A8810D;
 Mon, 16 Dec 2019 15:00:28 +0000 (UTC)
Date: Mon, 16 Dec 2019 06:59:46 -0800
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2plus: select RESET_CONTROLLER
Message-ID: <20191216145946.GO35479@atomide.com>
References: <20191216132132.3330811-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216132132.3330811-1-arnd@arndb.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_065957_411355_5E5CBEF4 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [191216 13:22]:
> With the new omap_prm driver added unconditionally, omap2 builds
> fail when the reset controller subsystem is disabled:
> 
> drivers/soc/ti/omap_prm.o: In function `omap_prm_probe':
> omap_prm.c:(.text+0x2d4): undefined reference to `devm_reset_controller_register'
> 
> Fixes: 3e99cb214f03 ("soc: ti: add initial PRM driver with reset control support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Tony Lindgren <tony@atomide.com>

> ---
>  arch/arm/mach-omap2/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
> index fe0f82efb1de..639bc38567a7 100644
> --- a/arch/arm/mach-omap2/Kconfig
> +++ b/arch/arm/mach-omap2/Kconfig
> @@ -95,6 +95,7 @@ config ARCH_OMAP2PLUS
>  	bool
>  	select ARCH_HAS_BANDGAP
>  	select ARCH_HAS_HOLES_MEMORYMODEL
> +	select ARCH_HAS_RESET_CONTROLLER
>  	select ARCH_OMAP
>  	select CLKSRC_MMIO
>  	select GENERIC_IRQ_CHIP
> @@ -105,11 +106,11 @@ config ARCH_OMAP2PLUS
>  	select OMAP_DM_TIMER
>  	select OMAP_GPMC
>  	select PINCTRL
> +	select RESET_CONTROLLER
>  	select SOC_BUS
>  	select TI_SYSC
>  	select OMAP_IRQCHIP
>  	select CLKSRC_TI_32K
> -	select ARCH_HAS_RESET_CONTROLLER
>  	help
>  	  Systems based on OMAP2, OMAP3, OMAP4 or OMAP5
>  
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
