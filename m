Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05563113DEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WOcxEhxexL1a9fyfF2DkFadKjDqbgAL/ZXm4e7MTzQ=; b=meLI8yqSxNdlf7
	R8LbRnhcD6nJqGjjCwGGZ1gOTMGmpHwFzIks9ZFua+vBrYaI50QLdzSPuOkKjqsFVrLm6jYCVtpDV
	F9vgpjO6qb9SUwc3jtvNBlORiwYAzQ4CZf8weK9+xG35KyGyYiCzWsAVQkPN8tmHW3e7pa02hz8oP
	bGe94Lv5jZaDYjEvonCQ6MwRxJSHVAlZV63F1arV1Hv6P+ylW8V2i8JbCpZSiUehQj3pFmsiHIIyk
	UyKuKDsuvRb1AmsQdAuQLboBwXF2WQWmxiWKTQR4kypQdnjADLfchmFMnCLjVExNFK6tp+m0r9Neb
	uVnqmJj6gFScvadaKd5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnQg-0005v9-EG; Thu, 05 Dec 2019 09:28:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnQX-0005uH-69; Thu, 05 Dec 2019 09:28:03 +0000
X-UUID: 763602a437b645eb99b664d2000a2a35-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=zeSQKAOzOclD4n6nprnI4ShG4HDxSJbEnORFXwSjDTY=; 
 b=a8We3anQw9WdhoEOGT3FzpcNmJtK9D3vxTY+qMiysCbY60wdkSFlD512VIVdwzmk/HPMfrbnDnQGK2OTokivVyhB3IE93pHGdH7QWDI3atdUURmu3CuR5GFc2aAcjKC+mVzj6qKklwn6WsDJLDueO7Y75moxkNOuHUjS3S30Z24=;
X-UUID: 763602a437b645eb99b664d2000a2a35-20191205
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 554186619; Thu, 05 Dec 2019 01:27:54 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 01:28:06 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 17:27:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 5 Dec 2019 17:26:52 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v4 6/7] drm/mediatek: support CMDQ interface in ddp component
Date: Thu, 5 Dec 2019 17:27:48 +0800
Message-ID: <20191205092749.4021-7-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
References: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_012801_247709_8127F483 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream@mediatek.com, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CMDQ (Command Queue) in MT8183 is used to help
update all relevant display controller registers
with critical time limation.
This patch add cmdq interface in ddp_comp interface,
let all ddp_comp interface can support cpu/cmdq function
at the same time.

Signed-off-by: YT Shen <yt.shen@mediatek.com>
Signed-off-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  65 +++++-----
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 ++++---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  10 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 132 +++++++++++++++-----
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  31 +++--
 6 files changed, 194 insertions(+), 94 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
index 59de2a46aa49..6fb0d6983a4a 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
@@ -9,6 +9,7 @@
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -45,12 +46,12 @@ static inline struct mtk_disp_color *comp_to_color(struct mtk_ddp_comp *comp)
 
 static void mtk_color_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
-			     unsigned int bpc)
+			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
 	struct mtk_disp_color *color = comp_to_color(comp);
 
-	writel(w, comp->regs + DISP_COLOR_WIDTH(color));
-	writel(h, comp->regs + DISP_COLOR_HEIGHT(color));
+	mtk_ddp_write(cmdq_pkt, w, comp, DISP_COLOR_WIDTH(color));
+	mtk_ddp_write(cmdq_pkt, h, comp, DISP_COLOR_HEIGHT(color));
 }
 
 static void mtk_color_start(struct mtk_ddp_comp *comp)
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 8a32248671c3..649e371dd9b7 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -12,6 +12,7 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -125,14 +126,15 @@ static void mtk_ovl_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_ovl_config(struct mtk_ddp_comp *comp, unsigned int w,
 			   unsigned int h, unsigned int vrefresh,
-			   unsigned int bpc)
+			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
 	if (w != 0 && h != 0)
