Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B37657DC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWSdphf4hF0ZG3Pnbe6yDKzFTbH9WCN7g7bT4h8cCCg=; b=dRukvPu31iqPx+
	5xGhgZP/O41PDwjw4UYOh8jLvxCg+BjGNExOjTtsmd9/QKuUG4HDj2StZBYFz/voi6BNsd/R9hR+/
	iISJySAZnb6D+ls8si0ZFWeJIqw1f4rNOmEP0iwypbDVYkplu75yGchsYH6tzjccMGU9iUpQZFmmm
	tpUV/GV4Bir1GOgm3t4YXK7C12onsBhQeCWKYaaD9UKYT+K5brTnAQlIFQg1kn5+hSTxOHfiAstz+
	MJNO7IRLFxJ4QGU6KYCwk9Jhgg2nRMqtRJeo+lFWOp8CiKfKVDleZgwZv2N4wO+8oYtoDmju1Qbbc
	NDrOduSDh8JZhRhUOIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPM9-0006HR-OD; Thu, 27 Jun 2019 08:02:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPLq-0006FP-RB; Thu, 27 Jun 2019 08:01:52 +0000
X-UUID: 7f26c9ca0efc4f228c06eea4049489bb-20190627
X-UUID: 7f26c9ca0efc4f228c06eea4049489bb-20190627
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1044759185; Thu, 27 Jun 2019 00:01:38 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Jun 2019 01:01:23 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 27 Jun 2019 16:01:20 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Thu, 27 Jun 2019 16:01:19 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [v5 1/7] drm/mediatek: move mipi_dsi_host_register to probe
Date: Thu, 27 Jun 2019 16:01:09 +0800
Message-ID: <20190627080116.40264-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627080116.40264-1-jitao.shi@mediatek.com>
References: <20190627080116.40264-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24720.003
X-TM-AS-Result: No-7.110300-8.000000-10
X-TMASE-MatchedRID: usamOvt1jXSiXdgrlKZp5/3HILfxLV/93V4UShoTXad0FoS1aixTNT7s
 j+R9FMn6NBAJbldcKgW8sMFSGTsyAdpsFVyqUNwXQ4srjeRbxTZLXPA26IG0hN9RlPzeVuQQhqJ
 xi9IzezJKBVbsqgRiwDEua3P66jtsdpvo/nKASz4XK/dRaOWlvaDzzrtsjCZTTFmQ5D//V2mPKV
 zaGaT8FsmfTf3tAqfJu1ODjDi7RA9wWpD0snGz80LhYg/sa1gs3YSaHlnZL83mTInKzpSFSUjYb
 j4tH6TbMOHyrjcZo6KFhnNm59A/TOG1W8jesiDJfzgVmnL/olV9LQinZ4QefPcjNeVeWlqY+gtH
 j7OwNO0UQCQtpNwWelQr3pKYQmVmvbaUI5qOTyRMrQLzfNR1jflwnnsh3VrI
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--7.110300-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24720.003
X-TM-SNTS-SMTP: 09CA99ED57FD0182758A7D3C7F0FFF515B248FC850EDADDFAB1B90369B3BD8722000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_010150_886499_573DEACB 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DSI panel driver need attach function which is inculde in
mipi_dsi_host_ops.

If mipi_dsi_host_register is not in probe, dsi panel will
probe more delay.

So move the mipi_dsi_host_register to probe from bind.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 53 +++++++++++++++++-------------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..595b3b047c7b 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -528,7 +528,7 @@ static s32 mtk_dsi_switch_to_cmd_mode(struct mtk_dsi *dsi, u8 irq_flag, u32 t)
 
 static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 {
-	struct device *dev = dsi->dev;
+	struct device *dev = dsi->->host.dev;
 	int ret;
 	u64 pixel_clock, total_bits;
 	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
@@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 		return ret;
 	}
 
-	ret = mipi_dsi_host_register(&dsi->host);
-	if (ret < 0) {
-		dev_err(dev, "failed to register DSI host: %d\n", ret);
-		goto err_ddp_comp_unregister;
-	}
-
 	ret = mtk_dsi_create_conn_enc(drm, dsi);
 	if (ret) {
 		DRM_ERROR("Encoder create failed with %d\n", ret);
@@ -1060,8 +1054,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 	return 0;
 
 err_unregister:
-	mipi_dsi_host_unregister(&dsi->host);
-err_ddp_comp_unregister:
 	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
 	return ret;
 }
