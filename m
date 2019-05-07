Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836E31617C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbMZI1ur/N8h/3BOiINaLxR7JCD6mB4JeTXZ3vd330I=; b=CmiTkjCkcVeMeZ
	4YXMO10q4ZEODI8qZC7of/4590Azk+Pe6OF8emHERWcGcPs3zUtzMVPw/tnkOH4zV1suzYeGRh5da
	w83ZOZ63grife9hEZFp3nR3NS5BSROID0GQzK2yFAqHWstEt0EU5h5m/ogN0tyJsodEwRL16IdLxY
	qiY0o9/IjI5JXH430gbVMvvMTAeIKsy/nqzpWhlJaM2Gstn0fRT3W3xm/AaL4bONaM5Wlf9DxJAPa
	oLbfNqwJ12Gw9LBG+lB9okufxSgUxQRTgzO0QzSjWvTepoyMP1LRm9j/SoOah++WwjS1b7x+/ymZU
	RAR86F+I4ELbbXl00WEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwm7-0005yw-0B; Tue, 07 May 2019 09:52:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwlt-0005xb-Qq; Tue, 07 May 2019 09:52:28 +0000
X-UUID: 81cd6d3c3da64fafb0f2f59aa902d249-20190507
X-UUID: 81cd6d3c3da64fafb0f2f59aa902d249-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 413574817; Tue, 07 May 2019 01:52:20 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 02:52:18 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33N1.mediatek.inc (172.27.4.75) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 17:52:15 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 17:52:15 +0800
Message-ID: <1557222735.3498.11.camel@mtksdaap41>
Subject: Re: [v2 1/5] drm/mediatek: move mipi_dsi_host_register to probe
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Tue, 7 May 2019 17:52:15 +0800
In-Reply-To: <20190416060501.76276-2-jitao.shi@mediatek.com>
References: <20190416060501.76276-1-jitao.shi@mediatek.com>
 <20190416060501.76276-2-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_025227_112743_614A8810 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com, Ajay
 Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul
 Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Kumar Gala <galak@codeaurora.org>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Tue, 2019-04-16 at 14:04 +0800, Jitao Shi wrote:
> DSI panel driver need attach function which is inculde in
> mipi_dsi_host_ops.
> 
> If mipi_dsi_host_register is not in probe, dsi panel will
> probe fail or more delay.

I think this patch just prevent delay, not to prevent dsi panel probe
fail. In [1], you mention mipi_dsi_attach() is called in
panel_simple_dsi_probe(), but panel_simple_dsi_probe() is trigger by
mipi_dsi_host_register(), so the probe would success.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/panel/panel-simple.c?h=v5.0-rc6#n2987


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

Why do this?

Regards,
CK

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




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
