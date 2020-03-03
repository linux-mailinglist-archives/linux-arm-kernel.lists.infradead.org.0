Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D94117708D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FFC+sHxGsH/Kqx9RjNeyMoNX4TJSxDtWlb5/TeX7vRo=; b=FPcSJ+aw0yExD9d6vKfTTtxS5
	RO2Ym3fNAPfOA2EZcIBlPHQ++R1seeRojMmCO3X4GI2qzwWl6qCZoEBZoXQlfvGq5AAvTG3r6PZGJ
	ynZZnqLJyyVpyvSDtRt3WoGFobw3tFzDBfzGkQmxTJ/eu8R0jMCbk5cn9AOGTP0AZNrZ8keZ9M+bD
	eRxVUqKB7XgirAD1Gx5CH0VhRjn1ZmnUK3UWWLHJWZ3bJhRT0SibTC8cHgOswog9q3y9UhbsVcHz6
	8Ho7hhTSM7F7qrugJhGiREV6p0wngeIORdaIiGVPpkr6EwstUuSHd/1+2EwRPTiM69RwQvbhb7zxp
	XS+gFbiUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92Ox-0007KJ-GU; Tue, 03 Mar 2020 07:55:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Oo-0007JG-Lr
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:55:33 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1j92Ol-00047R-Fo; Tue, 03 Mar 2020 08:55:27 +0100
Subject: Re: [PATCH V5 2/4] mailbox: imx: restructure code to make easy for
 new MU
To: peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 jassisinghbrar@gmail.com
References: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
 <1583221359-9285-3-git-send-email-peng.fan@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <5fef0bc5-368e-f777-2d41-3fb54f9527cb@pengutronix.de>
