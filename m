Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D1EB2B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQ1UZ993L4L355c5+rXY5TmLlkLIs9uVSVXpSIxoTYA=; b=nbtMntMCw+JdiK
	Di34T3y8n0wCzRe1DWvEfTbmxg+nmWRMXvH2RMiQjYHjr7m5OeeLtdzkBnivs46YWbRXDtMJ3lOhw
	TdgeJgAlN64pY7+oa36mtj/KBCB6rr2QEDR9tCtUFhkC+B6HEsL4HJ3YMc66EF1S57nIqupyZJ6DT
	UpxayFZus7b6++7x1mkqLiW3oYwgBESL6qeYwTAYlOroC9nc9RiT8WBJ/B4LiOzAvnPGCHrqunulh
	isPK4iopl3bZApBRx/d/gTvJ7Apyo434idAsE7Mu+L73WOjbPNpYIBGW2Pb/VmvX1vqdrDB1A6hGJ
	o36zkx8OMpq6sIZLlk+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBSN-0008Fu-7D; Thu, 31 Oct 2019 14:29:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBP7-0005Jy-1s; Thu, 31 Oct 2019 14:26:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id D63D329087E
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 2/4] drm: bridge: dw_mipi_dsi: abstract register access using
 reg_fields
Date: Thu, 31 Oct 2019 16:26:31 +0200
Message-Id: <20191031142633.12460-3-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031142633.12460-1-adrian.ratiu@collabora.com>
References: <20191031142633.12460-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_072625_552260_1F289868 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Register existence, address/offsets, field layouts, reserved bits and
so on differ between MIPI-DSI versions and between SoC vendor boards.
Despite these differences the hw IP and protocols are mostly the same
so the generic driver can be made to compensate these differences.

The existing Rockchip and STM drivers hardcoded a lot of their common
definitions in the bridge code because they're based on DSI v1.30 and
1.31 which are relatively close, but in order to support older/future
versions with more diverging layouts like the v1.01 present on imx6,
we abstract some of the register accesses via the regmap_field APIs.

This enables each platform driver to supply its own specific register
layout making the common bridge driver more generic as well as
removing a lot of the bit-shifting and masking boilerplate which is
now handled automatically by the regmap subsystem.

Not all register accesses have been converted: only the minimum
difference between the versions supplied by the current 3 rockchip,
stm and imx host controller cores, moore can be moved in the future
as needed.

Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 470 +++++++++---------
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 118 +++++
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 116 +++++
 include/drm/bridge/dw_mipi_dsi.h              |  58 +++
 4 files changed, 529 insertions(+), 233 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 4ef3e9038cc2..f88690d04494 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -43,11 +43,8 @@
 #define TO_CLK_DIVISION(div)		(((div) & 0xff) << 8)
 #define TX_ESC_CLK_DIVISION(div)	((div) & 0xff)
 
-#define DSI_DPI_VCID			0x0c
 #define DPI_VCID(vcid)			((vcid) & 0x3)
 
-#define DSI_DPI_COLOR_CODING		0x10
-#define LOOSELY18_EN			BIT(8)
 #define DPI_COLOR_CODING_16BIT_1	0x0
 #define DPI_COLOR_CODING_16BIT_2	0x1
 #define DPI_COLOR_CODING_16BIT_3	0x2
@@ -55,13 +52,6 @@
 #define DPI_COLOR_CODING_18BIT_2	0x4
 #define DPI_COLOR_CODING_24BIT		0x5
 
-#define DSI_DPI_CFG_POL			0x14
-#define COLORM_ACTIVE_LOW		BIT(4)
-#define SHUTD_ACTIVE_LOW		BIT(3)
-#define HSYNC_ACTIVE_LOW		BIT(2)
-#define VSYNC_ACTIVE_LOW		BIT(1)
-#define DATAEN_ACTIVE_LOW		BIT(0)
-
 #define DSI_DPI_LP_CMD_TIM		0x18
 #define OUTVACT_LPCMD_TIME(p)		(((p) & 0xff) << 16)
 #define INVACT_LPCMD_TIME(p)		((p) & 0xff)
@@ -71,7 +61,6 @@
 #define DSI_DBI_PARTITIONING_EN		0x24
 #define DSI_DBI_CMDSIZE			0x28
 
-#define DSI_PCKHDL_CFG			0x2c
 #define CRC_RX_EN			BIT(4)
 #define ECC_RX_EN			BIT(3)
 #define BTA_EN				BIT(2)
@@ -81,70 +70,13 @@
 #define DSI_GEN_VCID			0x30
 
 #define DSI_MODE_CFG			0x34
-#define ENABLE_VIDEO_MODE		0
-#define ENABLE_CMD_MODE			BIT(0)
 
-#define DSI_VID_MODE_CFG		0x38
-#define ENABLE_LOW_POWER		(0x3f << 8)
-#define ENABLE_LOW_POWER_MASK		(0x3f << 8)
+#define ENABLE_LOW_POWER		0x3f
+
 #define VID_MODE_TYPE_NON_BURST_SYNC_PULSES	0x0
 #define VID_MODE_TYPE_NON_BURST_SYNC_EVENTS	0x1
 #define VID_MODE_TYPE_BURST			0x2
-#define VID_MODE_TYPE_MASK			0x3
-#define VID_MODE_VPG_ENABLE		BIT(16)
-#define VID_MODE_VPG_HORIZONTAL		BIT(24)
-
-#define DSI_VID_PKT_SIZE		0x3c
-#define VID_PKT_SIZE(p)			((p) & 0x3fff)
-
-#define DSI_VID_NUM_CHUNKS		0x40
-#define VID_NUM_CHUNKS(c)		((c) & 0x1fff)
-
-#define DSI_VID_NULL_SIZE		0x44
-#define VID_NULL_SIZE(b)		((b) & 0x1fff)
-
-#define DSI_VID_HSA_TIME		0x48
-#define DSI_VID_HBP_TIME		0x4c
-#define DSI_VID_HLINE_TIME		0x50
-#define DSI_VID_VSA_LINES		0x54
-#define DSI_VID_VBP_LINES		0x58
-#define DSI_VID_VFP_LINES		0x5c
-#define DSI_VID_VACTIVE_LINES		0x60
-#define DSI_EDPI_CMD_SIZE		0x64
-
-#define DSI_CMD_MODE_CFG		0x68
-#define MAX_RD_PKT_SIZE_LP		BIT(24)
-#define DCS_LW_TX_LP			BIT(19)
-#define DCS_SR_0P_TX_LP			BIT(18)
-#define DCS_SW_1P_TX_LP			BIT(17)
-#define DCS_SW_0P_TX_LP			BIT(16)
-#define GEN_LW_TX_LP			BIT(14)
-#define GEN_SR_2P_TX_LP			BIT(13)
-#define GEN_SR_1P_TX_LP			BIT(12)
-#define GEN_SR_0P_TX_LP			BIT(11)
-#define GEN_SW_2P_TX_LP			BIT(10)
-#define GEN_SW_1P_TX_LP			BIT(9)
-#define GEN_SW_0P_TX_LP			BIT(8)
-#define ACK_RQST_EN			BIT(1)
-#define TEAR_FX_EN			BIT(0)
-
-#define CMD_MODE_ALL_LP			(MAX_RD_PKT_SIZE_LP | \
-					 DCS_LW_TX_LP | \
-					 DCS_SR_0P_TX_LP | \
-					 DCS_SW_1P_TX_LP | \
-					 DCS_SW_0P_TX_LP | \
-					 GEN_LW_TX_LP | \
-					 GEN_SR_2P_TX_LP | \
-					 GEN_SR_1P_TX_LP | \
-					 GEN_SR_0P_TX_LP | \
-					 GEN_SW_2P_TX_LP | \
-					 GEN_SW_1P_TX_LP | \
-					 GEN_SW_0P_TX_LP)
-
-#define DSI_GEN_HDR			0x6c
-#define DSI_GEN_PLD_DATA		0x70
-
-#define DSI_CMD_PKT_STATUS		0x74
+
 #define GEN_RD_CMD_BUSY			BIT(6)
 #define GEN_PLD_R_FULL			BIT(5)
 #define GEN_PLD_R_EMPTY			BIT(4)