-		writel_relaxed(h << 16 | w, comp->regs + DISP_REG_OVL_ROI_SIZE);
-	writel_relaxed(0x0, comp->regs + DISP_REG_OVL_ROI_BGCLR);
+		mtk_ddp_write_relaxed(cmdq_pkt, h << 16 | w, comp,
+				      DISP_REG_OVL_ROI_SIZE);
+	mtk_ddp_write_relaxed(cmdq_pkt, 0x0, comp, DISP_REG_OVL_ROI_BGCLR);
 
-	writel(0x1, comp->regs + DISP_REG_OVL_RST);
-	writel(0x0, comp->regs + DISP_REG_OVL_RST);
+	mtk_ddp_write(cmdq_pkt, 0x1, comp, DISP_REG_OVL_RST);
+	mtk_ddp_write(cmdq_pkt, 0x0, comp, DISP_REG_OVL_RST);
 }
 
 static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
@@ -176,16 +178,16 @@ static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
 	return 0;
 }
 
-static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
+static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx,
+			     struct cmdq_pkt *cmdq_pkt)
 {
-	unsigned int reg;
 	unsigned int gmc_thrshd_l;
 	unsigned int gmc_thrshd_h;
 	unsigned int gmc_value;
 	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
 
-	writel(0x1, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
-
+	mtk_ddp_write(cmdq_pkt, 0x1, comp,
+		      DISP_REG_OVL_RDMA_CTRL(idx));
 	gmc_thrshd_l = GMC_THRESHOLD_LOW >>
 		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
 	gmc_thrshd_h = GMC_THRESHOLD_HIGH >>
@@ -195,22 +197,19 @@ static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
 	else
 		gmc_value = gmc_thrshd_l | gmc_thrshd_l << 8 |
 			    gmc_thrshd_h << 16 | gmc_thrshd_h << 24;
-	writel(gmc_value, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
-
-	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
-	reg = reg | BIT(idx);
-	writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);
+	mtk_ddp_write(cmdq_pkt, gmc_value,
+		      comp, DISP_REG_OVL_RDMA_GMC(idx));
+	mtk_ddp_write_mask(cmdq_pkt, BIT(idx), comp,
+			   DISP_REG_OVL_SRC_CON, BIT(idx));
 }
 
-static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx)
+static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx,
+			      struct cmdq_pkt *cmdq_pkt)
 {
-	unsigned int reg;
-
-	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
-	reg = reg & ~BIT(idx);
-	writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);
-
-	writel(0x0, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
+	mtk_ddp_write_mask(cmdq_pkt, 0, comp,
+			   DISP_REG_OVL_SRC_CON, BIT(idx));
+	mtk_ddp_write(cmdq_pkt, 0, comp,
+		      DISP_REG_OVL_RDMA_CTRL(idx));
 }
 
 static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
@@ -250,7 +249,8 @@ static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
 }
 
 static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
-				 struct mtk_plane_state *state)
+				 struct mtk_plane_state *state,
+				 struct cmdq_pkt *cmdq_pkt)
 {
 	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
 	struct mtk_plane_pending_state *pending = &state->pending;
@@ -262,7 +262,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	unsigned int con;
 
 	if (!pending->enable)
-		mtk_ovl_layer_off(comp, idx);
+		mtk_ovl_layer_off(comp, idx, cmdq_pkt);
 
 	con = ovl_fmt_convert(ovl, fmt);
 	if (idx != 0)
@@ -278,14 +278,19 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 		addr += pending->pitch - 1;
 	}
 
-	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
-	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
-	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
-	writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
-	writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, con, comp,
+			      DISP_REG_OVL_CON(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, pitch, comp,
+			      DISP_REG_OVL_PITCH(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, src_size, comp,
+			      DISP_REG_OVL_SRC_SIZE(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, offset, comp,
+			      DISP_REG_OVL_OFFSET(idx));
+	mtk_ddp_write_relaxed(cmdq_pkt, addr, comp,
+			      DISP_REG_OVL_ADDR(ovl, idx));
 
 	if (pending->enable)
-		mtk_ovl_layer_on(comp, idx);
+		mtk_ovl_layer_on(comp, idx, cmdq_pkt);
 }
 
 static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
index 15cc4ae84aee..c1abde3743bf 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
@@ -10,6 +10,7 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -127,15 +128,17 @@ static void mtk_rdma_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
 			    unsigned int height, unsigned int vrefresh,
-			    unsigned int bpc)
+			    unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
 	unsigned int threshold;
 	unsigned int reg;
 	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
 	u32 rdma_fifo_size;
 
