Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE14F1B51
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FN0KslWy0NO8W44wJEnj5X81AdD9h6AMp0YjKssO6o=; b=dzPatdammMBWFg
	e0PNCfrbzQX3o+R9aEy2OfCYnJ4thkpygZyVzA81Drxk0oTAD6KdrZZ3Xg+BiJvP+FWZm3raBdpnA
	8VTqIukHVArhmjFd5iYU2RX9uelZUnJAofOxTt8iXni1N1M/KzspzM6+Tn3F7QDNHeQJTTD1PvTKn
	g+TpqTl/SIXtJq0s1c4gaXYqtjkKlMXKLigE/klCnn4sC+JPsStvpPSKVcmuoqKwd8odv+FWcbPYp
	/9REam5FaQ2nX51UEbExRmwrKu9iFUqkO9ukFHPYJl3DWl9PXvHVX385bFxMwDNVwkYkGk50G2Dz7
	LB5bXb+Vr/wTFfdtNj2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSOEE-0006ML-LY; Wed, 06 Nov 2019 16:32:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSODa-0005wE-FM; Wed, 06 Nov 2019 16:31:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id BD61F28FDC5
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 3/4] drm: imx: Add i.MX 6 MIPI DSI host driver
Date: Wed,  6 Nov 2019 18:30:30 +0200
Message-Id: <20191106163031.808061-4-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106163031.808061-1-adrian.ratiu@collabora.com>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_083138_883510_1E58CD35 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 Emil Velikov <emil.l.velikov@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
controller which is embedded in i.MX 6 SoCs.

Based on following patches, but updated/extended to work with existing
support found in the kernel:

- drm: imx: Support Synopsys DesignWare MIPI DSI host controller
  Signed-off-by: Liu Ying <Ying.Liu@freescale.com>

- ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller
  Signed-off-by: Liu Ying <Ying.Liu@freescale.com>

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 146 ++++++-
 drivers/gpu/drm/imx/Kconfig                   |   7 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dw_mipi_dsi-imx.c         | 378 ++++++++++++++++++
 4 files changed, 523 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx.c

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index a0637328fbc1..d88363cc2681 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -31,6 +31,8 @@
 #include <drm/drm_probe_helper.h>
 
 #define HWVER_131			0x31333100	/* IP version 1.31 */
+#define HWVER_130			0x31333000	/* IP version 1.30 */
+#define HWVER_101			0x31303000	/* IP version 1.01 */
 
 #define DSI_VERSION			0x00
 #define VERSION				GENMASK(31, 8)
@@ -99,6 +101,25 @@
 #define DSI_EDPI_CMD_SIZE		0x64
 
 #define DSI_CMD_MODE_CFG		0x68
+
+#define DSI_DPI_CFG			0x0c
+#define DSI_TMR_LINE_CFG		0x28
+#define DSI_VTIMING_CFG			0x2c
+#define DSI_PHY_TMR_CFG_V101		0x30
+#define DSI_PHY_IF_CFG_V101		0x58
+#define DSI_PHY_IF_CTRL			0x5c
+#define DSI_PHY_RSTZ_V101		0x54
+#define DSI_PHY_STATUS_V101		0x60
+#define DSI_PHY_TST_CTRL0_V101		0x64
+#define DSI_GEN_HDR_V101		0x34
+#define DSI_GEN_PLD_DATA_V101		0x38
+#define DSI_CMD_MODE_CFG_V101		0x24
+#define DSI_CMD_PKT_STATUS_V101		0x3c
+#define DSI_VID_PKT_CFG			0x20
+#define DSI_VID_MODE_CFG_V101		0x1c
+#define DSI_TO_CNT_CFG_V101		0x40
+#define DSI_PCKHDL_CFG_V101		0x18
+
 #define MAX_RD_PKT_SIZE_LP		BIT(24)
 #define DCS_LW_TX_LP			BIT(19)
 #define DCS_SR_0P_TX_LP			BIT(18)
