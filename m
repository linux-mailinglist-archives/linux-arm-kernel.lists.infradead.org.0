Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CC7166480
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tq/ndVXMBBYdhYmRI+HH1TvtVTEaIw9Dnxql/uwjdvE=; b=KIhB7YcxSTDD1F
	zVb5vB3cJTDFmyVbeLxMm2d7G2ijFsp9syRKDBtxU+nOnFzNcj9qZNk0jgsBV9U0ZIAP90ufAXekX
	eXCZLdofMVy6OH28bGIFh5lyE/fyUshJlePntXIhwyGUceM5Tsw69/YJPlIkd9lh1E90TPum35BPH
	uN5/jxqKIpN6QXQhG+NW27e+w02Fr0uBtk2DBI2BXSD5Lc8G9CwzlNtnlB3NJ+c6q/7Wm/WvojNpQ
	CpxxH+WhWNf1xk97d2huYOMrxXV0ClbwN9vlhc05cLrqM3E0KI5lsPWgBEDt1le14iX2etRYxpRrI
	+9vIYhkJpeAdJiW5f7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pYh-000461-67; Thu, 20 Feb 2020 17:24:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pWi-0002Uu-Ok; Thu, 20 Feb 2020 17:22:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 80B2C29528B
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v8 5/6] drm/mediatek: Move MMSYS configuration to
 include/linux/platform_data
Date: Thu, 20 Feb 2020 18:21:46 +0100
Message-Id: <20200220172147.919996-6-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220172147.919996-1-enric.balletbo@collabora.com>
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092217_189504_9B528A54 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MMSYS platform data and DDP enums will be needed to compile other
drivers, so move it to a global location.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v8:
- New patch introduced in this series.

Changes in v7: None

 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 56 +---------------
 drivers/gpu/drm/mediatek/mtk_drm_drv.h      | 11 ----
 include/linux/platform_data/mtk_mmsys.h     | 73 +++++++++++++++++++++
 3 files changed, 75 insertions(+), 65 deletions(-)
 create mode 100644 include/linux/platform_data/mtk_mmsys.h

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index debe36395fe7..dc45edbec3bd 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -6,6 +6,7 @@
 #ifndef MTK_DRM_DDP_COMP_H
 #define MTK_DRM_DDP_COMP_H
 
+#include <linux/platform_data/mtk_mmsys.h>
 #include <linux/io.h>
 
 struct device;
@@ -14,62 +15,9 @@ struct drm_crtc;
 struct drm_device;
 struct mtk_plane_state;
 struct drm_crtc_state;
-
-enum mtk_ddp_comp_type {
-	MTK_DISP_OVL,
-	MTK_DISP_OVL_2L,
-	MTK_DISP_RDMA,
-	MTK_DISP_WDMA,
-	MTK_DISP_COLOR,
-	MTK_DISP_CCORR,
-	MTK_DISP_DITHER,
-	MTK_DISP_AAL,
-	MTK_DISP_GAMMA,
-	MTK_DISP_UFOE,
-	MTK_DSI,
-	MTK_DPI,
-	MTK_DISP_PWM,
-	MTK_DISP_MUTEX,
-	MTK_DISP_OD,
-	MTK_DISP_BLS,
-	MTK_DDP_COMP_TYPE_MAX,
-};
-
-enum mtk_ddp_comp_id {
-	DDP_COMPONENT_AAL0,
-	DDP_COMPONENT_AAL1,
-	DDP_COMPONENT_BLS,
-	DDP_COMPONENT_CCORR,
-	DDP_COMPONENT_COLOR0,
-	DDP_COMPONENT_COLOR1,
-	DDP_COMPONENT_DITHER,
-	DDP_COMPONENT_DPI0,
-	DDP_COMPONENT_DPI1,
-	DDP_COMPONENT_DSI0,
-	DDP_COMPONENT_DSI1,
-	DDP_COMPONENT_DSI2,
-	DDP_COMPONENT_DSI3,
-	DDP_COMPONENT_GAMMA,
-	DDP_COMPONENT_OD0,
-	DDP_COMPONENT_OD1,
-	DDP_COMPONENT_OVL0,
-	DDP_COMPONENT_OVL_2L0,
-	DDP_COMPONENT_OVL_2L1,
-	DDP_COMPONENT_OVL1,
-	DDP_COMPONENT_PWM0,
-	DDP_COMPONENT_PWM1,
-	DDP_COMPONENT_PWM2,
-	DDP_COMPONENT_RDMA0,
-	DDP_COMPONENT_RDMA1,
-	DDP_COMPONENT_RDMA2,
-	DDP_COMPONENT_UFOE,
-	DDP_COMPONENT_WDMA0,
-	DDP_COMPONENT_WDMA1,
-	DDP_COMPONENT_ID_MAX,
-};
-
 struct mtk_ddp_comp;
 struct cmdq_pkt;
