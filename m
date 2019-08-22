Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B0C98E81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKX24ND4Lh0/fIh7JBVmSbwBNUiwPHzj6TuqtOAVzhE=; b=si+A9yQTtKzfYQ
	TbAotLmNBCOkupaHws+SbuNAlz6Fk9VkUVGYRyl4i2xTJYOlgykVPWgUqfZ/leKHpbLxX3saKdIWJ
	ZFTuTABIE79uIlPkt1s4qWEldmXwHFKM35bZurjXh0/mgov1Ui4iM/3uNWxnbI/AmKEEgkIEG0wrs
	yCvnn1ESEKtbTftQAFJPvNPYzei6b5kiV7Qa5ADUUaVHkaBs/fpVnsvDLcSFWTNguuQCjVx3TWYcF
	47CO9HKZae6tVuZFsTwgB4ILEq1pcvCb349lN0tY4nyXmXyQixica1NvDEjJpdNW7gmdzWSub8FQ+
	QiHp3YGDcUtPcA7ZPmcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ivN-0005dv-Tu; Thu, 22 Aug 2019 08:58:30 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iv1-0005cL-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:58:09 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 9628625AD59;
 Thu, 22 Aug 2019 18:58:06 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 66FAA940804; Thu, 22 Aug 2019 10:58:04 +0200 (CEST)
Date: Thu, 22 Aug 2019 10:58:04 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 3/3] [RFC] ARM: shmobile: defconfig: Disable
 PL310_ERRATA_588369
Message-ID: <20190822085804.rgyjxisnznmnura5@verge.net.au>
References: <20190821124602.29317-1-geert+renesas@glider.be>
 <20190821124602.29317-4-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821124602.29317-4-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015807_897463_F8F9F1FB 
X-CRM114-Status: GOOD (  18.51  )
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

On Wed, Aug 21, 2019 at 02:46:02PM +0200, Geert Uytterhoeven wrote:
> PL310 Erratum 588369 affects PL310 cache controller revisions older than
> r2p0.
> 
> As Renesas ARM SoCs contain the following revisions:
>   - SH-Mobile AG5: r3p1,
>   - R-Mobile A1: r3p1-50rel0,
>   - R-Car H1: r3p2,
>   - RZ/A1: r3p2,
>   - RZ/A2: r3p3,
> none of them are affected, and support for the errata can be disabled
> safely.
> 
> The EMMA Mobile EV2 documentation doesn't mention the revision of its
> PL310 cache controller, so this SoC might be affected.  However, the L2
> cache controller is not enabled by Linux.

If the controller is not enabled by Linux then I would think that the
Errata is not needed. If that is true then I agree with this patch.

Regarding making assumptions about the version of the PL310 cache
controller, I suggest that we cannot assume that it is not affected
without further information.

> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  arch/arm/configs/shmobile_defconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/configs/shmobile_defconfig b/arch/arm/configs/shmobile_defconfig
> index 123821e63873dafa..95a127cbe8e6fcd7 100644
> --- a/arch/arm/configs/shmobile_defconfig
> +++ b/arch/arm/configs/shmobile_defconfig
> @@ -8,7 +8,6 @@ CONFIG_CC_OPTIMIZE_FOR_SIZE=y
>  CONFIG_PERF_EVENTS=y
>  CONFIG_SLAB=y
>  CONFIG_ARCH_RENESAS=y
> -CONFIG_PL310_ERRATA_588369=y
>  CONFIG_SMP=y
>  CONFIG_SCHED_MC=y
>  CONFIG_NR_CPUS=8
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
