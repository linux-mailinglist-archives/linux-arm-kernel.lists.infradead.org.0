Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07635A4315
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 09:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwEz/QCWb5oyQtTjIQ+lcW+Oh7ScHGNPi4TCeL04KIk=; b=uZhezI0Kndi6C/
	mBKJw6nCnTW3dJ+AJV66rdcUu2OJQTRZYgCpL+krGEhm5kzErfOR3NfWKlLJzXrX1ssQkaX7EZgZ0
	c/4diGRf2Kc2TNgb8sLoT1rSsg6pMtfnbe3+s6oYCYnsxC/8jwapCG8ZeaTJa1JULNxnZvT5T+tgP
	++eDSJn3AkI1SsnBjMDoUZ15Ii3wzNQ5xqHTsVv/UcJuVb/xdY5aeuSvfirFq0eH2VBSET5FYdmJp
	PaOgRUpngFqAaVg2IsJFi0hfYz1MMH1WWSLs1mHhZ0Dny9HyXLqcS7kz8WjlYKhrgY31fxeR/4Z3+
	CD8UqexAu/2XP5zHCaXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3xpW-0001j9-2I; Sat, 31 Aug 2019 07:29:50 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3xp3-0001iQ-En
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 07:29:23 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D186225AEC1;
 Sat, 31 Aug 2019 17:29:16 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id AC331E218F0; Sat, 31 Aug 2019 09:29:14 +0200 (CEST)
Date: Sat, 31 Aug 2019 09:29:14 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: ARM_ERRATA_775420: Spelling s/date/data/
Message-ID: <20190831072914.54vy2mvkk2iuovsg@verge.net.au>
References: <20190828133151.20585-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828133151.20585-1-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_002921_651180_71045DE2 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 03:31:51PM +0200, Geert Uytterhoeven wrote:
> Caching dates is never a good idea ;-)
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
>  arch/arm/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index dcf46f0e45c24a5f..eb18279a63027c08 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1040,7 +1040,7 @@ config ARM_ERRATA_775420
>         depends on CPU_V7
>         help
>  	 This option enables the workaround for the 775420 Cortex-A9 (r2p2,
> -	 r2p6,r2p8,r2p10,r3p0) erratum. In case a date cache maintenance
> +	 r2p6,r2p8,r2p10,r3p0) erratum. In case a data cache maintenance
>  	 operation aborts with MMU exception, it might cause the processor
>  	 to deadlock. This workaround puts DSB before executing ISB if
>  	 an abort may occur on cache maintenance.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
