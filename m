Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F10034713
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3Dx3dPnjR6gtxLJLXh2s1DN5jXyYeK/svRLbhquZA0=; b=tzxd6MqU+szk0n
	i9sUiMzVaiQAb7u2PrJSGcdN2++f2qHZjKo6pSD4h/Ui58UQYSK3EpMtgunpkATpQWWjsP4ncuTg6
	49HtfNdVIncWNC7PkZS/IqRscH8m06OL+eVlvB0FUWVALJR64lQwP5UjJuuccr/teX/Zr0eeY1AA6
	+FDTKYiRY4/I5pyD5M1MpbuO+alvB+R3jeUkaTbC27sSwGdu/mwYR9p1BmNclEocsTKMSg5akdpMj
	uNhJtM9vHeefjrKhGV900i1JuO2DkTbIXLTG1zdNewEs7gdSAzDjYJ6HYc0tAmGujxtDajq8rYNeT
	QfM2w0L5Tp154OHIbrTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8k1-0004Xg-JA; Tue, 04 Jun 2019 12:40:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8ju-0004XK-Cz
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:40:31 +0000
Received: from localhost (unknown [117.99.94.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2874D240B7;
 Tue,  4 Jun 2019 12:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559652030;
 bh=RWXt3aNCMTy+UTAYePZmQNO2QW1YFLu3Odj5H+eyHNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hdr+1cp/fxGQJ56LsNzXwjSNWS4eq1YQTiZBzI4UDMwB6jZ4XgztjczYnU3pwnb8+
 uMj6WC0yqMcal5zsMrWfkeqHVgnDI8jvswzpowOSD6tG6q/1ioaLm1OIoFsuF8p4gB
 MDRiRTit4eY9cpz/wqw4nMAh8myb2AiAISowCT5o=
Date: Tue, 4 Jun 2019 18:07:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v3 7/8] dmaengine: fsl-edma: add i.mx7ulp edma2 version
 support
Message-ID: <20190604123722.GF15118@vkoul-mobl>
References: <20190529090848.34350-1-yibin.gong@nxp.com>
 <20190529090848.34350-8-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529090848.34350-8-yibin.gong@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_054030_472652_C873B52A 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-05-19, 17:08, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
>   Add edma2 for i.mx7ulp by version v3, since v2 has already

Why leading spaces at start of line?

> been used by mcf-edma.
> The big changes based on v1 are belows:
> 1. only one dmamux.
> 2. another clock dma_clk except dmamux clk.
> 3. 16 independent interrupts instead of only one interrupt for
> all channels.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  drivers/dma/fsl-edma-common.c | 18 +++++++++++-
>  drivers/dma/fsl-edma-common.h |  3 ++
>  drivers/dma/fsl-edma.c        | 67 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 87 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
> index 45d70d3..0d9915c 100644
> --- a/drivers/dma/fsl-edma-common.c
> +++ b/drivers/dma/fsl-edma-common.c
> @@ -90,6 +90,19 @@ static void mux_configure8(struct fsl_edma_chan *fsl_chan, void __iomem *addr,
>  	iowrite8(val8, addr + off);
>  }
>  
> +void mux_configure32(struct fsl_edma_chan *fsl_chan, void __iomem *addr,
> +		     u32 off, u32 slot, bool enable)
> +{
> +	u32 val;
> +
> +	if (enable)
> +		val = EDMAMUX_CHCFG_ENBL << 24 | slot;
> +	else
> +		val = EDMAMUX_CHCFG_DIS;
> +
> +	iowrite32(val, addr + off * 4);
> +}
> +
>  void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
>  			unsigned int slot, bool enable)
>  {
> @@ -102,7 +115,10 @@ void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
>  	muxaddr = fsl_chan->edma->muxbase[ch / chans_per_mux];
>  	slot = EDMAMUX_CHCFG_SOURCE(slot);
>  
> -	mux_configure8(fsl_chan, muxaddr, ch_off, slot, enable);
> +	if (fsl_chan->edma->version == v3)
> +		mux_configure32(fsl_chan, muxaddr, ch_off, slot, enable);
> +	else
> +		mux_configure8(fsl_chan, muxaddr, ch_off, slot, enable);
>  }
>  EXPORT_SYMBOL_GPL(fsl_edma_chan_mux);
>  
> diff --git a/drivers/dma/fsl-edma-common.h b/drivers/dma/fsl-edma-common.h
> index 014ab74..07482d2 100644
> --- a/drivers/dma/fsl-edma-common.h
> +++ b/drivers/dma/fsl-edma-common.h
> @@ -125,6 +125,7 @@ struct fsl_edma_chan {
>  	dma_addr_t			dma_dev_addr;
>  	u32				dma_dev_size;
>  	enum dma_data_direction		dma_dir;
> +	char				chan_name[16];
>  };
>  
>  struct fsl_edma_desc {
> @@ -139,6 +140,7 @@ struct fsl_edma_desc {
>  enum edma_version {
>  	v1, /* 32ch, Vybrid, mpc57x, etc */
>  	v2, /* 64ch Coldfire */
> +	v3, /* 32ch, i.mx7ulp */
>  };
>  
>  struct fsl_edma_drvdata {
> @@ -154,6 +156,7 @@ struct fsl_edma_engine {
>  	void __iomem		*membase;
>  	void __iomem		*muxbase[DMAMUX_NR];
>  	struct clk		*muxclk[DMAMUX_NR];
> +	struct clk		*dmaclk;
>  	u32			dmamux_nr;
>  	struct mutex		fsl_edma_mutex;
>  	const struct fsl_edma_drvdata *drvdata;
> diff --git a/drivers/dma/fsl-edma.c b/drivers/dma/fsl-edma.c
> index cf18301..45b26d6 100644
> --- a/drivers/dma/fsl-edma.c
> +++ b/drivers/dma/fsl-edma.c
> @@ -165,6 +165,51 @@ fsl_edma_irq_init(struct platform_device *pdev, struct fsl_edma_engine *fsl_edma
>  	return 0;
>  }
>  
> +static int
> +fsl_edma2_irq_init(struct platform_device *pdev,
> +		   struct fsl_edma_engine *fsl_edma)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	int i, ret, irq;
> +	int count = 0;

Superflous initialization of count!

> +
> +	count = of_irq_count(np);
> +	dev_info(&pdev->dev, "%s Found %d interrupts\r\n", __func__, count);

Consider using debug level..

> +	if (count <= 2) {
> +		dev_err(&pdev->dev, "Interrupts in DTS not correct.\n");
> +		return -EINVAL;
> +	}
> +	/*
> +	 * 16 channel independent interrupts + 1 error interrupt on i.mx7ulp.
> +	 * 2 channel share one interrupt, for example, ch0/ch16, ch1/ch17...
> +	 * For now, just simply request irq without IRQF_SHARED flag, since 16
> +	 * channels are enough on i.mx7ulp whose M4 domain own some peripherals.
> +	 */
> +	for (i = 0; i < count; i++) {
> +		irq = platform_get_irq(pdev, i);
> +		if (irq < 0)
> +			return -ENXIO;
> +
> +		sprintf(fsl_edma->chans[i].chan_name, "eDMA2-CH%02d", i);
> +
> +		/* The last IRQ is for eDMA err */
> +		if (i == count - 1)
> +			ret = devm_request_irq(&pdev->dev, irq,
> +						fsl_edma_err_handler,
> +						0, "eDMA2-ERR", fsl_edma);
> +		else
> +

empty line is waste here

> +			ret = devm_request_irq(&pdev->dev, irq,
> +						fsl_edma_tx_handler, 0,
> +						fsl_edma->chans[i].chan_name,
> +						fsl_edma);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static void fsl_edma_irq_exit(
>  		struct platform_device *pdev, struct fsl_edma_engine *fsl_edma)
>  {
> @@ -191,8 +236,16 @@ static struct fsl_edma_drvdata vf610_data = {
>  	.setup_irq = fsl_edma_irq_init,
>  };
>  
> +static struct fsl_edma_drvdata imx7ulp_data = {
> +	.version = v3,
> +	.dmamuxs = 1,
> +	.has_dmaclk = true,
> +	.setup_irq = fsl_edma2_irq_init,
> +};
> +
>  static const struct of_device_id fsl_edma_dt_ids[] = {
>  	{ .compatible = "fsl,vf610-edma", .data = &vf610_data},
> +	{ .compatible = "fsl,imx7ulp-edma", .data = &imx7ulp_data},
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, fsl_edma_dt_ids);
> @@ -242,6 +295,20 @@ static int fsl_edma_probe(struct platform_device *pdev)
>  	fsl_edma_setup_regs(fsl_edma);
>  	regs = &fsl_edma->regs;
>  
> +	if (drvdata->has_dmaclk) {
> +		fsl_edma->dmaclk = devm_clk_get(&pdev->dev, "dma");
> +		if (IS_ERR(fsl_edma->dmaclk)) {
> +			dev_err(&pdev->dev, "Missing DMA block clock.\n");
> +			return PTR_ERR(fsl_edma->dmaclk);
> +		}
> +
> +		ret = clk_prepare_enable(fsl_edma->dmaclk);
> +		if (ret) {
> +			dev_err(&pdev->dev, "DMA clk block failed.\n");
> +			return ret;
> +		}
> +	}
> +
>  	for (i = 0; i < fsl_edma->dmamux_nr; i++) {
>  		char clkname[32];
>  
> -- 
> 2.7.4

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
