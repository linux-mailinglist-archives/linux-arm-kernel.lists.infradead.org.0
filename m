Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCBF1E9E26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tcui5gNvetnRmskWRNxTkLmkGBvoOVMR9BMGNff9b9Q=; b=YxH80dzR58jyalMRUxATA/jvHy
	zAXNsdORTmSqTfPKgjw4rQjnjhuSStyJurwTio/dKvjed/XFHmqC2X4wQchK3svq2Bk+t2jtdyEtS
	gfbQc2U3Hp6Tj5HTD8JLXc6qnfXiVDTyqe1rbkF9PgUf9g/dSPYJpjMnBXHuOmH+7pcRvahjE7NQD
	Kdf8yCiMuNRmB/CMTbboSlm27uKG9lrg7MSbY1GDgOhahSaH52qBjAjkd34TKR6m/PTzWpGUZ60ZL
	nlDCf1TxsQ4WoZF47inx57osr5Sxoz2WgXxh5VmNbOGJ1CmaHoCyhWKAJx4JccPmhvv9GehiVm8jZ
	WLNsyliw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdtg-0003A5-08; Mon, 01 Jun 2020 06:26:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdr4-0007RG-H2; Mon, 01 Jun 2020 06:23:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 15B3B1A0643;
 Mon,  1 Jun 2020 08:23:25 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1DBBE1A0631;
 Mon,  1 Jun 2020 08:23:19 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A8AFD4031F;
 Mon,  1 Jun 2020 14:23:11 +0800 (SGT)
From: sandor.yu@nxp.com
To: a.hajda@samsung.com, narmstrong@baylibre.com,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@siol.net, heiko@sntech.de, hjc@rock-chips.com,
 Sandor.yu@nxp.com, dkos@cadence.com, dri-devel@lists.freedesktop.org
Subject: [PATCH 6/7] drm: imx: mhdp: Initial support for i.MX8MQ MHDP HDMI
Date: Mon,  1 Jun 2020 14:17:36 +0800
Message-Id: <946044d0c8ab554219487b79ecaaf2b73dc6dcdd.1590982881.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1590982881.git.Sandor.yu@nxp.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
In-Reply-To: <cover.1590982881.git.Sandor.yu@nxp.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_232327_018847_C1667F80 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sandor Yu <Sandor.yu@nxp.com>

Add initial support for i.MX8MQ MHDP HDMI.
Add MHDP HDMI PHY configuration.
The features are same as mhdp hdmi bridge driver.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
 drivers/gpu/drm/imx/mhdp/Kconfig              |   5 +-
 drivers/gpu/drm/imx/mhdp/Makefile             |   2 +-
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c | 588 ++++++++++++++++++
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c   |  12 +
 drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h      |   2 +
 5 files changed, 606 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c

diff --git a/drivers/gpu/drm/imx/mhdp/Kconfig b/drivers/gpu/drm/imx/mhdp/Kconfig
index c9e07a3bf3df..fc0cf708b900 100644
--- a/drivers/gpu/drm/imx/mhdp/Kconfig
+++ b/drivers/gpu/drm/imx/mhdp/Kconfig
@@ -1,8 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 config DRM_IMX_CDNS_MHDP
-	tristate "NXP i.MX MX8 DRM DP"
+	tristate "NXP i.MX MX8 DRM DP/HDMI"
 	select DRM_CDNS_MHDP
 	select DRM_CDNS_DP
+	select DRM_CDNS_HDMI
 	help
-	  Choose this if you want to use Displayport on i.MX8.
+	  Choose this if you want to use Displayport/HDMI on i.MX8.
diff --git a/drivers/gpu/drm/imx/mhdp/Makefile b/drivers/gpu/drm/imx/mhdp/Makefile
index 4383e689445a..ca51a2a9641c 100644
--- a/drivers/gpu/drm/imx/mhdp/Makefile
+++ b/drivers/gpu/drm/imx/mhdp/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
-cdns_mhdp_imx-objs := cdns-mhdp-imxdrv.o cdns-mhdp-dp-phy.o
+cdns_mhdp_imx-objs := cdns-mhdp-imxdrv.o cdns-mhdp-dp-phy.o cdns-mhdp-hdmi-phy.o
 obj-$(CONFIG_DRM_IMX_CDNS_MHDP) += cdns_mhdp_imx.o
