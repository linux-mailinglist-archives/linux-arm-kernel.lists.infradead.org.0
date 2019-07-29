Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1F078798
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 10:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWypPR5+XNhipndhXnG4ywW7Wa4w7LhM5UCZRwtP04A=; b=tdyoI68DsAsF88
	KzBBlJkIrmuY2/TLdjRzk2wH412n831PZhpVFALSYUASFlX/hh8eNQ4PdhAvDRlRCDouKzQgyrymf
	aKVyXrcnjnLXzOgr1uZyKRKIxl44VKJakVl2e88UnJGOFXzrnjLEjvdhYe/rj5ul6f5Fd2d+ym7Qb
	2bNsMBkRFJ//pF6NAPdgEeYQdmaQNhHhcEYAHlihpFiy/X4kWA0jl+PZ1hTZ9Co44R9jbp8NW/3uj
	ZXn3SepYA+uSiPpCVHNPBDbf7SOARW8hnojNuppq4XwDrmD+dyt1e9h+Dh6GO/3qkzTsyh+IjY7nb
	9Wp2R1cpQOw5FC4t6SCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1B0-0007xp-JU; Mon, 29 Jul 2019 08:38:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1An-0007mz-5X
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:38:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1hs1Ai-0003hV-Kq; Mon, 29 Jul 2019 10:38:20 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1hs1Ai-0007CB-2a; Mon, 29 Jul 2019 10:38:20 +0200
Date: Mon, 29 Jul 2019 10:38:20 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>
Subject: Re: [PATCH] mailbox: imx: add support for imx v1 mu
Message-ID: <20190729083820.feoc3ohetzaomb32@pengutronix.de>
References: <1564366440-10970-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564366440-10970-1-git-send-email-hongxing.zhu@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:29:11 up 72 days, 14:47, 49 users,  load average: 0.00, 0.01, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_013825_374986_0CB8CD5D 
X-CRM114-Status: GOOD (  21.29  )
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
Cc: aisheng.dong@nxp.com, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

please use format [PATCH v2] description. It is automatically done with
git format-patch -v2

On Mon, Jul 29, 2019 at 10:14:00AM +0800, Richard Zhu wrote:
> There is a version1.0 MU on i.MX7ULP platform.
> One new version ID register is added, and it's offset is 0.
> TRn registers are defined at the offset 0x20 ~ 0x2C.
> RRn registers are defined at the offset 0x40 ~ 0x4C.
> SR/CR registers are defined at 0x60/0x64.
> Extend this driver to support it.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---

change log can be done here or in a message automatically generate by
format patch:
git format-patch --cover-letter -v2