@@ -1073,7 +1065,6 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
 	struct mtk_dsi *dsi = dev_get_drvdata(dev);
 
 	mtk_dsi_destroy_conn_enc(dsi);
-	mipi_dsi_host_unregister(&dsi->host);
 	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
 }
 
@@ -1097,31 +1088,36 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 
 	dsi->host.ops = &mtk_dsi_ops;
 	dsi->host.dev = dev;
+	ret = mipi_dsi_host_register(&dsi->host);
+	if (ret < 0) {
+		dev_err(dev, "failed to register DSI host: %d\n", ret);
+		return ret;
+	}
 
 	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
 					  &dsi->panel, &dsi->bridge);
 	if (ret)
-		return ret;
+		goto err_unregister_host;
 
 	dsi->engine_clk = devm_clk_get(dev, "engine");
 	if (IS_ERR(dsi->engine_clk)) {
 		ret = PTR_ERR(dsi->engine_clk);
 		dev_err(dev, "Failed to get engine clock: %d\n", ret);
-		return ret;
+		goto err_unregister_host;
 	}
 
 	dsi->digital_clk = devm_clk_get(dev, "digital");
 	if (IS_ERR(dsi->digital_clk)) {
 		ret = PTR_ERR(dsi->digital_clk);
 		dev_err(dev, "Failed to get digital clock: %d\n", ret);
-		return ret;
+		goto err_unregister_host;
 	}
 
 	dsi->hs_clk = devm_clk_get(dev, "hs");
 	if (IS_ERR(dsi->hs_clk)) {
 		ret = PTR_ERR(dsi->hs_clk);
 		dev_err(dev, "Failed to get hs clock: %d\n", ret);
-		return ret;
+		goto err_unregister_host;
 	}
 
 	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -1129,33 +1125,35 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	if (IS_ERR(dsi->regs)) {
 		ret = PTR_ERR(dsi->regs);
 		dev_err(dev, "Failed to ioremap memory: %d\n", ret);
-		return ret;
+		goto err_unregister_host;
 	}
 
 	dsi->phy = devm_phy_get(dev, "dphy");
 	if (IS_ERR(dsi->phy)) {
 		ret = PTR_ERR(dsi->phy);
 		dev_err(dev, "Failed to get MIPI-DPHY: %d\n", ret);
-		return ret;
+		goto err_unregister_host;
 	}
 
 	comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DSI);
 	if (comp_id < 0) {
 		dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
-		return comp_id;
+		ret = comp_id;
+		goto err_unregister_host;
 	}
 
 	ret = mtk_ddp_comp_init(dev, dev->of_node, &dsi->ddp_comp, comp_id,
 				&mtk_dsi_funcs);
 	if (ret) {
 		dev_err(dev, "Failed to initialize component: %d\n", ret);
-		return ret;
+		goto err_unregister_host;
 	}
 
 	irq_num = platform_get_irq(pdev, 0);
 	if (irq_num < 0) {
-		dev_err(&pdev->dev, "failed to request dsi irq resource\n");
-		return -EPROBE_DEFER;
+		dev_err(&pdev->dev, "failed to get dsi irq_num: %d\n", irq_num);
+		ret = irq_num;
+		goto err_unregister_host;
 	}
 
 	irq_set_status_flags(irq_num, IRQ_TYPE_LEVEL_LOW);
@@ -1163,14 +1161,24 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 			       IRQF_TRIGGER_LOW, dev_name(&pdev->dev), dsi);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to request mediatek dsi irq\n");
-		return -EPROBE_DEFER;
+		goto err_unregister_host;
 	}
 
 	init_waitqueue_head(&dsi->irq_wait_queue);
 
 	platform_set_drvdata(pdev, dsi);
 
-	return component_add(&pdev->dev, &mtk_dsi_component_ops);
+	ret = component_add(&pdev->dev, &mtk_dsi_component_ops);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to add component: %d\n", ret);
+		goto err_unregister_host;
+	}
+
+	return 0;
+
+err_unregister_host:
+	mipi_dsi_host_unregister(&dsi->host);
+	return ret;
 }
 
 static int mtk_dsi_remove(struct platform_device *pdev)
@@ -1179,6 +1187,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
 
 	mtk_output_dsi_disable(dsi);
 	component_del(&pdev->dev, &mtk_dsi_component_ops);
+	mipi_dsi_host_unregister(&dsi->host);
 
 	return 0;
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
