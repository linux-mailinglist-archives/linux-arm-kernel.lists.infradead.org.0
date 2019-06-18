Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B2A4A2B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLea3J93t4nAQSilbcfWQwbadnvP4s1q2J6qSQKA9mE=; b=Z8a8tNIXTIMjK3
	SQinEiCbwCelm4gTS7SH3EweD8vBFTzwtjG4PZuWwPkWouoJNCWQfoBqhW+rmU30otY3hGNIHpl0e
	ystKqIjrGxUFQ/evEXJbL8TJi2SqhCYkipQIgzWUp8omaG1SPiPdNL4gGBsnfeV6zOIQL5Fppn79x
	jXE2I2BnT5QohcJHZdW052036m31N2RMm7nENOKGZG83jDjZyWAUBnTslNV0WR1UpCHzzVzR4ADMi
	rNBKDdnBG/To+N24F+s0HeXziYj9jcFMykhniAYvAW7Nok5GUMvaq8Vc6VlB8znaDefREA16ZAqPS
	/f9kQ3c/0x8V4ugHQMLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdESw-0006WD-HI; Tue, 18 Jun 2019 13:48:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdESh-0006Va-JE
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:47:49 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D462820873;
 Tue, 18 Jun 2019 13:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560865667;
 bh=ex6B0eU+nOg754XhdmfknhC2aHUm3CdLH/WdTm5Ma1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2p4RIl0h+y7vm1MTexI6/8VCUL8s+z3hoP+M2WhA14d+oxlLLuYYTFCiAUaKm0yMQ
 erii8rrepu5XirKNOuoS8JIJ7Zi4y6oSoV1b0DwHxlQFdKGqUGu+ELCjCyf4qOR/Gk
 +E7MsKxLfOpYQFLG0XdEGwS/7MpZvor8R0QnhiPo=
Date: Tue, 18 Jun 2019 21:46:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ding Xiang <dingxiang@cmss.chinamobile.com>,
 Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] Arm: zx: remove redundant dev_err message
Message-ID: <20190618134634.GL1959@dragon>
References: <1560843541-11611-1-git-send-email-dingxiang@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560843541-11611-1-git-send-email-dingxiang@cmss.chinamobile.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_064747_648026_83638F44 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jun.nie@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 03:39:01PM +0800, Ding Xiang wrote:
> devm_ioremap_resource already contains error message, so remove
> the redundant dev_err message
> 
> Signed-off-by: Ding Xiang <dingxiang@cmss.chinamobile.com>

Acked-by: Shawn Guo <shawnguo@kernel.org>

Arnd, Olof,

Can you please apply it to arm-soc tree?  Thanks.

Shawn

> ---
>  arch/arm/mach-zx/zx296702-pm-domain.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-zx/zx296702-pm-domain.c b/arch/arm/mach-zx/zx296702-pm-domain.c
> index 7a08bf9d..ac44ea8 100644
> --- a/arch/arm/mach-zx/zx296702-pm-domain.c
> +++ b/arch/arm/mach-zx/zx296702-pm-domain.c
> @@ -169,10 +169,8 @@ static int zx296702_pd_probe(struct platform_device *pdev)
>  	}
>  
>  	pcubase = devm_ioremap_resource(&pdev->dev, res);
> -	if (IS_ERR(pcubase)) {
> -		dev_err(&pdev->dev, "ioremap fail.\n");
> +	if (IS_ERR(pcubase))
>  		return -EIO;
> -	}
>  
>  	for (i = 0; i < ARRAY_SIZE(zx296702_pm_domains); ++i)
>  		pm_genpd_init(zx296702_pm_domains[i], NULL, false);
> -- 
> 1.9.1
> 
> 
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
