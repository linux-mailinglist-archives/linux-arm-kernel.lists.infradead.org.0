Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A405761A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 11:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCrbrXbccHHPytjoxJVHp2I3obgJWs7VyC+xef/503Y=; b=artkRhN5+Nk1Ow
	vuVP/e9ey5iSPXsC+BL6cioSYbu+ef+0DZUBXzN+MG9Oo09R/6r7oliABxVi2e8F9mTkmlCKBqSUI
	0DkMmi+gagPEz0zcgWOAmokYF2HwS50HdBFF7onp1ECrbwo2uRgctAfR9BpE2eOA7jUApWAFhHUJN
	vBduDSltND27tB6EDAZAReY3AA8ffq+Xv9IcIrb4nZ/8qDJQKkyQPmbRzXKB1BqhdYfGtWnn7/CrG
	KoJmQQ5oQwT65pS3xhrMv+PmH6O/BNPVrMemejnoWlH/XmBqBKVTf//eWjcwHIFTQ2ivKjtXPWQBn
	kayKvBCJ2Z9pn7G67sZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwMQ-0001lz-GY; Fri, 26 Jul 2019 09:17:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwLq-0001kI-WC
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 09:17:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1hqwLl-00089A-Ez; Fri, 26 Jul 2019 11:17:17 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1hqwLk-0002Jc-5Q; Fri, 26 Jul 2019 11:17:16 +0200
Date: Fri, 26 Jul 2019 11:17:16 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>
Subject: Re: [RFC] mailbox: imx: Add support for i.MX v1 messaging unit
Message-ID: <20190726091716.hyqghm46u5wopfk2@pengutronix.de>
References: <1564129776-19574-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564129776-19574-1-git-send-email-hongxing.zhu@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:09:35 up 69 days, 15:27, 52 users,  load average: 0.06, 0.11, 0.14
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_021724_024021_C094A563 
X-CRM114-Status: GOOD (  21.76  )
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

On Fri, Jul 26, 2019 at 04:29:36PM +0800, Richard Zhu wrote:
> There is a version1.0 MU on i.MX7ULP platform.
> One new version ID register is added, and the offset is 0.
> TRn registers are defined at the offset 0x20 ~ 0x2C.
> RRn registers are defined at the offset 0x40 ~ 0x4C.
> SR/CR registers are defined at 0x60/0x64.
> Extend this driver to support it.

Heh.. i feel like NXP/Freescale have old tradition of moving around
registers and adding/removing the version register :)

Since it is not first time, I would prefer to have register layout
linked on probe and not calculating or if-ing it on runtime. Especially,
because I assume it is not the last layout change.

For example see:
https://elixir.bootlin.com/linux/v5.3-rc1/source/drivers/remoteproc/imx_rproc.c#L336
	dcfg = of_device_get_match_data(dev);

or
https://elixir.bootlin.com/linux/v5.3-rc1/source/drivers/net/ethernet/atheros/ag71xx.c#L1651