@@ -153,72 +85,15 @@
 #define GEN_CMD_FULL			BIT(1)
 #define GEN_CMD_EMPTY			BIT(0)
 
-#define DSI_TO_CNT_CFG			0x78
-#define HSTX_TO_CNT(p)			(((p) & 0xffff) << 16)
-#define LPRX_TO_CNT(p)			((p) & 0xffff)
-
 #define DSI_HS_RD_TO_CNT		0x7c
 #define DSI_LP_RD_TO_CNT		0x80
 #define DSI_HS_WR_TO_CNT		0x84
 #define DSI_LP_WR_TO_CNT		0x88
-#define DSI_BTA_TO_CNT			0x8c
 
-#define DSI_LPCLK_CTRL			0x94
 #define AUTO_CLKLANE_CTRL		BIT(1)
-#define PHY_TXREQUESTCLKHS		BIT(0)
-
-#define DSI_PHY_TMR_LPCLK_CFG		0x98
-#define PHY_CLKHS2LP_TIME(lbcc)		(((lbcc) & 0x3ff) << 16)
-#define PHY_CLKLP2HS_TIME(lbcc)		((lbcc) & 0x3ff)
-
-#define DSI_PHY_TMR_CFG			0x9c
-#define PHY_HS2LP_TIME(lbcc)		(((lbcc) & 0xff) << 24)
-#define PHY_LP2HS_TIME(lbcc)		(((lbcc) & 0xff) << 16)
-#define MAX_RD_TIME(lbcc)		((lbcc) & 0x7fff)
-#define PHY_HS2LP_TIME_V131(lbcc)	(((lbcc) & 0x3ff) << 16)
-#define PHY_LP2HS_TIME_V131(lbcc)	((lbcc) & 0x3ff)
-
-#define DSI_PHY_RSTZ			0xa0
-#define PHY_DISFORCEPLL			0
-#define PHY_ENFORCEPLL			BIT(3)
-#define PHY_DISABLECLK			0
-#define PHY_ENABLECLK			BIT(2)
-#define PHY_RSTZ			0
-#define PHY_UNRSTZ			BIT(1)
-#define PHY_SHUTDOWNZ			0
-#define PHY_UNSHUTDOWNZ			BIT(0)
-
-#define DSI_PHY_IF_CFG			0xa4
-#define PHY_STOP_WAIT_TIME(cycle)	(((cycle) & 0xff) << 8)
-#define N_LANES(n)			(((n) - 1) & 0x3)
-
-#define DSI_PHY_ULPS_CTRL		0xa8
-#define DSI_PHY_TX_TRIGGERS		0xac
-
-#define DSI_PHY_STATUS			0xb0
 #define PHY_STOP_STATE_CLK_LANE		BIT(2)
 #define PHY_LOCK			BIT(0)
 
-#define DSI_PHY_TST_CTRL0		0xb4
-#define PHY_TESTCLK			BIT(1)
-#define PHY_UNTESTCLK			0
-#define PHY_TESTCLR			BIT(0)
-#define PHY_UNTESTCLR			0
-
-#define DSI_PHY_TST_CTRL1		0xb8
-#define PHY_TESTEN			BIT(16)
-#define PHY_UNTESTEN			0
-#define PHY_TESTDOUT(n)			(((n) & 0xff) << 8)
-#define PHY_TESTDIN(n)			((n) & 0xff)
-
-#define DSI_INT_ST0			0xbc
-#define DSI_INT_ST1			0xc0
-#define DSI_INT_MSK0			0xc4
-#define DSI_INT_MSK1			0xc8
-
-#define DSI_PHY_TMR_RD_CFG		0xf4
-#define MAX_RD_TIME_V131(lbcc)		((lbcc) & 0x7fff)
-
 #define PHY_STATUS_TIMEOUT_US		10000
 #define CMD_PKT_STATUS_TIMEOUT_US	20000
 
