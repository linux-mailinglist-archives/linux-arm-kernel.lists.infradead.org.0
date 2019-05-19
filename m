Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F32226BC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 13:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ri1sB6F/+IdBHAtQ/NzMKqwJ4l9RrhvEqGqn6Opbopc=; b=A6812IFAlYgp+E
	1VJPf8qywLrSepC7yWSN1r6WpyheylFVQ9JEmHfi5CR6Fw/z/SFnhjspmVSp/K+libktcv7M+mj5l
	R9z9fh9DuqE6F/3mWuJzQjfSTpt6CyOa0KvCHU6O7uHaVAsRiaGCLs1+9cmeRYau5/m4y/iN3x0WR
	PGADPDbi2ZNnm+jzeVUYD93qWK6iyzWMBk38BRpyCfSu3fVFQYkmXZ+STeLfulfhzn2nRHKD8tNNn
	ED713Z/aNLa8UrMRkF8yszwUN0BlsPQZHOoH7TJFntXwzeQ99A5pYmgas066gs64h22FY3uz1RjHv
	K4uF5LitK7Y7IBvDOfuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSJmu-0007y0-Lg; Sun, 19 May 2019 11:15:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSJmm-0007x8-1U; Sun, 19 May 2019 11:15:25 +0000
X-UUID: 632abddcebbf4943b3c734ac93951f5d-20190519
X-UUID: 632abddcebbf4943b3c734ac93951f5d-20190519
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 363652887; Sun, 19 May 2019 03:15:20 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 04:15:19 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 19 May 2019 19:15:16 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sun, 19 May 2019 19:15:15 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH] drm/mediatek: add dsi module reset driver
Date: Sun, 19 May 2019 19:15:13 +0800
Message-ID: <20190519111513.73919-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_041524_089872_BC6C5472 
X-CRM114-Status: GOOD (  11.25  )
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

Reset dsi HW to default when power on. Prevent the setting differet
between bootloader and kernel.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 35 ++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..39ccb34a7c7f 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -21,10 +21,12 @@
 #include <linux/component.h>
 #include <linux/iopoll.h>
 #include <linux/irq.h>
+#include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <video/mipi_display.h>
 #include <video/videomode.h>
 
@@ -146,6 +148,8 @@
 #define T_HS_EXIT	7
 #define T_HS_ZERO	10
 
+#define MMSYS_SW_RST_DSI_B BIT(25)
+
 #define NS_TO_CYCLE(n, c)    ((n) / (c) + (((n) % (c)) ? 1 : 0))
 
 #define MTK_DSI_HOST_IS_READ(type) \
@@ -165,6 +169,8 @@ struct mtk_dsi {
 	struct drm_panel *panel;
 	struct drm_bridge *bridge;
 	struct phy *phy;
+	struct regmap *mmsys_sw_rst_b;
+	u32 sw_rst_b;
 
 	void __iomem *regs;
 
@@ -238,6 +244,16 @@ static void mtk_dsi_disable(struct mtk_dsi *dsi)
 	mtk_dsi_mask(dsi, DSI_CON_CTRL, DSI_EN, 0);
 }
 
+static void mtk_dsi_reset_all(struct mtk_dsi *dsi)
+{
+	regmap_update_bits(dsi->mmsys_sw_rst_b, dsi->sw_rst_b,
+			   MMSYS_SW_RST_DSI_B, ~MMSYS_SW_RST_DSI_B);
+	usleep_range(1000, 1100);
+
+	regmap_update_bits(dsi->mmsys_sw_rst_b, dsi->sw_rst_b,
+			   MMSYS_SW_RST_DSI_B, MMSYS_SW_RST_DSI_B);
+}
+
 static void mtk_dsi_reset_engine(struct mtk_dsi *dsi)
 {
 	mtk_dsi_mask(dsi, DSI_CON_CTRL, DSI_RESET, DSI_RESET);
@@ -831,6 +847,8 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
 			goto err_encoder_cleanup;
 	}
 
+	mtk_dsi_reset_all(dsi);
+
 	return 0;
 
 err_encoder_cleanup:
@@ -1087,6 +1105,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	struct mtk_dsi *dsi;
 	struct device *dev = &pdev->dev;
 	struct resource *regs;
+	struct regmap *regmap;
 	int irq_num;
 	int comp_id;
 	int ret;
@@ -1139,6 +1158,22 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+						 "mediatek,syscon-dsi");
+	ret = of_property_read_u32_index(dev->of_node, "mediatek,syscon-dsi", 1,
+					 &dsi->sw_rst_b);
+
+	if (IS_ERR(regmap))
+		ret = PTR_ERR(regmap);
+
+	if (ret) {
+		ret = PTR_ERR(regmap);
+		dev_err(dev, "Failed to get mmsys registers: %d\n", ret);
+		return ret;
+	}
+
+	dsi->mmsys_sw_rst_b = regmap;
+
 	comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DSI);
 	if (comp_id < 0) {
 		dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