@@ -126,6 +147,33 @@
 					 GEN_SW_1P_TX_LP | \
 					 GEN_SW_0P_TX_LP)
 
+#define EN_TEAR_FX_V101			BIT(14)
+#define DCS_LW_TX_LP_V101		BIT(12)
+#define GEN_LW_TX_LP_V101		BIT(11)
+#define MAX_RD_PKT_SIZE_LP_V101		BIT(10)
+#define DCS_SW_2P_TX_LP_V101		BIT(9)
+#define DCS_SW_1P_TX_LP_V101		BIT(8)
+#define DCS_SW_0P_TX_LP_V101		BIT(7)
+#define GEN_SR_2P_TX_LP_V101		BIT(6)
+#define GEN_SR_1P_TX_LP_V101		BIT(5)
+#define GEN_SR_0P_TX_LP_V101		BIT(4)
+#define GEN_SW_2P_TX_LP_V101		BIT(3)
+#define GEN_SW_1P_TX_LP_V101		BIT(2)
+#define GEN_SW_0P_TX_LP_V101		BIT(1)
+
+#define CMD_MODE_ALL_LP_V101		(DCS_LW_TX_LP_V101 | \
+					 GEN_LW_TX_LP_V101 | \
+					 MAX_RD_PKT_SIZE_LP_V101 | \
+					 DCS_SW_2P_TX_LP_V101 | \
+					 DCS_SW_1P_TX_LP_V101 | \
+					 DCS_SW_0P_TX_LP_V101 | \
+					 GEN_SR_2P_TX_LP_V101 | \
+					 GEN_SR_1P_TX_LP_V101 | \
+					 GEN_SR_0P_TX_LP_V101 | \
+					 GEN_SW_2P_TX_LP_V101 | \
+					 GEN_SW_1P_TX_LP_V101 | \
+					 GEN_SW_0P_TX_LP_V101)
+
 #define DSI_GEN_HDR			0x6c
 #define DSI_GEN_PLD_DATA		0x70
 
@@ -164,6 +212,11 @@
 #define DSI_INT_MSK0			0xc4
 #define DSI_INT_MSK1			0xc8
 
+#define DSI_ERROR_ST0_V101		0x44
+#define DSI_ERROR_ST1_V101		0x48
+#define DSI_ERROR_MSK0_V101		0x4c
+#define DSI_ERROR_MSK1_V101		0x50
+
 #define DSI_PHY_TMR_RD_CFG		0xf4
 
 #define PHY_STATUS_TIMEOUT_US		10000
@@ -357,6 +410,49 @@ static struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_gen_payload =		REG_FIELD(DSI_GEN_PLD_DATA, 0, 31),
 };
 
