Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D89222680
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 11:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFT38+KHco6EtmIbYnR1ksnHJhNfPKiLieyOMO1TOZ4=; b=Nc4+cVNPIxGqYu
	T1aXgPa3oi0o47G7uAAnMF7d4feyRV/IbZpBRpoJstr5LHrI8fMITOS6TMndZ5U+78BZt/fJ6Zijl
	NsSE+5uSKK57VNccm0LcrLO263ZeW4tsHvPGDVr1f/m/T/dCc3oo0X+Ca7dmA2umPXfiuHMVx8q8F
	CBQZQKURFX9DXNArivi6styLFLCUSptb4OEz3Z9vz8pODgHC7guAIm4lnf87o5OBZfFjZVFI7JONm
	1SbtvudgN5LYdWHwvIPnqmqBvtnexCuhZ6HxygVB42jfpdOtYuGZqZhCLHYfHe4yU2VHSTMm5pCrf
	NJIM+L3qouukfmJigOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSIFW-0003I7-41; Sun, 19 May 2019 09:36:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSIFP-0003He-Ei; Sun, 19 May 2019 09:36:53 +0000
X-UUID: ed5d228f56fc460297b3f2575e945307-20190519
X-UUID: ed5d228f56fc460297b3f2575e945307-20190519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1167877438; Sun, 19 May 2019 01:36:47 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 02:36:45 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 19 May 2019 17:36:32 +0800
Received: from [10.16.6.141] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 19 May 2019 17:36:29 +0800
Message-ID: <1558258588.367.5.camel@mszsdaap41>
Subject: Re: [v2 1/5] drm/mediatek: move mipi_dsi_host_register to probe
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Sun, 19 May 2019 17:36:28 +0800
In-Reply-To: <1557222735.3498.11.camel@mtksdaap41>
References: <20190416060501.76276-1-jitao.shi@mediatek.com>
 <20190416060501.76276-2-jitao.shi@mediatek.com>
 <1557222735.3498.11.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_023651_496818_3D1C2363 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, 2019-05-07 at 17:52 +0800, CK Hu wrote:
> Hi, Jitao:
> 
> On Tue, 2019-04-16 at 14:04 +0800, Jitao Shi wrote:
> > DSI panel driver need attach function which is inculde in
> > mipi_dsi_host_ops.
> > 
> > If mipi_dsi_host_register is not in probe, dsi panel will
> > probe fail or more delay.
> 
> I think this patch just prevent delay, not to prevent dsi panel probe
> fail. In [1], you mention mipi_dsi_attach() is called in
> panel_simple_dsi_probe(), but panel_simple_dsi_probe() is trigger by
> mipi_dsi_host_register(), so the probe would success.
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/panel/panel-simple.c?h=v5.0-rc6#n2987
> 
> 

Yes, this just prevent delay.

> > 
> > So move the mipi_dsi_host_register to probe from bind.
> > 
> > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_dsi.c | 50 ++++++++++++++++++------------
> >  1 file changed, 30 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > index b00eb2d2e086..6c4ac37f983d 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > @@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
> >  		return ret;
> >  	}
> >  
> > -	ret = mipi_dsi_host_register(&dsi->host);
> > -	if (ret < 0) {
> > -		dev_err(dev, "failed to register DSI host: %d\n", ret);
> > -		goto err_ddp_comp_unregister;
> > -	}
> > -
> >  	ret = mtk_dsi_create_conn_enc(drm, dsi);
> >  	if (ret) {
> >  		DRM_ERROR("Encoder create failed with %d\n", ret);
> > @@ -1060,8 +1054,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
> >  	return 0;
> >  
> >  err_unregister:
> > -	mipi_dsi_host_unregister(&dsi->host);
> > -err_ddp_comp_unregister:
> >  	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
> >  	return ret;
> >  }
> > @@ -1097,31 +1089,37 @@ static int mtk_dsi_probe(struct platform_device *pdev)
> >  
> >  	dsi->host.ops = &mtk_dsi_ops;
> >  	dsi->host.dev = dev;
> > +	dsi->dev = dev;
> 
> Why do this?
> 
> Regards,
> CK
> 

There are some error message require this poweron().

> > +	ret = mipi_dsi_host_register(&dsi->host);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to register DSI host: %d\n", ret);
> > +		return ret;
> > +	}
> >  
> >  	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
> >  					  &dsi->panel, &dsi->bridge);
> >  	if (ret)
> > -		return ret;
> > +		goto err_unregister_host;
> >  
> >  	dsi->engine_clk = devm_clk_get(dev, "engine");
> >  	if (IS_ERR(dsi->engine_clk)) {
> >  		ret = PTR_ERR(dsi->engine_clk);
> >  		dev_err(dev, "Failed to get engine clock: %d\n", ret);
> > -		return ret;
> > +		goto err_unregister_host;
> >  	}
> >  
> >  	dsi->digital_clk = devm_clk_get(dev, "digital");
> >  	if (IS_ERR(dsi->digital_clk)) {
> >  		ret = PTR_ERR(dsi->digital_clk);
> >  		dev_err(dev, "Failed to get digital clock: %d\n", ret);
> > -		return ret;
> > +		goto err_unregister_host;
> >  	}
> >  
> >  	dsi->hs_clk = devm_clk_get(dev, "hs");
> >  	if (IS_ERR(dsi->hs_clk)) {
> >  		ret = PTR_ERR(dsi->hs_clk);
> >  		dev_err(dev, "Failed to get hs clock: %d\n", ret);
> > -		return ret;
> > +		goto err_unregister_host;
> >  	}
> >  
> >  	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> 
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