diff --git a/drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c b/drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c
new file mode 100644
index 000000000000..54b01e13a2b6
--- /dev/null
+++ b/drivers/gpu/drm/imx/mhdp/cdns-mhdp-hdmi-phy.c
@@ -0,0 +1,588 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Cadence High-Definition Multimedia Interface (HDMI) PHY driver
+ *
+ * Copyright (C) 2019-2020 NXP Semiconductor, Inc.
+ */
+#include <drm/drm_of.h>
+#include <drm/drm_vblank.h>
+#include <drm/drm_print.h>
+#include <drm/drm_crtc_helper.h>
+#include <linux/io.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_encoder_slave.h>
+#include <drm/drm_atomic.h>
+#include <linux/io.h>
+
+#include <drm/bridge/cdns-mhdp.h>
+#include "cdns-mhdp-phy.h"
+
+/* HDMI TX clock control settings */
+struct hdmi_ctrl {
+	u32 pixel_clk_freq_min;
+	u32 pixel_clk_freq_max;
+	u32 feedback_factor;
+	u32 data_range_kbps_min;
+	u32 data_range_kbps_max;
+	u32 cmnda_pll0_ip_div;
+	u32 cmn_ref_clk_dig_div;
+	u32 ref_clk_divider_scaler;
+	u32 pll_fb_div_total;
+	u32 cmnda_pll0_fb_div_low;
+	u32 cmnda_pll0_fb_div_high;
+	u32 pixel_div_total;
+	u32 cmnda_pll0_pxdiv_low;
+	u32 cmnda_pll0_pxdiv_high;
+	u32 vco_freq_min;
+	u32 vco_freq_max;
+	u32 vco_ring_select;
+	u32 cmnda_hs_clk_0_sel;
+	u32 cmnda_hs_clk_1_sel;
+	u32 hsclk_div_at_xcvr;
+	u32 hsclk_div_tx_sub_rate;
+	u32 cmnda_pll0_hs_sym_div_sel;
+	u32 cmnda_pll0_clk_freq_min;
+	u32 cmnda_pll0_clk_freq_max;
+};
+
+/* HDMI TX clock control settings, pixel clock is output */
+static const struct hdmi_ctrl imx8mq_ctrl_table[] = {
+/*Minclk  Maxclk Fdbak  DR_min   DR_max  ip_d  dig  DS    Totl */
+{ 27000,  27000, 1000,  270000,  270000, 0x03, 0x1, 0x1,  240, 0x0BC, 0x030,  80, 0x026, 0x026, 2160000, 2160000, 0, 2, 2, 2, 4, 0x3,  27000,  27000},
+{ 27000,  27000, 1250,  337500,  337500, 0x03, 0x1, 0x1,  300, 0x0EC, 0x03C, 100, 0x030, 0x030, 2700000, 2700000, 0, 2, 2, 2, 4, 0x3,  33750,  33750},
+{ 27000,  27000, 1500,  405000,  405000, 0x03, 0x1, 0x1,  360, 0x11C, 0x048, 120, 0x03A, 0x03A, 3240000, 3240000, 0, 2, 2, 2, 4, 0x3,  40500,  40500},
+{ 27000,  27000, 2000,  540000,  540000, 0x03, 0x1, 0x1,  240, 0x0BC, 0x030,  80, 0x026, 0x026, 2160000, 2160000, 0, 2, 2, 2, 4, 0x2,  54000,  54000},
+{ 54000,  54000, 1000,  540000,  540000, 0x03, 0x1, 0x1,  480, 0x17C, 0x060,  80, 0x026, 0x026, 4320000, 4320000, 1, 2, 2, 2, 4, 0x3,  54000,  54000},
+{ 54000,  54000, 1250,  675000,  675000, 0x04, 0x1, 0x1,  400, 0x13C, 0x050,  50, 0x017, 0x017, 2700000, 2700000, 0, 1, 1, 2, 4, 0x2,  67500,  67500},
+{ 54000,  54000, 1500,  810000,  810000, 0x04, 0x1, 0x1,  480, 0x17C, 0x060,  60, 0x01C, 0x01C, 3240000, 3240000, 0, 2, 2, 2, 2, 0x2,  81000,  81000},
+{ 54000,  54000, 2000, 1080000, 1080000, 0x03, 0x1, 0x1,  240, 0x0BC, 0x030,  40, 0x012, 0x012, 2160000, 2160000, 0, 2, 2, 2, 1, 0x1, 108000, 108000},
+{ 74250,  74250, 1000,  742500,  742500, 0x03, 0x1, 0x1,  660, 0x20C, 0x084,  80, 0x026, 0x026, 5940000, 5940000, 1, 2, 2, 2, 4, 0x3,  74250,  74250},
+{ 74250,  74250, 1250,  928125,  928125, 0x04, 0x1, 0x1,  550, 0x1B4, 0x06E,  50, 0x017, 0x017, 3712500, 3712500, 1, 1, 1, 2, 4, 0x2,  92812,  92812},
+{ 74250,  74250, 1500, 1113750, 1113750, 0x04, 0x1, 0x1,  660, 0x20C, 0x084,  60, 0x01C, 0x01C, 4455000, 4455000, 1, 2, 2, 2, 2, 0x2, 111375, 111375},
+{ 74250,  74250, 2000, 1485000, 1485000, 0x03, 0x1, 0x1,  330, 0x104, 0x042,  40, 0x012, 0x012, 2970000, 2970000, 0, 2, 2, 2, 1, 0x1, 148500, 148500},
+{ 99000,  99000, 1000,  990000,  990000, 0x03, 0x1, 0x1,  440, 0x15C, 0x058,  40, 0x012, 0x012, 3960000, 3960000, 1, 2, 2, 2, 2, 0x2,  99000,  99000},
+{ 99000,  99000, 1250, 1237500, 1237500, 0x03, 0x1, 0x1,  275, 0x0D8, 0x037,  25, 0x00B, 0x00A, 2475000, 2475000, 0, 1, 1, 2, 2, 0x1, 123750, 123750},
+{ 99000,  99000, 1500, 1485000, 1485000, 0x03, 0x1, 0x1,  330, 0x104, 0x042,  30, 0x00D, 0x00D, 2970000, 2970000, 0, 2, 2, 2, 1, 0x1, 148500, 148500},
+{ 99000,  99000, 2000, 1980000, 1980000, 0x03, 0x1, 0x1,  440, 0x15C, 0x058,  40, 0x012, 0x012, 3960000, 3960000, 1, 2, 2, 2, 1, 0x1, 198000, 198000},
+{148500, 148500, 1000, 1485000, 1485000, 0x03, 0x1, 0x1,  660, 0x20C, 0x084,  40, 0x012, 0x012, 5940000, 5940000, 1, 2, 2, 2, 2, 0x2, 148500, 148500},
+{148500, 148500, 1250, 1856250, 1856250, 0x04, 0x1, 0x1,  550, 0x1B4, 0x06E,  25, 0x00B, 0x00A, 3712500, 3712500, 1, 1, 1, 2, 2, 0x1, 185625, 185625},
+{148500, 148500, 1500, 2227500, 2227500, 0x03, 0x1, 0x1,  495, 0x188, 0x063,  30, 0x00D, 0x00D, 4455000, 4455000, 1, 1, 1, 2, 2, 0x1, 222750, 222750},
+{148500, 148500, 2000, 2970000, 2970000, 0x03, 0x1, 0x1,  660, 0x20C, 0x084,  40, 0x012, 0x012, 5940000, 5940000, 1, 2, 2, 2, 1, 0x1, 297000, 297000},
+{198000, 198000, 1000, 1980000, 1980000, 0x03, 0x1, 0x1,  220, 0x0AC, 0x02C,  10, 0x003, 0x003, 1980000, 1980000, 0, 1, 1, 2, 1, 0x0, 198000, 198000},
+{198000, 198000, 1250, 2475000, 2475000, 0x03, 0x1, 0x1,  550, 0x1B4, 0x06E,  25, 0x00B, 0x00A, 4950000, 4950000, 1, 1, 1, 2, 2, 0x1, 247500, 247500},
+{198000, 198000, 1500, 2970000, 2970000, 0x03, 0x1, 0x1,  330, 0x104, 0x042,  15, 0x006, 0x005, 2970000, 2970000, 0, 1, 1, 2, 1, 0x0, 297000, 297000},
+{198000, 198000, 2000, 3960000, 3960000, 0x03, 0x1, 0x1,  440, 0x15C, 0x058,  20, 0x008, 0x008, 3960000, 3960000, 1, 1, 1, 2, 1, 0x0, 396000, 396000},
+{297000, 297000, 1000, 2970000, 2970000, 0x03, 0x1, 0x1,  330, 0x104, 0x042,  10, 0x003, 0x003, 2970000, 2970000, 0, 1, 1, 2, 1, 0x0, 297000, 297000},
+{297000, 297000, 1500, 4455000, 4455000, 0x03, 0x1, 0x1,  495, 0x188, 0x063,  15, 0x006, 0x005, 4455000, 4455000, 1, 1, 1, 2, 1, 0x0, 445500, 445500},
+{297000, 297000, 2000, 5940000, 5940000, 0x03, 0x1, 0x1,  660, 0x20C, 0x084,  20, 0x008, 0x008, 5940000, 5940000, 1, 1, 1, 2, 1, 0x0, 594000, 594000},
+{594000, 594000, 1000, 5940000, 5940000, 0x03, 0x1, 0x1,  660, 0x20C, 0x084,  10, 0x003, 0x003, 5940000, 5940000, 1, 1, 1, 2, 1, 0x0, 594000, 594000},
+{594000, 594000,  750, 4455000, 4455000, 0x03, 0x1, 0x1,  495, 0x188, 0x063,  10, 0x003, 0x003, 4455000, 4455000, 1, 1, 1, 2, 1, 0x0, 445500, 445500},
+{594000, 594000,  625, 3712500, 3712500, 0x04, 0x1, 0x1,  550, 0x1B4, 0x06E,  10, 0x003, 0x003, 3712500, 3712500, 1, 1, 1, 2, 1, 0x0, 371250, 371250},
+{594000, 594000,  500, 2970000, 2970000, 0x03, 0x1, 0x1,  660, 0x20C, 0x084,  10, 0x003, 0x003, 5940000, 5940000, 1, 1, 1, 2, 2, 0x1, 297000, 297000},
+};
+
+/* HDMI TX PLL tuning settings */
+struct hdmi_pll_tuning {
+	u32 vco_freq_bin;
+	u32 vco_freq_min;
+	u32 vco_freq_max;
+	u32 volt_to_current_coarse;
+	u32 volt_to_current;
+	u32 ndac_ctrl;
+	u32 pmos_ctrl;
+	u32 ptat_ndac_ctrl;
+	u32 feedback_div_total;
+	u32 charge_pump_gain;
+	u32 coarse_code;
+	u32 v2i_code;
+	u32 vco_cal_code;
+};
+
+/* HDMI TX PLL tuning settings, pixel clock is output */
+static const struct hdmi_pll_tuning imx8mq_pll_table[] = {
+/*    bin VCO_freq min/max  coar  cod NDAC  PMOS PTAT div-T P-Gain Coa V2I CAL */
+    {  1, 1980000, 1980000, 0x4, 0x3, 0x0, 0x09, 0x09, 220, 0x42, 160, 5, 183 },
+    {  2, 2160000, 2160000, 0x4, 0x3, 0x0, 0x09, 0x09, 240, 0x42, 166, 6, 208 },
+    {  3, 2475000, 2475000, 0x5, 0x3, 0x1, 0x00, 0x07, 275, 0x42, 167, 6, 209 },
+    {  4, 2700000, 2700000, 0x5, 0x3, 0x1, 0x00, 0x07, 300, 0x42, 188, 6, 230 },
+    {  4, 2700000, 2700000, 0x5, 0x3, 0x1, 0x00, 0x07, 400, 0x4C, 188, 6, 230 },
+    {  5, 2970000, 2970000, 0x6, 0x3, 0x1, 0x00, 0x07, 330, 0x42, 183, 6, 225 },
+    {  6, 3240000, 3240000, 0x6, 0x3, 0x1, 0x00, 0x07, 360, 0x42, 203, 7, 256 },
+    {  6, 3240000, 3240000, 0x6, 0x3, 0x1, 0x00, 0x07, 480, 0x4C, 203, 7, 256 },
+    {  7, 3712500, 3712500, 0x4, 0x3, 0x0, 0x07, 0x0F, 550, 0x4C, 212, 7, 257 },
+    {  8, 3960000, 3960000, 0x5, 0x3, 0x0, 0x07, 0x0F, 440, 0x42, 184, 6, 226 },
+    {  9, 4320000, 4320000, 0x5, 0x3, 0x1, 0x07, 0x0F, 480, 0x42, 205, 7, 258 },
+    { 10, 4455000, 4455000, 0x5, 0x3, 0x0, 0x07, 0x0F, 495, 0x42, 219, 7, 272 },
+    { 10, 4455000, 4455000, 0x5, 0x3, 0x0, 0x07, 0x0F, 660, 0x4C, 219, 7, 272 },
+    { 11, 4950000, 4950000, 0x6, 0x3, 0x1, 0x00, 0x07, 550, 0x42, 213, 7, 258 },
+    { 12, 5940000, 5940000, 0x7, 0x3, 0x1, 0x00, 0x07, 660, 0x42, 244, 8, 292 },
+};
+
+static void hdmi_arc_config(struct cdns_mhdp_device *mhdp)
+{
+	u16 txpu_calib_code;
+	u16 txpd_calib_code;
+	u16 txpu_adj_calib_code;
+	u16 txpd_adj_calib_code;
+	u16 prev_calib_code;
+	u16 new_calib_code;
+	u16 rdata;
+
+	/* Power ARC */
+	cdns_phy_reg_write(mhdp, TXDA_CYA_AUXDA_CYA, 0x0001);
+
+	prev_calib_code = cdns_phy_reg_read(mhdp, TX_DIG_CTRL_REG_2);
+	txpu_calib_code = cdns_phy_reg_read(mhdp, CMN_TXPUCAL_CTRL);
+	txpd_calib_code = cdns_phy_reg_read(mhdp, CMN_TXPDCAL_CTRL);
+	txpu_adj_calib_code = cdns_phy_reg_read(mhdp, CMN_TXPU_ADJ_CTRL);
+	txpd_adj_calib_code = cdns_phy_reg_read(mhdp, CMN_TXPD_ADJ_CTRL);
+
+	new_calib_code = ((txpu_calib_code + txpd_calib_code) / 2)
+		+ txpu_adj_calib_code + txpd_adj_calib_code;
+
+	if (new_calib_code != prev_calib_code) {
+		rdata = cdns_phy_reg_read(mhdp, TX_ANA_CTRL_REG_1);
+		rdata &= 0xDFFF;
+		cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_1, rdata);
+		cdns_phy_reg_write(mhdp, TX_DIG_CTRL_REG_2, new_calib_code);
+		mdelay(10);
+		rdata |= 0x2000;
+		cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_1, rdata);
+		udelay(150);
+	}
+
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_2, 0x0100);
+	udelay(100);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_2, 0x0300);
+	udelay(100);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_3, 0x0000);
+	udelay(100);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_1, 0x2008);
+	udelay(100);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_1, 0x2018);
+	udelay(100);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_1, 0x2098);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_2, 0x030C);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_5, 0x0010);
+	udelay(100);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_4, 0x4001);
+	mdelay(5);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_1, 0x2198);
+	mdelay(5);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_2, 0x030D);
+	udelay(100);
+	cdns_phy_reg_write(mhdp, TX_ANA_CTRL_REG_2, 0x030F);
+}
+
+static void hdmi_phy_set_vswing(struct cdns_mhdp_device *mhdp)
+{
+	const u32 num_lanes = 4;
+	u32 k;
+
+	for (k = 0; k < num_lanes; k++) {
+		cdns_phy_reg_write(mhdp, (TX_DIAG_TX_DRV | (k << 9)), 0x7c0);
+		cdns_phy_reg_write(mhdp, (TX_TXCC_CPOST_MULT_00_0 | (k << 9)), 0x0);
+		cdns_phy_reg_write(mhdp, (TX_TXCC_CAL_SCLR_MULT_0 | (k << 9)), 0x120);
+	}
+}
+
+static int hdmi_feedback_factor(struct cdns_mhdp_device *mhdp)
+{
+	u32 feedback_factor;
+
+	switch (mhdp->video_info.color_fmt) {
+	case YCBCR_4_2_2:
+		feedback_factor = 1000;
+		break;
+	case YCBCR_4_2_0:
+		switch (mhdp->video_info.color_depth) {
+		case 8:
+			feedback_factor = 500;
+			break;
+		case 10:
+			feedback_factor = 625;
+			break;
+		case 12:
+			feedback_factor = 750;
+			break;
+		case 16:
+			feedback_factor = 1000;
+			break;
+		default:
+			DRM_ERROR("Invalid ColorDepth\n");
+			return 0;
+		}
+		break;
+	default:
+		/* Assume RGB/YUV444 */
+		switch (mhdp->video_info.color_depth) {
+		case 10:
+			feedback_factor = 1250;
+			break;
+		case 12:
+			feedback_factor = 1500;
+			break;
+		case 16:
+			feedback_factor = 2000;
+			break;
+		default:
+			feedback_factor = 1000;
+		}
+	}
+	return feedback_factor;
+}
+
+static int hdmi_phy_config(struct cdns_mhdp_device *mhdp,
+					const struct hdmi_ctrl *p_ctrl_table,
+					const struct hdmi_pll_tuning *p_pll_table,
+					char pclk_in)
+{
+	const u32 num_lanes = 4;
+	u32 val, i, k;
+
+	/* enable PHY isolation mode only for CMN */
+	cdns_phy_reg_write(mhdp, PHY_PMA_ISOLATION_CTRL, 0xD000);
+
+	/* set cmn_pll0_clk_datart1_div/cmn_pll0_clk_datart0_div dividers */
+	val = cdns_phy_reg_read(mhdp, PHY_PMA_ISO_PLL_CTRL1);
+	val &= 0xFF00;
+	val |= 0x0012;
+	cdns_phy_reg_write(mhdp, PHY_PMA_ISO_PLL_CTRL1, val);
+
+	/* assert PHY reset from isolation register */
+	cdns_phy_reg_write(mhdp, PHY_ISO_CMN_CTRL, 0x0000);
+	/* assert PMA CMN reset */
+	cdns_phy_reg_write(mhdp, PHY_PMA_ISO_CMN_CTRL, 0x0000);
+
+	/* register XCVR_DIAG_BIDI_CTRL */
+	for (k = 0; k < num_lanes; k++)
+		cdns_phy_reg_write(mhdp, XCVR_DIAG_BIDI_CTRL | (k << 9), 0x00FF);
+
+	/* Describing Task phy_cfg_hdp */
+
+	val = cdns_phy_reg_read(mhdp, PHY_PMA_CMN_CTRL1);
+	val &= 0xFFF7;
+	val |= 0x0008;
+	cdns_phy_reg_write(mhdp, PHY_PMA_CMN_CTRL1, val);
+
+	/* PHY Registers */
+	val = cdns_phy_reg_read(mhdp, PHY_PMA_CMN_CTRL1);
+	val &= 0xCFFF;
+	val |= p_ctrl_table->cmn_ref_clk_dig_div << 12;
+	cdns_phy_reg_write(mhdp, PHY_PMA_CMN_CTRL1, val);
+
+	val = cdns_phy_reg_read(mhdp, PHY_HDP_CLK_CTL);
+	val &= 0x00FF;
+	val |= 0x1200;
+	cdns_phy_reg_write(mhdp, PHY_HDP_CLK_CTL, val);
+
+	/* Common control module control and diagnostic registers */
+	val = cdns_phy_reg_read(mhdp, CMN_CDIAG_REFCLK_CTRL);
+	val &= 0x8FFF;
+	val |= p_ctrl_table->ref_clk_divider_scaler << 12;
+	val |= 0x00C0;
+	cdns_phy_reg_write(mhdp, CMN_CDIAG_REFCLK_CTRL, val);
+
+	/* High speed clock used */
+	val = cdns_phy_reg_read(mhdp, CMN_DIAG_HSCLK_SEL);
+	val &= 0xFF00;
+	val |= (p_ctrl_table->cmnda_hs_clk_0_sel >> 1) << 0;
+	val |= (p_ctrl_table->cmnda_hs_clk_1_sel >> 1) << 4;
+	cdns_phy_reg_write(mhdp, CMN_DIAG_HSCLK_SEL, val);
+
+	for (k = 0; k < num_lanes; k++) {
+		val = cdns_phy_reg_read(mhdp, (XCVR_DIAG_HSCLK_SEL | (k << 9)));
+		val &= 0xCFFF;
+		val |= (p_ctrl_table->cmnda_hs_clk_0_sel >> 1) << 12;
+		cdns_phy_reg_write(mhdp, (XCVR_DIAG_HSCLK_SEL | (k << 9)), val);
+	}
+
+	/* PLL 0 control state machine registers */
+	val = p_ctrl_table->vco_ring_select << 12;
+	cdns_phy_reg_write(mhdp, CMN_PLLSM0_USER_DEF_CTRL, val);
+
+	if (pclk_in == true)
+		val = 0x30A0;
+	else {
+		val = cdns_phy_reg_read(mhdp, CMN_PLL0_VCOCAL_START);
+		val &= 0xFE00;
+		val |= p_pll_table->vco_cal_code;
+	}
+	cdns_phy_reg_write(mhdp, CMN_PLL0_VCOCAL_START, val);
+
+	cdns_phy_reg_write(mhdp, CMN_PLL0_VCOCAL_INIT_TMR, 0x0064);
+	cdns_phy_reg_write(mhdp, CMN_PLL0_VCOCAL_ITER_TMR, 0x000A);
+
+	/* Common functions control and diagnostics registers */
+	val = p_ctrl_table->cmnda_pll0_hs_sym_div_sel << 8;
+	val |= p_ctrl_table->cmnda_pll0_ip_div;
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_INCLK_CTRL, val);
+
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_OVRD, 0x0000);
+
+	val = p_ctrl_table->cmnda_pll0_fb_div_high;
+	val |= (1 << 15);
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_FBH_OVRD, val);
+
+	val = p_ctrl_table->cmnda_pll0_fb_div_low;
+	val |= (1 << 15);
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_FBL_OVRD, val);
+
+	if (pclk_in == false) {
+		val = p_ctrl_table->cmnda_pll0_pxdiv_low;
+		cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_PXL_DIVL, val);
+
+		val = p_ctrl_table->cmnda_pll0_pxdiv_high;
+		val |= (1 << 15);
+		cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_PXL_DIVH, val);
+	}
+
+	val = p_pll_table->volt_to_current_coarse;
+	val |= (p_pll_table->volt_to_current) << 4;
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_V2I_TUNE, val);
+
+	val = p_pll_table->charge_pump_gain;
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_CP_TUNE, val);
+
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_LF_PROG, 0x0008);
+
+	val = p_pll_table->pmos_ctrl;
+	val |= (p_pll_table->ndac_ctrl) << 8;
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_PTATIS_TUNE1, val);
+
+	val = p_pll_table->ptat_ndac_ctrl;
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_PTATIS_TUNE2, val);
+
+	if (pclk_in == true)
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_TEST_MODE, 0x0022);
+	else
+	cdns_phy_reg_write(mhdp, CMN_DIAG_PLL0_TEST_MODE, 0x0020);
+	cdns_phy_reg_write(mhdp, CMN_PSM_CLK_CTRL, 0x0016);
+
+	/* Transceiver control and diagnostic registers */
+	for (k = 0; k < num_lanes; k++) {
+		val = cdns_phy_reg_read(mhdp, (XCVR_DIAG_PLLDRC_CTRL | (k << 9)));
+		val &= 0xBFFF;
+		cdns_phy_reg_write(mhdp, (XCVR_DIAG_PLLDRC_CTRL | (k << 9)), val);
+	}
+
+	for (k = 0; k < num_lanes; k++) {
+		val = cdns_phy_reg_read(mhdp, (TX_DIAG_TX_CTRL | (k << 9)));
+		val &= 0xFF3F;
+		val |= (p_ctrl_table->hsclk_div_tx_sub_rate >> 1) << 6;
+		cdns_phy_reg_write(mhdp, (TX_DIAG_TX_CTRL | (k << 9)), val);
+	}
+
+	val = cdns_phy_reg_read(mhdp, PHY_PMA_CMN_CTRL1);
+	val &= 0xFF8F;
+	/*
+	 * TODO
+	 * Pixel clock source from CCM val |= 0x0030
+	 * Pixel clock gererated by PHY(iMX8MQ):
+	 * --single ended reference clock val |= 0x0030;
+	 * --differential clock  val |= 0x0000;
+	 */
+	val |= 0x0030;
+	cdns_phy_reg_write(mhdp, PHY_PMA_CMN_CTRL1, val);
+
+	/* for differential clock on the refclk_p and
+	 * refclk_m off chip pins: CMN_DIAG_ACYA[8]=1'b1 */
+	cdns_phy_reg_write(mhdp, CMN_DIAG_ACYA, 0x0100);
+
+	/* Deassert PHY reset */
+	cdns_phy_reg_write(mhdp, PHY_ISO_CMN_CTRL, 0x0001);
+	cdns_phy_reg_write(mhdp, PHY_PMA_ISO_CMN_CTRL, 0x0003);
+
+	/* Power state machine registers */
+	for (k = 0; k < num_lanes; k++)
+		cdns_phy_reg_write(mhdp, XCVR_PSM_RCTRL | (k << 9), 0xFEFC);
+
+	/* Assert cmn_macro_pwr_en */
+	cdns_phy_reg_write(mhdp, PHY_PMA_ISO_CMN_CTRL, 0x0013);
+
+	/* wait for cmn_macro_pwr_en_ack */
+	for (i = 0; i < 10; i++) {
+		val = cdns_phy_reg_read(mhdp, PHY_PMA_ISO_CMN_CTRL);
+		if (val & (1 << 5))
+			break;
+		msleep(20);
+	}
+	if (i == 10) {
+		DRM_ERROR("PMA ouput macro power up failed\n");
+		return false;
+	}
+
+	/* wait for cmn_ready */
+	for (i = 0; i < 10; i++) {
+		val = cdns_phy_reg_read(mhdp, PHY_PMA_CMN_CTRL1);
+		if (val & (1 << 0))
+			break;
+		msleep(20);
+	}
+	if (i == 10) {
+		DRM_ERROR("PMA output ready failed\n");
+		return false;
+	}
+
+	for (k = 0; k < num_lanes; k++) {
+		cdns_phy_reg_write(mhdp, TX_PSC_A0 | (k << 9), 0x6791);
+		cdns_phy_reg_write(mhdp, TX_PSC_A1 | (k << 9), 0x6790);
+		cdns_phy_reg_write(mhdp, TX_PSC_A2 | (k << 9), 0x0090);
+		cdns_phy_reg_write(mhdp, TX_PSC_A3 | (k << 9), 0x0090);
+
+		val = cdns_phy_reg_read(mhdp, RX_PSC_CAL | (k << 9));
+		val &= 0xFFBB;
+		cdns_phy_reg_write(mhdp, RX_PSC_CAL | (k << 9), val);
+
+		val = cdns_phy_reg_read(mhdp, RX_PSC_A0 | (k << 9));
+		val &= 0xFFBB;
+		cdns_phy_reg_write(mhdp, RX_PSC_A0 | (k << 9), val);
+	}
+	return true;
+}
+
+static int hdmi_phy_cfg_imx8mq(struct cdns_mhdp_device *mhdp,
+				struct drm_display_mode *mode)
+{
+	const struct hdmi_ctrl *p_ctrl_table;
+	const struct hdmi_pll_tuning *p_pll_table;
+	const u32 refclk_freq_khz = 27000;
+	const u8 pclk_in = false;
+	u32 pixel_freq = mode->clock;
+	u32 vco_freq, char_freq;
+	u32 div_total, feedback_factor;
+	u32 i, ret;
+
+	feedback_factor = hdmi_feedback_factor(mhdp);
+
+	char_freq = pixel_freq * feedback_factor / 1000;
+
+	DRM_INFO("Pixel clock: %d KHz, character clock: %d, bpc is %0d-bit.\n",
+	     pixel_freq, char_freq, mhdp->video_info.color_depth);
+
+	/* Get right row from the ctrl_table table.
+	 * Check if 'pixel_freq_khz' value matches the PIXEL_CLK_FREQ column.
+	 * Consider only the rows with FEEDBACK_FACTOR column matching feedback_factor. */
+	for (i = 0; i < ARRAY_SIZE(imx8mq_ctrl_table); i++) {
+		if (feedback_factor == imx8mq_ctrl_table[i].feedback_factor &&
+				pixel_freq == imx8mq_ctrl_table[i].pixel_clk_freq_min) {
+			p_ctrl_table = &imx8mq_ctrl_table[i];
+			break;
+		}
+	}
+	if (i == ARRAY_SIZE(imx8mq_ctrl_table)) {
+		DRM_WARN("Pixel clk (%d KHz) not supported, color depth (%0d-bit)\n",
+		     pixel_freq, mhdp->video_info.color_depth);
+		return 0;
+	}
+
+	div_total = p_ctrl_table->pll_fb_div_total;
+	vco_freq = refclk_freq_khz * div_total / p_ctrl_table->cmnda_pll0_ip_div;
+
+	/* Get right row from the imx8mq_pll_table table.
+	 * Check if vco_freq_khz and feedback_div_total
+	 * column matching with imx8mq_pll_table. */
+	for (i = 0; i < ARRAY_SIZE(imx8mq_pll_table); i++) {
+		if (vco_freq == imx8mq_pll_table[i].vco_freq_min &&
+				div_total == imx8mq_pll_table[i].feedback_div_total) {
+			p_pll_table = &imx8mq_pll_table[i];
+			break;
+		}
+	}
+	if (i == ARRAY_SIZE(imx8mq_pll_table)) {
+		DRM_WARN("VCO (%d KHz) not supported\n", vco_freq);
+		return 0;
+	}
+	DRM_INFO("VCO frequency is %d KHz\n", vco_freq);
+
+	ret = hdmi_phy_config(mhdp, p_ctrl_table, p_pll_table, pclk_in);
+	if (ret == false)
+		return 0;
+
+	return char_freq;
+}
+
+static int hdmi_phy_power_up(struct cdns_mhdp_device *mhdp)
+{
+	u32 val, i;
+
+	/* set Power State to A2 */
+	cdns_phy_reg_write(mhdp, PHY_HDP_MODE_CTRL, 0x0004);
+
+	cdns_phy_reg_write(mhdp, TX_DIAG_ACYA_0, 1);
+	cdns_phy_reg_write(mhdp, TX_DIAG_ACYA_1, 1);
+	cdns_phy_reg_write(mhdp, TX_DIAG_ACYA_2, 1);
+	cdns_phy_reg_write(mhdp, TX_DIAG_ACYA_3, 1);
+
+	/* Wait for Power State A2 Ack */
+	for (i = 0; i < 10; i++) {
+		val = cdns_phy_reg_read(mhdp, PHY_HDP_MODE_CTRL);
+		if (val & (1 << 6))
+			break;
+		msleep(20);
+	}
+	if (i == 10) {
+		dev_err(mhdp->dev, "Wait A2 Ack failed\n");
+		return -1;
+	}
+
+	/* Power up ARC */
+	hdmi_arc_config(mhdp);
+
+	/* Configure PHY in A0 mode (PHY must be in the A0 power
+	 * state in order to transmit data)
+	 */
+	cdns_phy_reg_write(mhdp, PHY_HDP_MODE_CTRL, 0x0001);
+
+	/* Wait for Power State A0 Ack */
+	for (i = 0; i < 10; i++) {
+		val = cdns_phy_reg_read(mhdp, PHY_HDP_MODE_CTRL);
+		if (val & (1 << 4))
+			break;
+		msleep(20);
+	}
+	if (i == 10) {
+		dev_err(mhdp->dev, "Wait A0 Ack failed\n");
+		return -1;
+	}
+	return 0;
+}
+
+bool cdns_hdmi_phy_mode_valid_imx8mq(struct cdns_mhdp_device *mhdp)
+{
+	u32 rate = mhdp->hdmi.mode_valid->clock;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(imx8mq_ctrl_table); i++)
+			if (rate == imx8mq_ctrl_table[i].pixel_clk_freq_min)
+				return true;
+	return false;
+}
+
+int cdns_hdmi_phy_set_imx8mq(struct cdns_mhdp_device *mhdp)
+{
+	struct drm_display_mode *mode = &mhdp->mode;
+	int ret;
+
+	/* Check HDMI FW alive before HDMI PHY init */
+	ret = cdns_mhdp_check_alive(mhdp);
+	if (ret == false) {
+		DRM_ERROR("NO HDMI FW running\n");
+		return -ENXIO;
+	}
+
+	/* Configure PHY */
+	mhdp->hdmi.char_rate = hdmi_phy_cfg_imx8mq(mhdp, mode);
+	if (mhdp->hdmi.char_rate == 0) {
+		DRM_ERROR("failed to set phy pclock\n");
+		return -EINVAL;
+	}
+
+	ret = hdmi_phy_power_up(mhdp);
+	if (ret < 0)
+		return ret;
+
+	hdmi_phy_set_vswing(mhdp);
+
+	return true;
+}
diff --git a/drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c b/drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c
index 2dec2e051be6..607d0b34b551 100644
--- a/drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c
+++ b/drivers/gpu/drm/imx/mhdp/cdns-mhdp-imxdrv.c
@@ -23,6 +23,15 @@ static const struct drm_encoder_funcs cdns_mhdp_imx_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
 