Date: Tue, 3 Mar 2020 08:55:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583221359-9285-3-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_235530_883182_7400602F 
X-CRM114-Status: GOOD (  20.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: aisheng.dong@nxp.com, Anson.Huang@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03.03.20 08:42, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add imx_mu_generic_tx for data send and imx_mu_generic_rx for interrupt
> data receive.
> 
> Pack original mu chans related code into imx_mu_init_generic
> 
> Add tx/rx/init hooks into imx_mu_dcfg
> 
> With these, it will be a bit easy to introduce i.MX8/8X SCU type
> MU dedicated to communicate with SCU.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
> V5:
>   imx_mu_dcfg moved to below imx_mu_priv
>   Add init hooks
> 
> V4:
>   Pack MU chans init to imx_mu_init_generic
> V3:
>   New patch, restructure code.
> 
>   drivers/mailbox/imx-mailbox.c | 137 +++++++++++++++++++++++++-----------------
>   1 file changed, 83 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 2cdcdc5f1119..df6c4ecd913c 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -36,13 +36,6 @@ enum imx_mu_chan_type {
>   	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
>   };
>   
> -struct imx_mu_dcfg {
> -	u32	xTR[4];		/* Transmit Registers */
> -	u32	xRR[4];		/* Receive Registers */
> -	u32	xSR;		/* Status Register */
> -	u32	xCR;		/* Control Register */
> -};
> -
>   struct imx_mu_con_priv {
>   	unsigned int		idx;
>   	char			irq_desc[IMX_MU_CHAN_NAME_SIZE];
> @@ -67,18 +60,14 @@ struct imx_mu_priv {
>   	bool			side_b;
>   };
>   
> -static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> -	.xTR	= {0x0, 0x4, 0x8, 0xc},
> -	.xRR	= {0x10, 0x14, 0x18, 0x1c},
> -	.xSR	= 0x20,
> -	.xCR	= 0x24,
> -};
> -
> -static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> -	.xTR	= {0x20, 0x24, 0x28, 0x2c},
> -	.xRR	= {0x40, 0x44, 0x48, 0x4c},
> -	.xSR	= 0x60,
> -	.xCR	= 0x64,
> +struct imx_mu_dcfg {
> +	int (*tx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp, void *data);
> +	int (*rx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp);
> +	void (*init)(struct imx_mu_priv *priv);
> +	u32	xTR[4];		/* Transmit Registers */
> +	u32	xRR[4];		/* Receive Registers */
> +	u32	xSR;		/* Status Register */
> +	u32	xCR;		/* Control Register */
>   };
>   
>   static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller *mbox)
> @@ -111,6 +100,40 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
>   	return val;
>   }
>   
> +static int imx_mu_generic_tx(struct imx_mu_priv *priv,
> +			     struct imx_mu_con_priv *cp,
> +			     void *data)
> +{
> +	u32 *arg = data;
> +
> +	switch (cp->type) {
> +	case IMX_MU_TYPE_TX:
> +		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
> +		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
> +		break;
> +	case IMX_MU_TYPE_TXDB:
> +		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIRn(cp->idx), 0);
> +		tasklet_schedule(&cp->txdb_tasklet);
> +		break;
> +	default:
> +		dev_warn_ratelimited(priv->dev, "Send data on wrong channel type: %d\n", cp->type);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx_mu_generic_rx(struct imx_mu_priv *priv,
> +			     struct imx_mu_con_priv *cp)
> +{
> +	u32 dat;
> +
> +	dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
> +	mbox_chan_received_data(cp->chan, (void *)&dat);
> +
> +	return 0;
> +}
> +
>   static void imx_mu_txdb_tasklet(unsigned long data)
>   {
>   	struct imx_mu_con_priv *cp = (struct imx_mu_con_priv *)data;
> @@ -123,7 +146,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>   	struct mbox_chan *chan = p;
>   	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
>   	struct imx_mu_con_priv *cp = chan->con_priv;
> -	u32 val, ctrl, dat;
> +	u32 val, ctrl;
>   
>   	ctrl = imx_mu_read(priv, priv->dcfg->xCR);
>   	val = imx_mu_read(priv, priv->dcfg->xSR);
> @@ -152,8 +175,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>   		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
>   		mbox_chan_txdone(chan, 0);
>   	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> -		dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
> -		mbox_chan_received_data(chan, (void *)&dat);
> +		priv->dcfg->rx(priv, cp);
>   	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
>   		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR);
>   		mbox_chan_received_data(chan, NULL);
> @@ -169,23 +191,8 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
>   {
>   	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
>   	struct imx_mu_con_priv *cp = chan->con_priv;
> -	u32 *arg = data;
> -
> -	switch (cp->type) {
> -	case IMX_MU_TYPE_TX:
> -		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
> -		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
> -		break;
> -	case IMX_MU_TYPE_TXDB:
> -		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIRn(cp->idx), 0);
> -		tasklet_schedule(&cp->txdb_tasklet);
> -		break;
> -	default:
> -		dev_warn_ratelimited(priv->dev, "Send data on wrong channel type: %d\n", cp->type);
> -		return -EINVAL;
> -	}
>   
> -	return 0;
> +	return priv->dcfg->tx(priv, cp, data);
>   }
>   
>   static int imx_mu_startup(struct mbox_chan *chan)
> @@ -280,6 +287,22 @@ static struct mbox_chan * imx_mu_xlate(struct mbox_controller *mbox,
>   
>   static void imx_mu_init_generic(struct imx_mu_priv *priv)
>   {
> +	unsigned int i;
> +
> +	for (i = 0; i < IMX_MU_CHANS; i++) {
> +		struct imx_mu_con_priv *cp = &priv->con_priv[i];
> +
> +		cp->idx = i % 4;
> +		cp->type = i >> 2;
> +		cp->chan = &priv->mbox_chans[i];
> +		priv->mbox_chans[i].con_priv = cp;
> +		snprintf(cp->irq_desc, sizeof(cp->irq_desc),
> +			 "imx_mu_chan[%i-%i]", cp->type, cp->idx);
> +	}
> +
> +	priv->mbox.num_chans = IMX_MU_CHANS;
> +	priv->mbox.of_xlate = imx_mu_xlate;
> +
>   	if (priv->side_b)
>   		return;
>   
> @@ -293,7 +316,6 @@ static int imx_mu_probe(struct platform_device *pdev)
>   	struct device_node *np = dev->of_node;
>   	struct imx_mu_priv *priv;
>   	const struct imx_mu_dcfg *dcfg;
> -	unsigned int i;
>   	int ret;
>   
>   	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> @@ -329,32 +351,19 @@ static int imx_mu_probe(struct platform_device *pdev)
>   		return ret;
>   	}
>   
> -	for (i = 0; i < IMX_MU_CHANS; i++) {
> -		struct imx_mu_con_priv *cp = &priv->con_priv[i];
> -
> -		cp->idx = i % 4;
> -		cp->type = i >> 2;
> -		cp->chan = &priv->mbox_chans[i];
> -		priv->mbox_chans[i].con_priv = cp;
> -		snprintf(cp->irq_desc, sizeof(cp->irq_desc),
> -			 "imx_mu_chan[%i-%i]", cp->type, cp->idx);
> -	}
> -
>   	priv->side_b = of_property_read_bool(np, "fsl,mu-side-b");
>   
> +	priv->dcfg->init(priv);
> +
>   	spin_lock_init(&priv->xcr_lock);
>   
>   	priv->mbox.dev = dev;
>   	priv->mbox.ops = &imx_mu_ops;
>   	priv->mbox.chans = priv->mbox_chans;
> -	priv->mbox.num_chans = IMX_MU_CHANS;
> -	priv->mbox.of_xlate = imx_mu_xlate;
>   	priv->mbox.txdone_irq = true;
>   
>   	platform_set_drvdata(pdev, priv);
>   
> -	imx_mu_init_generic(priv);
> -
>   	return devm_mbox_controller_register(dev, &priv->mbox);
>   }
>   
> @@ -367,6 +376,26 @@ static int imx_mu_remove(struct platform_device *pdev)
>   	return 0;
>   }
>   
> +static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> +	.tx	= imx_mu_generic_tx,
> +	.rx	= imx_mu_generic_rx,
> +	.init	= imx_mu_init_generic,
> +	.xTR	= {0x0, 0x4, 0x8, 0xc},
> +	.xRR	= {0x10, 0x14, 0x18, 0x1c},
> +	.xSR	= 0x20,
> +	.xCR	= 0x24,
> +};
> +
> +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> +	.tx	= imx_mu_generic_tx,
> +	.rx	= imx_mu_generic_rx,
> +	.init	= imx_mu_init_generic,
> +	.xTR	= {0x20, 0x24, 0x28, 0x2c},
> +	.xRR	= {0x40, 0x44, 0x48, 0x4c},
> +	.xSR	= 0x60,
> +	.xCR	= 0x64,
> +};
> +
>   static const struct of_device_id imx_mu_dt_ids[] = {
>   	{ .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
>   	{ .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
