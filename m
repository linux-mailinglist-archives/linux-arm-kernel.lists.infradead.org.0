Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219711C7B15
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 22:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMx+96MgV88dNqMe9RFeI27P1pAqO6NwLX5ob+FN2JI=; b=NvnmY+c2VImo2Z
	xsBpxGeIcj5IRu2V6BuXMIH7hwJTkoxPEsJf2GJHHdTErgFWf6IYs4pzhlBpdF4Ow23g5aApNYjOd
	h8oaxo1/MFmsybVBpzeMisYsnxmrNSsZqXl//qTRn5v5mboYVtyvhFc0JF2wjzzBFXS++8tgO7I0O
	HcctpvAS86S+5jT5kQLvZKyBVI4CYg1PYe8hduVf46wQc/Hnz1UkU3Kp0qwIkLvP/33yll3iinxqb
	ffwfT9Hdlmu/QH+93p+Aad79k8vOwxA1YBN3CVimowtPvCMe8IzsGpDMLL1bYES6lM98ZaS1FArZm
	L5aF8Akw2tg7G1EK7p3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQVM-0007kB-Ph; Wed, 06 May 2020 20:18:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQVB-0007iy-VI
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 20:18:49 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 297D02075E;
 Wed,  6 May 2020 20:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588796325;
 bh=8Sej8aUk9IaZRIgP1lsxb1KUmZLb9ww84lQcyW/w7JA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=koDl/cfHbwUDaHEDXE9KShFTvX2BsBlgoa16I9Uk+ojauzDcpR4gP1c8k9R7aU360
 4VzN7manhmTrbJcwtgeUNHAnlq47ZK2mMIaRBW2vPAF4Hzqr+V1BTNn9TOWx/HQQMT
 mYG4LKhMXVfxpNDXU4ZVvuGbwq0qG/DhC5mVh98Q=
Date: Wed, 6 May 2020 13:18:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: <nicolas.ferre@microchip.com>
Subject: Re: [PATCH v4 1/5] net: macb: fix wakeup test in runtime
 suspend/resume routines
Message-ID: <20200506131843.22cf1dab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <dc30ff1d17cb5a75ddd10966eab001f67ac744ef.1588763703.git.nicolas.ferre@microchip.com>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
 <dc30ff1d17cb5a75ddd10966eab001f67ac744ef.1588763703.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_131846_025391_CAB3E99A 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 13:37:37 +0200 nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Use the proper struct device pointer to check if the wakeup flag
> and wakeup source are positioned.
> Use the one passed by function call which is equivalent to
> &bp->dev->dev.parent.
> 
> It's preventing the trigger of a spurious interrupt in case the
> Wake-on-Lan feature is used.
> 
> Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")

        Fixes tag: Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
        Has these problem(s):
                - Target SHA1 does not exist

> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> ---
>  drivers/net/ethernet/cadence/macb_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 36290a8e2a84..d11fae37d46b 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -4616,7 +4616,7 @@ static int __maybe_unused macb_runtime_suspend(struct device *dev)
>  	struct net_device *netdev = dev_get_drvdata(dev);
>  	struct macb *bp = netdev_priv(netdev);
>  
> -	if (!(device_may_wakeup(&bp->dev->dev))) {
> +	if (!(device_may_wakeup(dev))) {
>  		clk_disable_unprepare(bp->tx_clk);
>  		clk_disable_unprepare(bp->hclk);
>  		clk_disable_unprepare(bp->pclk);
> @@ -4632,7 +4632,7 @@ static int __maybe_unused macb_runtime_resume(struct device *dev)
>  	struct net_device *netdev = dev_get_drvdata(dev);
>  	struct macb *bp = netdev_priv(netdev);
>  
> -	if (!(device_may_wakeup(&bp->dev->dev))) {
> +	if (!(device_may_wakeup(dev))) {
>  		clk_prepare_enable(bp->pclk);
>  		clk_prepare_enable(bp->hclk);
>  		clk_prepare_enable(bp->tx_clk);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