+static struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {
+	.cfg_dpi_vid =			REG_FIELD(DSI_DPI_CFG, 0, 1),
+	.cfg_dpi_color_coding =		REG_FIELD(DSI_DPI_CFG, 2, 4),
+	.cfg_dpi_18loosely_en =		REG_FIELD(DSI_DPI_CFG, 10, 10),
+	.cfg_dpi_vsync_active_low =	REG_FIELD(DSI_DPI_CFG, 6, 6),
+	.cfg_dpi_hsync_active_low =	REG_FIELD(DSI_DPI_CFG, 7, 7),
+	.cfg_cmd_mode_en =		REG_FIELD(DSI_CMD_MODE_CFG_V101, 0, 0),
+	.cfg_cmd_mode_all_lp_en =	REG_FIELD(DSI_CMD_MODE_CFG_V101, 1, 12),
+	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG_V101, 13, 13),
+	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 14),
+	.cfg_vid_mode_en =		REG_FIELD(DSI_VID_MODE_CFG_V101, 0, 0),
+	.cfg_vid_mode_type =		REG_FIELD(DSI_VID_MODE_CFG_V101, 1, 2),
+	.cfg_vid_mode_low_power =	REG_FIELD(DSI_VID_MODE_CFG_V101, 3, 8),
+	.cfg_vid_pkt_size =		REG_FIELD(DSI_VID_PKT_CFG, 0, 10),
+	.cfg_vid_hsa_time =		REG_FIELD(DSI_TMR_LINE_CFG, 0, 8),
+	.cfg_vid_hbp_time =		REG_FIELD(DSI_TMR_LINE_CFG, 9, 17),
+	.cfg_vid_hline_time =		REG_FIELD(DSI_TMR_LINE_CFG, 18, 31),
+	.cfg_vid_vsa_time =		REG_FIELD(DSI_VTIMING_CFG, 0, 3),
+	.cfg_vid_vbp_time =		REG_FIELD(DSI_VTIMING_CFG, 4, 9),
+	.cfg_vid_vfp_time =		REG_FIELD(DSI_VTIMING_CFG, 10, 15),
+	.cfg_vid_vactive_time =		REG_FIELD(DSI_VTIMING_CFG, 16, 26),
+	.cfg_phy_txrequestclkhs =	REG_FIELD(DSI_PHY_IF_CTRL, 0, 0),
+	.cfg_phy_bta_time =		REG_FIELD(DSI_PHY_TMR_CFG_V101, 0, 11),
+	.cfg_phy_lp2hs_time =		REG_FIELD(DSI_PHY_TMR_CFG_V101, 12, 19),
+	.cfg_phy_hs2lp_time =		REG_FIELD(DSI_PHY_TMR_CFG_V101, 20, 27),
+	.cfg_phy_testclr =		REG_FIELD(DSI_PHY_TST_CTRL0_V101, 0, 0),
+	.cfg_phy_unshutdownz =		REG_FIELD(DSI_PHY_RSTZ_V101, 0, 0),
+	.cfg_phy_unrstz =		REG_FIELD(DSI_PHY_RSTZ_V101, 1, 1),
+	.cfg_phy_enableclk =		REG_FIELD(DSI_PHY_RSTZ_V101, 2, 2),
+	.cfg_phy_nlanes =		REG_FIELD(DSI_PHY_IF_CFG_V101, 0, 1),
+	.cfg_phy_stop_wait_time =	REG_FIELD(DSI_PHY_IF_CFG_V101, 2, 9),
+	.cfg_phy_status =		REG_FIELD(DSI_PHY_STATUS_V101, 0, 0),
+	.cfg_pckhdl_cfg =		REG_FIELD(DSI_PCKHDL_CFG_V101, 0, 4),
+	.cfg_hstx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG_V101, 0, 15),
+	.cfg_lprx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG_V101, 16, 31),
+	.cfg_int_stat0 =		REG_FIELD(DSI_ERROR_ST0_V101, 0, 20),
+	.cfg_int_stat1 =		REG_FIELD(DSI_ERROR_ST1_V101, 0, 17),
+	.cfg_int_mask0 =		REG_FIELD(DSI_ERROR_MSK0_V101, 0, 20),
+	.cfg_int_mask1 =		REG_FIELD(DSI_ERROR_MSK1_V101, 0, 17),
+	.cfg_gen_hdr =			REG_FIELD(DSI_GEN_HDR_V101, 0, 31),
+	.cfg_gen_payload =		REG_FIELD(DSI_GEN_PLD_DATA_V101, 0, 31),
+};
+
 /*
  * Check if either a link to a master or slave is present
  */
@@ -459,12 +555,21 @@ static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
 	bool lpm = msg->flags & MIPI_DSI_MSG_USE_LPM;
 	u32 cmd_mode_lp = 0;
 
+	switch (dsi->hw_version) {
+	case HWVER_130:
+	case HWVER_131:
+		cmd_mode_lp = CMD_MODE_ALL_LP;
+		break;
+	case HWVER_101:
+		cmd_mode_lp = CMD_MODE_ALL_LP_V101;
+		break;
+	}
+
 	if (msg->flags & MIPI_DSI_MSG_REQ_ACK)
 		regmap_field_write(dsi->field_cmd_mode_ack_rqst_en, 1);
 
 	if (lpm)