+
 struct mtk_ddp_comp_funcs {
 	void (*config)(struct mtk_ddp_comp *comp, unsigned int w,
 		       unsigned int h, unsigned int vrefresh,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 03201080688d..317a2a26ad1d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -20,17 +20,6 @@ struct drm_fb_helper;
 struct drm_property;
 struct regmap;
 
-struct mtk_mmsys_driver_data {
-	const enum mtk_ddp_comp_id *main_path;
-	unsigned int main_len;
-	const enum mtk_ddp_comp_id *ext_path;
-	unsigned int ext_len;
-	const enum mtk_ddp_comp_id *third_path;
-	unsigned int third_len;
-
-	bool shadow_register;
-};
-
 struct mtk_drm_private {
 	struct drm_device *drm;
 	struct device *dma_dev;
diff --git a/include/linux/platform_data/mtk_mmsys.h b/include/linux/platform_data/mtk_mmsys.h
new file mode 100644
index 000000000000..292f8e72d94f
--- /dev/null
+++ b/include/linux/platform_data/mtk_mmsys.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2015 MediaTek Inc.
+ */
+
+#ifndef __LINUX_MTK_MMSYS_H
+#define __LINUX_MTK_MMSYS_H
+
+enum mtk_ddp_comp_type {
+	MTK_DISP_OVL,
+	MTK_DISP_OVL_2L,
+	MTK_DISP_RDMA,
+	MTK_DISP_WDMA,
+	MTK_DISP_COLOR,
+	MTK_DISP_CCORR,
+	MTK_DISP_DITHER,
+	MTK_DISP_AAL,
+	MTK_DISP_GAMMA,
+	MTK_DISP_UFOE,
+	MTK_DSI,
+	MTK_DPI,
+	MTK_DISP_PWM,
+	MTK_DISP_MUTEX,
+	MTK_DISP_OD,
+	MTK_DISP_BLS,
+	MTK_DDP_COMP_TYPE_MAX,
+};
+
+enum mtk_ddp_comp_id {
+	DDP_COMPONENT_AAL0,
+	DDP_COMPONENT_AAL1,
+	DDP_COMPONENT_BLS,
+	DDP_COMPONENT_CCORR,
+	DDP_COMPONENT_COLOR0,
+	DDP_COMPONENT_COLOR1,
+	DDP_COMPONENT_DITHER,
+	DDP_COMPONENT_DPI0,
+	DDP_COMPONENT_DPI1,
+	DDP_COMPONENT_DSI0,
+	DDP_COMPONENT_DSI1,
+	DDP_COMPONENT_DSI2,
+	DDP_COMPONENT_DSI3,
+	DDP_COMPONENT_GAMMA,
+	DDP_COMPONENT_OD0,
+	DDP_COMPONENT_OD1,
+	DDP_COMPONENT_OVL0,
+	DDP_COMPONENT_OVL_2L0,
+	DDP_COMPONENT_OVL_2L1,
+	DDP_COMPONENT_OVL1,
+	DDP_COMPONENT_PWM0,
+	DDP_COMPONENT_PWM1,
+	DDP_COMPONENT_PWM2,
+	DDP_COMPONENT_RDMA0,
+	DDP_COMPONENT_RDMA1,
+	DDP_COMPONENT_RDMA2,
+	DDP_COMPONENT_UFOE,
+	DDP_COMPONENT_WDMA0,
+	DDP_COMPONENT_WDMA1,
+	DDP_COMPONENT_ID_MAX,
+};
+
+struct mtk_mmsys_driver_data {
+	const enum mtk_ddp_comp_id *main_path;
+	unsigned int main_len;
+	const enum mtk_ddp_comp_id *ext_path;
+	unsigned int ext_len;
+	const enum mtk_ddp_comp_id *third_path;
+	unsigned int third_len;
+
+	bool shadow_register;
+};
+
+#endif /* __LINUX_MTK_MMSYS_H */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
