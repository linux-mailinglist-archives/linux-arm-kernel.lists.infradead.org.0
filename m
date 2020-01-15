Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6930F13BB22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:33:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HogH9J2998GRWDm7794ly0+vrQb76YMnxZT0OpnZbBU=; b=ns6Qe7Rb6ddOzk
	4fyOPpu3Fth4zNwf1mUgG4exbcc1tL+vx9ik/0cq0XEZM4M9uF2y6002o1/wkMgpmPfMwSOfT8SGP
	qvzrI81fIBuTw6MucVhX0XW0rg2VLX9YbuvGpGnpoaE5rehrvE2DqqzW3cs3n+LuqF/itwfEyU2sZ
	60R2yAoVm2Vi2139iw4ExAKAVQ9gaeJr8jJz3/otU0jqvwCZ1+/Sz+Xz+UqlX7LYQHIbc0skx7iTf
	MF919r1cb40nD3/HYF/ObTjn4Ys+cL9yQWQSGzwG5shZsCrmZfFl0hqkxhzBbP/5vbJQHRisD+wJ8
	vv+/T0CZAzt10hH4sJIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ire72-0007Cd-6k; Wed, 15 Jan 2020 08:33:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ire6R-0006z6-5H
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:32:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ire6G-0003Op-LB; Wed, 15 Jan 2020 09:32:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1ire6E-0001jx-6Z; Wed, 15 Jan 2020 09:32:26 +0100
Date: Wed, 15 Jan 2020 09:32:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Han Xu <han.xu@nxp.com>
Subject: Re: [PATCH 5/6] mtd: rawnand: gpmi: refine the runtime pm ops
Message-ID: <20200115083226.lbwtfvoevp3k33qt@pengutronix.de>
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
 <1579038243-28550-6-git-send-email-han.xu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579038243-28550-6-git-send-email-han.xu@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:17:31 up 191 days, 14:27, 88 users,  load average: 0.39, 0.32,
 0.30
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_003239_198899_B4B3484D 
X-CRM114-Status: GOOD (  25.02  )
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

On Wed, Jan 15, 2020 at 05:44:02AM +0800, Han Xu wrote:
> several changes for runtime code in gpmi-nand driver
> 
> - Always invoke runtime get/put in same function to balance the usage
> counter.
> 
> - leverage the runtime pm for system pm, move acquire dma to runtime pm
> to acquire dma only when needed.
> 
> - add pm_runtime_dont_use_autosuspend in err path. If driver failed to
> probe before runtime pm timeout, such as NAND not mounted in socket,
> runtime suspend won't be called without the change.

Using a bullet list in a commit message is often a sign that the patch
should be split into multiple patches...

> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> ---
>  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 56 +++++++++++-----------
>  1 file changed, 29 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> index fcc7325f2a10..73644c96fa9b 100644
> --- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> +++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> @@ -183,7 +183,6 @@ static int gpmi_init(struct gpmi_nand_data *this)
>  	 */
>  	writel(BM_GPMI_CTRL1_DECOUPLE_CS, r->gpmi_regs + HW_GPMI_CTRL1_SET);
>  
> -	return 0;
>  err_out:
>  	pm_runtime_mark_last_busy(this->dev);
>  	pm_runtime_put_autosuspend(this->dev);
> @@ -556,7 +555,6 @@ static int bch_set_geometry(struct gpmi_nand_data *this)
>  	/* Set *all* chip selects to use layout 0. */
>  	writel(0, r->bch_regs + HW_BCH_LAYOUTSELECT);
>  
> -	ret = 0;
>  err_out:
>  	pm_runtime_mark_last_busy(this->dev);
>  	pm_runtime_put_autosuspend(this->dev);

While I agree that this "ret = 0" is unnecessary because 'ret' holds the
successful return value of the last function called, I still think it's
nice to make it explicit that this is the success path of this function.

If you disagree please at least make this a separate patch.

> @@ -1213,10 +1211,6 @@ static int acquire_resources(struct gpmi_nand_data *this)
>  	if (ret)
>  		goto exit_regs;
>  
> -	ret = acquire_dma_channels(this);
> -	if (ret)
> -		goto exit_regs;
> -
>  	ret = gpmi_get_clks(this);
>  	if (ret)
>  		goto exit_clock;
> @@ -2656,15 +2650,9 @@ static int gpmi_nand_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto exit_acquire_resources;
>  
> -	ret = __gpmi_enable_clk(this, true);
> -	if (ret)
> -		goto exit_nfc_init;
> -
> +	pm_runtime_enable(&pdev->dev);
>  	pm_runtime_set_autosuspend_delay(&pdev->dev, 500);
>  	pm_runtime_use_autosuspend(&pdev->dev);
> -	pm_runtime_set_active(&pdev->dev);
> -	pm_runtime_enable(&pdev->dev);
> -	pm_runtime_get_sync(&pdev->dev);
>  
>  	ret = gpmi_init(this);
>  	if (ret)
> @@ -2674,15 +2662,12 @@ static int gpmi_nand_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto exit_nfc_init;
>  
> -	pm_runtime_mark_last_busy(&pdev->dev);
> -	pm_runtime_put_autosuspend(&pdev->dev);
> -
>  	dev_info(this->dev, "driver registered.\n");
>  
>  	return 0;
>  
>  exit_nfc_init:
> -	pm_runtime_put(&pdev->dev);
> +	pm_runtime_dont_use_autosuspend(&pdev->dev);
>  	pm_runtime_disable(&pdev->dev);
>  	release_resources(this);
>  exit_acquire_resources:
> @@ -2694,7 +2679,6 @@ static int gpmi_nand_remove(struct platform_device *pdev)
>  {
>  	struct gpmi_nand_data *this = platform_get_drvdata(pdev);
>  
> -	pm_runtime_put_sync(&pdev->dev);
>  	pm_runtime_disable(&pdev->dev);
>  
>  	nand_release(&this->nand);
> @@ -2706,10 +2690,11 @@ static int gpmi_nand_remove(struct platform_device *pdev)
>  #ifdef CONFIG_PM_SLEEP
>  static int gpmi_pm_suspend(struct device *dev)
>  {
> -	struct gpmi_nand_data *this = dev_get_drvdata(dev);
> +	int ret;
>  
> -	release_dma_channels(this);
> -	return 0;
> +	ret = pm_runtime_force_suspend(dev);
> +
> +	return ret;
>  }
>  
>  static int gpmi_pm_resume(struct device *dev)
> @@ -2717,9 +2702,11 @@ static int gpmi_pm_resume(struct device *dev)
>  	struct gpmi_nand_data *this = dev_get_drvdata(dev);
>  	int ret;
>  
> -	ret = acquire_dma_channels(this);
> -	if (ret < 0)
> +	ret = pm_runtime_force_resume(dev);
> +	if (ret) {
> +		dev_err(this->dev, "Error in resume %d\n", ret);
>  		return ret;
> +	}
>  
>  	/* re-init the GPMI registers */
>  	ret = gpmi_init(this);
> @@ -2743,18 +2730,33 @@ static int gpmi_pm_resume(struct device *dev)
>  }
>  #endif /* CONFIG_PM_SLEEP */
>  
> -static int __maybe_unused gpmi_runtime_suspend(struct device *dev)
> +#define gpmi_enable_clk(x)	__gpmi_enable_clk(x, true)
> +#define gpmi_disable_clk(x)	__gpmi_enable_clk(x, false)

These defines do not add any value.

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
