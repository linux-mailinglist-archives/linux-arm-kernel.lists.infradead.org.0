Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7BD1E62A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T52n+SkJ74jYTlmCa2odTyEJrihBzqW7dVjjfsH5fFQ=; b=OF11yUwYQvnZ3N
	j+r79GNwDGf9ORF2F4cpQ2hz7RHDm4MSzP9VrFl12XrG5AKCuDvNq87R+PEkxdUsGDNoU8WEOYQXB
	GNH7tosWLO7LKv8pczUFaiFjQjNw8Tj/TR4AwfvCM2OzTLo68G421Jeis6Q9W3eQBcShYIuu5iY7m
	hzW4j4C5PFaJD2qNK719shEcCSldRnNysGXx+Bkf15+stFzg0tQe6d5FtWDzf4A8bWUY5PbdzwIY2
	xwdAeQ/nqnX1V5rDwT5PcrFJNgK0uIybNn2ZU8SvT0W5LKCpNExeYwpgjavxHtKeHEOOK1y+fM2Wu
	vJcHvJi2vXUFMVuM9d9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIrl-0006zd-41; Thu, 28 May 2020 13:46:37 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIrZ-0006zG-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:46:26 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 72A0680BF;
 Thu, 28 May 2020 13:47:14 +0000 (UTC)
Date: Thu, 28 May 2020 06:46:21 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2: drop broken broadcast timer hack
Message-ID: <20200528134621.GN37466@atomide.com>
References: <20200528091923.2951100-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528091923.2951100-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_064625_296252_E67E24CF 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, arm@kernel.org, Olof Johansson <olof@lixom.net>,
 linux-omap@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [200528 09:20]:
> The OMAP4 timer code had a special hack for using the broadcast timer
> without SMP. Since the dmtimer is now gone, this also needs to be dropped
> to avoid a link failure for non-SMP AM43xx configurations:
> 
> kernel/time/tick-broadcast.o: in function `tick_device_uses_broadcast':
> tick-broadcast.c:(.text+0x130): undefined reference to `tick_broadcast'

Hmm this sounds like a regression though. Isn't this needed for using
the ARM local timers on non-SMP SoC, so a separate timer from dmtimer?

I've probably removed something accidentally to cause this.

Regards,

Tony


> Fixes: 2ee04b88547a ("ARM: OMAP2+: Drop old timer code for dmtimer and 32k counter")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-omap2/Kconfig | 1 -
>  arch/arm/mach-omap2/timer.c | 6 ------
>  2 files changed, 7 deletions(-)
> 
> diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
> index ca74473f01df..ec4450a5c296 100644
> --- a/arch/arm/mach-omap2/Kconfig
> +++ b/arch/arm/mach-omap2/Kconfig
> @@ -67,7 +67,6 @@ config SOC_AM43XX
>  	select ARM_GIC
>  	select MACH_OMAP_GENERIC
>  	select HAVE_ARM_SCU
> -	select GENERIC_CLOCKEVENTS_BROADCAST
>  	select HAVE_ARM_TWD
>  	select ARM_ERRATA_754322
>  	select ARM_ERRATA_775420
> diff --git a/arch/arm/mach-omap2/timer.c b/arch/arm/mach-omap2/timer.c
> index 2d4ea386fc38..786336ee27ef 100644
> --- a/arch/arm/mach-omap2/timer.c
> +++ b/arch/arm/mach-omap2/timer.c
> @@ -46,12 +46,6 @@ void set_cntfreq(void)
>  	omap_smc1(OMAP5_DRA7_MON_SET_CNTFRQ_INDEX, arch_timer_freq);
>  }
>  
> -#if !defined(CONFIG_SMP) && defined(CONFIG_GENERIC_CLOCKEVENTS_BROADCAST)
> -void tick_broadcast(const struct cpumask *mask)
> -{
> -}
> -#endif
> -
>  #if defined(CONFIG_SOC_OMAP5) || defined(CONFIG_SOC_DRA7XX)
>  
>  /*
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
