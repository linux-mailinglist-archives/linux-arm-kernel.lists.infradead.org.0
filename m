Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93D2F1B4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:31:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxNQ95PouErgb74AiNzYxSX4/ZrW5Y5U/Q2k64DSmME=; b=aeslayKlgLZDYN
	DQdLj+EAUqEfmRuLoFooxdPNYfvk6bVfl4loAWrvBC5eqdj6Zal7+NsF9pf8UpGzDpwAGPUKuxwDJ
	EHWdUfhKXqORIPtdzvUdoacVMHh1nlVzFcMb2l9cfSFjofeCaZvyX5TAx7PVi31zCoiPT+ymuyYer
	DJns8AzN3QYHv0UxHaDH8RojfFhZ0bbfnbQ5xv0d91uYGoulzRlPmo3klp6VYdXIy8kZFjyE/IX/G
	F1/ub4gEMuN467JZJb8G0dwNmOZxhjlLq4jOuztq8UeRbb6njNN8nNUs76Kr47MmeUKhy2LCIF6Uf
	RhBLJUtKCf8CxnkEcICw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSODe-0005xy-7P; Wed, 06 Nov 2019 16:31:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSODO-0005en-CS; Wed, 06 Nov 2019 16:31:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 1D2F728FDBA
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/4] drm: bridge: dw_mipi_dsi: access registers via a regmap
Date: Wed,  6 Nov 2019 18:30:28 +0200
Message-Id: <20191106163031.808061-2-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106163031.808061-1-adrian.ratiu@collabora.com>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_083126_732231_CF627E48 
X-CRM114-Status: GOOD (  17.90  )
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
 Emil Velikov <emil.l.velikov@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the common bridge code and the two rockchip & stm drivers
which currently use it to the regmap API in anticipation for further
changes to make it more generic and add older DSI host controller
support as found on i.mx6 based devices.

The regmap becomes an internal state of the bridge. No functional
changes other than requiring the platform drivers to use the
pre-configured regmap supplied by the bridge after its probe() call
instead of ioremp'ing the registers themselves.

In subsequent commits the bridge will become able to detect the
DSI host core version and init the regmap with different register
layouts. The platform drivers will continue to use the regmap without
modifications or worrying about the specific layout in use (in other
words the layout is abstracted away via the regmap).

Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 215 ++++++++++--------
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  17 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  34 ++-
 include/drm/bridge/dw_mipi_dsi.h              |   2 +-
 4 files changed, 145 insertions(+), 123 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index b6e793bb653c..6cb57807f3f9 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -15,6 +15,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/regmap.h>
 #include <linux/reset.h>
 
 #include <video/mipi_display.h>
@@ -226,7 +227,7 @@ struct dw_mipi_dsi {
 	struct mipi_dsi_host dsi_host;
 	struct drm_bridge *panel_bridge;
 	struct device *dev;
-	void __iomem *base;
+	struct regmap *regs;
 
 	struct clk *pclk;
 
@@ -249,6 +250,13 @@ struct dw_mipi_dsi {
 	const struct dw_mipi_dsi_plat_data *plat_data;
 };
 
+static const struct regmap_config dw_mipi_dsi_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.name = "dw-mipi-dsi",
+};
+
 /*
  * Check if either a link to a master or slave is present
  */
@@ -280,16 +288,6 @@ static inline struct dw_mipi_dsi *bridge_to_dsi(struct drm_bridge *bridge)
 	return container_of(bridge, struct dw_mipi_dsi, bridge);
 }
 