+static struct cdns_plat_data imx8mq_hdmi_drv_data = {
+	.plat_name = "imx8mq-hdmi",
+	.bind	= cdns_hdmi_bind,
+	.unbind	= cdns_hdmi_unbind,
+	.phy_set = cdns_hdmi_phy_set_imx8mq,
+	.phy_video_valid = cdns_hdmi_phy_mode_valid_imx8mq,
+	.lane_mapping = 0xe4,
+};
+
 static struct cdns_plat_data imx8mq_dp_drv_data = {
 	.plat_name = "imx8mq-dp",
 	.bind	= cdns_dp_bind,
@@ -32,6 +41,9 @@ static struct cdns_plat_data imx8mq_dp_drv_data = {
 };
 
 static const struct of_device_id cdns_mhdp_imx_dt_ids[] = {
+	{ .compatible = "nxp,imx8mq-cdns-hdmi",
+	  .data = &imx8mq_hdmi_drv_data
+	},
 	{ .compatible = "nxp,imx8mq-cdns-dp",
 	  .data = &imx8mq_dp_drv_data
 	},
diff --git a/drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h b/drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h
index 79b1907726db..3305a27bcec7 100644
--- a/drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h
+++ b/drivers/gpu/drm/imx/mhdp/cdns-mhdp-phy.h
@@ -143,4 +143,6 @@
 #define PHY_PMA_ISO_RX_DATA_HI          0xCC17
 
 int cdns_dp_phy_set_imx8mq(struct cdns_mhdp_device *hdp);
+int cdns_hdmi_phy_set_imx8mq(struct cdns_mhdp_device *mhdp);
+bool cdns_hdmi_phy_mode_valid_imx8mq(struct cdns_mhdp_device *mhdp);
 #endif /* _CDNS_MHDP_PHY_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