-		regmap_field_write(dsi->field_cmd_mode_all_lp_en,
-				   CMD_MODE_ALL_LP);
+		regmap_field_write(dsi->field_cmd_mode_all_lp_en, cmd_mode_lp);
 
 	regmap_field_write(dsi->field_phy_txrequestclkhs, lpm ? 0 : 1);
 }
@@ -636,7 +741,7 @@ static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
 				   VID_MODE_TYPE_NON_BURST_SYNC_EVENTS);
 
 #ifdef CONFIG_DEBUG_FS
-	if (dsi->vpg) {
+	if (dsi->hw_version > HWVER_101 && dsi->vpg) {
 		regmap_field_write(dsi->regs, dsi->field_vid_mode_vpg_en, 1);
 		regmap_field_write(dsi->regs, dsi->field_vid_mode_vpg_horiz,
 				   dsi->vpg_horizontal ? 1 : 0);
@@ -654,9 +759,15 @@ static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
 
 		dw_mipi_dsi_video_mode_config(dsi);
 
+		if (dsi->hw_version == HWVER_101)
+			regmap_field_write(dsi->field_vid_mode_en, 1);
+
 		regmap_field_write(dsi->field_phy_txrequestclkhs, 1);
 	} else {
 		regmap_field_write(dsi->field_cmd_mode_en, 1);
+
+		if (dsi->hw_version == HWVER_101)
+			regmap_field_write(dsi->field_vid_mode_en, 0);
 	}
 
 	regmap_write(dsi->regs, DSI_PWR_UP, POWERUP);
@@ -840,9 +951,11 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
 	regmap_field_write(dsi->field_phy_lp2hs_time, 0x40);
 	regmap_field_write(dsi->field_phy_hs2lp_time, 0x40);
 
-	regmap_field_write(dsi->field_phy_max_rd_time, 10000);
-	regmap_field_write(dsi->field_phy_clklp2hs_time, 0x40);
-	regmap_field_write(dsi->field_phy_clkhs2lp_time, 0x40);
+	if (dsi->hw_version > HWVER_101) {
+		regmap_field_write(dsi->field_phy_max_rd_time, 10000);
+		regmap_field_write(dsi->field_phy_clklp2hs_time, 0x40);
+		regmap_field_write(dsi->field_phy_clkhs2lp_time, 0x40);
+	}
 }
 
 static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
@@ -863,7 +976,8 @@ static void dw_mipi_dsi_dphy_init(struct dw_mipi_dsi *dsi)
 	regmap_field_write(dsi->field_phy_unrstz, 0);
 	regmap_field_write(dsi->field_phy_unshutdownz, 0);
 
-	regmap_field_write(dsi->field_phy_forcepll, 0);
+	if (dsi->hw_version > HWVER_101)
+		regmap_field_write(dsi->field_phy_forcepll, 0);
 
 	regmap_field_write(dsi->field_phy_testclr, 0);
 	regmap_field_write(dsi->field_phy_testclr, 1);
@@ -879,7 +993,8 @@ static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
 	regmap_field_write(dsi->field_phy_unrstz, 1);
 	regmap_field_write(dsi->field_phy_unshutdownz, 1);
 