-static inline void dsi_write(struct dw_mipi_dsi *dsi, u32 reg, u32 val)
-{
-	writel(val, dsi->base + reg);
-}
-
-static inline u32 dsi_read(struct dw_mipi_dsi *dsi, u32 reg)
-{
-	return readl(dsi->base + reg);
-}
-
 static int dw_mipi_dsi_host_attach(struct mipi_dsi_host *host,
 				   struct mipi_dsi_device *device)
 {
@@ -366,29 +364,29 @@ static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
 	if (lpm)
 		val |= CMD_MODE_ALL_LP;
 
-	dsi_write(dsi, DSI_LPCLK_CTRL, lpm ? 0 : PHY_TXREQUESTCLKHS);
-	dsi_write(dsi, DSI_CMD_MODE_CFG, val);
+	regmap_write(dsi->regs, DSI_LPCLK_CTRL, lpm ? 0 : PHY_TXREQUESTCLKHS);
+	regmap_write(dsi->regs, DSI_CMD_MODE_CFG, val);
 }
 
 static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
 {
 	int ret;
-	u32 val, mask;
+	u32 val = 0, mask;
 
-	ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
-				 val, !(val & GEN_CMD_FULL), 1000,
-				 CMD_PKT_STATUS_TIMEOUT_US);
+	ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
+				       val, !(val & GEN_CMD_FULL), 1000,
+				       CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret) {
 		dev_err(dsi->dev, "failed to get available command FIFO\n");
 		return ret;
 	}
 
-	dsi_write(dsi, DSI_GEN_HDR, hdr_val);
+	regmap_write(dsi->regs, DSI_GEN_HDR, hdr_val);
 
 	mask = GEN_CMD_EMPTY | GEN_PLD_W_EMPTY;
-	ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
-				 val, (val & mask) == mask,
-				 1000, CMD_PKT_STATUS_TIMEOUT_US);
+	ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
+				       val, (val & mask) == mask,
+				       1000, CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret) {
 		dev_err(dsi->dev, "failed to write command FIFO\n");
 		return ret;
@@ -403,24 +401,26 @@ static int dw_mipi_dsi_write(struct dw_mipi_dsi *dsi,
 	const u8 *tx_buf = packet->payload;
 	int len = packet->payload_length, pld_data_bytes = sizeof(u32), ret;
 	__le32 word;
-	u32 val;
+	u32 val = 0;
 
 	while (len) {
 		if (len < pld_data_bytes) {
 			word = 0;
 			memcpy(&word, tx_buf, len);
-			dsi_write(dsi, DSI_GEN_PLD_DATA, le32_to_cpu(word));
+			regmap_write(dsi->regs, DSI_GEN_PLD_DATA,
+				     le32_to_cpu(word));
 			len = 0;
 		} else {
 			memcpy(&word, tx_buf, pld_data_bytes);
-			dsi_write(dsi, DSI_GEN_PLD_DATA, le32_to_cpu(word));
+			regmap_write(dsi->regs, DSI_GEN_PLD_DATA,
+				     le32_to_cpu(word));
 			tx_buf += pld_data_bytes;
 			len -= pld_data_bytes;
 		}
 
-		ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
-					 val, !(val & GEN_PLD_W_FULL), 1000,
-					 CMD_PKT_STATUS_TIMEOUT_US);
+		ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
+					       val, !(val & GEN_PLD_W_FULL),
+					       1000, CMD_PKT_STATUS_TIMEOUT_US);
 		if (ret) {
 			dev_err(dsi->dev,
 				"failed to get available write payload FIFO\n");
@@ -438,12 +438,12 @@ static int dw_mipi_dsi_read(struct dw_mipi_dsi *dsi,
 {
 	int i, j, ret, len = msg->rx_len;
 	u8 *buf = msg->rx_buf;
-	u32 val;
+	u32 val = 0;
 
 	/* Wait end of the read operation */
-	ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
-				 val, !(val & GEN_RD_CMD_BUSY),
-				 1000, CMD_PKT_STATUS_TIMEOUT_US);
+	ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
+				       val, !(val & GEN_RD_CMD_BUSY),
+				       1000, CMD_PKT_STATUS_TIMEOUT_US);
 	if (ret) {
 		dev_err(dsi->dev, "Timeout during read operation\n");
 		return ret;
@@ -451,15 +451,15 @@ static int dw_mipi_dsi_read(struct dw_mipi_dsi *dsi,
 
 	for (i = 0; i < len; i += 4) {
 		/* Read fifo must not be empty before all bytes are read */
-		ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
-					 val, !(val & GEN_PLD_R_EMPTY),
-					 1000, CMD_PKT_STATUS_TIMEOUT_US);
+		ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
+					       val, !(val & GEN_PLD_R_EMPTY),
+					       1000, CMD_PKT_STATUS_TIMEOUT_US);
 		if (ret) {
 			dev_err(dsi->dev, "Read payload FIFO is empty\n");
 			return ret;
 		}
 
-		val = dsi_read(dsi, DSI_GEN_PLD_DATA);
+		regmap_read(dsi->regs, DSI_GEN_PLD_DATA, &val);
 		for (j = 0; j < 4 && j + i < len; j++)
 			buf[i + j] = val >> (8 * j);
 	}
@@ -536,29 +536,29 @@ static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
 	}
 #endif /* CONFIG_DEBUG_FS */
 
-	dsi_write(dsi, DSI_VID_MODE_CFG, val);
+	regmap_write(dsi->regs, DSI_VID_MODE_CFG, val);
 }
 
 static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
 				 unsigned long mode_flags)
 {
-	dsi_write(dsi, DSI_PWR_UP, RESET);
+	regmap_write(dsi->regs, DSI_PWR_UP, RESET);
 
 	if (mode_flags & MIPI_DSI_MODE_VIDEO) {
-		dsi_write(dsi, DSI_MODE_CFG, ENABLE_VIDEO_MODE);
+		regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_VIDEO_MODE);
 		dw_mipi_dsi_video_mode_config(dsi);
-		dsi_write(dsi, DSI_LPCLK_CTRL, PHY_TXREQUESTCLKHS);
+		regmap_write(dsi->regs, DSI_LPCLK_CTRL, PHY_TXREQUESTCLKHS);
 	} else {
-		dsi_write(dsi, DSI_MODE_CFG, ENABLE_CMD_MODE);
+		regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_CMD_MODE);
 	}
 