@@ -236,6 +111,7 @@ struct dw_mipi_dsi {
 	u32 lanes;
 	u32 format;
 	unsigned long mode_flags;
+	u32 hw_version;
 
 #ifdef CONFIG_DEBUG_FS
 	struct dentry *debugfs;
@@ -248,6 +124,53 @@ struct dw_mipi_dsi {
 	struct dw_mipi_dsi *slave; /* dual-dsi slave ptr */
 
 	const struct dw_mipi_dsi_plat_data *plat_data;
+
+	struct regmap_field	*field_dpi_18loosely_en;
+	struct regmap_field	*field_dpi_color_coding;
+	struct regmap_field	*field_dpi_vid;
+	struct regmap_field	*field_dpi_vsync_active_low;
+	struct regmap_field	*field_dpi_hsync_active_low;
+	struct regmap_field	*field_cmd_mode_ack_rqst_en;
+	struct regmap_field	*field_cmd_mode_all_lp_en;
+	struct regmap_field	*field_cmd_mode_en;
+	struct regmap_field	*field_cmd_pkt_status;
+	struct regmap_field	*field_vid_mode_en;
+	struct regmap_field	*field_vid_mode_type;
+	struct regmap_field	*field_vid_mode_low_power;
+	struct regmap_field	*field_vid_mode_vpg_en;
+	struct regmap_field	*field_vid_mode_vpg_horiz;
+	struct regmap_field	*field_vid_pkt_size;
+	struct regmap_field	*field_vid_hsa_time;
+	struct regmap_field	*field_vid_hbp_time;
+	struct regmap_field	*field_vid_hline_time;
+	struct regmap_field	*field_vid_vsa_time;
+	struct regmap_field	*field_vid_vbp_time;
+	struct regmap_field	*field_vid_vfp_time;
+	struct regmap_field	*field_vid_vactive_time;
+	struct regmap_field	*field_phy_txrequestclkhs;
+	struct regmap_field	*field_phy_bta_time;
+	struct regmap_field	*field_phy_max_rd_time;
+	struct regmap_field	*field_phy_lp2hs_time;
+	struct regmap_field	*field_phy_hs2lp_time;
+	struct regmap_field	*field_phy_clklp2hs_time;
+	struct regmap_field	*field_phy_clkhs2lp_time;
+	struct regmap_field	*field_phy_testclr;
+	struct regmap_field	*field_phy_unshutdownz;
+	struct regmap_field	*field_phy_unrstz;
+	struct regmap_field	*field_phy_enableclk;
+	struct regmap_field	*field_phy_forcepll;
+	struct regmap_field	*field_phy_nlanes;
+	struct regmap_field	*field_phy_stop_wait_time;
+	struct regmap_field	*field_phy_status;
+	struct regmap_field	*field_pckhdl_cfg;
+	struct regmap_field	*field_hstx_timeout_counter;
+	struct regmap_field	*field_lprx_timeout_counter;
+	struct regmap_field	*field_int_stat0;
+	struct regmap_field	*field_int_stat1;
+	struct regmap_field	*field_int_mask0;
+	struct regmap_field	*field_int_mask1;
+	struct regmap_field	*field_gen_hdr;
+	struct regmap_field	*field_gen_payload;
 };
 
 /*
@@ -349,16 +272,17 @@ static int dw_mipi_dsi_host_detach(struct mipi_dsi_host *host,
 static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
 				   const struct mipi_dsi_msg *msg)
 {
+	const struct dw_mipi_dsi_variant *variant = dsi->plat_data->variant;
 	bool lpm = msg->flags & MIPI_DSI_MSG_USE_LPM;
-	u32 val = 0;
 
 	if (msg->flags & MIPI_DSI_MSG_REQ_ACK)
-		val |= ACK_RQST_EN;
+		regmap_field_write(dsi->field_cmd_mode_ack_rqst_en, 1);
+
 	if (lpm)
-		val |= CMD_MODE_ALL_LP;
+		regmap_field_write(dsi->field_cmd_mode_all_lp_en,
+				   variant->val_cmd_mode_all_lp);
 
-	regmap_write(dsi->regs, DSI_LPCLK_CTRL, lpm ? 0 : PHY_TXREQUESTCLKHS);
-	regmap_write(dsi->regs, DSI_CMD_MODE_CFG, val);
+	regmap_field_write(dsi->field_phy_txrequestclkhs, lpm ? 0 : 1);
 }
 
 static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
@@ -366,18 +290,18 @@ static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
 	int ret;
 	u32 val = 0, mask;
 
-	ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
-				       val, !(val & GEN_CMD_FULL), 1000,
-				       CMD_PKT_STATUS_TIMEOUT_US);
+	ret = regmap_field_read_poll_timeout(dsi->field_cmd_pkt_status,
+					     val, !(val & GEN_CMD_FULL),
+					     1000, CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret) {
 		dev_err(dsi->dev, "failed to get available command FIFO\n");
 		return ret;
 	}
 
-	regmap_write(dsi->regs, DSI_GEN_HDR, hdr_val);
+	regmap_field_write(dsi->field_gen_hdr, hdr_val);
 
 	mask = GEN_CMD_EMPTY | GEN_PLD_W_EMPTY;
-	ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
+	ret = regmap_field_read_poll_timeout(dsi->field_cmd_pkt_status,
 				       val, (val & mask) == mask,
 				       1000, CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret) {
@@ -400,20 +324,22 @@ static int dw_mipi_dsi_write(struct dw_mipi_dsi *dsi,
 		if (len < pld_data_bytes) {
 			word = 0;
 			memcpy(&word, tx_buf, len);
-			regmap_write(dsi->regs, DSI_GEN_PLD_DATA,
-				     le32_to_cpu(word));
+			regmap_field_write(dsi->field_gen_payload,
+					   le32_to_cpu(word));
 			len = 0;
 		} else {
 			memcpy(&word, tx_buf, pld_data_bytes);
-			regmap_write(dsi->regs, DSI_GEN_PLD_DATA,
-				     le32_to_cpu(word));
+			regmap_field_write(dsi->field_gen_payload,
+					   le32_to_cpu(word));
 			tx_buf += pld_data_bytes;
 			len -= pld_data_bytes;
 		}
 
-		ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
-					       val, !(val & GEN_PLD_W_FULL),
-					       1000, CMD_PKT_STATUS_TIMEOUT_US);
+		ret = regmap_field_read_poll_timeout(dsi->field_cmd_pkt_status,
+						     val,
+						     !(val & GEN_PLD_W_FULL),
+						     1000,
+						     CMD_PKT_STATUS_TIMEOUT_US);
 		if (ret) {
 			dev_err(dsi->dev,
 				"failed to get available write payload FIFO\n");
@@ -434,9 +360,9 @@ static int dw_mipi_dsi_read(struct dw_mipi_dsi *dsi,
 	u32 val = 0;
 
 	/* Wait end of the read operation */
-	ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
-				       val, !(val & GEN_RD_CMD_BUSY),
-				       1000, CMD_PKT_STATUS_TIMEOUT_US);
+	ret = regmap_field_read_poll_timeout(dsi->field_cmd_pkt_status,
+					     val, !(val & GEN_RD_CMD_BUSY),
+					     1000, CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret) {
 		dev_err(dsi->dev, "Timeout during read operation\n");
 		return ret;
@@ -444,15 +370,17 @@ static int dw_mipi_dsi_read(struct dw_mipi_dsi *dsi,
 
 	for (i = 0; i < len; i += 4) {
 		/* Read fifo must not be empty before all bytes are read */
-		ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
-					       val, !(val & GEN_PLD_R_EMPTY),
-					       1000, CMD_PKT_STATUS_TIMEOUT_US);
+		ret = regmap_field_read_poll_timeout(dsi->field_cmd_pkt_status,
+						     val,
+						     !(val & GEN_PLD_R_EMPTY),
+						     1000,
+						     CMD_PKT_STATUS_TIMEOUT_US);
 		if (ret) {
 			dev_err(dsi->dev, "Read payload FIFO is empty\n");
 			return ret;
 		}
 
-		regmap_read(dsi->regs, DSI_GEN_PLD_DATA, &val);
+		regmap_field_read(dsi->field_gen_payload, &val);
 		for (j = 0; j < 4 && j + i < len; j++)
 			buf[i + j] = val >> (8 * j);
 	}
@@ -506,30 +434,30 @@ static const struct mipi_dsi_host_ops dw_mipi_dsi_host_ops = {
 
 static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
 {
-	u32 val;
-
 	/*
 	 * TODO dw drv improvements
 	 * enabling low power is panel-dependent, we should use the
 	 * panel configuration here...
 	 */
-	val = ENABLE_LOW_POWER;
+	regmap_field_write(dsi->field_vid_mode_low_power, ENABLE_LOW_POWER);
 
 	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
-		val |= VID_MODE_TYPE_BURST;
+		regmap_field_write(dsi->field_vid_mode_type,
+				   VID_MODE_TYPE_BURST);
 	else if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
-		val |= VID_MODE_TYPE_NON_BURST_SYNC_PULSES;
+		regmap_field_write(dsi->field_vid_mode_type,
+				   VID_MODE_TYPE_NON_BURST_SYNC_PULSES);
 	else
-		val |= VID_MODE_TYPE_NON_BURST_SYNC_EVENTS;
+		regmap_field_write(dsi->field_vid_mode_type,
+				   VID_MODE_TYPE_NON_BURST_SYNC_EVENTS);
 
 #ifdef CONFIG_DEBUG_FS
 	if (dsi->vpg) {
-		val |= VID_MODE_VPG_ENABLE;
-		val |= dsi->vpg_horizontal ? VID_MODE_VPG_HORIZONTAL : 0;
+		regmap_field_write(dsi->regs, dsi->field_vid_mode_vpg_en, 1);
+		regmap_field_write(dsi->regs, dsi->field_vid_mode_vpg_horiz,
+				   dsi->vpg_horizontal ? 1 : 0);
 	}
 #endif /* CONFIG_DEBUG_FS */
-
-	regmap_write(dsi->regs, DSI_VID_MODE_CFG, val);
 }
 
 static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
@@ -538,11 +466,13 @@ static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
 	regmap_write(dsi->regs, DSI_PWR_UP, RESET);
 
 	if (mode_flags & MIPI_DSI_MODE_VIDEO) {
-		regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_VIDEO_MODE);
+		regmap_field_write(dsi->field_cmd_mode_en, 0);
+
 		dw_mipi_dsi_video_mode_config(dsi);
-		regmap_write(dsi->regs, DSI_LPCLK_CTRL, PHY_TXREQUESTCLKHS);
+
+		regmap_field_write(dsi->field_phy_txrequestclkhs, 1);
 	} else {
-		regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_CMD_MODE);
+		regmap_field_write(dsi->field_cmd_mode_en, 1);
 	}
 
 	regmap_write(dsi->regs, DSI_PWR_UP, POWERUP);
