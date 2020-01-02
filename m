Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E1C12E5BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZOhzRAyqbmIStw5L8CnKc/IE2ObWR9dr9pnZO18y6Y=; b=RIF07OZ2L2Nmtq
	EQr7Yve27hZgNE8UTkJjQ05bCCsKpdRIKxXh5RRanEGdeKVc9O7T20Obv0R/p1s3+/oWddSqSriKo
	pmqt2ApYvgwg+aQ2Yo7qirYqzyO2S8F1F0MwL4uB4YQR3BzHe4zTn9HcZTBq6cZDVk9BPI5fwAcDW
	ej9KwleyteVsfXeAMrRmXeC6SzuyPtC3en3yMDb2bpsAu23iw0VrS2iObZxaIZRGJHZ1rVP5AC31Y
	+dztXtlhgPPyakifPLz+MAQADMrHEcy9vf4q1SULEgO7s+fO+Q/wDdJDN0xjnvEO1FAHoE8BooT3U
	JY8zXx7Z4D5lHeiKOGig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imyjM-0007gJ-M8; Thu, 02 Jan 2020 11:33:32 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imyjG-0007fk-2e
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:33:27 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 03:33:24 -0800
X-IronPort-AV: E=Sophos;i="5.69,386,1571727600"; d="scan'208";a="421110783"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 03:33:20 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id D5A6720705; Thu,  2 Jan 2020 13:33:19 +0200 (EET)
Date: Thu, 2 Jan 2020 13:33:19 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 06/14] media: sun4i-csi: Add support for A10 CSI1 camera
 sensor interface
Message-ID: <20200102113319.GJ19828@paasikivi.fi.intel.com>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-7-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215165924.28314-7-wens@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_033326_163156_1952D6BB 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chen-Yu,

Thanks for the patchset.

On Mon, Dec 16, 2019 at 12:59:16AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The A10/A20 Allwinner SoCs have two camera sensor interface blocks,
> named CSI0 and CSI1. The two have the same register layouts with
> slightly different features:
> 
>   - CSI0 has an image signal processor (ISP); CSI1 doesn't
> 
>   - CSI0 can support up to four separate channels under CCIR656;
>     CSI1 can only support one
> 
>   - CSI0 can support up to 16-bit wide bus with YUV422;
>     CSI1 can support up to 24-bit wide bus with YUV444
> 
> For now the driver doesn't support wide busses, nor CCIR656. So the
> only relevant difference is whether a clock needs to be taken and
> enabled for the ISP.
> 
> Add structs to record the differences, tie them to the compatible
> strings, and deal with the ISP clock. Support for the new CSI1
> hardware block is added as well.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  .../platform/sunxi/sun4i-csi/sun4i_csi.c      | 35 ++++++++++++++++---
>  .../platform/sunxi/sun4i-csi/sun4i_csi.h      |  2 ++
>  2 files changed, 32 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> index b8b07c1de2a8..be2466930a49 100644
> --- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> +++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> @@ -29,6 +29,12 @@
>  
>  #include "sun4i_csi.h"
>  
> +struct sun4i_csi_traits {
> +	unsigned int channels;
> +	unsigned int max_width;
> +	bool has_isp;
> +};
> +
>  static const struct media_entity_operations sun4i_csi_video_entity_ops = {
>  	.link_validate = v4l2_subdev_link_validate,
>  };
> @@ -156,6 +162,10 @@ static int sun4i_csi_probe(struct platform_device *pdev)
>  	subdev = &csi->subdev;
>  	vdev = &csi->vdev;
>  
> +	csi->traits = of_device_get_match_data(&pdev->dev);
> +	if (!csi->traits)
> +		return -EINVAL;
> +
>  	/*
>  	 * On Allwinner SoCs, some high memory bandwidth devices do DMA
>  	 * directly over the memory bus (called MBUS), instead of the
> @@ -199,10 +209,12 @@ static int sun4i_csi_probe(struct platform_device *pdev)
>  		return PTR_ERR(csi->bus_clk);
>  	}
>  
> -	csi->isp_clk = devm_clk_get(&pdev->dev, "isp");
> -	if (IS_ERR(csi->isp_clk)) {
> -		dev_err(&pdev->dev, "Couldn't get our ISP clock\n");
> -		return PTR_ERR(csi->isp_clk);
> +	if (csi->traits->has_isp) {
> +		csi->isp_clk = devm_clk_get(&pdev->dev, "isp");
> +		if (IS_ERR(csi->isp_clk)) {
> +			dev_err(&pdev->dev, "Couldn't get our ISP clock\n");
> +			return PTR_ERR(csi->isp_clk);
> +		}
>  	}
>  
>  	csi->ram_clk = devm_clk_get(&pdev->dev, "ram");
> @@ -280,8 +292,21 @@ static int sun4i_csi_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +struct sun4i_csi_traits sun4i_a10_csi1_traits = {
> +	.channels = 1,
> +	.max_width = 24,
> +	.has_isp = false,
> +};
> +
> +struct sun4i_csi_traits sun7i_a20_csi0_traits = {

These two should be static const, right?

> +	.channels = 4,
> +	.max_width = 16,
> +	.has_isp = true,
> +};
> +
>  static const struct of_device_id sun4i_csi_of_match[] = {
> -	{ .compatible = "allwinner,sun7i-a20-csi0" },
> +	{ .compatible = "allwinner,sun4i-a10-csi1", .data = &sun4i_a10_csi1_traits },
> +	{ .compatible = "allwinner,sun7i-a20-csi0", .data = &sun7i_a20_csi0_traits },
>  	{ /* Sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, sun4i_csi_of_match);
> diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
> index 88d39b3554c4..0f67ff652c2e 100644
> --- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
> +++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
> @@ -108,6 +108,8 @@ struct sun4i_csi {
>  	/* Device resources */
>  	struct device			*dev;
>  
> +	const struct sun4i_csi_traits	*traits;
> +
>  	void __iomem			*regs;
>  	struct clk			*bus_clk;
>  	struct clk			*isp_clk;

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