-	dsi_write(dsi, DSI_PWR_UP, POWERUP);
+	regmap_write(dsi->regs, DSI_PWR_UP, POWERUP);
 }
 
 static void dw_mipi_dsi_disable(struct dw_mipi_dsi *dsi)
 {
-	dsi_write(dsi, DSI_PWR_UP, RESET);
-	dsi_write(dsi, DSI_PHY_RSTZ, PHY_RSTZ);
+	regmap_write(dsi->regs, DSI_PWR_UP, RESET);
+	regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_RSTZ);
 }
 
 static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
@@ -573,14 +573,14 @@ static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
 	 */
 	u32 esc_clk_division = (dsi->lane_mbps >> 3) / 20 + 1;
 
-	dsi_write(dsi, DSI_PWR_UP, RESET);
+	regmap_write(dsi->regs, DSI_PWR_UP, RESET);
 
 	/*
 	 * TODO dw drv improvements
 	 * timeout clock division should be computed with the
 	 * high speed transmission counter timeout and byte lane...
 	 */
-	dsi_write(dsi, DSI_CLKMGR_CFG, TO_CLK_DIVISION(10) |
+	regmap_write(dsi->regs, DSI_CLKMGR_CFG, TO_CLK_DIVISION(10) |
 		  TX_ESC_CLK_DIVISION(esc_clk_division));
 }
 
@@ -609,22 +609,22 @@ static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
 	if (mode->flags & DRM_MODE_FLAG_NHSYNC)
 		val |= HSYNC_ACTIVE_LOW;
 
-	dsi_write(dsi, DSI_DPI_VCID, DPI_VCID(dsi->channel));
-	dsi_write(dsi, DSI_DPI_COLOR_CODING, color);
-	dsi_write(dsi, DSI_DPI_CFG_POL, val);
+	regmap_write(dsi->regs, DSI_DPI_VCID, DPI_VCID(dsi->channel));
+	regmap_write(dsi->regs, DSI_DPI_COLOR_CODING, color);
+	regmap_write(dsi->regs, DSI_DPI_CFG_POL, val);
 	/*
 	 * TODO dw drv improvements
 	 * largest packet sizes during hfp or during vsa/vpb/vfp
 	 * should be computed according to byte lane, lane number and only
 	 * if sending lp cmds in high speed is enable (PHY_TXREQUESTCLKHS)
 	 */
