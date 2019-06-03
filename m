Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D15C325FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 03:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/NoftAXdoSJFzCAGBwwj7HSVlv8bvXQzRIO1K+0rzs=; b=fYr8CTl/YYcuJC
	U6E4saIf/dwxXEMCQDi2Yxnnb6bktvsJtDkRCIi2UpPGrUkPxubZRf3IXzZgAVZyOUjnQsb+rqlfY
	3ULpWUk1YTFHO2SF3EdD/9BYuocp0FNS3c5BkkChVAwhxDZu8iDgx6SsYU4t5ZbDHQE3ibt8pZJ/w
	dv+YkUFOzjXVe6J0klMKvL78rWhqk/I2HlLxDdkLZQgYTDaJS7EKznn6DbRsCw9dgAqHLLT2aB8YZ
	qrSVW/iYmqxrMj9UZiHd2clHx9UKfW/x1n+ziOP45wfvb//T3Zbt5eQTNDGBr0s7/iu7kRVjD5KUA
	18I0aCK4opz/0X3RPRJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXbet-0000On-VO; Mon, 03 Jun 2019 01:21:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXbel-0000No-7J; Mon, 03 Jun 2019 01:21:01 +0000
X-UUID: 49c1f31d65f34e4d9a6d31ca14f741c7-20190602
X-UUID: 49c1f31d65f34e4d9a6d31ca14f741c7-20190602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1702262545; Sun, 02 Jun 2019 17:20:39 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 18:20:36 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33N2.mediatek.inc (172.27.4.76) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 09:20:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 09:20:28 +0800
Message-ID: <1559524828.14616.0.camel@mtksdaap41>
Subject: Re: [v4 1/7] drm/mediatek: move mipi_dsi_host_register to probe
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 3 Jun 2019 09:20:28 +0800
In-Reply-To: <20190601092615.67917-2-jitao.shi@mediatek.com>
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
 <20190601092615.67917-2-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_182059_267692_FB52FBF4 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Sat, 2019-06-01 at 17:26 +0800, Jitao Shi wrote:
> DSI panel driver need attach function which is inculde in
> mipi_dsi_host_ops.
> 
> If mipi_dsi_host_register is not in probe, dsi panel will
> probe more delay.
> 
> So move the mipi_dsi_host_register to probe from bind.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 50 ++++++++++++++++++------------
>  1 file changed, 30 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b00eb2d2e086..6c4ac37f983d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
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
> @@ -1097,31 +1089,37 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  
>  	dsi->host.ops = &mtk_dsi_ops;
>  	dsi->host.dev = dev;
> +	dsi->dev = dev;

Except this line,

Reviewed-by: CK Hu <ck.hu@mediatek.com>

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
> @@ -1129,33 +1127,35 @@ static int mtk_dsi_probe(struct platform_device *pdev)
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
> @@ -1163,14 +1163,24 @@ static int mtk_dsi_probe(struct platform_device *pdev)
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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
