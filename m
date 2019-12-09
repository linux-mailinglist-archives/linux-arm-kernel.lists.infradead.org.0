Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954D711666F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 06:29:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxUNc8xLnqPhfyk7D50JtkOIzsU8mrOBC3aWnYXedsw=; b=XezMOAXliOOHnP
	nEoWsj9nrg4kUla4oI6RiInxNCLCGdhB53av+FsIeLNeFubJBxql2k5YrxDizKCCFm19e3nK+6s9d
	6zvb6O/GA5/jR41olgg6lWKZtxUyJYGgdRfyqS91ZkMkec9BVQFEG8ZTM3ed1R65dFvj8Lwbwd8BU
	zhzapC1z3Nugchr0/CCmECdb+EQ+5Z9Ip0qat67jRDqE0/2lqwiB/mtNupeBWGjtQoLmxJtbv3C2v
	6Sq7EW+1eqzmIjYKWIhma+52qAbJdK3tvpa9uxh3+ngEre1XijYxzzyfE7J0Mo6IbzOEczOZsO8a1
	GNEGHA69cZI1v2s2bIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBbo-0002mh-8j; Mon, 09 Dec 2019 05:29:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBbf-0002le-PA; Mon, 09 Dec 2019 05:29:18 +0000
X-UUID: 46916c96969d4fb08260827b8177c7ec-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1kPa4zJHOSGaYA23yBBwBHLWH3hbtYiGylkDOLzCaCs=; 
 b=RW5WN56e4ZEmzyodValrlYVVgY8rihf9F+AcOz2mBQoOZRhGppamwzP0uo7q3C7E1aex4aMUX2aGz+GR/ciKs1LQ8vMbdKBFJ9aqv36iBfa/N4B0LYrLqA23yB06BiYi1/gJEAHGIGWGaqnPQKprr7rXeP4KtWE+gKHR/cWgCXE=;
X-UUID: 46916c96969d4fb08260827b8177c7ec-20191208
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1137832282; Sun, 08 Dec 2019 21:29:12 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 21:20:11 -0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Dec 2019 13:18:39 +0800
Message-ID: <1575868749.7013.6.camel@mtksdaap41>
Subject: Re: [resend PATCH v6 04/12] drm: mediatek: Omit warning on probe
 defers
From: CK Hu <ck.hu@mediatek.com>
To: <matthias.bgg@kernel.org>
Date: Mon, 9 Dec 2019 13:19:09 +0800
In-Reply-To: <20191207224740.24536-5-matthias.bgg@kernel.org>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-5-matthias.bgg@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_212915_829004_7146994C 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, rdunlap@infradead.org, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, ulrich.hecht+renesas@gmail.com,
 linux-clk@vger.kernel.org, drinkcat@chromium.org, wens@csie.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, sean.wang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, sboyd@kernel.org,
 sean.wang@kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
 enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias:

On Sat, 2019-12-07 at 23:47 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> It can happen that the mmsys clock drivers aren't probed before the
> platform driver gets invoked. The platform driver used to print a warning
> that the driver failed to get the clocks. Omit this error on
> the defered probe path.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_color.c |  5 ++++-
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c   |  5 ++++-
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c  |  5 ++++-
>  drivers/gpu/drm/mediatek/mtk_dpi.c        | 12 +++++++++---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c    |  4 +++-
>  drivers/gpu/drm/mediatek/mtk_dsi.c        |  8 ++++++--
>  drivers/gpu/drm/mediatek/mtk_hdmi.c       |  4 +++-
>  7 files changed, 33 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> index 59de2a46aa49..8f0fc96ef7bc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> @@ -118,7 +118,10 @@ static int mtk_disp_color_probe(struct platform_device *pdev)
>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
>  				&mtk_disp_color_funcs);
>  	if (ret) {
> -		dev_err(dev, "Failed to initialize component: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to initialize component: %d\n",
> +				ret);
> +
>  		return ret;
>  	}
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 21851756c579..7487b0182c05 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -285,7 +285,10 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
>  				&mtk_disp_ovl_funcs);
>  	if (ret) {
> -		dev_err(dev, "Failed to initialize component: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to initialize component: %d\n",
> +				ret);
> +
>  		return ret;
>  	}
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index 405afef31407..835ea8f8dab9 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -287,7 +287,10 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
>  				&mtk_disp_rdma_funcs);
>  	if (ret) {
> -		dev_err(dev, "Failed to initialize component: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to initialize component: %d\n",
> +				ret);
> +
>  		return ret;
>  	}
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index be6d95c5ff25..9ed32470ad02 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -700,21 +700,27 @@ static int mtk_dpi_probe(struct platform_device *pdev)
>  	dpi->engine_clk = devm_clk_get(dev, "engine");
>  	if (IS_ERR(dpi->engine_clk)) {
>  		ret = PTR_ERR(dpi->engine_clk);
> -		dev_err(dev, "Failed to get engine clock: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to get engine clock: %d\n", ret);
> +
>  		return ret;
>  	}
>  
>  	dpi->pixel_clk = devm_clk_get(dev, "pixel");
>  	if (IS_ERR(dpi->pixel_clk)) {
>  		ret = PTR_ERR(dpi->pixel_clk);
> -		dev_err(dev, "Failed to get pixel clock: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to get pixel clock: %d\n", ret);
> +
>  		return ret;
>  	}
>  
>  	dpi->tvd_clk = devm_clk_get(dev, "pll");
>  	if (IS_ERR(dpi->tvd_clk)) {
>  		ret = PTR_ERR(dpi->tvd_clk);
> -		dev_err(dev, "Failed to get tvdpll clock: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to get tvdpll clock: %d\n", ret);
> +
>  		return ret;
>  	}
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index b765181223e6..6054e2b675f9 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -558,7 +558,9 @@ static int mtk_ddp_probe(struct platform_device *pdev)
>  
>  	ddp->clk = devm_clk_get(dev, NULL);
>  	if (IS_ERR(ddp->clk)) {
> -		dev_err(dev, "Failed to get clock\n");
> +		if (PTR_ERR(ddp->clk) != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to get clock\n");
> +
>  		return PTR_ERR(ddp->clk);
>  	}
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 4332563df952..66d5b0fdd678 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1110,14 +1110,18 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  	dsi->engine_clk = devm_clk_get(dev, "engine");
>  	if (IS_ERR(dsi->engine_clk)) {
>  		ret = PTR_ERR(dsi->engine_clk);
> -		dev_err(dev, "Failed to get engine clock: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to get engine clock: %d\n", ret);
> +
>  		return ret;
>  	}
>  
>  	dsi->digital_clk = devm_clk_get(dev, "digital");
>  	if (IS_ERR(dsi->digital_clk)) {
>  		ret = PTR_ERR(dsi->digital_clk);
> -		dev_err(dev, "Failed to get digital clock: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to get digital clock: %d\n", ret);
> +
>  		return ret;
>  	}
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index ce91b61364eb..62f9ca2308ee 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -1447,7 +1447,9 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
>  
>  	ret = mtk_hdmi_get_all_clk(hdmi, np);
>  	if (ret) {
> -		dev_err(dev, "Failed to get clocks: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "Failed to get clocks: %d\n", ret);
> +
>  		return ret;
>  	}
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