-	dsi_write(dsi, DSI_DPI_LP_CMD_TIM, OUTVACT_LPCMD_TIME(4)
+	regmap_write(dsi->regs, DSI_DPI_LP_CMD_TIM, OUTVACT_LPCMD_TIME(4)
 		  | INVACT_LPCMD_TIME(4));
 }
 
 static void dw_mipi_dsi_packet_handler_config(struct dw_mipi_dsi *dsi)
 {
-	dsi_write(dsi, DSI_PCKHDL_CFG, CRC_RX_EN | ECC_RX_EN | BTA_EN);
+	regmap_write(dsi->regs, DSI_PCKHDL_CFG, CRC_RX_EN | ECC_RX_EN | BTA_EN);
 }
 
 static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
@@ -638,7 +638,7 @@ static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
 	 * non-burst video modes, see dw_mipi_dsi_video_mode_config()...
 	 */
 
-	dsi_write(dsi, DSI_VID_PKT_SIZE,
+	regmap_write(dsi->regs, DSI_VID_PKT_SIZE,
 		       dw_mipi_is_dual_mode(dsi) ?
 				VID_PKT_SIZE(mode->hdisplay / 2) :
 				VID_PKT_SIZE(mode->hdisplay));
@@ -651,14 +651,15 @@ static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
 	 * compute high speed transmission counter timeout according
 	 * to the timeout clock division (TO_CLK_DIVISION) and byte lane...
 	 */
-	dsi_write(dsi, DSI_TO_CNT_CFG, HSTX_TO_CNT(1000) | LPRX_TO_CNT(1000));
+	regmap_write(dsi->regs, DSI_TO_CNT_CFG,
+		     HSTX_TO_CNT(1000) | LPRX_TO_CNT(1000));
 	/*
 	 * TODO dw drv improvements
 	 * the Bus-Turn-Around Timeout Counter should be computed
 	 * according to byte lane...
 	 */
-	dsi_write(dsi, DSI_BTA_TO_CNT, 0xd00);
-	dsi_write(dsi, DSI_MODE_CFG, ENABLE_CMD_MODE);
+	regmap_write(dsi->regs, DSI_BTA_TO_CNT, 0xd00);
+	regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_CMD_MODE);
 }
 
 /* Get lane byte clock cycles. */
@@ -692,13 +693,13 @@ static void dw_mipi_dsi_line_timer_config(struct dw_mipi_dsi *dsi,
 	 * computations below may be improved...
 	 */
 	lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, htotal);
-	dsi_write(dsi, DSI_VID_HLINE_TIME, lbcc);
+	regmap_write(dsi->regs, DSI_VID_HLINE_TIME, lbcc);
 
 	lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, hsa);
-	dsi_write(dsi, DSI_VID_HSA_TIME, lbcc);
+	regmap_write(dsi->regs, DSI_VID_HSA_TIME, lbcc);
 
 	lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, hbp);
-	dsi_write(dsi, DSI_VID_HBP_TIME, lbcc);
+	regmap_write(dsi->regs, DSI_VID_HBP_TIME, lbcc);
 }
 
 static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
@@ -711,10 +712,10 @@ static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
 	vfp = mode->vsync_start - mode->vdisplay;
 	vbp = mode->vtotal - mode->vsync_end;
 
-	dsi_write(dsi, DSI_VID_VACTIVE_LINES, vactive);
-	dsi_write(dsi, DSI_VID_VSA_LINES, vsa);
-	dsi_write(dsi, DSI_VID_VFP_LINES, vfp);
-	dsi_write(dsi, DSI_VID_VBP_LINES, vbp);
+	regmap_write(dsi->regs, DSI_VID_VACTIVE_LINES, vactive);
+	regmap_write(dsi->regs, DSI_VID_VSA_LINES, vsa);
+	regmap_write(dsi->regs, DSI_VID_VFP_LINES, vfp);
+	regmap_write(dsi->regs, DSI_VID_VBP_LINES, vbp);
 }
 
 static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
@@ -729,19 +730,24 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
 	 * DSI_CMD_MODE_CFG.MAX_RD_PKT_SIZE_LP (see CMD_MODE_ALL_LP)
 	 */
 
