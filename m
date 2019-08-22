Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E740298E98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCZkNQD1Vw3gZj788MGGO5aUWPHm4ZYJgxnOInmGAKo=; b=t4FMc0BiGUYvyS
	Z44+ZXuQSeVjJvbhcgwvLaPmLZfi+bmzfbqt5QJiaPAR0aGO03Xb/IDFzj+YY4e0FovdgxJQUrMgi
	ePfDoSBKYeK9R81SsurM/JpbofwAQtDXc/RZB0rb5xamP8vqPpsfoS/pIuvFKQIH3zIerYAEM6Bcj
	G8AFRGs3CIKXsaGT77nf6EutVRhmr/N76NhqOH8sVzH7PcX/WjBGW57GCyYd9jCFu/aLpG5xJzSef
	u0PQ7obSImcIAymZctg20mXAeCkPp6i2aQ/zhpWqDtOM9hRvjrD+LHZO9nYggIgX9ORTktyjF5wZR
	65h0j0YPjbvLGAOhtCEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iyI-0008JD-DT; Thu, 22 Aug 2019 09:01:30 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iwn-0006UA-Hh
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:59:59 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 9420725AD59;
 Thu, 22 Aug 2019 18:59:56 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 781BC940804; Thu, 22 Aug 2019 10:59:54 +0200 (CEST)
Date: Thu, 22 Aug 2019 10:59:54 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 2/3] soc: renesas: Enable ARM_ERRATA_754322 for affected
 Cortex-A9
Message-ID: <20190822085954.pgid6tjd35tz3uam@verge.net.au>
References: <20190821124602.29317-1-geert+renesas@glider.be>
 <20190821124602.29317-3-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821124602.29317-3-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015957_946168_ABEA168D 
X-CRM114-Status: GOOD (  16.63  )
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 02:46:01PM +0200, Geert Uytterhoeven wrote:
> ARM Erratum 754322 affects Cortex-A9 revisions r2p* and r3p*.
> 
> Enable support code to mitigate the erratum when compiling a kernel for
> any of the affected Renesas SoCs:
>   - RZ/A1: r3p0,
>   - R-Mobile A1: r2p4,
>   - R-Car M1A: r2p2-00rel0,
>   - R-Car H1: r3p0,
>   - SH-Mobile AG5: r2p2,
> and drop the corresponding config symbol from shmobile_defconfig.
> 
> EMMA Mobile EV2 (r1p3) and RZ/A2 (r4p1) are not affected.

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Looks like my R-Mobile A1 is actually r2p3, and the R-Car M1A in Magnus'
> farm is r2p4?
> 
>  arch/arm/configs/shmobile_defconfig | 1 -
>  drivers/soc/renesas/Kconfig         | 5 +++++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/configs/shmobile_defconfig b/arch/arm/configs/shmobile_defconfig
> index c6c70355141c38fa..123821e63873dafa 100644
> --- a/arch/arm/configs/shmobile_defconfig
> +++ b/arch/arm/configs/shmobile_defconfig
> @@ -9,7 +9,6 @@ CONFIG_PERF_EVENTS=y
>  CONFIG_SLAB=y
>  CONFIG_ARCH_RENESAS=y
>  CONFIG_PL310_ERRATA_588369=y
> -CONFIG_ARM_ERRATA_754322=y
>  CONFIG_SMP=y
>  CONFIG_SCHED_MC=y
>  CONFIG_NR_CPUS=8
> diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
> index a72d014ea37cc788..3c5e017bacbaca11 100644
> --- a/drivers/soc/renesas/Kconfig
> +++ b/drivers/soc/renesas/Kconfig
> @@ -55,6 +55,7 @@ config ARCH_EMEV2
>  
>  config ARCH_R7S72100
>  	bool "RZ/A1H (R7S72100)"
> +	select ARM_ERRATA_754322
>  	select PM
>  	select PM_GENERIC_DOMAINS
>  	select RENESAS_OSTM
> @@ -79,6 +80,7 @@ config ARCH_R8A73A4
>  config ARCH_R8A7740
>  	bool "R-Mobile A1 (R8A77400)"
>  	select ARCH_RMOBILE
> +	select ARM_ERRATA_754322
>  	select RENESAS_INTC_IRQPIN
>  
>  config ARCH_R8A7743
> @@ -108,10 +110,12 @@ config ARCH_R8A77470
>  config ARCH_R8A7778
>  	bool "R-Car M1A (R8A77781)"
>  	select ARCH_RCAR_GEN1
> +	select ARM_ERRATA_754322
>  
>  config ARCH_R8A7779
>  	bool "R-Car H1 (R8A77790)"
>  	select ARCH_RCAR_GEN1
> +	select ARM_ERRATA_754322
>  	select HAVE_ARM_SCU if SMP
>  	select HAVE_ARM_TWD if SMP
>  	select SYSC_R8A7779
> @@ -158,6 +162,7 @@ config ARCH_R9A06G032
>  config ARCH_SH73A0
>  	bool "SH-Mobile AG5 (R8A73A00)"
>  	select ARCH_RMOBILE
> +	select ARM_ERRATA_754322
>  	select HAVE_ARM_SCU if SMP
>  	select HAVE_ARM_TWD if SMP
>  	select RENESAS_INTC_IRQPIN
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