@@ -551,7 +481,7 @@ static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
 static void dw_mipi_dsi_disable(struct dw_mipi_dsi *dsi)
 {
 	regmap_write(dsi->regs, DSI_PWR_UP, RESET);
-	regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_RSTZ);
+	regmap_field_write(dsi->field_phy_unrstz, 0);
 }
 
 static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
@@ -580,14 +510,15 @@ static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
 static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
 				   const struct drm_display_mode *mode)
 {
-	u32 val = 0, color = 0;
+	u32 color = 0;
 
 	switch (dsi->format) {
 	case MIPI_DSI_FMT_RGB888:
 		color = DPI_COLOR_CODING_24BIT;
 		break;
 	case MIPI_DSI_FMT_RGB666:
-		color = DPI_COLOR_CODING_18BIT_2 | LOOSELY18_EN;
+		color = DPI_COLOR_CODING_18BIT_2;
+		regmap_field_write(dsi->field_dpi_18loosely_en, 1);
 		break;
 	case MIPI_DSI_FMT_RGB666_PACKED:
 		color = DPI_COLOR_CODING_18BIT_1;
@@ -597,14 +528,15 @@ static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
 		break;
 	}
 
-	if (mode->flags & DRM_MODE_FLAG_NVSYNC)
-		val |= VSYNC_ACTIVE_LOW;
-	if (mode->flags & DRM_MODE_FLAG_NHSYNC)
-		val |= HSYNC_ACTIVE_LOW;
+	regmap_field_write(dsi->field_dpi_color_coding, color);
+
+	if (!(mode->flags & DRM_MODE_FLAG_NVSYNC))
+		regmap_field_write(dsi->field_dpi_vsync_active_low, 1);
+	if (!(mode->flags & DRM_MODE_FLAG_NHSYNC))
+		regmap_field_write(dsi->field_dpi_hsync_active_low, 1);
+
+	regmap_field_write(dsi->field_dpi_vid, DPI_VCID(dsi->channel));
 
-	regmap_write(dsi->regs, DSI_DPI_VCID, DPI_VCID(dsi->channel));
-	regmap_write(dsi->regs, DSI_DPI_COLOR_CODING, color);
-	regmap_write(dsi->regs, DSI_DPI_CFG_POL, val);
 	/*
 	 * TODO dw drv improvements
 	 * largest packet sizes during hfp or during vsa/vpb/vfp
@@ -617,7 +549,8 @@ static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
 
 static void dw_mipi_dsi_packet_handler_config(struct dw_mipi_dsi *dsi)
 {
-	regmap_write(dsi->regs, DSI_PCKHDL_CFG, CRC_RX_EN | ECC_RX_EN | BTA_EN);
+	regmap_field_write(dsi->field_pckhdl_cfg,
+			   CRC_RX_EN | ECC_RX_EN | BTA_EN);
 }
 
 static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
@@ -630,11 +563,9 @@ static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
 	 * DSI_VNPCR.NPSIZE... especially because this driver supports
 	 * non-burst video modes, see dw_mipi_dsi_video_mode_config()...
 	 */
-
-	regmap_write(dsi->regs, DSI_VID_PKT_SIZE,
-		       dw_mipi_is_dual_mode(dsi) ?
-				VID_PKT_SIZE(mode->hdisplay / 2) :
-				VID_PKT_SIZE(mode->hdisplay));
+	regmap_field_write(dsi->field_vid_pkt_size,
+			   dw_mipi_is_dual_mode(dsi) ?
+				mode->hdisplay / 2 : mode->hdisplay);
 }
 
 static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
@@ -644,15 +575,17 @@ static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
 	 * compute high speed transmission counter timeout according
 	 * to the timeout clock division (TO_CLK_DIVISION) and byte lane...
 	 */
-	regmap_write(dsi->regs, DSI_TO_CNT_CFG,
-		     HSTX_TO_CNT(1000) | LPRX_TO_CNT(1000));
+	regmap_field_write(dsi->field_hstx_timeout_counter, 1000);
+	regmap_field_write(dsi->field_lprx_timeout_counter, 1000);
+
 	/*
 	 * TODO dw drv improvements
 	 * the Bus-Turn-Around Timeout Counter should be computed
 	 * according to byte lane...
 	 */
-	regmap_write(dsi->regs, DSI_BTA_TO_CNT, 0xd00);
-	regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_CMD_MODE);
+	regmap_field_write(dsi->field_phy_bta_time, 0xd00);
+
+	regmap_field_write(dsi->field_cmd_mode_en, 1);
 }
 
 /* Get lane byte clock cycles. */
@@ -686,13 +619,13 @@ static void dw_mipi_dsi_line_timer_config(struct dw_mipi_dsi *dsi,
 	 * computations below may be improved...
 	 */
 	lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, htotal);
-	regmap_write(dsi->regs, DSI_VID_HLINE_TIME, lbcc);
+	regmap_field_write(dsi->field_vid_hline_time, lbcc);
 
 	lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, hsa);
-	regmap_write(dsi->regs, DSI_VID_HSA_TIME, lbcc);
+	regmap_field_write(dsi->field_vid_hsa_time, lbcc);
 
 	lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, hbp);
-	regmap_write(dsi->regs, DSI_VID_HBP_TIME, lbcc);
+	regmap_field_write(dsi->field_vid_hbp_time, lbcc);
 }
 
 static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
@@ -705,16 +638,14 @@ static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
 	vfp = mode->vsync_start - mode->vdisplay;
 	vbp = mode->vtotal - mode->vsync_end;
 
-	regmap_write(dsi->regs, DSI_VID_VACTIVE_LINES, vactive);
-	regmap_write(dsi->regs, DSI_VID_VSA_LINES, vsa);
-	regmap_write(dsi->regs, DSI_VID_VFP_LINES, vfp);
-	regmap_write(dsi->regs, DSI_VID_VBP_LINES, vbp);
+	regmap_field_write(dsi->field_vid_vactive_time, vactive);
+	regmap_field_write(dsi->field_vid_vsa_time, vsa);
+	regmap_field_write(dsi->field_vid_vfp_time, vfp);
+	regmap_field_write(dsi->field_vid_vbp_time, vbp);
 }
 
 static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
 {
-	u32 hw_version;
-
 	/*
 	 * TODO dw drv improvements
 	 * data & clock lane timers should be computed according to panel
@@ -722,25 +653,12 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
 	 * note: DSI_PHY_TMR_CFG.MAX_RD_TIME should be in line with
 	 * DSI_CMD_MODE_CFG.MAX_RD_PKT_SIZE_LP (see CMD_MODE_ALL_LP)
 	 */
+	regmap_field_write(dsi->field_phy_lp2hs_time, 0x40);
+	regmap_field_write(dsi->field_phy_hs2lp_time, 0x40);
 
-	regmap_read(dsi->regs, DSI_VERSION, &hw_version);
-	hw_version &= VERSION;
-
-	if (hw_version >= HWVER_131) {
-		regmap_write(dsi->regs, DSI_PHY_TMR_CFG,
-			     PHY_HS2LP_TIME_V131(0x40) |
-			     PHY_LP2HS_TIME_V131(0x40));
-		regmap_write(dsi->regs, DSI_PHY_TMR_RD_CFG,
-			     MAX_RD_TIME_V131(10000));
-	} else {
-		regmap_write(dsi->regs, DSI_PHY_TMR_CFG,
-			     PHY_HS2LP_TIME(0x40) |
-			     PHY_LP2HS_TIME(0x40) |
-			     MAX_RD_TIME(10000));
-	}
-
-	regmap_write(dsi->regs, DSI_PHY_TMR_LPCLK_CFG,
-		     PHY_CLKHS2LP_TIME(0x40) | PHY_CLKLP2HS_TIME(0x40));
+	regmap_field_write(dsi->field_phy_max_rd_time, 10000);
+	regmap_field_write(dsi->field_phy_clklp2hs_time, 0x40);
+	regmap_field_write(dsi->field_phy_clkhs2lp_time, 0x40);
 }
 
 static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