-	hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
+	regmap_read(dsi->regs, DSI_VERSION, &hw_version);
+	hw_version &= VERSION;
 
 	if (hw_version >= HWVER_131) {
-		dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME_V131(0x40) |
-			  PHY_LP2HS_TIME_V131(0x40));
-		dsi_write(dsi, DSI_PHY_TMR_RD_CFG, MAX_RD_TIME_V131(10000));
+		regmap_write(dsi->regs, DSI_PHY_TMR_CFG,
+			     PHY_HS2LP_TIME_V131(0x40) |
+			     PHY_LP2HS_TIME_V131(0x40));
+		regmap_write(dsi->regs, DSI_PHY_TMR_RD_CFG,
+			     MAX_RD_TIME_V131(10000));
 	} else {
-		dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME(0x40) |
-			  PHY_LP2HS_TIME(0x40) | MAX_RD_TIME(10000));
+		regmap_write(dsi->regs, DSI_PHY_TMR_CFG,
+			     PHY_HS2LP_TIME(0x40) |
+			     PHY_LP2HS_TIME(0x40) |
+			     MAX_RD_TIME(10000));
 	}
 
-	dsi_write(dsi, DSI_PHY_TMR_LPCLK_CFG, PHY_CLKHS2LP_TIME(0x40)
-		  | PHY_CLKLP2HS_TIME(0x40));
+	regmap_write(dsi->regs, DSI_PHY_TMR_LPCLK_CFG,
+		     PHY_CLKHS2LP_TIME(0x40) | PHY_CLKLP2HS_TIME(0x40));
 }
 
 static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
@@ -751,46 +757,49 @@ static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
 	 * stop wait time should be the maximum between host dsi
 	 * and panel stop wait times
 	 */
-	dsi_write(dsi, DSI_PHY_IF_CFG, PHY_STOP_WAIT_TIME(0x20) |
-		  N_LANES(dsi->lanes));
+	regmap_write(dsi->regs, DSI_PHY_IF_CFG,
+		     PHY_STOP_WAIT_TIME(0x20) | N_LANES(dsi->lanes));
 }
 
 static void dw_mipi_dsi_dphy_init(struct dw_mipi_dsi *dsi)
 {
 	/* Clear PHY state */
-	dsi_write(dsi, DSI_PHY_RSTZ, PHY_DISFORCEPLL | PHY_DISABLECLK
-		  | PHY_RSTZ | PHY_SHUTDOWNZ);
-	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
-	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLR);
-	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
+	regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_DISFORCEPLL | PHY_DISABLECLK
+		     | PHY_RSTZ | PHY_SHUTDOWNZ);
+	regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
+	regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_TESTCLR);
+	regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
 }
 
 static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
 {
-	u32 val;
+	u32 val = 0;
 	int ret;
 
-	dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
-		  PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
+	regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
+		     PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
 
-	ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS, val,
-				 val & PHY_LOCK, 1000, PHY_STATUS_TIMEOUT_US);
+	ret = regmap_read_poll_timeout(dsi->regs, DSI_PHY_STATUS,
+				       val, val & PHY_LOCK,
+				       1000, PHY_STATUS_TIMEOUT_US);
 	if (ret)
 		DRM_DEBUG_DRIVER("failed to wait phy lock state\n");
 
-	ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS,
-				 val, val & PHY_STOP_STATE_CLK_LANE, 1000,
-				 PHY_STATUS_TIMEOUT_US);
+	ret = regmap_read_poll_timeout(dsi->regs, DSI_PHY_STATUS,
+				       val, val & PHY_STOP_STATE_CLK_LANE, 1000,
+				       PHY_STATUS_TIMEOUT_US);
 	if (ret)
 		DRM_DEBUG_DRIVER("failed to wait phy clk lane stop state\n");
 }
 
 static void dw_mipi_dsi_clear_err(struct dw_mipi_dsi *dsi)
 {
-	dsi_read(dsi, DSI_INT_ST0);
-	dsi_read(dsi, DSI_INT_ST1);
-	dsi_write(dsi, DSI_INT_MSK0, 0);
-	dsi_write(dsi, DSI_INT_MSK1, 0);
+	u32 val;
+
+	regmap_read(dsi->regs, DSI_INT_ST0, &val);
+	regmap_read(dsi->regs, DSI_INT_ST1, &val);
+	regmap_write(dsi->regs, DSI_INT_MSK0, 0);
+	regmap_write(dsi->regs, DSI_INT_MSK1, 0);
 }
 
 static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
