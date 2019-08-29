Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14B1A1B58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qezqI7ZlF2iAtRICsWXgOVT3qghmldz/edGaFVX8Qjc=; b=K950W3Usd1RjNP
	b6a9oTmQ/z0+y3blgQrcGE/hnMefNEGDg53PadrHvDVkcIaxpV10xRWO/f/R8UnBF0r6ELWIW2ET3
	qT1CTobMM3os0pOqceJVflEJHaK60qNmHO5s2SGV0BUcPEWHf89jIH3D0jSG0E2JQDaDmztrSZYnj
	dXok1DkAjFsf4cgaWrt1By6bHKUI6ozskv8lF+cbtfzb5yCtZho+EWeTeb2+RFD/Rb8SmEU5UzOH/
	1Ji8R/LFG5NEmEHv+iSuJakwAbXWIO3eV+ADYa7Rzr/EnK8JMbIJePID5NPC7ab65eogBItr9b8an
	c1z4mbvuCk+UhHXrZb5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KQh-00008y-56; Thu, 29 Aug 2019 13:25:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KQQ-00008b-UX
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:25:20 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i3KQN-0004VF-23; Thu, 29 Aug 2019 15:25:15 +0200
Message-ID: <1567085114.5345.12.camel@pengutronix.de>
Subject: Re: [PATCHv2 05/11] soc: ti: omap-prm: sync func clock status with
 resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tero Kristo <t-kristo@ti.com>, ssantosh@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 robh+dt@kernel.org
Date: Thu, 29 Aug 2019 15:25:14 +0200
In-Reply-To: <20190828071941.32378-6-t-kristo@ti.com>
References: <20190828071941.32378-1-t-kristo@ti.com>
 <20190828071941.32378-6-t-kristo@ti.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_062518_985685_498B8862 
X-CRM114-Status: GOOD (  17.01  )
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

On Wed, 2019-08-28 at 10:19 +0300, Tero Kristo wrote:
> Hardware reset signals are tightly coupled with associated clocks, and
> basically de-asserting a reset won't succeed properly if the clock is
> not enabled, and vice-versa. Also, disabling a clock won't fully succeed
> if the associated hardware resets are not asserted. Add status sync
> functionality between these two for TI drivers so that the situations
> can be handled properly without generating any timeouts.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/soc/ti/omap_prm.c | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> index 38998ce19c71..e876bad8f8d5 100644
> --- a/drivers/soc/ti/omap_prm.c
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -15,6 +15,8 @@
>  #include <linux/platform_device.h>
>  #include <linux/reset-controller.h>
>  #include <linux/delay.h>
> +#include <linux/clk.h>
> +#include <linux/clk/ti.h>
>  
>  #include <linux/platform_data/ti-prm.h>
>  
> @@ -42,7 +44,9 @@ struct omap_reset_data {
>  	struct reset_controller_dev rcdev;
>  	struct omap_prm *prm;
>  	struct clockdomain *clkdm;
> +	struct clk *clk;
>  	struct device *dev;
> +	u32 mask;
>  };
>  
>  #define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
> @@ -102,6 +106,8 @@ static int omap_reset_assert(struct reset_controller_dev *rcdev,
>  	v |= 1 << id;
>  	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
>  
> +	ti_clk_notify_resets(reset->clk, v == reset->mask);
> +
>  	return 0;
>  }
>  
> @@ -163,9 +169,19 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>  	v &= ~(1 << id);
>  	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
>  
> +	ti_clk_notify_resets(reset->clk, v == reset->mask);
> +
>  	if (!has_rstst)
>  		goto exit;
>  
> +	/* If associated clock is disabled, we can't poll completion status */
> +	if (reset->clk) {
> +		struct clk_hw *hw = __clk_get_hw(reset->clk);
> +
> +		if (!clk_hw_is_enabled(hw))
> +			return ret;
> +	}
> +
>  	/* wait for the status to be set */
>  	while (1) {
>  		v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
> @@ -199,8 +215,10 @@ static int omap_prm_reset_init(struct platform_device *pdev,
>  			       struct omap_prm *prm)
>  {
>  	struct omap_reset_data *reset;
> +	const struct omap_rst_map *map;
>  	struct ti_prm_platform_data *pdata = dev_get_platdata(&pdev->dev);
>  	char buf[32];
> +	u32 v;
>  
>  	/*
>  	 * Check if we have controllable resets. If either rstctrl is non-zero
> @@ -215,6 +233,10 @@ static int omap_prm_reset_init(struct platform_device *pdev,
>  	    !pdata->clkdm_allow_idle)
>  		return -EINVAL;
>  
> +	map = prm->data->rstmap;
> +	if (!map)
> +		return -EINVAL;

Can this actually happen?

> +
>  	reset = devm_kzalloc(&pdev->dev, sizeof(*reset), GFP_KERNEL);
>  	if (!reset)
>  		return -ENOMEM;
> @@ -224,6 +246,10 @@ static int omap_prm_reset_init(struct platform_device *pdev,
>  	reset->rcdev.of_node = pdev->dev.of_node;
>  	reset->rcdev.nr_resets = OMAP_MAX_RESETS;
>  	reset->dev = &pdev->dev;
> +	reset->clk = of_clk_get(pdev->dev.of_node, 0);
> +
> +	if (IS_ERR(reset->clk))
> +		reset->clk = NULL;

Maybe only ignore -ENOENT?

>  	reset->prm = prm;
>  
> @@ -234,6 +260,16 @@ static int omap_prm_reset_init(struct platform_device *pdev,
>  	if (!reset->clkdm)
>  		return -EINVAL;
>  
> +	while (map->rst >= 0) {
> +		reset->mask |= BIT(map->rst);
> +		map++;
> +	}

With this, you could use reset->mask to simplify _is_valid_reset.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
