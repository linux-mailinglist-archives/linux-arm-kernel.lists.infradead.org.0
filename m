Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E61A1B24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6pzb+HlaB89mjdZ+LB9juLVRG1CaVpKzTxLqL0TK00=; b=f9aRudAsTqXzDi
	2LywPQOeuedrfgOx+cCNLWcqheLTTS9mawZBXL4v0ZjYNxfMth2NuJiCO+BgCp0if9ZEe7ba34MbZ
	+fFCNfvHb/VRHQDJI1TChZWycqRJ73+O+il5bS2yi9PiWnrsazU3NIzGlAgOA1YOAYE0ERcauYVc4
	nW7MeJhH7+cp0gDZuZyfW169mdIixuZLvgkBeQ/aKCtCAhYiPziP8Tht3XxBiO2KXELQIWRgasiHr
	HC4w9isBbJS4jB7Iw8kTSb06tECB/7lteMTWEEurELz1hHGxps5m4CMYeNkVgC2YzKsZDX4+k0TWu
	GB6UIvsUtDnOLpdirxnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KG8-000368-8z; Thu, 29 Aug 2019 13:14:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KFy-00035n-VB
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:14:32 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i3KFv-0003L0-Rd; Thu, 29 Aug 2019 15:14:27 +0200
Message-ID: <1567084467.5345.9.camel@pengutronix.de>
Subject: Re: [PATCHv2 03/11] soc: ti: omap-prm: poll for reset complete
 during de-assert
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tero Kristo <t-kristo@ti.com>, ssantosh@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 robh+dt@kernel.org
Date: Thu, 29 Aug 2019 15:14:27 +0200
In-Reply-To: <20190828071941.32378-4-t-kristo@ti.com>
References: <20190828071941.32378-1-t-kristo@ti.com>
 <20190828071941.32378-4-t-kristo@ti.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_061431_005619_B59B2252 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On Wed, 2019-08-28 at 10:19 +0300, Tero Kristo wrote:
> Poll for reset completion status during de-assertion of reset, otherwise
> the IP in question might be accessed before it has left reset properly.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/soc/ti/omap_prm.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> index fd5c431f8736..afeb70761b27 100644
> --- a/drivers/soc/ti/omap_prm.c
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -127,6 +127,7 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  	u32 v;
>  	int st_bit;
>  	bool has_rstst;
> +	int timeout = 0;
>  
>  	if (!_is_valid_reset(reset, id))
>  		return -EINVAL;
> @@ -153,6 +154,25 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  	v &= ~(1 << id);
>  	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
>  
> +	if (!has_rstst)
> +		return 0;
> +
> +	/* wait for the status to be set */
> +	while (1) {
> +		v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
> +		v &= 1 << st_bit;
> +		if (v)
> +			break;
> +		timeout++;
> +		if (timeout > OMAP_RESET_MAX_WAIT) {
> +			pr_err("%s: timedout waiting for %s:%lu\n", __func__,
> +			       dev_name(rcdev->dev), id);
> +			return -EBUSY;
> +		}
> +
> +		udelay(1);
> +	}

This looks like you could use

	readl_relaxed_poll_timeout(_atomic)

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
