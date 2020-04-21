Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C271B2C58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5W5ocNgorvHt3XK1GkXVIQfc+PkwUQNGXMUEkPK0Cw=; b=poGKQpPOwO/vDP
	AniQAYahYBJT3IHgR/iolzFUuz4alXfofTrtio2T/NnyS8ZxilenDCFERDLQpw+gfE+y9iEvLwe/s
	ccQurv5quhybdK9Rjk2oR+sAvVwmZ/879DvzRapD6HpZz2O6cQRoxKrajyhPiQncO17dtx6bujkb+
	28dIxRr/7MUs3TTAE1eMtr+iJWsnrCrDLuvIg9dAFDhTHM5on5NlrkM78lK0FThlPHiHKgP0L41V0
	LDc+EqheiAqGlJWxKy4QBih6uiGaWFGgcjoS8EXVx2TDw0b1aQQmSwGTqoOz//b2n62emHnk2Zjki
	Qh4PSYz+d4MLcYL1A9mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvb6-0003Di-7o; Tue, 21 Apr 2020 16:18:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvYO-0000zv-IX; Tue, 21 Apr 2020 16:15:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id AA0322A1903
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v7 7/8] drm: bridge: dw-mipi-dsi: split low power cfg register
 into fields
Date: Tue, 21 Apr 2020 19:16:09 +0300
Message-Id: <20200421161610.1501827-8-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_091520_907343_BB3792AD 
X-CRM114-Status: GOOD (  12.44  )
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
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the Host Registers documentation for IMX, STM and RK
the LP cfg register should not be written entirely in one go because
some bits are reserved and should be kept to reset values, for eg.
BIT(15) which is reserved in all versions.

This also cleans up the code by removing the the ugly defines
and making field ranges & values written more explicit.

Tested-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v6.
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 105 ++++++------------
 1 file changed, 33 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index f7e71fa5a8c64..b45a6d19addcc 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -120,60 +120,6 @@
 #define DSI_TO_CNT_CFG_V101		0x40
 #define DSI_PCKHDL_CFG_V101		0x18
 
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
-#define EN_TEAR_FX_V101			BIT(14)
-#define DCS_LW_TX_LP_V101		BIT(12)
-#define GEN_LW_TX_LP_V101		BIT(11)
-#define MAX_RD_PKT_SIZE_LP_V101		BIT(10)
-#define DCS_SW_2P_TX_LP_V101		BIT(9)
-#define DCS_SW_1P_TX_LP_V101		BIT(8)
-#define DCS_SW_0P_TX_LP_V101		BIT(7)
-#define GEN_SR_2P_TX_LP_V101		BIT(6)
-#define GEN_SR_1P_TX_LP_V101		BIT(5)
-#define GEN_SR_0P_TX_LP_V101		BIT(4)
-#define GEN_SW_2P_TX_LP_V101		BIT(3)
-#define GEN_SW_1P_TX_LP_V101		BIT(2)
-#define GEN_SW_0P_TX_LP_V101		BIT(1)
-
-#define CMD_MODE_ALL_LP_V101		(DCS_LW_TX_LP_V101 | \
-					 GEN_LW_TX_LP_V101 | \
-					 MAX_RD_PKT_SIZE_LP_V101 | \
-					 DCS_SW_2P_TX_LP_V101 | \
-					 DCS_SW_1P_TX_LP_V101 | \
-					 DCS_SW_0P_TX_LP_V101 | \
-					 GEN_SR_2P_TX_LP_V101 | \
-					 GEN_SR_1P_TX_LP_V101 | \
-					 GEN_SR_0P_TX_LP_V101 | \
-					 GEN_SW_2P_TX_LP_V101 | \
-					 GEN_SW_1P_TX_LP_V101 | \
-					 GEN_SW_0P_TX_LP_V101)
-
 #define DSI_GEN_HDR			0x6c
 #define DSI_GEN_PLD_DATA		0x70
 
@@ -257,7 +203,11 @@ struct dw_mipi_dsi {
 	struct regmap_field	*field_dpi_vsync_active_low;
 	struct regmap_field	*field_dpi_hsync_active_low;
 	struct regmap_field	*field_cmd_mode_ack_rqst_en;
-	struct regmap_field	*field_cmd_mode_all_lp_en;
+	struct regmap_field	*field_cmd_mode_gen_sw_sr_en;
+	struct regmap_field	*field_cmd_mode_dcs_sw_sr_en;
+	struct regmap_field	*field_cmd_mode_gen_lw_en;
+	struct regmap_field	*field_cmd_mode_dcs_lw_en;
+	struct regmap_field	*field_cmd_mode_max_rd_pkt_size;
 	struct regmap_field	*field_cmd_mode_en;
 	struct regmap_field	*field_cmd_pkt_status;
 	struct regmap_field	*field_vid_mode_en;
@@ -315,7 +265,11 @@ struct dw_mipi_dsi_variant {
 	struct reg_field	cfg_dpi_hsync_active_low;
 	struct reg_field	cfg_cmd_mode_en;
 	struct reg_field	cfg_cmd_mode_ack_rqst_en;
-	struct reg_field	cfg_cmd_mode_all_lp_en;
+	struct reg_field	cfg_cmd_mode_gen_sw_sr_en;
+	struct reg_field	cfg_cmd_mode_dcs_sw_sr_en;
+	struct reg_field	cfg_cmd_mode_gen_lw_en;
+	struct reg_field	cfg_cmd_mode_dcs_lw_en;
+	struct reg_field	cfg_cmd_mode_max_rd_pkt_size;
 	struct reg_field	cfg_cmd_pkt_status;
 	struct reg_field	cfg_vid_mode_en;
 	struct reg_field	cfg_vid_mode_type;
@@ -366,7 +320,11 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_dpi_vsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 1, 1),
 	.cfg_dpi_hsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 2, 2),
 	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG, 1, 1),
