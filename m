Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E6212E228
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 05:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru0FXkKQGIs8lGdrZy5lsrcpHKgF7ciQmS+Y7petw8M=; b=ZsMGrS7LzuRquv
	pIHydxRAL6oJFmrE19kYCQ9IPZ3a39IPFKUZWH820h1pNlp2R5TXaFGIHEuEkxIqN6+LwXAY1lK4q
	6Q2768Mj8+PALTs8HRmmz/iZ3OvryvgvUW8Uy03lhhNBGPnMGhly8Hoj63OSbi0x4EjHubd4k3h9D
	ThhGz7qD7Tnr4VBBsqcDTvDsH8hWZUUiaj3l4OVlAuy5JEzHaklTZ2+MSzd4YBaSIQp18vvr5XbZl
	3st6BP6FtmlenSmLjMJw2YDOjlGzMR3NDZ08A77hVoEX8NVS5ctOFu7Mpe/Ir3PeRELxIsihTB+yL
	HSz2WWSWAqv/1waB51Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrhq-0004M8-1y; Thu, 02 Jan 2020 04:03:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrgq-0003Db-1o; Thu, 02 Jan 2020 04:02:29 +0000
X-UUID: 17e0d095dcf24807ae4662158364678a-20200101
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=KatR3ycJbW2j9tID6AqHq4Ul5zoaWs75GrgssCk4PYE=; 
 b=Eq6z7X2qWICeh0M80wUzD/1097jPuYeg39JCAArrFXXqXof8voO4XjtbY6FeqPtnUXZTa1S7g6KH8z/eDEZ1lSFvyxPNilktnKmjpWhU1GF+CEHBnwJeuFo3MqUrj8HJMXdM7uHWvr1JvkwVJTo25z2i54WUCN8+yaLa4bVb86Y=;
X-UUID: 17e0d095dcf24807ae4662158364678a-20200101
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1964482776; Wed, 01 Jan 2020 20:02:19 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Jan 2020 20:02:21 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 12:01:46 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 Jan 2020 12:01:36 +0800
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v6,
 04/14] drm/mediatek: add mmsys private data for ddp path config
