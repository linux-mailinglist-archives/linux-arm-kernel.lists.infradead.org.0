Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C85A8915A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 12:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lDQ2pL+SzZqqgUhKmTlx5/e+HyWuQV6TuRwsTUbzKs=; b=PeBtreTHMuNvSU
	+mRu6pAwRagnxxmVFNzWbggtj+Pbl2kOGn2Ak0nzEiWptDvhtoOHTSeBq1nK71OWTs/ULRZhVm9Mt
	Y9uJQBMtxgj4KbiwSCb+yYtbUwtMdP8RpwV+uV9tDtSommYml7nZqBkrXYe8oAOMPp9dITTPe7T/B
	mkM6ER8vnOJirrjHDOIs5EMLhmMy2lEOz1/PKk71VntZXt1c+jLTTs2axYZAuAP09JXAzx2glY+sc
	wOdklmnqNnWShJpK0vEQn0OUMnZWnE40z0+mPHmKky7Ai9/9sErjya2uHsiw4JD+JI+U81RKPnC1t
	65ghj98Ut30bUQLsMlAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwlHa-0003FX-GQ; Sun, 11 Aug 2019 10:41:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwlHL-00036n-Ad; Sun, 11 Aug 2019 10:40:48 +0000
X-UUID: 2413b79842ae4d9dbd981bd20c2125c1-20190811
X-UUID: 2413b79842ae4d9dbd981bd20c2125c1-20190811
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 752536450; Sun, 11 Aug 2019 02:40:39 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 11 Aug 2019 03:40:37 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 11 Aug 2019 18:40:35 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sun, 11 Aug 2019 18:40:33 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v6 1/7] drm/mediatek: move mipi_dsi_host_register to probe
Date: Sun, 11 Aug 2019 18:40:02 +0800
Message-ID: <20190811104008.53372-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190811104008.53372-1-jitao.shi@mediatek.com>
References: <20190811104008.53372-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4363707DE4E7BF3567D57DF9CDD8278F98BC6133F2F443C3C3FD25D113522C022000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_034047_369940_2B816373 
X-CRM114-Status: GOOD (  13.06  )
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
index b91c4616644a..52b49daeed9f 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -520,7 +520,7 @@ static s32 mtk_dsi_switch_to_cmd_mode(struct mtk_dsi *dsi, u8 irq_flag, u32 t)
 
 static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 {
-	struct device *dev = dsi->dev;
+	struct device *dev = dsi->host.dev;
 	int ret;
 	u64 pixel_clock, total_bits;
 	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
@@ -1047,12 +1047,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
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
@@ -1062,8 +1056,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 	return 0;
 
 err_unregister:
-	mipi_dsi_host_unregister(&dsi->host);
-err_ddp_comp_unregister:
 	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
 	return ret;
 }
@@ -1075,7 +1067,6 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
 	struct mtk_dsi *dsi = dev_get_drvdata(dev);
 
 	mtk_dsi_destroy_conn_enc(dsi);
-	mipi_dsi_host_unregister(&dsi->host);
 	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
 }
 
@@ -1099,31 +1090,36 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 
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
@@ -1131,33 +1127,35 @@ static int mtk_dsi_probe(struct platform_device *pdev)
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
@@ -1165,14 +1163,24 @@ static int mtk_dsi_probe(struct platform_device *pdev)
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
@@ -1181,6 +1189,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
 
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
