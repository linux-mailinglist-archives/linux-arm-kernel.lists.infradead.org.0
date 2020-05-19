Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4111D9E27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 19:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4bxM5J63m2Y137vQlTGXlAptYI1a2KX5WUD1DzqjBU=; b=kNRldK7za1e+Ma
	52L3O+wzZUOgIcifrsj5cbUuxAiS6W5zCoUgRON3f7Cksk822pNCM4RFeAlKAQHJSCQ/igyTyBEA6
	wWTwSUzIVSlyAghy5IOQIyPXVq/RJODwcfZOODZScnABHjn5r+4ED21qebxhxNKpHfgEnFJx318Qj
	EKe9s6p4BrW29Nh/R2G6o9FyoFk2Tbxm+VWAUlqzXpvy4wdPwCJJbZKCgcjzABQ9T3Bm838MP+Vnx
	j31Bi0K+bbVtfqYCCRoTl7BfxHFPVYqD103Dc08kIHtY3UqZZGJOHm32rggLPk5Q0u480UPS4w+dj
	k92i5FVpT36IJDgznocA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6Jh-0002nW-RP; Tue, 19 May 2020 17:46:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6JY-0002l7-EF
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 17:46:05 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4D92980FA;
 Tue, 19 May 2020 17:46:48 +0000 (UTC)
Date: Tue, 19 May 2020 10:45:55 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 1/1] soc: ti: omap-prm: use atomic iopoll instead of
 sleeping one
Message-ID: <20200519174555.GX37466@atomide.com>
References: <20200514073718.17690-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514073718.17690-1-t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_104604_514941_82C70EB2 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: s-anna@ti.com, linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssantosh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [200514 00:38]:
> The reset handling APIs for omap-prm can be invoked PM runtime which
> runs in atomic context. For this to work properly, switch to atomic
> iopoll version instead of the current which can sleep. Otherwise,
> this throws a "BUG: scheduling while atomic" warning. Issue is seen
> rather easily when CONFIG_PREEMPT is enabled.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>

Santosh do you want me to pick this for fixes?

Regards,

Tony

> ---
>  drivers/soc/ti/omap_prm.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> index 96c6f777519c..c9b3f9ebf0bb 100644
> --- a/drivers/soc/ti/omap_prm.c
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -256,10 +256,10 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  		goto exit;
>  
>  	/* wait for the status to be set */
> -	ret = readl_relaxed_poll_timeout(reset->prm->base +
> -					 reset->prm->data->rstst,
> -					 v, v & BIT(st_bit), 1,
> -					 OMAP_RESET_MAX_WAIT);
> +	ret = readl_relaxed_poll_timeout_atomic(reset->prm->base +
> +						 reset->prm->data->rstst,
> +						 v, v & BIT(st_bit), 1,
> +						 OMAP_RESET_MAX_WAIT);
>  	if (ret)
>  		pr_err("%s: timedout waiting for %s:%lu\n", __func__,
>  		       reset->prm->data->name, id);
> -- 
> 2.17.1
> 
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
