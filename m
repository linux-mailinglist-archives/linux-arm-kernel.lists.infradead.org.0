Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC82A13BAC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXmuyg2wR8CynhrNAmuKYRFeayiXzHZh8XxXN7iGJ7A=; b=Wl7rO/7R1ryuHY
	2Eccf6X8e8Ik30prMkMNZhO8H/PlgagUiiF8JLhaSgop8r0OWM8FfKuZkNNTABeFIxwwvc/WGDaQw
	90AcaLVKcIPv930aP0XUzpx9A+8zWd1fpMvTXoxCDyqAEFq3vTn0Gh85g+9FwkVIgqGN39GwYfxox
	tZEQyyGVtiD6DubVHgxegJcBiWof4LrRdgX49yf7cnso+YSCnvoEfij4GRVh1Nz0BUz6dsW3rfgMY
	0FC8WyOpxUbaoLAd8w3LHI5S6t3RUlGxC0ZX5pDDvPftq4ORuLDbklhL4H/nXcJGnP3PvAaSddGu5
	uuo9itCOitqNkPuJJXCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdpL-0007gM-6v; Wed, 15 Jan 2020 08:14:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdpA-0007fM-0C
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:14:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1irdp0-0001Tj-6d; Wed, 15 Jan 2020 09:14:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1irdoz-0000CT-5q; Wed, 15 Jan 2020 09:14:37 +0100
Date: Wed, 15 Jan 2020 09:14:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Han Xu <han.xu@nxp.com>
Subject: Re: [PATCH 4/6] dmaengine: mxs: switch from dma_coherent to dma_pool
Message-ID: <20200115081437.gsrzwm5bkk2hg6vo@pengutronix.de>
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
 <1579038243-28550-5-git-send-email-han.xu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579038243-28550-5-git-send-email-han.xu@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:03:40 up 191 days, 14:13, 86 users,  load average: 0.25, 0.42,
 0.34
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_001448_044339_E7C1BE2F 
X-CRM114-Status: GOOD (  21.84  )
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
Cc: vigneshr@ti.com, richard@nod.at, esben@geanix.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, boris.brezillon@collabora.com,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
 miquel.raynal@bootlin.com, dmaengine@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 05:44:01AM +0800, Han Xu wrote:
> create one dma_pool dedicate for mxs-dma to avoid the
> "alloc_contig_range: [xxx, xxx) PFNs busy" warning message during
> frequently alloc/free resource ops in runtime pm.
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> ---
>  drivers/dma/mxs-dma.c | 32 ++++++++++++++++++++++++--------
>  1 file changed, 24 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/dma/mxs-dma.c b/drivers/dma/mxs-dma.c
> index 251492c5ea58..dfee41ae1981 100644
> --- a/drivers/dma/mxs-dma.c
> +++ b/drivers/dma/mxs-dma.c
> @@ -26,6 +26,7 @@
>  #include <linux/list.h>
>  #include <linux/dma/mxs-dma.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/dmapool.h>
>  
>  #include <asm/irq.h>
>  
> @@ -121,6 +122,7 @@ struct mxs_dma_chan {
>  	enum dma_status			status;
>  	unsigned int			flags;
>  	bool				reset;
> +	struct dma_pool			*ccw_pool;
>  #define MXS_DMA_SG_LOOP			(1 << 0)
>  #define MXS_DMA_USE_SEMAPHORE		(1 << 1)
>  };
> @@ -422,9 +424,10 @@ static int mxs_dma_alloc_chan_resources(struct dma_chan *chan)
>  	struct device *dev = &mxs_dma->pdev->dev;
>  	int ret;
>  
> -	mxs_chan->ccw = dma_alloc_coherent(mxs_dma->dma_device.dev,
> -					   CCW_BLOCK_SIZE,
> -					   &mxs_chan->ccw_phys, GFP_KERNEL);
> +	mxs_chan->ccw = dma_pool_zalloc(mxs_chan->ccw_pool,
> +					GFP_ATOMIC,
> +					&mxs_chan->ccw_phys);

Why GFP_ATOMIC?

