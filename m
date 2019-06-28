Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77F05940C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3HcHyz9uUalPV/4Li3tCXvbbpkAvYfm/9UqDylwlaI=; b=eqsCsFdWErRWjK
	0YMwnLr8XjFANvzWf4v3gbH4l0QFuHzpU3S4WubH8DQYoqtEIdKuR6PzzBCf2d2joo1huA/KFJ8hs
	NO+sVuz+6AY9QhkLrWoIzULwJmnuN7QVlUHJQuNAutu1YRQNG2o6fjjW1WzXDfIVThz6IFnEXZFYi
	gBk82GY+aeIHTlRjV7IEkwEjp5lq8vdB5u2OLZ7UYEHdpMBrlJz3RSiBCDNna96iEIbNXh0+cnUva
	OHaiYQsKmF39nDyuy+ynG9C6iUsnHPWia/RWX/SdsnZUlC/v5Jfk/9LTTTbiLRg4A/olvySSyjaUg
	4u7tBGtTRAw3QkD++y1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgk6d-00048M-Vx; Fri, 28 Jun 2019 06:11:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgk6L-00045e-2y; Fri, 28 Jun 2019 06:11:14 +0000
X-UUID: 16f4788237fa412ca1831de41356011e-20190627
X-UUID: 16f4788237fa412ca1831de41356011e-20190627
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2059652609; Thu, 27 Jun 2019 22:11:08 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Jun 2019 23:11:06 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS33DR.mediatek.inc (172.27.6.106) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 14:11:00 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Jun 2019 14:10:59 +0800
Message-ID: <1561702259.18399.7.camel@mtksdaap41>
Subject: Re: [v5 1/7] drm/mediatek: move mipi_dsi_host_register to probe
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Fri, 28 Jun 2019 14:10:59 +0800
In-Reply-To: <20190627080116.40264-2-jitao.shi@mediatek.com>
References: <20190627080116.40264-1-jitao.shi@mediatek.com>
 <20190627080116.40264-2-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24724.003
X-TM-AS-Result: No-14.037400-8.000000-10
X-TMASE-MatchedRID: xcONGPdDH5qi6/VcDv9f0PZvT2zYoYOwC/ExpXrHizxUvqB5o/Lqc/OP
 Ra/sN+oGYBSAIERqajwv+9DfuTEff7Ui+RdXr/ZOtbv6jY5MxFxp4xorO9dSmaB7/OvuB9jpd28
 7y76rWl0+Qs+JOuQ+IlY7maOxI4yfSiFYFnhBX7pj2Mi9Aq5L042QIlTs17Vzp0b7LIq4ACtfTm
 YPGZ1ZXQQiZjW65EMBQ9LDjgaivlliWV0DQ85LUho8wYJxWb0Oa01mhnn7t6RXiLrvhpKLfJgM2
 5fIhnOfCHezjIJ0pLdIj6eJVvD1DFpf1fzvophNR4PPMO+JjQ78k99z1mnW8f/rgj9ncWz9xF/T
 +1U99xstA6/Mm2plyirq6U1+7Bo3Zq5LaqHIPFRxoP7A9oFi1mfTym7IX+XOQW6eCaGxKwK8qAh
 8pZVO7cW9Hv1VMZJ6kZOl7WKIImrvXOvQVlExsFZ0V5tYhzdWxEHRux+uk8h+ICquNi0WJE/4MB
 J0dRDUt3l2bABoIbpXxQxn/ClNvtIxpUgjBEIFftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--14.037400-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24724.003
X-TM-SNTS-SMTP: 4958778A01CFEBB7262B1AF145B46BFD43D375275B178C9456AA22C035062F192000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_231113_150266_F26C82EB 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>, Thierry
 Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki
 Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy
 Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Sean
 Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Thu, 2019-06-27 at 16:01 +0800, Jitao Shi wrote:
> DSI panel driver need attach function which is inculde in
> mipi_dsi_host_ops.
> 
> If mipi_dsi_host_register is not in probe, dsi panel will
> probe more delay.
> 
> So move the mipi_dsi_host_register to probe from bind.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>

This version is different than v4, so please remove reviewed-by tag when
this patch change. When I see a reviewed-by tag of mine, I would just
skip review it again because I assume this patch is the same as previous
version.