@@ -750,18 +668,22 @@ static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
 	 * stop wait time should be the maximum between host dsi
 	 * and panel stop wait times
 	 */
-	regmap_write(dsi->regs, DSI_PHY_IF_CFG,
-		     PHY_STOP_WAIT_TIME(0x20) | N_LANES(dsi->lanes));
+	regmap_field_write(dsi->field_phy_stop_wait_time, 0x20);
+	regmap_field_write(dsi->field_phy_nlanes, dsi->lanes - 1);
 }
 
 static void dw_mipi_dsi_dphy_init(struct dw_mipi_dsi *dsi)
 {
 	/* Clear PHY state */
-	regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_DISFORCEPLL | PHY_DISABLECLK
-		     | PHY_RSTZ | PHY_SHUTDOWNZ);
-	regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
-	regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_TESTCLR);
-	regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
+	regmap_field_write(dsi->field_phy_enableclk, 0);
+	regmap_field_write(dsi->field_phy_unrstz, 0);
+	regmap_field_write(dsi->field_phy_unshutdownz, 0);
+
+	regmap_field_write(dsi->field_phy_forcepll, 0);
+
+	regmap_field_write(dsi->field_phy_testclr, 0);
+	regmap_field_write(dsi->field_phy_testclr, 1);
+	regmap_field_write(dsi->field_phy_testclr, 0);
 }
 
 static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
@@ -769,18 +691,21 @@ static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
 	u32 val = 0;
 	int ret;
 
-	regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
-		     PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
+	regmap_field_write(dsi->field_phy_enableclk, 1);
+	regmap_field_write(dsi->field_phy_unrstz, 1);
+	regmap_field_write(dsi->field_phy_unshutdownz, 1);
+
+	regmap_field_write(dsi->field_phy_forcepll, 1);
 
-	ret = regmap_read_poll_timeout(dsi->regs, DSI_PHY_STATUS,
-				       val, val & PHY_LOCK,
-				       1000, PHY_STATUS_TIMEOUT_US);
+	ret = regmap_field_read_poll_timeout(dsi->field_phy_status,
+					     val, val & PHY_LOCK,
+					     1000, PHY_STATUS_TIMEOUT_US);
 	if (ret)
 		DRM_DEBUG_DRIVER("failed to wait phy lock state\n");
 
-	ret = regmap_read_poll_timeout(dsi->regs, DSI_PHY_STATUS,
-				       val, val & PHY_STOP_STATE_CLK_LANE, 1000,
-				       PHY_STATUS_TIMEOUT_US);
+	ret = regmap_field_read_poll_timeout(dsi->field_phy_status,
+					     val, val & PHY_STOP_STATE_CLK_LANE,
+					     1000, PHY_STATUS_TIMEOUT_US);
 	if (ret)
 		DRM_DEBUG_DRIVER("failed to wait phy clk lane stop state\n");
 }
@@ -789,10 +714,10 @@ static void dw_mipi_dsi_clear_err(struct dw_mipi_dsi *dsi)
 {
 	u32 val;
 
-	regmap_read(dsi->regs, DSI_INT_ST0, &val);
-	regmap_read(dsi->regs, DSI_INT_ST1, &val);
-	regmap_write(dsi->regs, DSI_INT_MSK0, 0);
-	regmap_write(dsi->regs, DSI_INT_MSK1, 0);
+	regmap_field_read(dsi->field_int_stat0, &val);
+	regmap_field_read(dsi->field_int_stat1, &val);
+	regmap_field_write(dsi->field_int_mask0, 0);
+	regmap_field_write(dsi->field_int_mask1, 0);
 }
 
 static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
@@ -977,6 +902,83 @@ static void dw_mipi_dsi_debugfs_remove(struct dw_mipi_dsi *dsi) { }
 
 #endif /* CONFIG_DEBUG_FS */
 
+static void dw_mipi_dsi_get_hw_version(struct dw_mipi_dsi *dsi)
+{
+	regmap_read(dsi->regs, DSI_VERSION, &dsi->hw_version);
+	dsi->hw_version &= VERSION;
+	if (!dsi->hw_version)
+		dev_err(dsi->dev, "Failed to read DSI hw version register\n");
+}
+
+#define INIT_FIELD(f) INIT_FIELD_CFG(field_##f, cfg_##f)
+#define INIT_FIELD_CFG(f, conf)						\
+	do {								\
+		dsi->f = devm_regmap_field_alloc(dsi->dev, dsi->regs,	\
+						 variant->conf);	\
+		if (IS_ERR(dsi->f))					\
+			dev_warn(dsi->dev, "Ignoring regmap field " #f "\n"); \
+	} while (0)
+
+
+static void dw_mipi_dsi_regmap_fields_init(struct dw_mipi_dsi *dsi)
+{
+	const struct dw_mipi_dsi_variant *variant = dsi->plat_data->variant;
+
+	INIT_FIELD(dpi_18loosely_en);
+	INIT_FIELD(dpi_vid);
+	INIT_FIELD(dpi_color_coding);
+	INIT_FIELD(dpi_vsync_active_low);
+	INIT_FIELD(dpi_hsync_active_low);
+	INIT_FIELD(cmd_mode_ack_rqst_en);
+	INIT_FIELD(cmd_mode_all_lp_en);
+	INIT_FIELD(cmd_mode_en);
+	INIT_FIELD(cmd_pkt_status);
+	INIT_FIELD(vid_mode_en);
+	INIT_FIELD(vid_mode_type);
+	INIT_FIELD(vid_mode_low_power);
+	INIT_FIELD(vid_pkt_size);
+	INIT_FIELD(vid_hsa_time);
+	INIT_FIELD(vid_hbp_time);
+	INIT_FIELD(vid_hline_time);
+	INIT_FIELD(vid_vsa_time);
+	INIT_FIELD(vid_vbp_time);
+	INIT_FIELD(vid_vfp_time);
+	INIT_FIELD(vid_vactive_time);
+	INIT_FIELD(phy_txrequestclkhs);
+	INIT_FIELD(phy_testclr);
+	INIT_FIELD(phy_unshutdownz);
+	INIT_FIELD(phy_unrstz);
+	INIT_FIELD(phy_enableclk);
+	INIT_FIELD(phy_nlanes);
+	INIT_FIELD(phy_stop_wait_time);
+	INIT_FIELD(phy_status);
+	INIT_FIELD(pckhdl_cfg);
+	INIT_FIELD(hstx_timeout_counter);
+	INIT_FIELD(lprx_timeout_counter);
+	INIT_FIELD(int_stat0);
+	INIT_FIELD(int_stat1);
+	INIT_FIELD(int_mask0);
+	INIT_FIELD(int_mask1);
+	INIT_FIELD(gen_hdr);
+	INIT_FIELD(gen_payload);
+	INIT_FIELD(phy_bta_time);
+	INIT_FIELD(vid_mode_vpg_en);
+	INIT_FIELD(vid_mode_vpg_horiz);
+	INIT_FIELD(phy_clklp2hs_time);
+	INIT_FIELD(phy_clkhs2lp_time);
+	INIT_FIELD(phy_forcepll);
+
+	if (dsi->hw_version == HWVER_131) {
+		INIT_FIELD_CFG(field_phy_max_rd_time, cfg_phy_max_rd_time_v131);
+		INIT_FIELD_CFG(field_phy_lp2hs_time, cfg_phy_lp2hs_time_v131);
+		INIT_FIELD_CFG(field_phy_hs2lp_time, cfg_phy_hs2lp_time_v131);
+	} else {
+		INIT_FIELD(phy_max_rd_time);
+		INIT_FIELD(phy_lp2hs_time);
+		INIT_FIELD(phy_hs2lp_time);
+	}
+}
+
 static struct dw_mipi_dsi *
 __dw_mipi_dsi_probe(struct platform_device *pdev,
 		    const struct dw_mipi_dsi_plat_data *plat_data)
@@ -999,8 +1001,8 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
 	}
 
 	dsi->regs = plat_data->regs;