-	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
-	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);
+	mtk_ddp_write_mask(cmdq_pkt, width, comp,
+			   DISP_REG_RDMA_SIZE_CON_0, 0xfff);
+	mtk_ddp_write_mask(cmdq_pkt, height, comp,
+			   DISP_REG_RDMA_SIZE_CON_1, 0xfffff);
 
 	if (rdma->fifo_size)
 		rdma_fifo_size = rdma->fifo_size;
@@ -152,7 +155,7 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
 	reg = RDMA_FIFO_UNDERFLOW_EN |
 	      RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
 	      RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
-	writel(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
+	mtk_ddp_write(cmdq_pkt, reg, comp, DISP_REG_RDMA_FIFO_CON);
 }
 
 static unsigned int rdma_fmt_convert(struct mtk_disp_rdma *rdma,
@@ -198,7 +201,8 @@ static unsigned int mtk_rdma_layer_nr(struct mtk_ddp_comp *comp)
 }
 
 static void mtk_rdma_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
-				  struct mtk_plane_state *state)
+				  struct mtk_plane_state *state,
+				  struct cmdq_pkt *cmdq_pkt)
 {
 	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
 	struct mtk_plane_pending_state *pending = &state->pending;
@@ -208,24 +212,27 @@ static void mtk_rdma_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	unsigned int con;
 
 	con = rdma_fmt_convert(rdma, fmt);
-	writel_relaxed(con, comp->regs + DISP_RDMA_MEM_CON);
+	mtk_ddp_write_relaxed(cmdq_pkt, con, comp, DISP_RDMA_MEM_CON);
 
 	if (fmt == DRM_FORMAT_UYVY || fmt == DRM_FORMAT_YUYV) {
-		rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
-				 RDMA_MATRIX_ENABLE, RDMA_MATRIX_ENABLE);
-		rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
-				 RDMA_MATRIX_INT_MTX_SEL,
-				 RDMA_MATRIX_INT_MTX_BT601_to_RGB);
+		mtk_ddp_write_mask(cmdq_pkt, RDMA_MATRIX_ENABLE, comp,
+				   DISP_REG_RDMA_SIZE_CON_0,
+				   RDMA_MATRIX_ENABLE);
+		mtk_ddp_write_mask(cmdq_pkt, RDMA_MATRIX_INT_MTX_BT601_to_RGB,
+				   comp, DISP_REG_RDMA_SIZE_CON_0,
+				   RDMA_MATRIX_INT_MTX_SEL);
 	} else {
-		rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
-				 RDMA_MATRIX_ENABLE, 0);
+		mtk_ddp_write_mask(cmdq_pkt, 0, comp,
+				   DISP_REG_RDMA_SIZE_CON_0,
+				   RDMA_MATRIX_ENABLE);
 	}
+	mtk_ddp_write_relaxed(cmdq_pkt, addr, comp, DISP_RDMA_MEM_START_ADDR);
+	mtk_ddp_write_relaxed(cmdq_pkt, pitch, comp, DISP_RDMA_MEM_SRC_PITCH);
+	mtk_ddp_write(cmdq_pkt, RDMA_MEM_GMC, comp,
+		      DISP_RDMA_MEM_GMC_SETTING_0);
+	mtk_ddp_write_mask(cmdq_pkt, RDMA_MODE_MEMORY, comp,
+			   DISP_REG_RDMA_GLOBAL_CON, RDMA_MODE_MEMORY);
 
