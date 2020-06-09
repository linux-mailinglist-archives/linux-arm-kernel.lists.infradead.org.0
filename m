Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19941F40BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2ePT9ZVWjFSP9CQGtc9CDe8t7SbYhcLx5xHzRSFtms=; b=AO6VEIt9jW3X8u
	WE3/RREKDrTxck3Jmee0qFwAskLSzU27nahV1mrTFiIBIr5r3P17NY3Ai1Ne2laENZFbIDatrtZ5D
	M/UdCigv/yw+6nq0ISVG9/PHkVedWke+IC+pKKwPdnCE/MHnuqlkVAH1Rbr510evDlCpt6DyIpjNi
	cDW7dJN0GaEOMxUs/UVACBaMhiy4cjXy/KECUV1dBJsN0MFAaq0FrysaCcZ/1BJch5h9fQYOwr/dh
	rZ7UgL3jrzrfROcxGo3iLbNMtcYxy97vwJokNZLApTJTswut40Y7cRlDJ3Hxd9PkbDrCnDSAODc9T
	gRGO+r1s6nWo1KeQnSJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih55-0000tJ-40; Tue, 09 Jun 2020 16:26:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih4H-0000Mn-Ah; Tue, 09 Jun 2020 16:25:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 9D4D32A3BFF
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v9 03/11] drm: bridge: dw_mipi_dsi: add dsi v1.01 support
Date: Tue,  9 Jun 2020 19:26:52 +0300
Message-Id: <20200609162700.953260-4-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609162700.953260-1-adrian.ratiu@collabora.com>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092541_637399_0B93907B 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Synopsis MIPI DSI v1.01 host controller is quite widely used
on platforms like i.mx6 and is not very different from the other
versions like the 1.31/1.30 used on rockchip/stm. The protocols
appear to be the same, only the register layout is different and
the newer versions have new features symbolized by new registers
so adding support for it is just a matter of defining the new
layout and adding a couple of dsi version checks.

Tested-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
Changes since v7:
  - Minor commit msg rewording for consistency

Changes since v5:
  - Fixed cfg_phy_status range from [0,0] to [0,2]

New in v5.
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 125 +++++++++++++++++-
 1 file changed, 119 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index f453df4eb5072..16fd87055e7b7 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -32,6 +32,7 @@
 
 #define HWVER_131			0x31333100	/* IP version 1.31 */
 #define HWVER_130			0x31333000	/* IP version 1.30 */
+#define HWVER_101			0x31303000	/* IP version 1.01 */
 
 #define DSI_VERSION			0x00
 #define VERSION				GENMASK(31, 8)
@@ -100,6 +101,25 @@
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
@@ -127,6 +147,33 @@
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
 
@@ -165,6 +212,11 @@
 #define DSI_INT_MSK0			0xc4
 #define DSI_INT_MSK1			0xc8
 
+#define DSI_ERROR_ST0_V101		0x44
+#define DSI_ERROR_ST1_V101		0x48
+#define DSI_ERROR_MSK0_V101		0x4c
+#define DSI_ERROR_MSK1_V101		0x50
+
 #define DSI_PHY_TMR_RD_CFG		0xf4
 
 #define PHY_STATUS_TIMEOUT_US		10000
@@ -359,6 +411,49 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_gen_payload =		REG_FIELD(DSI_GEN_PLD_DATA, 0, 31),
 };
 
+static const struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {
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
+	.cfg_phy_status =		REG_FIELD(DSI_PHY_STATUS_V101, 0, 2),
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
@@ -466,6 +561,9 @@ static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
 	case HWVER_131:
 		cmd_mode_lp = CMD_MODE_ALL_LP;
 		break;
+	case HWVER_101:
+		cmd_mode_lp = CMD_MODE_ALL_LP_V101;
+		break;
 	}
 
 	if (msg->flags & MIPI_DSI_MSG_REQ_ACK)
@@ -644,7 +742,7 @@ static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
 				   VID_MODE_TYPE_NON_BURST_SYNC_EVENTS);
 
 #ifdef CONFIG_DEBUG_FS
-	if (dsi->vpg) {
+	if (dsi->hw_version > HWVER_101 && dsi->vpg) {
 		regmap_field_write(dsi->field_vid_mode_vpg_en, 1);
 		regmap_field_write(dsi->field_vid_mode_vpg_horiz,
 				   dsi->vpg_horizontal ? 1 : 0);
@@ -662,9 +760,15 @@ static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
 
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
@@ -856,9 +960,13 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
 	regmap_field_write(dsi->field_phy_lp2hs_time, timing.data_lp2hs);
 	regmap_field_write(dsi->field_phy_hs2lp_time, timing.data_hs2lp);
 
-	regmap_field_write(dsi->field_phy_max_rd_time, 10000);
-	regmap_field_write(dsi->field_phy_clkhs2lp_time, timing.clk_hs2lp);
-	regmap_field_write(dsi->field_phy_clklp2hs_time, timing.clk_lp2hs);
+	if (dsi->hw_version > HWVER_101) {
+		regmap_field_write(dsi->field_phy_max_rd_time, 10000);
+		regmap_field_write(dsi->field_phy_clkhs2lp_time,
+				   timing.clk_hs2lp);
+		regmap_field_write(dsi->field_phy_clklp2hs_time,
+				   timing.clk_lp2hs);
+	}
 }
 
 static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
@@ -879,7 +987,8 @@ static void dw_mipi_dsi_dphy_init(struct dw_mipi_dsi *dsi)
 	regmap_field_write(dsi->field_phy_unrstz, 0);
 	regmap_field_write(dsi->field_phy_unshutdownz, 0);
 
-	regmap_field_write(dsi->field_phy_forcepll, 0);
+	if (dsi->hw_version > HWVER_101)
+		regmap_field_write(dsi->field_phy_forcepll, 0);
 
 	regmap_field_write(dsi->field_phy_testclr, 0);
 	regmap_field_write(dsi->field_phy_testclr, 1);
@@ -895,7 +1004,8 @@ static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
 	regmap_field_write(dsi->field_phy_unrstz, 1);
 	regmap_field_write(dsi->field_phy_unshutdownz, 1);
 
-	regmap_field_write(dsi->field_phy_forcepll, 1);
+	if (dsi->hw_version > HWVER_101)
+		regmap_field_write(dsi->field_phy_forcepll, 1);
 
 	ret = regmap_field_read_poll_timeout(dsi->field_phy_status,
 					     val, val & PHY_LOCK,
@@ -1132,6 +1242,9 @@ static int dw_mipi_dsi_regmap_fields_init(struct dw_mipi_dsi *dsi)
 	case HWVER_131:
 		variant = &dw_mipi_dsi_v130_v131_layout;
 		break;
+	case HWVER_101:
+		variant = &dw_mipi_dsi_v101_layout;
+		break;
 	default:
 		DRM_ERROR("Unrecognized DSI host controller HW revision\n");
 		return -ENODEV;
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