-	if (!dsi->regs) {
-		DRM_ERROR("DSI regmap not supplied by platform driver\n");
+	if (!dsi->regs || !plat_data->variant) {
+		DRM_ERROR("DSI regmap not configured by platform driver\n");
 		return ERR_PTR(-ENODEV);
 	}
 
@@ -1039,6 +1041,8 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
 		clk_disable_unprepare(dsi->pclk);
 	}
 
+	dw_mipi_dsi_get_hw_version(dsi);
+	dw_mipi_dsi_regmap_fields_init(dsi);
 	dw_mipi_dsi_debugfs_init(dsi);
 	pm_runtime_enable(dev);
 
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 3c33ed1fa805..806db9c6c4bc 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -166,6 +166,70 @@
 #define RK3399_TXRX_ENABLECLK		BIT(6)
 #define RK3399_TXRX_BASEDIR		BIT(5)
 
+#define DSI_DPI_VCID			0x0c
+#define DSI_DPI_COLOR_CODING		0x10
+#define DSI_DPI_CFG_POL			0x14
+#define DSI_PCKHDL_CFG			0x2c
+#define DSI_CMD_MODE_CFG		0x68
+#define DSI_VID_MODE_CFG		0x38
+#define DSI_MODE_CFG			0x34
+#define DSI_VID_PKT_SIZE		0x3c
+#define DSI_LPCLK_CTRL			0x94
+#define DSI_TO_CNT_CFG			0x78
+#define DSI_PHY_IF_CFG			0xa4
+#define DSI_PHY_TMR_CFG			0x9c
+#define DSI_PHY_TMR_RD_CFG		0xf4
+#define DSI_PHY_TMR_LPCLK_CFG		0x98
+#define DSI_PHY_RSTZ			0xa0
+#define DSI_PHY_STATUS			0xb0
+#define DSI_PHY_TST_CTRL0		0xb4
+#define DSI_GEN_HDR			0x6c
+#define DSI_GEN_PLD_DATA		0x70
+#define DSI_CMD_PKT_STATUS		0x74
+#define DSI_BTA_TO_CNT			0x8c
+#define DSI_VID_NUM_CHUNKS		0x40
+#define DSI_VID_NULL_SIZE		0x44
+#define DSI_VID_HSA_TIME		0x48
+#define DSI_VID_HBP_TIME		0x4c
+#define DSI_VID_HLINE_TIME		0x50
+#define DSI_VID_VSA_LINES		0x54
+#define DSI_VID_VBP_LINES		0x58
+#define DSI_VID_VFP_LINES		0x5c
+#define DSI_VID_VACTIVE_LINES		0x60
+#define DSI_EDPI_CMD_SIZE		0x64
+
+#define MAX_RD_PKT_SIZE_LP		BIT(24)
+#define DCS_LW_TX_LP			BIT(19)
+#define DCS_SR_0P_TX_LP			BIT(18)
+#define DCS_SW_1P_TX_LP			BIT(17)
+#define DCS_SW_0P_TX_LP			BIT(16)
+#define GEN_LW_TX_LP			BIT(14)
+#define GEN_SR_2P_TX_LP			BIT(13)
+#define GEN_SR_1P_TX_LP			BIT(12)
+#define GEN_SR_0P_TX_LP			BIT(11)
+#define GEN_SW_2P_TX_LP			BIT(10)
+#define GEN_SW_1P_TX_LP			BIT(9)
+#define GEN_SW_0P_TX_LP			BIT(8)
+#define TEAR_FX_EN			BIT(0)
+
+#define CMD_MODE_ALL_LP			(MAX_RD_PKT_SIZE_LP | \
+					 DCS_LW_TX_LP | \
+					 DCS_SR_0P_TX_LP | \
+					 DCS_SW_1P_TX_LP | \
+					 DCS_SW_0P_TX_LP | \
+					 GEN_LW_TX_LP | \
+					 GEN_SR_2P_TX_LP | \
+					 GEN_SR_1P_TX_LP | \
+					 GEN_SR_0P_TX_LP | \
+					 GEN_SW_2P_TX_LP | \
+					 GEN_SW_1P_TX_LP | \
+					 GEN_SW_0P_TX_LP)
+
+#define DSI_INT_ST0			0xbc
+#define DSI_INT_ST1			0xc0
+#define DSI_INT_MSK0			0xc4
+#define DSI_INT_MSK1			0xc8
+
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 #define to_dsi(nm)	container_of(nm, struct dw_mipi_dsi_rockchip, nm)
@@ -896,6 +960,59 @@ static const struct regmap_config rockchip_dsi_regmap_config = {
 	.name = DRIVER_NAME,
 };
 