> +
>  	if (!mxs_chan->ccw) {
>  		ret = -ENOMEM;
>  		goto err_alloc;
> @@ -454,8 +457,8 @@ static int mxs_dma_alloc_chan_resources(struct dma_chan *chan)
>  err_clk:
>  	free_irq(mxs_chan->chan_irq, mxs_dma);
>  err_irq:
> -	dma_free_coherent(mxs_dma->dma_device.dev, CCW_BLOCK_SIZE,
> -			mxs_chan->ccw, mxs_chan->ccw_phys);
> +	dma_pool_free(mxs_chan->ccw_pool, mxs_chan->ccw,
> +		      mxs_chan->ccw_phys);
>  err_alloc:
>  	return ret;
>  }
> @@ -470,8 +473,8 @@ static void mxs_dma_free_chan_resources(struct dma_chan *chan)
>  
>  	free_irq(mxs_chan->chan_irq, mxs_dma);
>  
> -	dma_free_coherent(mxs_dma->dma_device.dev, CCW_BLOCK_SIZE,
> -			mxs_chan->ccw, mxs_chan->ccw_phys);
> +	dma_pool_free(mxs_chan->ccw_pool, mxs_chan->ccw,
> +		      mxs_chan->ccw_phys);
>  
>  	pm_runtime_mark_last_busy(dev);
>  	pm_runtime_put_autosuspend(dev);
> @@ -796,6 +799,7 @@ static int mxs_dma_probe(struct platform_device *pdev)
>  	const struct mxs_dma_type *dma_type;
>  	struct mxs_dma_engine *mxs_dma;
>  	struct resource *iores;
> +	struct dma_pool *ccw_pool;
>  	int ret, i;
>  
>  	mxs_dma = devm_kzalloc(&pdev->dev, sizeof(*mxs_dma), GFP_KERNEL);
> @@ -843,7 +847,6 @@ static int mxs_dma_probe(struct platform_device *pdev)
>  		tasklet_init(&mxs_chan->tasklet, mxs_dma_tasklet,
>  			     (unsigned long) mxs_chan);
>  
> -
>  		/* Add the channel to mxs_chan list */
>  		list_add_tail(&mxs_chan->chan.device_node,
>  			&mxs_dma->dma_device.channels);
> @@ -858,6 +861,17 @@ static int mxs_dma_probe(struct platform_device *pdev)
>  
>  	mxs_dma->dma_device.dev = &pdev->dev;
>  
> +	/* create the dma pool */
> +	ccw_pool = dma_pool_create("ccw_pool",
> +				   mxs_dma->dma_device.dev,
> +				   CCW_BLOCK_SIZE, 32, 0);
> +
> +	for (i = 0; i < MXS_DMA_CHANNELS; i++) {
> +		struct mxs_dma_chan *mxs_chan = &mxs_dma->mxs_chans[i];
> +
> +		mxs_chan->ccw_pool = ccw_pool;
> +	}

ccw_pool is the same for every channel, it should be a member of
struct mxs_dma_engine and not of struct mcs_dma_chan.

> +
>  	/* mxs_dma gets 65535 bytes maximum sg size */
>  	mxs_dma->dma_device.dev->dma_parms = &mxs_dma->dma_parms;
>  	dma_set_max_seg_size(mxs_dma->dma_device.dev, MAX_XFER_BYTES);
> @@ -899,11 +913,13 @@ static int mxs_dma_remove(struct platform_device *pdev)
>  	int i;
>  
>  	dma_async_device_unregister(&mxs_dma->dma_device);
> +	dma_pool_destroy(mxs_dma->mxs_chans[0].ccw_pool);

It doesn't seem to make a big difference, but I would do this after
killing the tasklets, not before. Otherwise we would have to prove that
no tasklet is still accessing the dma_pool.

>  
>  	for (i = 0; i < MXS_DMA_CHANNELS; i++) {
>  		struct mxs_dma_chan *mxs_chan = &mxs_dma->mxs_chans[i];
>  
>  		tasklet_kill(&mxs_chan->tasklet);
> +		mxs_chan->ccw_pool = NULL;

There's no point in resetting this to NULL, mxs_chan is never going to
be touched again.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