>  drivers/mailbox/imx-mailbox.c | 67 ++++++++++++++++++++++++++++++++-----------
>  1 file changed, 50 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 25be8bb..8423a38 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -12,19 +12,11 @@
>  #include <linux/of_device.h>
>  #include <linux/slab.h>
>  
> -/* Transmit Register */
> -#define IMX_MU_xTRn(x)		(0x00 + 4 * (x))
> -/* Receive Register */
> -#define IMX_MU_xRRn(x)		(0x10 + 4 * (x))
> -/* Status Register */
> -#define IMX_MU_xSR		0x20
>  #define IMX_MU_xSR_GIPn(x)	BIT(28 + (3 - (x)))
>  #define IMX_MU_xSR_RFn(x)	BIT(24 + (3 - (x)))
>  #define IMX_MU_xSR_TEn(x)	BIT(20 + (3 - (x)))
>  #define IMX_MU_xSR_BRDIP	BIT(9)
>  
> -/* Control Register */
> -#define IMX_MU_xCR		0x24
>  /* General Purpose Interrupt Enable */
>  #define IMX_MU_xCR_GIEn(x)	BIT(28 + (3 - (x)))
>  /* Receive Interrupt Enable */
> @@ -44,6 +36,13 @@ enum imx_mu_chan_type {
>  	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
>  };
>  
> +struct imx_mu_dcfg {
> +	u32	xTR[4];		/* Transmit Registers */
> +	u32	xRR[4];		/* Receive Registers */
> +	u32	xSR;		/* Status Register */
> +	u32	xCR;		/* Control Register */
> +};
> +
>  struct imx_mu_con_priv {
>  	unsigned int		idx;
>  	char			irq_desc[IMX_MU_CHAN_NAME_SIZE];
> @@ -61,12 +60,39 @@ struct imx_mu_priv {
>  	struct mbox_chan	mbox_chans[IMX_MU_CHANS];
>  
>  	struct imx_mu_con_priv  con_priv[IMX_MU_CHANS];
> +	const struct imx_mu_dcfg	*dcfg;
>  	struct clk		*clk;
>  	int			irq;
>  
>  	bool			side_b;
>  };
>  
> +static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> +	.xTR[0]	= 0x0,
> +	.xTR[1]	= 0x4,
> +	.xTR[2]	= 0x8,
> +	.xTR[3]	= 0xC,

I would prefer to init arrays this way:
        .xTR[] = {0x0, 0x4, 0x8, 0xc},

For every thing else
Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

> +	.xRR[0]	= 0x10,
> +	.xRR[1]	= 0x14,
> +	.xRR[2]	= 0x18,
> +	.xRR[3]	= 0x1C,
> +	.xSR	= 0x20,
> +	.xCR	= 0x24,
> +};
> +
> +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> +	.xTR[0]	= 0x20,
> +	.xTR[1]	= 0x24,
> +	.xTR[2]	= 0x28,
> +	.xTR[3]	= 0x2C,
> +	.xRR[0]	= 0x40,
> +	.xRR[1]	= 0x44,
> +	.xRR[2]	= 0x48,
> +	.xRR[3]	= 0x4C,
> +	.xSR	= 0x60,
> +	.xCR	= 0x64,
> +};
> +
>  static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller *mbox)
>  {
>  	return container_of(mbox, struct imx_mu_priv, mbox);
> @@ -88,10 +114,10 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
>  	u32 val;
>  
>  	spin_lock_irqsave(&priv->xcr_lock, flags);
> -	val = imx_mu_read(priv, IMX_MU_xCR);
> +	val = imx_mu_read(priv, priv->dcfg->xCR);
>  	val &= ~clr;
>  	val |= set;
> -	imx_mu_write(priv, val, IMX_MU_xCR);
> +	imx_mu_write(priv, val, priv->dcfg->xCR);
>  	spin_unlock_irqrestore(&priv->xcr_lock, flags);
>  
>  	return val;
> @@ -111,8 +137,8 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>  	struct imx_mu_con_priv *cp = chan->con_priv;
>  	u32 val, ctrl, dat;
>  
> -	ctrl = imx_mu_read(priv, IMX_MU_xCR);
> -	val = imx_mu_read(priv, IMX_MU_xSR);
> +	ctrl = imx_mu_read(priv, priv->dcfg->xCR);
> +	val = imx_mu_read(priv, priv->dcfg->xSR);
>  
>  	switch (cp->type) {
>  	case IMX_MU_TYPE_TX:
> @@ -138,10 +164,10 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>  		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
>  		mbox_chan_txdone(chan, 0);
>  	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> -		dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
> +		dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
>  		mbox_chan_received_data(chan, (void *)&dat);
>  	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
> -		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), IMX_MU_xSR);
> +		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR);
>  		mbox_chan_received_data(chan, NULL);
>  	} else {
>  		dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
> @@ -159,7 +185,7 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
>  
>  	switch (cp->type) {
>  	case IMX_MU_TYPE_TX:
> -		imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
> +		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
>  		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
>  		break;
>  	case IMX_MU_TYPE_TXDB:
> @@ -257,7 +283,7 @@ static void imx_mu_init_generic(struct imx_mu_priv *priv)
>  		return;
>  
>  	/* Set default MU configuration */
> -	imx_mu_write(priv, 0, IMX_MU_xCR);
> +	imx_mu_write(priv, 0, priv->dcfg->xCR);
>  }
>  
>  static int imx_mu_probe(struct platform_device *pdev)
> @@ -265,6 +291,7 @@ static int imx_mu_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
>  	struct imx_mu_priv *priv;
> +	const struct imx_mu_dcfg *dcfg;
>  	unsigned int i;
>  	int ret;
>  
> @@ -282,6 +309,11 @@ static int imx_mu_probe(struct platform_device *pdev)
>  	if (priv->irq < 0)
>  		return priv->irq;
>  
> +	dcfg = of_device_get_match_data(dev);
> +	if (!dcfg)
> +		return -EINVAL;
> +	priv->dcfg = dcfg;
> +
>  	priv->clk = devm_clk_get(dev, NULL);
>  	if (IS_ERR(priv->clk)) {
>  		if (PTR_ERR(priv->clk) != -ENOENT)
> @@ -335,7 +367,8 @@ static int imx_mu_remove(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id imx_mu_dt_ids[] = {
> -	{ .compatible = "fsl,imx6sx-mu" },
> +	{ .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
> +	{ .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