+static struct dw_mipi_dsi_variant default_rk_stm_dsi_variant = {
+	.cfg_dpi_color_coding =		REG_FIELD(DSI_DPI_COLOR_CODING, 0, 3),
+	.cfg_dpi_18loosely_en =		REG_FIELD(DSI_DPI_COLOR_CODING, 8, 8),
+	.cfg_dpi_vid =			REG_FIELD(DSI_DPI_VCID, 0, 2),
+	.cfg_dpi_vsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 1, 1),
+	.cfg_dpi_hsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 2, 2),
+	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG, 1, 1),
+	.cfg_cmd_mode_all_lp_en =	REG_FIELD(DSI_CMD_MODE_CFG, 8, 24),
+	.cfg_cmd_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
+	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS, 0, 31),
+	.cfg_vid_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
+	.cfg_vid_mode_type =		REG_FIELD(DSI_VID_MODE_CFG, 0, 1),
+	.cfg_vid_mode_low_power =	REG_FIELD(DSI_VID_MODE_CFG, 8, 13),
+	.cfg_vid_mode_vpg_en =		REG_FIELD(DSI_VID_MODE_CFG, 16, 16),
+	.cfg_vid_mode_vpg_horiz =	REG_FIELD(DSI_VID_MODE_CFG, 24, 24),
+	.cfg_vid_pkt_size =		REG_FIELD(DSI_VID_PKT_SIZE, 0, 10),
+	.cfg_vid_hsa_time =		REG_FIELD(DSI_VID_HSA_TIME, 0, 31),
+	.cfg_vid_hbp_time =		REG_FIELD(DSI_VID_HBP_TIME, 0, 31),
+	.cfg_vid_hline_time =		REG_FIELD(DSI_VID_HLINE_TIME, 0, 31),
+	.cfg_vid_vsa_time =		REG_FIELD(DSI_VID_VSA_LINES, 0, 31),
+	.cfg_vid_vbp_time =		REG_FIELD(DSI_VID_VBP_LINES, 0, 31),
+	.cfg_vid_vfp_time =		REG_FIELD(DSI_VID_VFP_LINES, 0, 31),
+	.cfg_vid_vactive_time =		REG_FIELD(DSI_VID_VACTIVE_LINES, 0, 31),
+	.cfg_phy_txrequestclkhs =	REG_FIELD(DSI_LPCLK_CTRL, 0, 0),
+	.cfg_phy_bta_time =		REG_FIELD(DSI_BTA_TO_CNT, 0, 31),
+	.cfg_phy_max_rd_time =		REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
+	.cfg_phy_lp2hs_time =		REG_FIELD(DSI_PHY_TMR_CFG, 16, 23),
+	.cfg_phy_hs2lp_time =		REG_FIELD(DSI_PHY_TMR_CFG, 24, 31),
+	.cfg_phy_max_rd_time_v131 =	REG_FIELD(DSI_PHY_TMR_RD_CFG, 0, 15),
+	.cfg_phy_lp2hs_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
+	.cfg_phy_hs2lp_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 16, 31),
+	.cfg_phy_clklp2hs_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 0, 15),
+	.cfg_phy_clkhs2lp_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 16, 31),
+	.cfg_phy_testclr =		REG_FIELD(DSI_PHY_TST_CTRL0, 0, 0),
+	.cfg_phy_unshutdownz =		REG_FIELD(DSI_PHY_RSTZ, 0, 0),
+	.cfg_phy_unrstz =		REG_FIELD(DSI_PHY_RSTZ, 1, 1),
+	.cfg_phy_enableclk =		REG_FIELD(DSI_PHY_RSTZ, 2, 2),
+	.cfg_phy_forcepll =		REG_FIELD(DSI_PHY_RSTZ, 3, 3),
+	.cfg_phy_nlanes =		REG_FIELD(DSI_PHY_IF_CFG, 0, 1),
+	.cfg_phy_stop_wait_time =	REG_FIELD(DSI_PHY_IF_CFG, 8, 15),
+	.cfg_phy_status =		REG_FIELD(DSI_PHY_STATUS, 0, 0),
+	.cfg_pckhdl_cfg =		REG_FIELD(DSI_PCKHDL_CFG, 0, 4),
+	.cfg_hstx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 16, 31),
+	.cfg_lprx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 0, 15),
+	.cfg_int_stat0 =		REG_FIELD(DSI_INT_ST0, 0, 31),
+	.cfg_int_stat1 =		REG_FIELD(DSI_INT_ST1, 0, 31),
+	.cfg_int_mask0 =		REG_FIELD(DSI_INT_MSK0, 0, 31),
+	.cfg_int_mask1 =		REG_FIELD(DSI_INT_MSK1, 0, 31),
+	.cfg_gen_hdr =			REG_FIELD(DSI_GEN_HDR, 0, 31),
+	.cfg_gen_payload =		REG_FIELD(DSI_GEN_PLD_DATA, 0, 31),
+	.val_cmd_mode_all_lp =		CMD_MODE_ALL_LP,
+};
+
 static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -975,6 +1092,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 
 	dsi->dev = dev;
 	dsi->pdata.regs = dsi->regs;
+	dsi->pdata.variant = &default_rk_stm_dsi_variant;
 	dsi->pdata.max_data_lanes = dsi->cdata->max_data_lanes;
 	dsi->pdata.phy_ops = &dw_mipi_dsi_rockchip_phy_ops;
 	dsi->pdata.host_ops = &dw_mipi_dsi_rockchip_host_ops;
diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index cc233271347b..586f358a9f2e 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -60,6 +60,70 @@
 #define ODF_MIN		1
 #define ODF_MAX		8
 
+#define DSI_DPI_VCID			0x0c
+#define DSI_DPI_COLOR_CODING		0x10
+#define DSI_DPI_CFG_POL			0x14
+#define DSI_PCKHDL_CFG			0x2c
+#define DSI_CMD_MODE_CFG		0x68
+#define DSI_VID_MODE_CFG		0x38
+#define DSI_MODE_CFG			0x34
+#define DSI_VID_PKT_SIZE		0x3c
+#define DSI_LPCLK_CTRL			0x94
+#define DSI_TO_CNT_CFG			0x78
+#define DSI_PHY_IF_CFG			0xa4
+#define DSI_PHY_TMR_CFG			0x9c
+#define DSI_PHY_TMR_RD_CFG		0xf4
+#define DSI_PHY_TMR_LPCLK_CFG		0x98
+#define DSI_PHY_RSTZ			0xa0
+#define DSI_PHY_STATUS			0xb0
+#define DSI_PHY_TST_CTRL0		0xb4
+#define DSI_GEN_HDR			0x6c
+#define DSI_GEN_PLD_DATA		0x70
+#define DSI_CMD_PKT_STATUS		0x74
+#define DSI_BTA_TO_CNT			0x8c
+#define DSI_VID_NUM_CHUNKS		0x40
+#define DSI_VID_NULL_SIZE		0x44
+#define DSI_VID_HSA_TIME		0x48
+#define DSI_VID_HBP_TIME		0x4c
+#define DSI_VID_HLINE_TIME		0x50
+#define DSI_VID_VSA_LINES		0x54
+#define DSI_VID_VBP_LINES		0x58
+#define DSI_VID_VFP_LINES		0x5c
+#define DSI_VID_VACTIVE_LINES		0x60
+#define DSI_EDPI_CMD_SIZE		0x64
+
+#define MAX_RD_PKT_SIZE_LP		BIT(24)
+#define DCS_LW_TX_LP			BIT(19)
+#define DCS_SR_0P_TX_LP			BIT(18)
+#define DCS_SW_1P_TX_LP			BIT(17)
+#define DCS_SW_0P_TX_LP			BIT(16)
+#define GEN_LW_TX_LP			BIT(14)
+#define GEN_SR_2P_TX_LP			BIT(13)
+#define GEN_SR_1P_TX_LP			BIT(12)
+#define GEN_SR_0P_TX_LP			BIT(11)
+#define GEN_SW_2P_TX_LP			BIT(10)
+#define GEN_SW_1P_TX_LP			BIT(9)
+#define GEN_SW_0P_TX_LP			BIT(8)
+#define TEAR_FX_EN			BIT(0)
+
+#define CMD_MODE_ALL_LP			(MAX_RD_PKT_SIZE_LP | \
+					 DCS_LW_TX_LP | \
+					 DCS_SR_0P_TX_LP | \
+					 DCS_SW_1P_TX_LP | \
+					 DCS_SW_0P_TX_LP | \
+					 GEN_LW_TX_LP | \
+					 GEN_SR_2P_TX_LP | \
+					 GEN_SR_1P_TX_LP | \
+					 GEN_SR_0P_TX_LP | \
+					 GEN_SW_2P_TX_LP | \
+					 GEN_SW_1P_TX_LP | \
+					 GEN_SW_0P_TX_LP)
+
+#define DSI_INT_ST0			0xbc
+#define DSI_INT_ST1			0xc0
+#define DSI_INT_MSK0			0xc4
+#define DSI_INT_MSK1			0xc8
+
 /* dsi color format coding according to the datasheet */
 enum dsi_color {
 	DSI_RGB565_CONF1,
@@ -340,6 +404,57 @@ static const struct regmap_config stm_dsi_regmap_config = {
 	.name = DRIVER_NAME,
 };
 
+static struct dw_mipi_dsi_variant default_rk_stm_dsi_variant = {
+	.cfg_dpi_color_coding =		REG_FIELD(DSI_DPI_COLOR_CODING, 0, 3),
+	.cfg_dpi_18loosely_en =		REG_FIELD(DSI_DPI_COLOR_CODING, 8, 8),
+	.cfg_dpi_vid =			REG_FIELD(DSI_DPI_VCID, 0, 2),
+	.cfg_dpi_vsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 1, 1),
+	.cfg_dpi_hsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 2, 2),
+	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG, 1, 1),
+	.cfg_cmd_mode_all_lp_en =	REG_FIELD(DSI_CMD_MODE_CFG, 8, 24),
+	.cfg_cmd_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
+	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS, 0, 31),
+	.cfg_vid_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
+	.cfg_vid_mode_type =		REG_FIELD(DSI_VID_MODE_CFG, 0, 1),
+	.cfg_vid_mode_low_power =	REG_FIELD(DSI_VID_MODE_CFG, 8, 13),
+	.cfg_vid_pkt_size =		REG_FIELD(DSI_VID_PKT_SIZE, 0, 10),
+	.cfg_vid_hsa_time =		REG_FIELD(DSI_VID_HSA_TIME, 0, 31),
+	.cfg_vid_hbp_time =		REG_FIELD(DSI_VID_HBP_TIME, 0, 31),
+	.cfg_vid_hline_time =		REG_FIELD(DSI_VID_HLINE_TIME, 0, 31),
+	.cfg_vid_vsa_time =		REG_FIELD(DSI_VID_VSA_LINES, 0, 31),
+	.cfg_vid_vbp_time =		REG_FIELD(DSI_VID_VBP_LINES, 0, 31),
+	.cfg_vid_vfp_time =		REG_FIELD(DSI_VID_VFP_LINES, 0, 31),
+	.cfg_vid_vactive_time =		REG_FIELD(DSI_VID_VACTIVE_LINES, 0, 31),
+	.cfg_phy_txrequestclkhs =	REG_FIELD(DSI_LPCLK_CTRL, 0, 0),
+	.cfg_phy_bta_time =		REG_FIELD(DSI_BTA_TO_CNT, 0, 31),
+	.cfg_phy_max_rd_time =		REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
+	.cfg_phy_lp2hs_time =		REG_FIELD(DSI_PHY_TMR_CFG, 16, 23),
+	.cfg_phy_hs2lp_time =		REG_FIELD(DSI_PHY_TMR_CFG, 24, 31),
+	.cfg_phy_max_rd_time_v131 =	REG_FIELD(DSI_PHY_TMR_RD_CFG, 0, 15),
+	.cfg_phy_lp2hs_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
+	.cfg_phy_hs2lp_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 16, 31),
+	.cfg_phy_clklp2hs_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 0, 15),
+	.cfg_phy_clkhs2lp_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 16, 31),
+	.cfg_phy_testclr =		REG_FIELD(DSI_PHY_TST_CTRL0, 0, 0),
+	.cfg_phy_unshutdownz =		REG_FIELD(DSI_PHY_RSTZ, 0, 0),
+	.cfg_phy_unrstz =		REG_FIELD(DSI_PHY_RSTZ, 1, 1),
+	.cfg_phy_enableclk =		REG_FIELD(DSI_PHY_RSTZ, 2, 2),
+	.cfg_phy_forcepll =		REG_FIELD(DSI_PHY_RSTZ, 3, 3),
+	.cfg_phy_nlanes =		REG_FIELD(DSI_PHY_IF_CFG, 0, 1),
+	.cfg_phy_stop_wait_time =	REG_FIELD(DSI_PHY_IF_CFG, 8, 15),
+	.cfg_phy_status =		REG_FIELD(DSI_PHY_STATUS, 0, 0),
+	.cfg_pckhdl_cfg =		REG_FIELD(DSI_PCKHDL_CFG, 0, 4),
+	.cfg_hstx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 16, 31),
+	.cfg_lprx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 0, 15),
+	.cfg_int_stat0 =		REG_FIELD(DSI_INT_ST0, 0, 31),
+	.cfg_int_stat1 =		REG_FIELD(DSI_INT_ST1, 0, 31),
+	.cfg_int_mask0 =		REG_FIELD(DSI_INT_MSK0, 0, 31),
+	.cfg_int_mask1 =		REG_FIELD(DSI_INT_MSK1, 0, 31),
+	.cfg_gen_hdr =			REG_FIELD(DSI_GEN_HDR, 0, 31),
+	.cfg_gen_payload =		REG_FIELD(DSI_GEN_PLD_DATA, 0, 31),
+	.val_cmd_mode_all_lp =		CMD_MODE_ALL_LP,
+};
+
 static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -417,6 +532,7 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 	}
 
 	dw_mipi_dsi_stm_plat_data.regs = dsi->regs;