-	.cfg_cmd_mode_all_lp_en =	REG_FIELD(DSI_CMD_MODE_CFG, 8, 24),
+	.cfg_cmd_mode_gen_sw_sr_en =	REG_FIELD(DSI_CMD_MODE_CFG, 8, 13),
+	.cfg_cmd_mode_gen_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 14, 14),
+	.cfg_cmd_mode_dcs_sw_sr_en =	REG_FIELD(DSI_CMD_MODE_CFG, 16, 18),
+	.cfg_cmd_mode_dcs_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 19, 19),
+	.cfg_cmd_mode_max_rd_pkt_size =	REG_FIELD(DSI_CMD_MODE_CFG, 24, 24),
 	.cfg_cmd_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
 	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS, 0, 31),
 	.cfg_vid_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
@@ -418,7 +376,11 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {
 	.cfg_dpi_vsync_active_low =	REG_FIELD(DSI_DPI_CFG, 6, 6),
 	.cfg_dpi_hsync_active_low =	REG_FIELD(DSI_DPI_CFG, 7, 7),
 	.cfg_cmd_mode_en =		REG_FIELD(DSI_CMD_MODE_CFG_V101, 0, 0),
-	.cfg_cmd_mode_all_lp_en =	REG_FIELD(DSI_CMD_MODE_CFG_V101, 1, 12),
+	.cfg_cmd_mode_gen_sw_sr_en =	REG_FIELD(DSI_CMD_MODE_CFG, 1, 6),
+	.cfg_cmd_mode_dcs_sw_sr_en =	REG_FIELD(DSI_CMD_MODE_CFG, 7, 9),
+	.cfg_cmd_mode_max_rd_pkt_size =	REG_FIELD(DSI_CMD_MODE_CFG, 10, 10),
+	.cfg_cmd_mode_gen_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 11, 11),
+	.cfg_cmd_mode_dcs_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 12, 12),
 	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG_V101, 13, 13),
 	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 14),
 	.cfg_vid_mode_en =		REG_FIELD(DSI_VID_MODE_CFG_V101, 0, 0),
@@ -554,23 +516,18 @@ static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
 				   const struct mipi_dsi_msg *msg)
 {
 	bool lpm = msg->flags & MIPI_DSI_MSG_USE_LPM;
-	u32 cmd_mode_lp = 0;
-
-	switch (dsi->hw_version) {
-	case HWVER_130:
-	case HWVER_131:
-		cmd_mode_lp = CMD_MODE_ALL_LP;
-		break;
-	case HWVER_101:
-		cmd_mode_lp = CMD_MODE_ALL_LP_V101;
-		break;
-	}
 
 	if (msg->flags & MIPI_DSI_MSG_REQ_ACK)
 		regmap_field_write(dsi->field_cmd_mode_ack_rqst_en, 1);
 
-	if (lpm)
-		regmap_field_write(dsi->field_cmd_mode_all_lp_en, cmd_mode_lp);
+	if (lpm) {
+		regmap_field_write(dsi->field_cmd_mode_gen_sw_sr_en,
+				   ENABLE_LOW_POWER);
+		regmap_field_write(dsi->field_cmd_mode_dcs_sw_sr_en, 7);
+		regmap_field_write(dsi->field_cmd_mode_gen_lw_en, 1);
+		regmap_field_write(dsi->field_cmd_mode_dcs_lw_en, 1);
+		regmap_field_write(dsi->field_cmd_mode_max_rd_pkt_size, 1);
+	}
 
 	regmap_field_write(dsi->field_phy_txrequestclkhs, lpm ? 0 : 1);
 }
@@ -1257,7 +1214,11 @@ static int dw_mipi_dsi_regmap_fields_init(struct dw_mipi_dsi *dsi)
 	INIT_FIELD(dpi_vsync_active_low);
 	INIT_FIELD(dpi_hsync_active_low);
 	INIT_FIELD(cmd_mode_ack_rqst_en);
-	INIT_FIELD(cmd_mode_all_lp_en);
+	INIT_FIELD(cmd_mode_gen_sw_sr_en);
+	INIT_FIELD(cmd_mode_dcs_sw_sr_en);
+	INIT_FIELD(cmd_mode_gen_lw_en);
+	INIT_FIELD(cmd_mode_dcs_lw_en);
+	INIT_FIELD(cmd_mode_max_rd_pkt_size);
 	INIT_FIELD(cmd_mode_en);
 	INIT_FIELD(cmd_pkt_status);
 	INIT_FIELD(vid_mode_en);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
