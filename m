Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6488E13BAAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPCPzWlQMHP4k1RoX8ViEbeuwyRDdRvoWpUOCM48VqY=; b=kFqCxq5Sl8qzjO
	9vqQ+0EQ5sX9kiRTf6zTHnU01RUf8wqjLv8raxLxGPYx3u8G3cJMPr4HflUv33Lk/dj4EvlDHatfz
	3zpxXQFWJYhVgUf+7rTXvFg88+6+dMI5iD2uaFwN60ngCfB9Ol3zv/uRetiaj+vuDw80K5hGn2btV
	FXpRVcDXMMJSE4Kz7lq8w5iL1tCsWLlFkM3HI9UiZToMYd76AOEiQBhyqMs48LRVpOiFnoHKOh3Yp
	NSGhRlbHMSJFCZsZ5L9jz9lU2wAns9nLc5isOQSyxK0nhDEb6RyWC5sICMdrXzSzGqIw+5fUEOSzr
	bpRf0ysSXZXieFJUQtjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irde8-0002Wo-S5; Wed, 15 Jan 2020 08:03:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdds-0002W8-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:03:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1irddj-0000Js-MF; Wed, 15 Jan 2020 09:02:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1irddh-0008IE-N7; Wed, 15 Jan 2020 09:02:57 +0100
Date: Wed, 15 Jan 2020 09:02:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Han Xu <han.xu@nxp.com>
Subject: Re: [PATCH 3/6] dmaengine: mxs: add the power management functions
Message-ID: <20200115080257.dtd4vss4uhopbvn2@pengutronix.de>
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
 <1579038243-28550-4-git-send-email-han.xu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579038243-28550-4-git-send-email-han.xu@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:51:32 up 191 days, 14:01, 85 users,  load average: 0.23, 0.25,
 0.25
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_000308_770806_39994D09 
X-CRM114-Status: GOOD (  17.94  )
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

On Wed, Jan 15, 2020 at 05:44:00AM +0800, Han Xu wrote:
> add the power management functions and leverage the runtime pm for
> system suspend/resume
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> ---
>  drivers/dma/mxs-dma.c | 97 +++++++++++++++++++++++++++++++++++++++----
>  1 file changed, 90 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/dma/mxs-dma.c b/drivers/dma/mxs-dma.c
> index b458f06f9067..251492c5ea58 100644
> --- a/drivers/dma/mxs-dma.c
> +++ b/drivers/dma/mxs-dma.c
> @@ -25,6 +25,7 @@
>  #include <linux/of_dma.h>
>  #include <linux/list.h>
>  #include <linux/dma/mxs-dma.h>
> +#include <linux/pm_runtime.h>
>  
>  #include <asm/irq.h>
>  
> @@ -39,6 +40,8 @@
>  #define dma_is_apbh(mxs_dma)	((mxs_dma)->type == MXS_DMA_APBH)
>  #define apbh_is_old(mxs_dma)	((mxs_dma)->dev_id == IMX23_DMA)
>  
> +#define MXS_DMA_RPM_TIMEOUT 50 /* ms */
> +
>  #define HW_APBHX_CTRL0				0x000
>  #define BM_APBH_CTRL0_APB_BURST8_EN		(1 << 29)
>  #define BM_APBH_CTRL0_APB_BURST_EN		(1 << 28)
> @@ -416,6 +419,7 @@ static int mxs_dma_alloc_chan_resources(struct dma_chan *chan)
>  {
>  	struct mxs_dma_chan *mxs_chan = to_mxs_dma_chan(chan);
>  	struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
> +	struct device *dev = &mxs_dma->pdev->dev;
>  	int ret;
>  
>  	mxs_chan->ccw = dma_alloc_coherent(mxs_dma->dma_device.dev,
> @@ -431,9 +435,11 @@ static int mxs_dma_alloc_chan_resources(struct dma_chan *chan)
>  	if (ret)
>  		goto err_irq;
>  
> -	ret = clk_prepare_enable(mxs_dma->clk);
> -	if (ret)
> +	ret = pm_runtime_get_sync(dev);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable clock\n");
>  		goto err_clk;

From looking at other DMA drivers I know we are in good company here,
but I think this is wrong. Doing pm_runtime_get_sync() in
alloc_chan_resources() and going to autosuspend in free_chan_resources()
effectively disables runtime_pm as clients normally acquire their
channels during driver probe and release them only in driver remove.

In the next patch you release the DMA channels in the GPMI nand drivers
runtime_suspend hook just to somehow trigger the runtime_suspend of the
DMA driver.

What you should do instead is to make sure the hook runtime_pm to the
DMA drivers activity phases, like for example the pl330 driver does.
Then you wouldn't have to care about manually putting the DMA driver into
suspend from the GPMI NAND driver.

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