-	writel_relaxed(addr, comp->regs + DISP_RDMA_MEM_START_ADDR);
-	writel_relaxed(pitch, comp->regs + DISP_RDMA_MEM_SRC_PITCH);
-	writel(RDMA_MEM_GMC, comp->regs + DISP_RDMA_MEM_GMC_SETTING_0);
-	rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON,
-			 RDMA_MODE_MEMORY, RDMA_MODE_MEMORY);
 }
 
 static const struct mtk_ddp_comp_funcs mtk_disp_rdma_funcs = {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index e40c8cf7d74f..8c6231ed6f55 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -312,7 +312,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		if (prev == DDP_COMPONENT_OVL0)
 			mtk_ddp_comp_bgclr_in_on(comp);
 
-		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
+		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc, NULL);
 		mtk_ddp_comp_start(comp);
 	}
 
@@ -327,7 +327,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
 		if (comp)
 			mtk_ddp_comp_layer_config(comp, local_layer,
-						  plane_state);
+						  plane_state, NULL);
 	}
 
 	return 0;
@@ -394,7 +394,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 	if (state->pending_config) {
 		mtk_ddp_comp_config(comp, state->pending_width,
 				    state->pending_height,
-				    state->pending_vrefresh, 0);
+				    state->pending_vrefresh, 0, NULL);
 
 		state->pending_config = false;
 	}
@@ -414,7 +414,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 
 			if (comp)
 				mtk_ddp_comp_layer_config(comp, local_layer,
-							  plane_state);
+							  plane_state, NULL);
 			plane_state->pending.config = false;
 		}
 		mtk_crtc->pending_planes = false;
@@ -435,7 +435,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 
 			if (comp)
 				mtk_ddp_comp_layer_config(comp, local_layer,
-							  plane_state);
+							  plane_state, NULL);
 			plane_state->pending.async_config = false;
 		}
 		mtk_crtc->pending_async_planes = false;
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 3407d38aff8f..f967b749e1a3 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -12,7 +12,8 @@
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
-
+#include <drm/drmP.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 #include "mtk_drm_drv.h"
 #include "mtk_drm_plane.h"
 #include "mtk_drm_ddp_comp.h"
@@ -76,36 +77,84 @@
 #define DITHER_ADD_LSHIFT_G(x)			(((x) & 0x7) << 4)
 #define DITHER_ADD_RSHIFT_G(x)			(((x) & 0x7) << 0)
 
+void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+		   struct mtk_ddp_comp *comp, unsigned int offset)
+{
+#ifdef CONFIG_MTK_CMDQ
+	if (cmdq_pkt)
+		cmdq_pkt_write(cmdq_pkt, comp->subsys,
+			       comp->regs_pa + offset, value);
+	else
+#endif
+		writel(value, comp->regs + offset);
+}
+
+void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+			   struct mtk_ddp_comp *comp,
+			   unsigned int offset)
+{
+#ifdef CONFIG_MTK_CMDQ
+	if (cmdq_pkt)
+		cmdq_pkt_write(cmdq_pkt, comp->subsys,
+			       comp->regs_pa + offset, value);
+	else
+#endif
+		writel_relaxed(value, comp->regs + offset);
+}
+
+void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt,
+			unsigned int value,
+			struct mtk_ddp_comp *comp,
+			unsigned int offset,
+			unsigned int mask)
+{
+#ifdef CONFIG_MTK_CMDQ
+	if (cmdq_pkt) {
+		cmdq_pkt_write_mask(cmdq_pkt, comp->subsys,
+				    comp->regs_pa + offset, value, mask);
+	} else {
+#endif
+		u32 tmp = readl(comp->regs + offset);
+
+		tmp = (tmp & ~mask) | (value & mask);
+		writel(tmp, comp->regs + offset);
+#ifdef CONFIG_MTK_CMDQ
+	}
+#endif
+}
+
 void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