For this version, I give still give it a

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 53 +++++++++++++++++-------------
>  1 file changed, 31 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b00eb2d2e086..595b3b047c7b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -528,7 +528,7 @@ static s32 mtk_dsi_switch_to_cmd_mode(struct mtk_dsi *dsi, u8 irq_flag, u32 t)
>  
>  static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  {
> -	struct device *dev = dsi->dev;
> +	struct device *dev = dsi->->host.dev;
>  	int ret;
>  	u64 pixel_clock, total_bits;
>  	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
> @@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
>  		return ret;
>  	}
>  
> -	ret = mipi_dsi_host_register(&dsi->host);
> -	if (ret < 0) {
> -		dev_err(dev, "failed to register DSI host: %d\n", ret);
> -		goto err_ddp_comp_unregister;
> -	}
> -
>  	ret = mtk_dsi_create_conn_enc(drm, dsi);
>  	if (ret) {
>  		DRM_ERROR("Encoder create failed with %d\n", ret);
> @@ -1060,8 +1054,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
>  	return 0;
>  
>  err_unregister:
> -	mipi_dsi_host_unregister(&dsi->host);
> -err_ddp_comp_unregister:
>  	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
>  	return ret;
>  }
> @@ -1073,7 +1065,6 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
>  	struct mtk_dsi *dsi = dev_get_drvdata(dev);
>  
>  	mtk_dsi_destroy_conn_enc(dsi);
> -	mipi_dsi_host_unregister(&dsi->host);
>  	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
>  }
>  
> @@ -1097,31 +1088,36 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  
>  	dsi->host.ops = &mtk_dsi_ops;
>  	dsi->host.dev = dev;
> +	ret = mipi_dsi_host_register(&dsi->host);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to register DSI host: %d\n", ret);
> +		return ret;
> +	}
>  
>  	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
>  					  &dsi->panel, &dsi->bridge);
>  	if (ret)
> -		return ret;
> +		goto err_unregister_host;
>  
>  	dsi->engine_clk = devm_clk_get(dev, "engine");
>  	if (IS_ERR(dsi->engine_clk)) {
>  		ret = PTR_ERR(dsi->engine_clk);
>  		dev_err(dev, "Failed to get engine clock: %d\n", ret);
> -		return ret;
> +		goto err_unregister_host;
>  	}
>  
>  	dsi->digital_clk = devm_clk_get(dev, "digital");
>  	if (IS_ERR(dsi->digital_clk)) {
>  		ret = PTR_ERR(dsi->digital_clk);
>  		dev_err(dev, "Failed to get digital clock: %d\n", ret);
> -		return ret;
> +		goto err_unregister_host;
>  	}
>  
>  	dsi->hs_clk = devm_clk_get(dev, "hs");
>  	if (IS_ERR(dsi->hs_clk)) {
>  		ret = PTR_ERR(dsi->hs_clk);
>  		dev_err(dev, "Failed to get hs clock: %d\n", ret);
> -		return ret;
> +		goto err_unregister_host;
>  	}
>  
>  	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> @@ -1129,33 +1125,35 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  	if (IS_ERR(dsi->regs)) {
>  		ret = PTR_ERR(dsi->regs);
>  		dev_err(dev, "Failed to ioremap memory: %d\n", ret);
> -		return ret;
> +		goto err_unregister_host;
>  	}
>  
>  	dsi->phy = devm_phy_get(dev, "dphy");
>  	if (IS_ERR(dsi->phy)) {
>  		ret = PTR_ERR(dsi->phy);
>  		dev_err(dev, "Failed to get MIPI-DPHY: %d\n", ret);
> -		return ret;
> +		goto err_unregister_host;
>  	}
>  
>  	comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DSI);
>  	if (comp_id < 0) {
>  		dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
> -		return comp_id;
> +		ret = comp_id;
> +		goto err_unregister_host;
>  	}
>  
>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &dsi->ddp_comp, comp_id,
>  				&mtk_dsi_funcs);
>  	if (ret) {
>  		dev_err(dev, "Failed to initialize component: %d\n", ret);
> -		return ret;
> +		goto err_unregister_host;
>  	}
>  
>  	irq_num = platform_get_irq(pdev, 0);
>  	if (irq_num < 0) {
> -		dev_err(&pdev->dev, "failed to request dsi irq resource\n");
> -		return -EPROBE_DEFER;
> +		dev_err(&pdev->dev, "failed to get dsi irq_num: %d\n", irq_num);
> +		ret = irq_num;
> +		goto err_unregister_host;
>  	}
>  
>  	irq_set_status_flags(irq_num, IRQ_TYPE_LEVEL_LOW);
> @@ -1163,14 +1161,24 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  			       IRQF_TRIGGER_LOW, dev_name(&pdev->dev), dsi);
>  	if (ret) {
>  		dev_err(&pdev->dev, "failed to request mediatek dsi irq\n");
> -		return -EPROBE_DEFER;
> +		goto err_unregister_host;
>  	}
>  
>  	init_waitqueue_head(&dsi->irq_wait_queue);
>  
>  	platform_set_drvdata(pdev, dsi);
>  
> -	return component_add(&pdev->dev, &mtk_dsi_component_ops);
> +	ret = component_add(&pdev->dev, &mtk_dsi_component_ops);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to add component: %d\n", ret);
> +		goto err_unregister_host;
> +	}
> +
> +	return 0;
> +
> +err_unregister_host:
> +	mipi_dsi_host_unregister(&dsi->host);
> +	return ret;
>  }
>  
>  static int mtk_dsi_remove(struct platform_device *pdev)
> @@ -1179,6 +1187,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
>  
>  	mtk_output_dsi_disable(dsi);
>  	component_del(&pdev->dev, &mtk_dsi_component_ops);
> +	mipi_dsi_host_unregister(&dsi->host);
>  
>  	return 0;
>  }



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
