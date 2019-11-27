Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1C510A7DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 02:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Bj5+YAgH31j6o86H7dj9X3VXoklUI+XokHg+qbYtaM=; b=hTpN5dz/57FEgn
	HER7bJBy6Qlw0hRWhb1DU0KCao4YMSZIiuU32B9bcDoHkHowXvua0F0W2AsO8Ni6qDOk/JeCE/8Ta
	H6IAHMZFgr0ZDzvhKn/OY152vpR9M6LNfTZyOY046km511JLIZGPM50QMXFGStkquy/X4G+dfPf0A
	81AzDsdm2ILh9YBgY/Fk0TunS7sjTohx8OeAA2T2vIGbzxDHWY7jL6rlXl83VThJl+x0DxTYao3k7
	LQCzvzTr3og8b0vwt4Ed7xdl0nK80bKdHDtIbiNiSn5a0X4nku1YOThgnyS7XkbY4/x/95nfOCefU
	qAlOhTrgKJdsEzIiQMeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZlyO-0006O5-V5; Wed, 27 Nov 2019 01:18:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZly6-0006M5-LC; Wed, 27 Nov 2019 01:18:12 +0000
X-UUID: 9be7481f19de4a0295283e9327872fa3-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Lvh1fcnFFRtO4+2c6Jho2uXYD1k+u4DIOsjea3Dk4/4=; 
 b=pPVcN+7fPQ4q61w6diOo9yqZC5gvRN6gcPI+qlwWaCMfjlYb0NQkbMW3MrXCVWXSPaEGJny0o0iXpLlMndALY8OVA/zp8ceyxQeEmDmBctXCX3PnOKaNoYyr+UEIzlUuUySATwcrNTn7nwPcK0ssGmQPn7PQv01C+hVIEKWWFkA=;
X-UUID: 9be7481f19de4a0295283e9327872fa3-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1802010768; Tue, 26 Nov 2019 17:18:05 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 17:18:11 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 09:17:53 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 27 Nov 2019 09:17:11 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1,
 2/2] drm/mediatek: Fix external display vblank timeout issue
Date: Wed, 27 Nov 2019 09:17:55 +0800
Message-ID: <1574817475-22378-3-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1574817475-22378-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1574817475-22378-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_171810_710026_A46BC6EA 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Fix external display vblank timeout issue

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c          | 14 +++++++++-----
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  6 ++++++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 14 ++++++++++++++
 3 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index be6d95c..38cabbe 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -387,8 +387,12 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 {
 	int ret;
 
-	if (++dpi->refcount != 1)
+	if (++dpi->refcount != 1) {
+		dev_warn(dpi->dev, "%s refcount: %d\n", __func__, dpi->refcount);
 		return 0;
+	}
+
+	DRM_DEBUG_DRIVER("%s refcount %d\n", __func__, dpi->refcount);
 
 	ret = clk_prepare_enable(dpi->engine_clk);
 	if (ret) {
@@ -563,14 +567,14 @@ static int mtk_dpi_atomic_check(struct drm_encoder *encoder,
 	.atomic_check = mtk_dpi_atomic_check,
 };
 
-static void mtk_dpi_start(struct mtk_ddp_comp *comp)
+static void mtk_dpi_prepare(struct mtk_ddp_comp *comp)
 {
 	struct mtk_dpi *dpi = container_of(comp, struct mtk_dpi, ddp_comp);
 
 	mtk_dpi_power_on(dpi);
 }
 
-static void mtk_dpi_stop(struct mtk_ddp_comp *comp)
+static void mtk_dpi_unprepare(struct mtk_ddp_comp *comp)
 {
 	struct mtk_dpi *dpi = container_of(comp, struct mtk_dpi, ddp_comp);
 
@@ -578,8 +582,8 @@ static void mtk_dpi_stop(struct mtk_ddp_comp *comp)
 }
 
 static const struct mtk_ddp_comp_funcs mtk_dpi_funcs = {
-	.start = mtk_dpi_start,
-	.stop = mtk_dpi_stop,
+	.prepare = mtk_dpi_prepare,
+	.unprepare = mtk_dpi_unprepare,
 };
 
 static int mtk_dpi_bind(struct device *dev, struct device *master, void *data)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 7eca02f..a6d3d97 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -345,6 +345,9 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		return ret;
 	}
 
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
+		mtk_ddp_comp_prepare(mtk_crtc->ddp_comp[i]);
+
 	ret = mtk_disp_mutex_prepare(mtk_crtc->mutex);
 	if (ret < 0) {
 		DRM_ERROR("Failed to enable mutex clock: %d\n", ret);
@@ -434,6 +437,9 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
 	mtk_crtc_ddp_clk_disable(mtk_crtc);
 	mtk_disp_mutex_unprepare(mtk_crtc->mutex);
 
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
+		mtk_ddp_comp_unprepare(mtk_crtc->ddp_comp[i]);
+
 	pm_runtime_put(drm->dev);
 
 	if (crtc->state->event && !crtc->state->active) {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 5b0a3d4..097b90d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -78,6 +78,8 @@ struct mtk_ddp_comp_funcs {
 	void (*stop)(struct mtk_ddp_comp *comp);
 	void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
 	void (*disable_vblank)(struct mtk_ddp_comp *comp);
+	void (*prepare)(struct mtk_ddp_comp *comp);
+	void (*unprepare)(struct mtk_ddp_comp *comp);
 	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
 	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
 	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx,
@@ -117,6 +119,18 @@ static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
 		comp->funcs->config(comp, w, h, vrefresh, bpc, cmdq_pkt);
 }
 
+static inline void mtk_ddp_comp_prepare(struct mtk_ddp_comp *comp)
+{
+	if (comp->funcs && comp->funcs->prepare)
+		comp->funcs->prepare(comp);
+}
+
+static inline void mtk_ddp_comp_unprepare(struct mtk_ddp_comp *comp)
+{
+	if (comp->funcs && comp->funcs->unprepare)
+		comp->funcs->unprepare(comp);
+}
+
 static inline void mtk_ddp_comp_start(struct mtk_ddp_comp *comp)
 {
 	if (comp->funcs && comp->funcs->start)
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
