Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C1D181E7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmGfjl3s1/B9lyPVDTMnpOcW4koVSgRoMPDKJ9mdJr4=; b=MiSygLL7ORBEKK
	wK+6DBw7C+IdsSUR/jSN6p/wP2A1EL4uN1RlRJblTfw9u+0p51tuvWWTaWvYe7NJ03DSm0p+aUQWY
	iA+9jyZsWANLPobr3RT7qXDVAiMrAMQB/F9Y5bgM7aDKCOGbvEYqMw8RUD8eyT696GAh3zAq+dr0X
	hm5JNokbYXkIM17JZe/2b/PEhGdPB8qbrmBefruI59Rr993P1mfLivf3rvecHRrevwbBJomF2Nm/G
	89i35xKEysu1X6gZIQ25YiQEiJiaD0HnZNqtXDIYxHXVzFLk0CL1mfyVBqlvak6nt49h32Y585l7Z
	xtqZV9AN4D3f/6RPg+wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4eQ-0007MJ-9J; Wed, 11 Mar 2020 16:56:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4c8-0004bD-MS; Wed, 11 Mar 2020 16:53:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id A9F3B2930CF
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v12 5/5] soc / drm: mediatek: Fix mediatek-drm device probing
Date: Wed, 11 Mar 2020 17:53:22 +0100
Message-Id: <20200311165322.1594233-6-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311165322.1594233-1-enric.balletbo@collabora.com>
References: <20200311165322.1594233-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_095349_058589_12169912 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 Allison Randal <allison@lohutok.net>, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the actual implementation the same compatible string
"mediatek,<chip>-mmsys" is used to bind the clock drivers
(drivers/soc/mediatek) as well as to the gpu driver
(drivers/gpu/drm/mediatek/mtk_drm_drv.c). This ends with the problem
that the only probed driver is the clock driver and there is no display
at all.

In any case having the same compatible string for two drivers is not
correct and should be fixed. To fix this, and maintain backward
compatibility, we can consider that the mmsys driver is the top-level
entry point for the multimedia subsystem, so is not a pure clock
controller but a system controller, and the drm driver is instantiated
by that MMSYS driver.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Acked-by: CK Hu <ck.hu@mediatek.com>
---

Changes in v12: None
Changes in v10:
- Match driver data to get display routing.

Changes in v9:
- Do not move the display routing from the drm driver (CK)

Changes in v8:
- New patch introduced in this series.

Changes in v7: None

 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 31 ++++++++++++++++----------
 drivers/soc/mediatek/mtk-mmsys.c       |  6 +++++
 2 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 208f9c5256ef..bb26e346750a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -422,9 +422,21 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	{ }
 };
 
+static const struct of_device_id mtk_drm_of_ids[] = {
+	{ .compatible = "mediatek,mt2701-mmsys",
+	  .data = &mt2701_mmsys_driver_data},
+	{ .compatible = "mediatek,mt2712-mmsys",
+	  .data = &mt2712_mmsys_driver_data},
+	{ .compatible = "mediatek,mt8173-mmsys",
+	  .data = &mt8173_mmsys_driver_data},
+	{ }
+};
+
 static int mtk_drm_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct device_node *phandle = dev->parent->of_node;
+	const struct of_device_id *of_id;
 	struct mtk_drm_private *private;
 	struct device_node *node;
 	struct component_match *match = NULL;
@@ -442,8 +454,14 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
+	of_id = of_match_node(mtk_drm_of_ids, phandle);
+	if (!of_id)
+		return -ENODEV;
+
+	private->data = of_id->data;
+
 	/* Iterate over sibling DISP function blocks */
-	for_each_child_of_node(dev->of_node->parent, node) {
+	for_each_child_of_node(phandle->parent, node) {
 		const struct of_device_id *of_id;
 		enum mtk_ddp_comp_type comp_type;
 		int comp_id;
@@ -575,22 +593,11 @@ static int mtk_drm_sys_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(mtk_drm_pm_ops, mtk_drm_sys_suspend,
 			 mtk_drm_sys_resume);
 
-static const struct of_device_id mtk_drm_of_ids[] = {
-	{ .compatible = "mediatek,mt2701-mmsys",
-	  .data = &mt2701_mmsys_driver_data},
-	{ .compatible = "mediatek,mt2712-mmsys",
-	  .data = &mt2712_mmsys_driver_data},
-	{ .compatible = "mediatek,mt8173-mmsys",
-	  .data = &mt8173_mmsys_driver_data},
-	{ }
-};
-
 static struct platform_driver mtk_drm_platform_driver = {
 	.probe	= mtk_drm_probe,
 	.remove	= mtk_drm_remove,
 	.driver	= {
 		.name	= "mediatek-drm",
-		.of_match_table = mtk_drm_of_ids,
 		.pm     = &mtk_drm_pm_ops,
 	},
 };
diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 4b286b525cd3..32a92ec447c5 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -285,6 +285,7 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
 	const struct mtk_mmsys_driver_data *data;
 	struct device *dev = &pdev->dev;
 	struct platform_device *clks;
+	struct platform_device *drm;
 	void __iomem *config_regs;
 	struct resource *mem;
 	int ret;
@@ -307,6 +308,11 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
 	if (IS_ERR(clks))
 		return PTR_ERR(clks);
 
+	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
+					    PLATFORM_DEVID_AUTO, NULL, 0);
+	if (IS_ERR(drm))
+		return PTR_ERR(drm);
+
 	return 0;
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
