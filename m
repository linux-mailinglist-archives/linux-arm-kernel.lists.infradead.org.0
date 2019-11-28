Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCD510C65F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHI5lvY4yfAF+CAYSNZAcQEUMU3uQfEdxKowB88+Sl8=; b=dKsDCYxJLzMt58
	QUPyiB1GVHxESPAuhmChmmzTyh+xF6OP4d7gNkSdc2q/3CZcMW3Ot57aIqzbyk5gqZsr8Opq15cnZ
	rvzPHe1u2KpPXMZH5rPFibfmjijwJ6v6f8n+StdA+pg3veNTND+S4Ymqrc4W/sTrhE11qSgUNubwH
	vA4JsuMmg3Nvqw7AFCIoEvRUxBVcrXd2PLh+dgM6JkW6GFYdeMZEP4MbesLqnrxtJyTzOBkVMuaPV
	+PeOzYp4NiZghWcTKTdHDN0tMkGVfmWoxt5QREPzIyKdlFog6uuqMmu9aLqf3hIS/WI1U/MDLidUS
	QlG1gdlPjk5VyGWWwWyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGhD-00073e-Af; Thu, 28 Nov 2019 10:06:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGh2-00071t-S3
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kAzGthTrVHAi7AX7oK1GGCcOfI4R/DIxoI7QEs76F5I=; b=na5oiyEis1GUKanh4lMUFOTQP
 J1oTldWRG73YC7hsRSkSgrbMnI/UJrIbPiuHgWklDRuw+9e+E51uXkR+y2SAkIIJAKn/gsWjdocDX
 +iUIcjua9ImyXRvVIajZawYfXc6kkyJB3OpoZuJhT7zETEpjE1ISyx7O7qYYEVzhIIBaSVqmWSh5O
 JZygnJsgB3phfXJpHt30IYBn2Azng9gyu3oeTNnft1LCnTJ05Jv+1GW89fvBF9tQPm/9U/Hn/UIf6
 ugkQWqXR5sLTG3JJhnqBta6dJoiW5pVv9yDwinXXd+zZm78mgtSbs4I0UnJ0ptbAD7XQWUYHYll6K
 1OlkN0hkQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45710)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iaGgi-0000GT-Rg; Thu, 28 Nov 2019 10:06:17 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iaGgf-0001Bf-SB; Thu, 28 Nov 2019 10:06:13 +0000
Date: Thu, 28 Nov 2019 10:06:13 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [PATCH] i2c: imx: Defer probing if EDMA not available
Message-ID: <20191128100613.GI25745@shell.armlinux.org.uk>
References: <20191127071136.5240-1-peng.ma@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127071136.5240-1-peng.ma@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_020637_476683_9D474A24 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 07:12:09AM +0000, Peng Ma wrote:
> EDMA may be not available or defered due to dependencies on
> other modules, If these scenarios is encountered, we should
> defer probing.

This has been tried before in this form, and it causes regressions.

> Signed-off-by: Peng Ma <peng.ma@nxp.com>
> ---
>  drivers/i2c/busses/i2c-imx.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 40111a3..c2b0693 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -369,8 +369,8 @@ static void i2c_imx_reset_regs(struct imx_i2c_struct *i2c_imx)
>  }
>  
>  /* Functions for DMA support */
> -static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
> -						dma_addr_t phy_addr)
> +static int i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
> +			       dma_addr_t phy_addr)
>  {
>  	struct imx_i2c_dma *dma;
>  	struct dma_slave_config dma_sconfig;
> @@ -379,7 +379,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
>  
>  	dma = devm_kzalloc(dev, sizeof(*dma), GFP_KERNEL);
>  	if (!dma)
> -		return;
> +		return -ENOMEM;
>  
>  	dma->chan_tx = dma_request_chan(dev, "tx");
>  	if (IS_ERR(dma->chan_tx)) {
> @@ -424,7 +424,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
>  	dev_info(dev, "using %s (tx) and %s (rx) for DMA transfers\n",
>  		dma_chan_name(dma->chan_tx), dma_chan_name(dma->chan_rx));
>  
> -	return;
> +	return 0;
>  
>  fail_rx:
>  	dma_release_channel(dma->chan_rx);
> @@ -432,6 +432,8 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
>  	dma_release_channel(dma->chan_tx);
>  fail_al:
>  	devm_kfree(dev, dma);
> +
> +	return ret;

Some platforms don't have EDMA.  Doesn't this force everyone who wants
I2C to have DMA?  The last attempt at this had:

	/* return successfully if there is no dma support */
	return ret == -ENODEV ? 0 : ret;

here because of exactly this.

>  }
>  
>  static void i2c_imx_dma_callback(void *arg)
> @@ -1605,10 +1607,14 @@ static int i2c_imx_probe(struct platform_device *pdev)
>  	dev_info(&i2c_imx->adapter.dev, "IMX I2C adapter registered\n");
>  
>  	/* Init DMA config if supported */
> -	i2c_imx_dma_request(i2c_imx, phy_addr);
> +	ret = i2c_imx_dma_request(i2c_imx, phy_addr);
> +	if (ret == -EPROBE_DEFER)
> +		goto i2c_adapter_remove;

This happens _after_ the adapter has been published to the rest of the
kernel.  Claiming resources after publication is racy - the adapter may
be in use by a request at this point.  Secondly, there's been problems
with this causing regressions when EDMA is built as a module and i2c-imx
is built-in.

See e8c220fac415 ("Revert "i2c: imx: improve the error handling in
i2c_imx_dma_request()"") when exactly what you're proposing was tried
and ended up having to be reverted.

AFAIK nothing has changed since, so merely reinstating the known to be
broken code, thereby reintroducing the same (and more) problems, isn't
going to be acceptable.

Sorry, but this gets a big NAK from me.

>  
>  	return 0;   /* Return OK */
>  
> +i2c_adapter_remove:
> +	i2c_del_adapter(&i2c_imx->adapter);
>  clk_notifier_unregister:
>  	clk_notifier_unregister(i2c_imx->clk, &i2c_imx->clk_change_nb);
>  rpm_disable:
> -- 
> 2.9.5
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