@@ -977,11 +986,13 @@ static void dw_mipi_dsi_debugfs_remove(struct dw_mipi_dsi *dsi) { }
 
 static struct dw_mipi_dsi *
 __dw_mipi_dsi_probe(struct platform_device *pdev,
-		    const struct dw_mipi_dsi_plat_data *plat_data)
+		    struct dw_mipi_dsi_plat_data *plat_data)
 {
 	struct device *dev = &pdev->dev;
 	struct reset_control *apb_rst;
 	struct dw_mipi_dsi *dsi;
+	struct resource *res;
+	void __iomem *regs;
 	int ret;
 
 	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
@@ -996,15 +1007,29 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
 		return ERR_PTR(-ENODEV);
 	}
 
-	if (!plat_data->base) {
-		dsi->base = devm_platform_ioremap_resource(pdev, 0);
-		if (IS_ERR(dsi->base))
-			return ERR_PTR(-ENODEV);
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
+		DRM_ERROR("Failed to get platform resource: %d\n", ret);
+		return ERR_PTR(ret);
+	}
+
+	regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(regs)) {
+		ret = PTR_ERR(regs);
+		DRM_ERROR("Failed to map DSI registers: %d\n", ret);
+		return ERR_PTR(ret);
+	}
 
-	} else {
-		dsi->base = plat_data->base;
+	dsi->regs = devm_regmap_init_mmio(dev, regs, &dw_mipi_dsi_regmap_cfg);
+	if (IS_ERR(dsi->regs)) {
+		ret = PTR_ERR(dsi->regs);
+		DRM_ERROR("Failed to create DW MIPI DSI regmap: %d\n", ret);
+		return ERR_PTR(ret);
 	}
 
+	plat_data->regs = dsi->regs;
+
 	dsi->pclk = devm_clk_get(dev, "pclk");
 	if (IS_ERR(dsi->pclk)) {
 		ret = PTR_ERR(dsi->pclk);
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index bc073ec5c183..321d66f0598e 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -212,7 +212,7 @@ struct rockchip_dw_dsi_chip_data {
 struct dw_mipi_dsi_rockchip {
 	struct device *dev;
 	struct drm_encoder encoder;
-	void __iomem *base;
+	struct regmap *regs;
 
 	struct regmap *grf_regmap;
 	struct clk *pllref_clk;
@@ -297,12 +297,15 @@ static int max_mbps_to_parameter(unsigned int max_mbps)
 
 static inline void dsi_write(struct dw_mipi_dsi_rockchip *dsi, u32 reg, u32 val)
 {
-	writel(val, dsi->base + reg);
+	regmap_write(dsi->regs, reg, val);
 }
 
 static inline u32 dsi_read(struct dw_mipi_dsi_rockchip *dsi, u32 reg)
 {
-	return readl(dsi->base + reg);
+	u32 val;
+
+	regmap_read(dsi->regs, reg, &val);
+	return val;
 }
 
 static inline void dsi_set(struct dw_mipi_dsi_rockchip *dsi, u32 reg, u32 mask)
@@ -899,11 +902,6 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	dsi->base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(dsi->base)) {
-		DRM_DEV_ERROR(dev, "Unable to get dsi registers\n");
-		return PTR_ERR(dsi->base);
-	}
 
 	i = 0;
 	while (cdata[i].reg) {
@@ -954,7 +952,6 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 	}
 
 	dsi->dev = dev;
-	dsi->pdata.base = dsi->base;
 	dsi->pdata.max_data_lanes = dsi->cdata->max_data_lanes;
 	dsi->pdata.phy_ops = &dw_mipi_dsi_rockchip_phy_ops;
 	dsi->pdata.host_ops = &dw_mipi_dsi_rockchip_host_ops;
@@ -970,6 +967,8 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 		goto err_clkdisable;
 	}
 
+	dsi->regs = dsi->pdata.regs;
+
 	return 0;
 
 err_clkdisable:
diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index 514efefb0016..81373c509e35 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -12,6 +12,7 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
+#include <linux/regmap.h>
 
 #include <video/mipi_display.h>
 
@@ -19,6 +20,8 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_print.h>
 
+#define DRIVER_NAME "stm32-display-dsi"
+
 #define HWVER_130			0x31333000	/* IP version 1.30 */
 #define HWVER_131			0x31333100	/* IP version 1.31 */
 
@@ -75,7 +78,7 @@ enum dsi_color {
 #define TIMEOUT_US	200000
 
 struct dw_mipi_dsi_stm {
-	void __iomem *base;
+	struct regmap *regs;
 	struct clk *pllref_clk;
 	struct dw_mipi_dsi *dsi;
 	u32 hw_version;
@@ -86,12 +89,15 @@ struct dw_mipi_dsi_stm {
 
 static inline void dsi_write(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 val)
 {
-	writel(val, dsi->base + reg);
+	regmap_write(dsi->regs, reg, val);
 }
 
 static inline u32 dsi_read(struct dw_mipi_dsi_stm *dsi, u32 reg)
 {
-	return readl(dsi->base + reg);
+	u32 val;
+
+	regmap_read(dsi->regs, reg, &val);
+	return val;
 }
 
 static inline void dsi_set(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 mask)
@@ -202,15 +208,15 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 
 	/* Enable the regulator */
 	dsi_set(dsi, DSI_WRPCR, WRPCR_REGEN | WRPCR_BGREN);
-	ret = readl_poll_timeout(dsi->base + DSI_WISR, val, val & WISR_RRS,
-				 SLEEP_US, TIMEOUT_US);
+	ret = regmap_read_poll_timeout(dsi->regs, DSI_WISR, val, val & WISR_RRS,
+				       SLEEP_US, TIMEOUT_US);
 	if (ret)
 		DRM_DEBUG_DRIVER("!TIMEOUT! waiting REGU, let's continue\n");
 
 	/* Enable the DSI PLL & wait for its lock */
 	dsi_set(dsi, DSI_WRPCR, WRPCR_PLLEN);
-	ret = readl_poll_timeout(dsi->base + DSI_WISR, val, val & WISR_PLLLS,
-				 SLEEP_US, TIMEOUT_US);
+	ret = regmap_read_poll_timeout(dsi->regs, DSI_WISR, val,
+				       val & WISR_PLLLS, SLEEP_US, TIMEOUT_US);
 	if (ret)
 		DRM_DEBUG_DRIVER("!TIMEOUT! waiting PLL, let's continue\n");
 
@@ -332,21 +338,12 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct dw_mipi_dsi_stm *dsi;
 	struct clk *pclk;
-	struct resource *res;
 	int ret;
 
 	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
 	if (!dsi)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	dsi->base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(dsi->base)) {
-		ret = PTR_ERR(dsi->base);
-		DRM_ERROR("Unable to get dsi registers %d\n", ret);
-		return ret;
-	}
-
 	dsi->vdd_supply = devm_regulator_get(dev, "phy-dsi");
 	if (IS_ERR(dsi->vdd_supply)) {
 		ret = PTR_ERR(dsi->vdd_supply);
@@ -396,7 +393,6 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
-	dw_mipi_dsi_stm_plat_data.base = dsi->base;
 	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
 
 	platform_set_drvdata(pdev, dsi);
@@ -408,6 +404,8 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
 		goto err_dsi_probe;
 	}
 
+	dsi->regs = dw_mipi_dsi_stm_plat_data.regs;
+
 	return 0;
 
 err_dsi_probe:
@@ -474,7 +472,7 @@ static struct platform_driver dw_mipi_dsi_stm_driver = {
 	.remove		= dw_mipi_dsi_stm_remove,
 	.driver		= {
 		.of_match_table = dw_mipi_dsi_stm_dt_ids,
-		.name	= "stm32-display-dsi",
+		.name	= DRIVER_NAME,
 		.pm = &dw_mipi_dsi_stm_pm_ops,
 	},
 };
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index 94cc64a342e1..ecc1897efa62 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -37,7 +37,7 @@ struct dw_mipi_dsi_host_ops {
 };
 
 struct dw_mipi_dsi_plat_data {
-	void __iomem *base;
+	struct regmap *regs;
 	unsigned int max_data_lanes;
 
 	enum drm_mode_status (*mode_valid)(void *priv_data,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