and please, do not try to detect version by reading wrong register. We
have devicetree compatible for this use case.

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  drivers/mailbox/imx-mailbox.c | 45 +++++++++++++++++++++++++++++++++----------
>  1 file changed, 35 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 25be8bb..eb55bbe 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -12,10 +12,14 @@
>  #include <linux/of_device.h>
>  #include <linux/slab.h>
>  
> +#define MU_VER_ID_V1		0x0100
> +
>  /* Transmit Register */
>  #define IMX_MU_xTRn(x)		(0x00 + 4 * (x))
> +#define IMX_MU_xTRn_V1(x)	(0x20 + 4 * (x))
>  /* Receive Register */
>  #define IMX_MU_xRRn(x)		(0x10 + 4 * (x))
> +#define IMX_MU_xRRn_V1(x)	(0x40 + 4 * (x))
>  /* Status Register */
>  #define IMX_MU_xSR		0x20
>  #define IMX_MU_xSR_GIPn(x)	BIT(28 + (3 - (x)))
> @@ -25,6 +29,7 @@
>  
>  /* Control Register */
>  #define IMX_MU_xCR		0x24
> +#define IMX_MU_xSCR_V1_OFFSET	0x40
>  /* General Purpose Interrupt Enable */
>  #define IMX_MU_xCR_GIEn(x)	BIT(28 + (3 - (x)))
>  /* Receive Interrupt Enable */
> @@ -63,6 +68,7 @@ struct imx_mu_priv {
>  	struct imx_mu_con_priv  con_priv[IMX_MU_CHANS];
>  	struct clk		*clk;
>  	int			irq;
> +	int			version;
>  
>  	bool			side_b;
>  };
> @@ -85,13 +91,16 @@ static u32 imx_mu_read(struct imx_mu_priv *priv, u32 offs)
>  static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
>  {
>  	unsigned long flags;
> -	u32 val;
> +	u32 val, offset;
> +
> +	offset = unlikely(priv->version == MU_VER_ID_V1) ?
> +			IMX_MU_xSCR_V1_OFFSET : 0;
>  
>  	spin_lock_irqsave(&priv->xcr_lock, flags);
> -	val = imx_mu_read(priv, IMX_MU_xCR);
> +	val = imx_mu_read(priv, IMX_MU_xCR + offset);
>  	val &= ~clr;
>  	val |= set;
> -	imx_mu_write(priv, val, IMX_MU_xCR);
> +	imx_mu_write(priv, val, IMX_MU_xCR + offset);
>  	spin_unlock_irqrestore(&priv->xcr_lock, flags);
>  
>  	return val;
> @@ -109,10 +118,13 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>  	struct mbox_chan *chan = p;
>  	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
>  	struct imx_mu_con_priv *cp = chan->con_priv;
> -	u32 val, ctrl, dat;
> +	u32 val, ctrl, dat, offset;
> +
> +	offset = unlikely(priv->version == MU_VER_ID_V1) ?
> +			IMX_MU_xSCR_V1_OFFSET : 0;
>  
> -	ctrl = imx_mu_read(priv, IMX_MU_xCR);
> -	val = imx_mu_read(priv, IMX_MU_xSR);
> +	ctrl = imx_mu_read(priv, IMX_MU_xCR + offset);
> +	val = imx_mu_read(priv, IMX_MU_xSR + offset);
>  
>  	switch (cp->type) {
>  	case IMX_MU_TYPE_TX:
> @@ -138,10 +150,14 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>  		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
>  		mbox_chan_txdone(chan, 0);
>  	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> -		dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
> +		if (unlikely(priv->version == MU_VER_ID_V1))
> +			dat = imx_mu_read(priv, IMX_MU_xRRn_V1(cp->idx));
> +		else
> +			dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
>  		mbox_chan_received_data(chan, (void *)&dat);
>  	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
> -		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), IMX_MU_xSR);
> +		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx),
> +				IMX_MU_xSR + offset);
>  		mbox_chan_received_data(chan, NULL);
>  	} else {
>  		dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
> @@ -159,7 +175,10 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
>  
>  	switch (cp->type) {
>  	case IMX_MU_TYPE_TX:
> -		imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
> +		if (unlikely(priv->version == MU_VER_ID_V1))
> +			imx_mu_write(priv, *arg, IMX_MU_xTRn_V1(cp->idx));
> +		else
> +			imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
>  		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
>  		break;
>  	case IMX_MU_TYPE_TXDB:
> @@ -253,11 +272,17 @@ static struct mbox_chan * imx_mu_xlate(struct mbox_controller *mbox,
>  
>  static void imx_mu_init_generic(struct imx_mu_priv *priv)
>  {
> +	u32 offset;
> +
>  	if (priv->side_b)
>  		return;
>  
> +	priv->version = imx_mu_read(priv, 0) >> 16;
> +	offset = unlikely(priv->version == MU_VER_ID_V1) ?
> +			IMX_MU_xSCR_V1_OFFSET : 0;
> +
>  	/* Set default MU configuration */
> -	imx_mu_write(priv, 0, IMX_MU_xCR);
> +	imx_mu_write(priv, 0, IMX_MU_xCR + offset);
>  }
>  
>  static int imx_mu_probe(struct platform_device *pdev)
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
