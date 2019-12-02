Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAFB10E770
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rvj2V6+Vetj5PgHCIQwEtV+3hOJ1VquCSqQbuHp0jVU=; b=VTRxSph5tNusfh
	Ay8uB5hsa7BdhuNUog+0RkjavnMUU5K7jJI4bywOroSfWcYggjzjinlSxAosMf5W1H9vrMjhH19kf
	CTCEUweZscppW3eBmiE66VuQsaxJq4Pw3iKOBdi955c+mqkJLWPGxxifczLLTXvbDwszBrK2A//4w
	AW1CDeXwkSd7HmsNAkfA0u7jTKN20p4Ub2OzUj3bTO7d4YHRw2mWdlB2lkwO50DvC/x01ZvTL9EBU
	vfKcULsNObmlAI++Me1TddzBQHcnkxedska+9Kgg3PB2edhQTjmwryTvsEG9i3/DOYtV63SxJ3aJj
	uXylWp8bQjtGYvrvRU0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhjS-0001bp-C3; Mon, 02 Dec 2019 09:11:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhjK-0001aD-8k; Mon, 02 Dec 2019 09:10:56 +0000
X-UUID: d07467977ea74e70991e563dcf257e01-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=77BHlXRq8SWcz9OZW4vRLcX/STRmZd2DJc8sv5irofo=; 
 b=reYIgDcmJ9SPOE7bIVGGdiC4W7DCRt2Ts+05CW3TMnVmCsRaEAHpXDEGpkfRGMyGpVH+UUveXZguN81eRLF1N3Zbpn0mV+a8e5tiFJ/oMqtXpVIKDE8JCrpxAFA+FiF7nf14nOKQixRdVCc5ugajb+tHJErYGSafyWS5w9Tk6FQ=;
X-UUID: d07467977ea74e70991e563dcf257e01-20191202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1373447161; Mon, 02 Dec 2019 01:10:50 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 01:04:38 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 17:03:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 2 Dec 2019 17:03:34 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] drm/mediatek: add ctm property support
Date: Mon, 2 Dec 2019 17:03:43 +0800
Message-ID: <1575277423-31182-1-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_011054_322148_D6578336 
X-CRM114-Status: GOOD (  14.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

add ctm property support

Change-Id: I8111da7b309b1809c6302e7748dd9fd06dc97bde
Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 15 ++++++-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 61 ++++++++++++++++++++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 11 ++++++
 3 files changed, 84 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 4fb346c..12dc684 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -666,10 +666,13 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
 	int i;
 
 	if (crtc->state->color_mgmt_changed)
-		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
+		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i],
 					  crtc->state,
 					  mtk_crtc_state->cmdq_handle);
+			mtk_ddp_ctm_set(mtk_crtc->ddp_comp[i], crtc->state);
+		}
+
 #ifdef CONFIG_MTK_CMDQ
 	if (mtk_crtc->cmdq_client) {
 		drm_atomic_state_get(old_atomic_state);
@@ -819,6 +822,8 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	int pipe = priv->num_pipes;
 	int ret;
 	int i;
+	bool has_ctm = false;
+	uint gamma_lut_size = 0;
 
 	if (!path)
 		return 0;
@@ -870,6 +875,12 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 		}
 
 		mtk_crtc->ddp_comp[i] = comp;
+
+		if (comp_id == DDP_COMPONENT_CCORR)
+			has_ctm = true;
+
+		if (comp_id == DDP_COMPONENT_GAMMA)
+			gamma_lut_size = MTK_LUT_SIZE;
 	}
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
@@ -891,7 +902,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	if (ret < 0)
 		return ret;
 	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
-	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
+	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, has_ctm, gamma_lut_size);
 	priv->num_pipes++;
 #ifdef CONFIG_MTK_CMDQ
 	mtk_crtc->cmdq_client =
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 9cc12af..2fd52ba 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -38,7 +38,15 @@
 #define CCORR_EN				BIT(0)
 #define DISP_CCORR_CFG				0x0020
 #define CCORR_RELAY_MODE			BIT(0)
+#define CCORR_ENGINE_EN				BIT(1)
+#define CCORR_GAMMA_OFF				BIT(2)
+#define CCORR_WGAMUT_SRC_CLIP			BIT(3)
 #define DISP_CCORR_SIZE				0x0030