-		    unsigned int CFG)
+		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
 {
 	/* If bpc equal to 0, the dithering function didn't be enabled */
 	if (bpc == 0)
 		return;
 
 	if (bpc >= MTK_MIN_BPC) {
-		writel(0, comp->regs + DISP_DITHER_5);
-		writel(0, comp->regs + DISP_DITHER_7);
-		writel(DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
-		       DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
-		       DITHER_NEW_BIT_MODE,
-		       comp->regs + DISP_DITHER_15);
-		writel(DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
-		       DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
-		       DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
-		       DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
-		       comp->regs + DISP_DITHER_16);
-		writel(DISP_DITHERING, comp->regs + CFG);
+		mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_5);
+		mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_7);
+		mtk_ddp_write(cmdq_pkt,
+			      DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
+			      DITHER_NEW_BIT_MODE,
+			      comp, DISP_DITHER_15);
+		mtk_ddp_write(cmdq_pkt,
+			      DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
+			      DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
+			      DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
+			      comp, DISP_DITHER_16);
+		mtk_ddp_write(cmdq_pkt, DISP_DITHERING, comp, CFG);
 	}
 }
 
 static void mtk_od_config(struct mtk_ddp_comp *comp, unsigned int w,
 			  unsigned int h, unsigned int vrefresh,
-			  unsigned int bpc)
+			  unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(w << 16 | h, comp->regs + DISP_OD_SIZE);
-	writel(OD_RELAYMODE, comp->regs + DISP_OD_CFG);
-	mtk_dither_set(comp, bpc, DISP_OD_CFG);
+	mtk_ddp_write(cmdq_pkt, w << 16 | h, comp, DISP_OD_SIZE);
+	mtk_ddp_write(cmdq_pkt, OD_RELAYMODE, comp, DISP_OD_CFG);
+	mtk_dither_set(comp, bpc, DISP_OD_CFG, cmdq_pkt);
 }
 
 static void mtk_od_start(struct mtk_ddp_comp *comp)
@@ -120,9 +169,9 @@ static void mtk_ufoe_start(struct mtk_ddp_comp *comp)
 
 static void mtk_aal_config(struct mtk_ddp_comp *comp, unsigned int w,
 			   unsigned int h, unsigned int vrefresh,
-			   unsigned int bpc)
+			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_AAL_SIZE);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_AAL_SIZE);
 }
 
 static void mtk_aal_start(struct mtk_ddp_comp *comp)
@@ -137,10 +186,10 @@ static void mtk_aal_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
-			     unsigned int bpc)
+			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_CCORR_SIZE);
-	writel(CCORR_RELAY_MODE, comp->regs + DISP_CCORR_CFG);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_CCORR_SIZE);
+	mtk_ddp_write(cmdq_pkt, CCORR_RELAY_MODE, comp, DISP_CCORR_CFG);
 }
 
 static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
@@ -155,10 +204,10 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
 			      unsigned int h, unsigned int vrefresh,
-			      unsigned int bpc)
+			      unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_DITHER_SIZE);
-	writel(DITHER_RELAY_MODE, comp->regs + DISP_DITHER_CFG);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_DITHER_SIZE);
+	mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, comp, DISP_DITHER_CFG);
 }
 
 static void mtk_dither_start(struct mtk_ddp_comp *comp)
@@ -173,10 +222,10 @@ static void mtk_dither_stop(struct mtk_ddp_comp *comp)
 
 static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
-			     unsigned int bpc)
+			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
-	writel(h << 16 | w, comp->regs + DISP_GAMMA_SIZE);
-	mtk_dither_set(comp, bpc, DISP_GAMMA_CFG);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_GAMMA_SIZE);
+	mtk_dither_set(comp, bpc, DISP_GAMMA_CFG, cmdq_pkt);
 }
 
 static void mtk_gamma_start(struct mtk_ddp_comp *comp)
@@ -324,6 +373,9 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 		      const struct mtk_ddp_comp_funcs *funcs)
 {
 	struct platform_device *comp_pdev;
+	struct resource res;
+	struct cmdq_client_reg cmdq_reg;
+	int ret = 0;
 
 	if (comp_id < 0 || comp_id >= DDP_COMPONENT_ID_MAX)
 		return -EINVAL;
@@ -358,6 +410,28 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 	}
 	comp->dev = &comp_pdev->dev;
 