-	regmap_field_write(dsi->field_phy_forcepll, 1);
+	if (dsi->hw_version > HWVER_101)
+		regmap_field_write(dsi->field_phy_forcepll, 1);
 
 	ret = regmap_field_read_poll_timeout(dsi->field_phy_status,
 					     val, val & PHY_LOCK,
@@ -1105,7 +1220,20 @@ static void dw_mipi_dsi_get_hw_version(struct dw_mipi_dsi *dsi)
 
 static int dw_mipi_dsi_regmap_fields_init(struct dw_mipi_dsi *dsi)
 {
-	const struct dw_mipi_dsi_variant *variant = &dw_mipi_dsi_v130_v131_layout;
+	const struct dw_mipi_dsi_variant *variant;
+
+	switch (dsi->hw_version) {
+	case HWVER_130:
+	case HWVER_131:
+		variant = &dw_mipi_dsi_v130_v131_layout;
+		break;
+	case HWVER_101:
+		variant = &dw_mipi_dsi_v101_layout;
+		break;
+	default:
+		DRM_ERROR("Unrecognized DSI host controller HW revision\n");
+		return -ENODEV;
+	}
 
 	INIT_FIELD(dpi_18loosely_en);
 	INIT_FIELD(dpi_vid);
diff --git a/drivers/gpu/drm/imx/Kconfig b/drivers/gpu/drm/imx/Kconfig
index 207bf7409dfb..396793ebf542 100644
--- a/drivers/gpu/drm/imx/Kconfig
+++ b/drivers/gpu/drm/imx/Kconfig
@@ -39,3 +39,10 @@ config DRM_IMX_HDMI
 	depends on DRM_IMX
 	help
 	  Choose this if you want to use HDMI on i.MX6.
+
+config DRM_IMX_MIPI_DSI
+	tristate "Freescale i.MX DRM MIPI DSI"
+	select DRM_DW_MIPI_DSI
+	depends on DRM_IMX
+	help
+	  Choose this if you want to use MIPI DSI on i.MX6.
diff --git a/drivers/gpu/drm/imx/Makefile b/drivers/gpu/drm/imx/Makefile
index 21cdcc2faabc..6543a81376ec 100644
--- a/drivers/gpu/drm/imx/Makefile
+++ b/drivers/gpu/drm/imx/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_DRM_IMX_TVE) += imx-tve.o
 obj-$(CONFIG_DRM_IMX_LDB) += imx-ldb.o
 
 obj-$(CONFIG_DRM_IMX_HDMI) += dw_hdmi-imx.o
+obj-$(CONFIG_DRM_IMX_MIPI_DSI) += dw_mipi_dsi-imx.o
diff --git a/drivers/gpu/drm/imx/dw_mipi_dsi-imx.c b/drivers/gpu/drm/imx/dw_mipi_dsi-imx.c
new file mode 100644
index 000000000000..aaba7e88caa8
--- /dev/null
+++ b/drivers/gpu/drm/imx/dw_mipi_dsi-imx.c
@@ -0,0 +1,378 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * i.MX drm driver - MIPI DSI Host Controller
+ *
+ * Copyright (C) 2011-2015 Freescale Semiconductor, Inc.
+ */
+
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/regmap.h>
+#include <linux/videodev2.h>
+#include <drm/bridge/dw_mipi_dsi.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_of.h>
+#include <drm/drm_print.h>
+
+#include "imx-drm.h"
+
+#define DRIVER_NAME	"imx-mipi-dsi"
+
+#define DSI_PWR_UP			0x04
+#define RESET				0
+#define POWERUP				BIT(0)
+
+#define DSI_PHY_IF_CTRL			0x5c
+#define PHY_IF_CTRL_RESET		0x0
+
+#define DSI_PHY_TST_CTRL0		0x64
+#define PHY_TESTCLK			BIT(1)
+#define PHY_UNTESTCLK			0
+#define PHY_TESTCLR			BIT(0)
+#define PHY_UNTESTCLR			0
+
+#define DSI_PHY_TST_CTRL1		0x68
+#define PHY_TESTEN			BIT(16)
+#define PHY_UNTESTEN			0
+#define PHY_TESTDOUT(n)			(((n) & 0xff) << 8)
+#define PHY_TESTDIN(n)			(((n) & 0xff) << 0)
+
+struct imx_mipi_dsi {
+	struct drm_encoder encoder;
+	struct device *dev;
+	struct regmap *mux_sel;
+	struct dw_mipi_dsi *mipi_dsi;
+	struct clk *pllref_clk;
+
+	struct regmap *regs;
+	unsigned int lane_mbps;
+};
+
+struct dphy_pll_testdin_map {
+	unsigned int max_mbps;
+	u8 testdin;
+};
+
+/* The table is based on 27MHz DPHY pll reference clock. */
+static const struct dphy_pll_testdin_map dptdin_map[] = {
+	{160, 0x04}, {180, 0x24}, {200, 0x44}, {210, 0x06},
+	{240, 0x26}, {250, 0x46}, {270, 0x08}, {300, 0x28},
+	{330, 0x48}, {360, 0x2a}, {400, 0x4a}, {450, 0x0c},
+	{500, 0x2c}, {550, 0x0e}, {600, 0x2e}, {650, 0x10},
+	{700, 0x30}, {750, 0x12}, {800, 0x32}, {850, 0x14},
+	{900, 0x34}, {950, 0x54}, {1000, 0x74}
+};
+
+static inline struct imx_mipi_dsi *enc_to_dsi(struct drm_encoder *enc)
+{
+	return container_of(enc, struct imx_mipi_dsi, encoder);
+}
+
+static void imx_mipi_dsi_set_ipu_di_mux(struct imx_mipi_dsi *dsi, int ipu_di)
+{
+	regmap_update_bits(dsi->mux_sel, IOMUXC_GPR3,
+			   IMX6Q_GPR3_MIPI_MUX_CTL_MASK,
+			   ipu_di << IMX6Q_GPR3_MIPI_MUX_CTL_SHIFT);
+}
+
+static const struct drm_encoder_funcs imx_mipi_dsi_encoder_funcs = {
+	.destroy = imx_drm_encoder_destroy,
+};
+
+static bool imx_mipi_dsi_encoder_mode_fixup(struct drm_encoder *encoder,
+					    const struct drm_display_mode *mode,
+					    struct drm_display_mode *adj_mode)
+{
+	return true;
+}
+
+static int imx_mipi_dsi_encoder_atomic_check(struct drm_encoder *encoder,
+					     struct drm_crtc_state *crtc_state,
+					     struct drm_connector_state *conn)
+{
+	struct imx_crtc_state *imx_crtc_state = to_imx_crtc_state(crtc_state);
+
+	/* The following values are taken from dw_hdmi_imx_atomic_check */
+	imx_crtc_state->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
+	imx_crtc_state->di_hsync_pin = 2;
+	imx_crtc_state->di_vsync_pin = 3;
+
+	return 0;
+}
+
+static void imx_mipi_dsi_encoder_commit(struct drm_encoder *encoder)
+{
+	struct imx_mipi_dsi *dsi = enc_to_dsi(encoder);
+	int mux = drm_of_encoder_active_port_id(dsi->dev->of_node, encoder);
+
+	imx_mipi_dsi_set_ipu_di_mux(dsi, mux);
+}
+
+static void imx_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
+{
+}
+
+static const struct drm_encoder_helper_funcs imx_mipi_dsi_encoder_helpers = {
+	.mode_fixup = imx_mipi_dsi_encoder_mode_fixup,
+	.commit = imx_mipi_dsi_encoder_commit,
+	.disable = imx_mipi_dsi_encoder_disable,
+	.atomic_check = imx_mipi_dsi_encoder_atomic_check,
+};
+
+static int imx_mipi_dsi_register(struct drm_device *drm,
+				 struct imx_mipi_dsi *dsi)
+{
+	int ret;
+
+	ret = imx_drm_encoder_parse_of(drm, &dsi->encoder, dsi->dev->of_node);
+	if (ret)
+		return ret;
+
+	drm_encoder_helper_add(&dsi->encoder,
+			       &imx_mipi_dsi_encoder_helpers);
+	drm_encoder_init(drm, &dsi->encoder, &imx_mipi_dsi_encoder_funcs,
+			 DRM_MODE_ENCODER_DSI, NULL);
+	return 0;
+}
+
+static enum drm_mode_status imx_mipi_dsi_mode_valid(void *priv_data,
+					const struct drm_display_mode *mode)
+{
+	/*
+	 * The VID_PKT_SIZE field in the DSI_VID_PKT_CFG
+	 * register is 11-bit.
+	 */
+	if (mode->hdisplay > 0x7ff)
+		return MODE_BAD_HVALUE;
+
+	/*
+	 * The V_ACTIVE_LINES field in the DSI_VTIMING_CFG
+	 * register is 11-bit.
+	 */
+	if (mode->vdisplay > 0x7ff)
+		return MODE_BAD_VVALUE;
+
+	return MODE_OK;
+}
+
+
+static unsigned int max_mbps_to_testdin(unsigned int max_mbps)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++)
+		if (dptdin_map[i].max_mbps == max_mbps)
+			return dptdin_map[i].testdin;
+
+	return -EINVAL;
+}
+
+static int imx_mipi_dsi_phy_init(void *priv_data)
+{
+	struct imx_mipi_dsi *dsi = priv_data;
+	struct regmap *regs = dsi->regs;
+	int testdin;
+
+	testdin = max_mbps_to_testdin(dsi->lane_mbps);
+	if (testdin < 0) {
+		dev_err(dsi->dev,
+			"failed to get testdin for %dmbps lane clock\n",
+			dsi->lane_mbps);
+		return testdin;
+	}
+
+	regmap_write(regs, DSI_PHY_IF_CTRL, PHY_IF_CTRL_RESET);
+	regmap_write(regs, DSI_PWR_UP, POWERUP);
+
+	regmap_write(regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
+	regmap_write(regs, DSI_PHY_TST_CTRL1, PHY_TESTEN | PHY_TESTDOUT(0) |
+		     PHY_TESTDIN(0x44));
+	regmap_write(regs, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
+	regmap_write(regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
+	regmap_write(regs, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | PHY_TESTDOUT(0) |
+		     PHY_TESTDIN(testdin));
+	regmap_write(regs, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
+	regmap_write(regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);
+
+	return 0;
+}
+
+static int imx_mipi_dsi_get_lane_mbps(void *priv_data,
+				      const struct drm_display_mode *mode,
+				      unsigned long mode_flags, u32 lanes,
+				      u32 format, unsigned int *lane_mbps)
+{
+	struct imx_mipi_dsi *dsi = priv_data;
+	int bpp;
+	unsigned int i, target_mbps, mpclk;
+	unsigned long pllref;
+
+	bpp = mipi_dsi_pixel_format_to_bpp(format);
+	if (bpp < 0) {
+		dev_err(dsi->dev, "failed to get bpp for pixel format %d\n",
+			format);
+		return bpp;
+	}
+
+	pllref = clk_get_rate(dsi->pllref_clk);
+	if (pllref != 27000000)
+		dev_warn(dsi->dev, "expect 27MHz DPHY pll reference clock\n");
+
+	mpclk = DIV_ROUND_UP(mode->clock, MSEC_PER_SEC);
+	if (mpclk) {
+		/* take 1/0.7 blanking overhead into consideration */
+		target_mbps = (mpclk * (bpp / lanes) * 10) / 7;
+	} else {
+		dev_dbg(dsi->dev, "use default 1Gbps DPHY pll clock\n");
+		target_mbps = 1000;
+	}
+
+	dev_dbg(dsi->dev, "target DPHY pll clock frequency is %uMbps\n",
+		target_mbps);
+
+	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++) {
+		if (target_mbps < dptdin_map[i].max_mbps) {
+			*lane_mbps = dptdin_map[i].max_mbps;
+			dsi->lane_mbps = *lane_mbps;
+			dev_dbg(dsi->dev,
+				"real DPHY pll clock frequency is %uMbps\n",
+				*lane_mbps);
+			return 0;
+		}
+	}
+
+	dev_err(dsi->dev, "DPHY clock frequency %uMbps is out of range\n",
+		target_mbps);
+
+	return -EINVAL;
+}
+
+static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_stm_phy_ops = {
+	.init = imx_mipi_dsi_phy_init,
+	.get_lane_mbps = imx_mipi_dsi_get_lane_mbps,
+};
+
+static struct dw_mipi_dsi_plat_data imx6q_mipi_dsi_drv_data = {
+	.max_data_lanes = 2,
+	.mode_valid = imx_mipi_dsi_mode_valid,
+	.phy_ops = &dw_mipi_dsi_stm_phy_ops,
+};
+
+static const struct of_device_id imx_dsi_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6q-mipi-dsi",
+		.data = &imx6q_mipi_dsi_drv_data,
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx_dsi_dt_ids);
+
+static int imx_mipi_dsi_bind(struct device *dev, struct device *master,
+			     void *data)
+{
+	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
+	struct drm_device *drm = data;
+	int ret;
+
+	ret = imx_mipi_dsi_register(drm, dsi);
+	if (ret)
+		return ret;
+
+	ret = dw_mipi_dsi_bind(dsi->mipi_dsi, &dsi->encoder);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void imx_mipi_dsi_unbind(struct device *dev, struct device *master,
+				void *data)
+{
+	struct imx_mipi_dsi *dsi = dev_get_drvdata(dev);
+
+	return dw_mipi_dsi_unbind(dsi->mipi_dsi);
+}
+
+static const struct component_ops imx_mipi_dsi_ops = {
+	.bind	= imx_mipi_dsi_bind,
+	.unbind	= imx_mipi_dsi_unbind,
+};
+
+static int imx_mipi_dsi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	const struct of_device_id *of_id = of_match_device(imx_dsi_dt_ids, dev);
+	const struct dw_mipi_dsi_plat_data *pdata = of_id->data;
+	struct imx_mipi_dsi *dsi;
+	int ret;
+
+	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
+	if (!dsi)
+		return -ENOMEM;
+
+	dsi->dev = dev;
+
+	dsi->pllref_clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(dsi->pllref_clk)) {
+		ret = PTR_ERR(dsi->pllref_clk);
+		dev_dbg(dev, "%s: Unable to get pll reference clock: %d\n",
+			__func__, ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(dsi->pllref_clk);
+	if (ret) {
+		dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
+		return ret;
+	}
+
+	dsi->mux_sel = syscon_regmap_lookup_by_phandle(dev->of_node, "gpr");
+	if (IS_ERR(dsi->mux_sel)) {
+		ret = PTR_ERR(dsi->mux_sel);
+		dev_err(dev, "%s: Failed to get GPR regmap: %d\n",
+			__func__, ret);
+		return ret;
+	}
+
+	dev_set_drvdata(dev, dsi);
+
+	imx6q_mipi_dsi_drv_data.priv_data = dsi;
+
+	dsi->mipi_dsi = dw_mipi_dsi_probe(pdev, pdata);
+	if (IS_ERR(dsi->mipi_dsi)) {
+		ret = PTR_ERR(dsi->mipi_dsi);
+		dev_dbg(dev, "%s: Unable to probe DW DSI host device: %d\n",
+			__func__, ret);
+		return -ENODEV;
+	}
+
+	dsi->regs = pdata->regs;
+
+	return component_add(&pdev->dev, &imx_mipi_dsi_ops);
+}
+
+static int imx_mipi_dsi_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &imx_mipi_dsi_ops);
+	return 0;
+}
+
+static struct platform_driver imx_mipi_dsi_driver = {
+	.probe		= imx_mipi_dsi_probe,
+	.remove		= imx_mipi_dsi_remove,
+	.driver		= {
+		.of_match_table = imx_dsi_dt_ids,
+		.name	= DRIVER_NAME,
+	},
+};
+module_platform_driver(imx_mipi_dsi_driver);
+
+MODULE_DESCRIPTION("i.MX MIPI DSI host controller driver");
+MODULE_AUTHOR("Liu Ying <Ying.Liu@freescale.com>");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:" DRIVER_NAME);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