+#define DISP_CCORR_COEF_0			0x0080
+#define DISP_CCORR_COEF_1			0x0084
+#define DISP_CCORR_COEF_2			0x0088
+#define DISP_CCORR_COEF_3			0x008C
+#define DISP_CCORR_COEF_4			0x0090
 
 #define DISP_DITHER_EN				0x0000
 #define DITHER_EN				BIT(0)
@@ -187,7 +195,7 @@ static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
 {
 	mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_CCORR_SIZE);
-	mtk_ddp_write(cmdq_pkt, CCORR_RELAY_MODE, comp, DISP_CCORR_CFG);
+	mtk_ddp_write(cmdq_pkt, CCORR_ENGINE_EN, comp, DISP_CCORR_CFG);
 }
 
 static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
@@ -200,6 +208,56 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
 	writel_relaxed(0x0, comp->regs + DISP_CCORR_EN);
 }
 
+/* Converts a DRM S31.32 value to the HW S0.11 format. */
+static u16 mtk_ctm_s31_32_to_s0_11(u64 in)
+{
+	u16 r;
+
+	/* Sign bit. */
+	r = in & BIT_ULL(63) ? BIT(11) : 0;
+
+	if ((in & GENMASK_ULL(62, 33)) > 0) {
+		/* We have zero integer bits so we can only saturate here. */
+		r |= GENMASK(10, 0);
+	} else {
+		/* Otherwise take the 9 most important fractional bits. */
+		r |= (in >> 22) & GENMASK(10, 0);
+	}
+
+	return r;
+}
+
+static void mtk_ccorr_ctm_set(struct mtk_ddp_comp *comp,
+			      struct drm_crtc_state *state
+			      struct cmdq_pkt *cmdq_pkt)
+{
+	struct drm_property_blob *blob = state->ctm;
+	struct drm_color_ctm *ctm;
+	const u64 *input;
+	uint16_t coeffs[9] = { 0 };
+	int i;
+
+	if (!blob)
+		return;
+
+	ctm = (struct drm_color_ctm *)blob->data;
+	input = ctm->matrix;
+
+	for (i = 0; i < ARRAY_SIZE(coeffs); i++)
+		coeffs[i] = mtk_ctm_s31_32_to_s0_11(input[i]);
+
+	mtk_ddp_write(cmdq_pkt, coeffs[0] << 16 | coeffs[1],
+		      comp, DISP_CCORR_COEF_0);
+	mtk_ddp_write(cmdq_pkt, coeffs[2] << 16 | coeffs[3],
+		      comp, DISP_CCORR_COEF_1);
+	mtk_ddp_write(cmdq_pkt, coeffs[4] << 16 | coeffs[5],
+		      comp, DISP_CCORR_COEF_2);
+	mtk_ddp_write(cmdq_pkt, coeffs[6] << 16 | coeffs[7],
+		      comp, DISP_CCORR_COEF_3);
+	mtk_ddp_write(cmdq_pkt, coeffs[8] << 16,
+		      comp, DISP_CCORR_COEF_4);
+}
+
 static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
 			      unsigned int h, unsigned int vrefresh,
 			      unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
@@ -269,6 +327,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
 	.config = mtk_ccorr_config,
 	.start = mtk_ccorr_start,
 	.stop = mtk_ccorr_stop,
+	.ctm_set = mtk_ccorr_ctm_set,
 };
 
 static const struct mtk_ddp_comp_funcs ddp_dither = {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 5b0a3d4..4e3e5aa 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -95,6 +95,9 @@ struct mtk_ddp_comp_funcs {
 			  struct cmdq_pkt *cmdq_pkt);
 	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
 	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
+	void (*ctm_set)(struct mtk_ddp_comp *comp,
+			struct drm_crtc_state *state
+			struct cmdq_pkt *cmdq_pkt);
 };
 
 struct mtk_ddp_comp {
@@ -213,6 +216,14 @@ static inline void mtk_ddp_comp_bgclr_in_off(struct mtk_ddp_comp *comp)
 		comp->funcs->bgclr_in_off(comp);
 }
 
+static inline void mtk_ddp_ctm_set(struct mtk_ddp_comp *comp,
+				   struct drm_crtc_state *state
+				   struct cmdq_pkt *cmdq_pkt)
+{
+	if (comp->funcs && comp->funcs->ctm_set)
+		comp->funcs->ctm_set(comp, state);
+}
+
 int mtk_ddp_comp_get_id(struct device_node *node,
 			enum mtk_ddp_comp_type comp_type);
 int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