+	dw_mipi_dsi_stm_plat_data.variant = &default_rk_stm_dsi_variant;
 	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
 
 	platform_set_drvdata(pdev, dsi);
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index ecc1897efa62..57cf46f15720 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -36,8 +36,66 @@ struct dw_mipi_dsi_host_ops {
 		      struct mipi_dsi_device *dsi);
 };
 
+struct dw_mipi_dsi_variant {
+	/* Regmap field configs for DSI adapter */
+	struct reg_field	cfg_dpi_18loosely_en;
+	struct reg_field	cfg_dpi_color_coding;
+	struct reg_field	cfg_dpi_vid;
+	struct reg_field	cfg_dpi_vsync_active_low;
+	struct reg_field	cfg_dpi_hsync_active_low;
+	struct reg_field	cfg_cmd_mode_en;
+	struct reg_field	cfg_cmd_mode_ack_rqst_en;
+	struct reg_field	cfg_cmd_mode_all_lp_en;
+	struct reg_field	cfg_cmd_pkt_status;
+	struct reg_field	cfg_vid_mode_en;
+	struct reg_field	cfg_vid_mode_type;
+	struct reg_field	cfg_vid_mode_low_power;
+	struct reg_field	cfg_vid_mode_vpg_en;
+	struct reg_field	cfg_vid_mode_vpg_horiz;
+	struct reg_field	cfg_vid_pkt_size;
+	struct reg_field	cfg_vid_hsa_time;
+	struct reg_field	cfg_vid_hbp_time;
+	struct reg_field	cfg_vid_hline_time;
+	struct reg_field	cfg_vid_vsa_time;
+	struct reg_field	cfg_vid_vbp_time;
+	struct reg_field	cfg_vid_vfp_time;
+	struct reg_field	cfg_vid_vactive_time;
+	struct reg_field	cfg_phy_txrequestclkhs;
+	struct reg_field	cfg_phy_bta_time;
+	struct reg_field	cfg_phy_max_rd_time;
+	struct reg_field	cfg_phy_lp2hs_time;
+	struct reg_field	cfg_phy_hs2lp_time;
+	struct reg_field	cfg_phy_max_rd_time_v131;
+	struct reg_field	cfg_phy_lp2hs_time_v131;
+	struct reg_field	cfg_phy_hs2lp_time_v131;
+	struct reg_field	cfg_phy_clklp2hs_time;
+	struct reg_field	cfg_phy_clkhs2lp_time;
+	struct reg_field	cfg_phy_testclr;
+	struct reg_field	cfg_phy_unshutdownz;
+	struct reg_field	cfg_phy_unrstz;
+	struct reg_field	cfg_phy_enableclk;
+	struct reg_field	cfg_phy_forcepll;
+	struct reg_field	cfg_phy_nlanes;
+	struct reg_field	cfg_phy_stop_wait_time;
+	struct reg_field	cfg_phy_status;
+	struct reg_field	cfg_pckhdl_cfg;
+	struct reg_field	cfg_hstx_timeout_counter;
+	struct reg_field	cfg_lprx_timeout_counter;
+	struct reg_field	cfg_int_stat0;
+	struct reg_field	cfg_int_stat1;
+	struct reg_field	cfg_int_mask0;
+	struct reg_field	cfg_int_mask1;
+	struct reg_field	cfg_gen_hdr;
+	struct reg_field	cfg_gen_payload;
+
+	/* values to write to registers */
+	u32 val_cmd_mode_all_lp;
+};
+
 struct dw_mipi_dsi_plat_data {
 	struct regmap *regs;
+	struct dw_mipi_dsi_variant *variant;
+
 	unsigned int max_data_lanes;
 
 	enum drm_mode_status (*mode_valid)(void *priv_data,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