Date: Thu, 2 Jan 2020 12:00:14 +0800
Message-ID: <1577937624-14313-5-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1577937624-14313-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1577937624-14313-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_200228_111567_EF5D56AB 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add mmsys private data for ddp path config
all these register offset and value will be different in future SOC
add these define into mmsys private data
	u32 ovl0_mout_en;
	u32 rdma1_sout_sel_in;
	u32 rdma1_sout_dsi0;
	u32 dpi0_sel_in;
	u32 dpi0_sel_in_rdma1;
	u32 dsi0_sel_in;
	u32 dsi0_sel_in_rdma1;

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 +++
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 63 ++++++++++++++++++++++++---------
 drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  6 ++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  3 ++
 drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  3 ++
 5 files changed, 63 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index e47cf84..9aacbcf 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -44,6 +44,7 @@ struct mtk_drm_crtc {
 	bool				pending_planes;
 
 	struct regmap			*config_regs;
+	const struct mtk_mmsys_reg_data *mmsys_reg_data;
 	struct mtk_disp_mutex		*mutex;
 	unsigned int			ddp_comp_nr;
 	struct mtk_ddp_comp		**ddp_comp;
@@ -283,6 +284,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 	DRM_DEBUG_DRIVER("mediatek_ddp_ddp_path_setup\n");
 	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
 		mtk_ddp_add_comp_to_path(mtk_crtc->config_regs,
+					 mtk_crtc->mmsys_reg_data,
 					 mtk_crtc->ddp_comp[i]->id,
 					 mtk_crtc->ddp_comp[i + 1]->id);
 		mtk_disp_mutex_add_comp(mtk_crtc->mutex,
@@ -340,6 +342,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
 	mtk_disp_mutex_disable(mtk_crtc->mutex);
 	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
 		mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
+					      mtk_crtc->mmsys_reg_data,
 					      mtk_crtc->ddp_comp[i]->id,
 					      mtk_crtc->ddp_comp[i + 1]->id);
 		mtk_disp_mutex_remove_comp(mtk_crtc->mutex,
@@ -649,6 +652,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 		return -ENOMEM;
 
 	mtk_crtc->config_regs = priv->config_regs;
+	mtk_crtc->mmsys_reg_data = priv->data->reg_data;
 	mtk_crtc->ddp_comp_nr = path_len;
 	mtk_crtc->ddp_comp = devm_kmalloc_array(dev, mtk_crtc->ddp_comp_nr,
 						sizeof(*mtk_crtc->ddp_comp),
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index f99f89a1..ea0ce32 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -168,6 +168,16 @@ struct mtk_ddp {
 	const struct mtk_ddp_data	*data;
 };
 
+struct mtk_mmsys_reg_data {
+	u32 ovl0_mout_en;
+	u32 rdma1_sout_sel_in;
+	u32 rdma1_sout_dpi0;
+	u32 dpi0_sel_in;
+	u32 dpi0_sel_in_rdma1;
+	u32 dsi0_sel_in;
+	u32 dsi0_sel_in_rdma1;
+};
+
 static const unsigned int mt2701_mutex_mod[DDP_COMPONENT_ID_MAX] = {
 	[DDP_COMPONENT_BLS] = MT2701_MUTEX_MOD_DISP_BLS,
 	[DDP_COMPONENT_COLOR0] = MT2701_MUTEX_MOD_DISP_COLOR,
@@ -246,17 +256,34 @@ struct mtk_ddp {
 	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
 };
 
-static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
+const struct mtk_mmsys_reg_data mt2701_mmsys_reg_data = {
+	.ovl0_mout_en = DISP_REG_CONFIG_DISP_OVL_MOUT_EN,
+	.dsi0_sel_in = DISP_REG_CONFIG_DSI_SEL,
+	.dsi0_sel_in_rdma1 = DSI_SEL_IN_RDMA,
+};
+
+const struct mtk_mmsys_reg_data mt8173_mmsys_reg_data = {
+	.ovl0_mout_en = DISP_REG_CONFIG_DISP_OVL0_MOUT_EN,
+	.rdma1_sout_sel_in = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN,
+	.rdma1_sout_dpi0 = RDMA1_SOUT_DPI0,
+	.dpi0_sel_in = DISP_REG_CONFIG_DPI_SEL_IN,
+	.dpi0_sel_in_rdma1 = DPI0_SEL_IN_RDMA1,
+	.dsi0_sel_in = DISP_REG_CONFIG_DSIE_SEL_IN,
+	.dsi0_sel_in_rdma1 = DSI0_SEL_IN_RDMA1,
+};
+
+static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
+				    enum mtk_ddp_comp_id cur,
 				    enum mtk_ddp_comp_id next,
 				    unsigned int *addr)
 {
 	unsigned int value;
 
 	if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_COLOR0) {
-		*addr = DISP_REG_CONFIG_DISP_OVL0_MOUT_EN;
+		*addr = data->ovl0_mout_en;
 		value = OVL0_MOUT_EN_COLOR0;
 	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_RDMA0) {
-		*addr = DISP_REG_CONFIG_DISP_OVL_MOUT_EN;
+		*addr = data->ovl0_mout_en;
 		value = OVL_MOUT_EN_RDMA;
 	} else if (cur == DDP_COMPONENT_OD0 && next == DDP_COMPONENT_RDMA0) {
 		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
@@ -298,8 +325,8 @@ static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
 		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
 		value = RDMA1_SOUT_DSI3;
 	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
-		value = RDMA1_SOUT_DPI0;
+		*addr = data->rdma1_sout_sel_in;
+		value = data->rdma1_sout_dpi0;
 	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
 		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
 		value = RDMA1_SOUT_DPI1;
@@ -325,7 +352,8 @@ static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
 	return value;
 }
 
-static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
+static unsigned int mtk_ddp_sel_in(const struct mtk_mmsys_reg_data *data,
+				   enum mtk_ddp_comp_id cur,
 				   enum mtk_ddp_comp_id next,
 				   unsigned int *addr)
 {
@@ -335,14 +363,14 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
 		*addr = DISP_REG_CONFIG_DISP_COLOR0_SEL_IN;
 		value = COLOR0_SEL_IN_OVL0;
 	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
-		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
-		value = DPI0_SEL_IN_RDMA1;
+		*addr = data->dpi0_sel_in;
+		value = data->dpi0_sel_in_rdma1;
 	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
 		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
 		value = DPI1_SEL_IN_RDMA1;
 	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
-		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
-		value = DSI0_SEL_IN_RDMA1;
+		*addr = data->dsi0_sel_in;
+		value = data->dsi0_sel_in_rdma1;
 	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
 		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
 		value = DSI1_SEL_IN_RDMA1;
@@ -389,7 +417,8 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
 	return value;
 }
 
-static unsigned int mtk_ddp_sout_sel(enum mtk_ddp_comp_id cur,
+static unsigned int mtk_ddp_sout_sel(const struct mtk_mmsys_reg_data *data,
+				     enum mtk_ddp_comp_id cur,
 				     enum mtk_ddp_comp_id next,
 				     unsigned int *addr)
 {
@@ -409,35 +438,37 @@ static unsigned int mtk_ddp_sout_sel(enum mtk_ddp_comp_id cur,
 }
 
 void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
+			      const struct mtk_mmsys_reg_data *reg_data,
 			      enum mtk_ddp_comp_id cur,
 			      enum mtk_ddp_comp_id next)
 {
 	unsigned int addr, value;
 
-	value = mtk_ddp_mout_en(cur, next, &addr);
+	value = mtk_ddp_mout_en(reg_data, cur, next, &addr);
 	if (value)
 		regmap_update_bits(config_regs, addr, value, value);
 
-	value = mtk_ddp_sout_sel(cur, next, &addr);
+	value = mtk_ddp_sout_sel(reg_data, cur, next, &addr);
 	if (value)
 		regmap_update_bits(config_regs, addr, value, value);
 
-	value = mtk_ddp_sel_in(cur, next, &addr);
+	value = mtk_ddp_sel_in(reg_data, cur, next, &addr);
 	if (value)
 		regmap_update_bits(config_regs, addr, value, value);
 }
 
 void mtk_ddp_remove_comp_from_path(struct regmap *config_regs,
+				   const struct mtk_mmsys_reg_data *reg_data,
 				   enum mtk_ddp_comp_id cur,
 				   enum mtk_ddp_comp_id next)
 {
 	unsigned int addr, value;
 
-	value = mtk_ddp_mout_en(cur, next, &addr);
+	value = mtk_ddp_mout_en(reg_data, cur, next, &addr);
 	if (value)
 		regmap_update_bits(config_regs, addr, value, 0);
 
-	value = mtk_ddp_sel_in(cur, next, &addr);
+	value = mtk_ddp_sel_in(reg_data, cur, next, &addr);
 	if (value)
 		regmap_update_bits(config_regs, addr, value, 0);
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
index 01ff8b6..75fa56e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
@@ -11,11 +11,17 @@
 struct regmap;
 struct device;
 struct mtk_disp_mutex;
+struct mtk_mmsys_reg_data;
+
+extern const struct mtk_mmsys_reg_data mt2701_mmsys_reg_data;
+extern const struct mtk_mmsys_reg_data mt8173_mmsys_reg_data;
 
 void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
+			      const struct mtk_mmsys_reg_data *reg_data,
 			      enum mtk_ddp_comp_id cur,
 			      enum mtk_ddp_comp_id next);
 void mtk_ddp_remove_comp_from_path(struct regmap *config_regs,
+				   const struct mtk_mmsys_reg_data *reg_data,
 				   enum mtk_ddp_comp_id cur,
 				   enum mtk_ddp_comp_id next);
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index f69af42..e3293cf8 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -185,6 +185,7 @@ static int mtk_atomic_commit(struct drm_device *drm,
 	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
 	.ext_path = mt2701_mtk_ddp_ext,
 	.ext_len = ARRAY_SIZE(mt2701_mtk_ddp_ext),
+	.reg_data = &mt2701_mmsys_reg_data,
 	.shadow_register = true,
 	.clk_drv_name = "clk-mt2701-mm",
 };
@@ -196,6 +197,7 @@ static int mtk_atomic_commit(struct drm_device *drm,
 	.ext_len = ARRAY_SIZE(mt2712_mtk_ddp_ext),
 	.third_path = mt2712_mtk_ddp_third,
 	.third_len = ARRAY_SIZE(mt2712_mtk_ddp_third),
+	.reg_data = &mt8173_mmsys_reg_data,
 	.clk_drv_name = "clk-mt2712-mm",
 };
 
@@ -204,6 +206,7 @@ static int mtk_atomic_commit(struct drm_device *drm,
 	.main_len = ARRAY_SIZE(mt8173_mtk_ddp_main),
 	.ext_path = mt8173_mtk_ddp_ext,
 	.ext_len = ARRAY_SIZE(mt8173_mtk_ddp_ext),
+	.reg_data = &mt8173_mmsys_reg_data,
 	.clk_drv_name = "clk-mt8173-mm",
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 8fe9136..9d87441 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -7,6 +7,7 @@
 #define MTK_DRM_DRV_H
 
 #include <linux/io.h>
+#include "mtk_drm_ddp.h"
 #include "mtk_drm_ddp_comp.h"
 
 #define MAX_CRTC	3
@@ -28,6 +29,8 @@ struct mtk_mmsys_driver_data {
 	const enum mtk_ddp_comp_id *third_path;
 	unsigned int third_len;
 
+	const struct mtk_mmsys_reg_data *reg_data;
+
 	bool shadow_register;
 	const char *clk_drv_name;
 };
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