+#ifdef CONFIG_MTK_CMDQ
+	if (of_address_to_resource(node, 0, &res) != 0) {
+		dev_err(dev, "Missing reg in %s node\n",
+			node->full_name);
+		return -EINVAL;
+	}
+	comp->regs_pa = res.start;
+
+	comp_pdev = of_find_device_by_node(node);
+	if (!comp_pdev) {
+		dev_warn(dev, "Waiting for component device %s\n",
+			 node->full_name);
+		return -EPROBE_DEFER;
+	}
+
+	ret = cmdq_dev_get_client_reg(&comp_pdev->dev, &cmdq_reg, 0);
+	if (ret != 0)
+		dev_dbg(&comp_pdev->dev,
+			"get mediatek,gce-client-reg fail!\n");
+	else
+		comp->subsys = cmdq_reg.subsys;
+#endif
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index dbfb90e9b9cf..384abae5a8c8 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -69,10 +69,11 @@ enum mtk_ddp_comp_id {
 };
 
 struct mtk_ddp_comp;
-
+struct cmdq_pkt;
 struct mtk_ddp_comp_funcs {
 	void (*config)(struct mtk_ddp_comp *comp, unsigned int w,
-		       unsigned int h, unsigned int vrefresh, unsigned int bpc);
+		       unsigned int h, unsigned int vrefresh,
+		       unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
 	void (*start)(struct mtk_ddp_comp *comp);
 	void (*stop)(struct mtk_ddp_comp *comp);
 	void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
@@ -85,7 +86,8 @@ struct mtk_ddp_comp_funcs {
 			   unsigned int idx,
 			   struct mtk_plane_state *state);
 	void (*layer_config)(struct mtk_ddp_comp *comp, unsigned int idx,
-			     struct mtk_plane_state *state);
+			     struct mtk_plane_state *state,
+			     struct cmdq_pkt *cmdq_pkt);
 	void (*gamma_set)(struct mtk_ddp_comp *comp,
 			  struct drm_crtc_state *state);
 	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
@@ -99,14 +101,17 @@ struct mtk_ddp_comp {
 	struct device *dev;
 	enum mtk_ddp_comp_id id;
 	const struct mtk_ddp_comp_funcs *funcs;
+	resource_size_t regs_pa;
+	u8 subsys;
 };
 
 static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
 				       unsigned int w, unsigned int h,
-				       unsigned int vrefresh, unsigned int bpc)
+				       unsigned int vrefresh, unsigned int bpc,
+				       struct cmdq_pkt *cmdq_pkt)
 {
 	if (comp->funcs && comp->funcs->config)
-		comp->funcs->config(comp, w, h, vrefresh, bpc);
+		comp->funcs->config(comp, w, h, vrefresh, bpc, cmdq_pkt);
 }
 
 static inline void mtk_ddp_comp_prepare(struct mtk_ddp_comp *comp)
@@ -174,10 +179,11 @@ static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
 
 static inline void mtk_ddp_comp_layer_config(struct mtk_ddp_comp *comp,
 					     unsigned int idx,
-					     struct mtk_plane_state *state)
+					     struct mtk_plane_state *state,
+					     struct cmdq_pkt *cmdq_pkt)
 {
 	if (comp->funcs && comp->funcs->layer_config)
-		comp->funcs->layer_config(comp, idx, state);
+		comp->funcs->layer_config(comp, idx, state, cmdq_pkt);
 }
 
 static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
@@ -207,6 +213,13 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,
 int mtk_ddp_comp_register(struct drm_device *drm, struct mtk_ddp_comp *comp);
 void mtk_ddp_comp_unregister(struct drm_device *drm, struct mtk_ddp_comp *comp);
 void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
-		    unsigned int CFG);
-
+		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt);
+enum mtk_ddp_comp_type mtk_ddp_comp_get_type(enum mtk_ddp_comp_id comp_id);
+void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+		   struct mtk_ddp_comp *comp, unsigned int offset);
+void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+			   struct mtk_ddp_comp *comp, unsigned int offset);
+void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
+			struct mtk_ddp_comp *comp, unsigned int offset,
+			unsigned int mask);
 #endif /* MTK_DRM_DDP_COMP_H */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
