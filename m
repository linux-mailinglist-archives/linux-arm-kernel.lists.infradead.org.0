Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CAE1B99FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1F2CjZA9SP/Aq0bqqhjSNfArcF5qTiJEx/mZs7aJZ8=; b=mvQU9FeBSpjXr/
	Ely5bW6ywtPzAhfeGOkPrlfpiMNCB+T+jYe0jBIT60IZYJcL38bDzCGIcs8lfDNGNP5onupQFnqnW
	+OaVmWRWT16bJuoddLELJOp7X/0/IKGON+CuHzDGjiG9Wz7BLQJ4zWU6AYFYXiWNMMrxMbWpDQdKg
	MOMA4qyiyKqydkRUzKUGMOFWtZtEQnwxloROkuW36IJAX2TaD8osINjbIdX363wJQDwJ57gWFQIzd
	VqUMKZCF5e4NpWvDH5sQL1/RlRFaYW/0dcdx0orIoBbslDdfSosKLU+5/fxpN6HnSQxp1PnuiCVKe
	4vVjeym96OjNUQiF4dvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz2O-0007vo-IB; Mon, 27 Apr 2020 08:22:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyyp-0002eg-Io; Mon, 27 Apr 2020 08:19:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id A74082A098C
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v8 10/10] drm: bridge: dw-mipi-dsi: fix bad register field
 offsets
Date: Mon, 27 Apr 2020 11:19:52 +0300
Message-Id: <20200427081952.3536741-11-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_011907_927108_7F330BE4 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
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
 Andrzej Hajda <a.hajda@samsung.com>, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the DSI Host Registers sections available in the IMX,
STM and RK ref manuals for 1.01, 1.30 and 1.31, the register fields
are smaller or bigger than what's coded in the driver, leading to
r/w in reserved spaces which might cause undefined behaviours.

Tested-by: Adrian Pop <pop.adrian61@gmail.com>
Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v6.
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 46 +++++++++----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 0903ec37289dd..bf22b04761fdf 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -316,7 +316,7 @@ struct dw_mipi_dsi_variant {
 static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_dpi_color_coding =		REG_FIELD(DSI_DPI_COLOR_CODING, 0, 3),
 	.cfg_dpi_18loosely_en =		REG_FIELD(DSI_DPI_COLOR_CODING, 8, 8),
-	.cfg_dpi_vid =			REG_FIELD(DSI_DPI_VCID, 0, 2),
+	.cfg_dpi_vid =			REG_FIELD(DSI_DPI_VCID, 0, 1),
 	.cfg_dpi_vsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 1, 1),
 	.cfg_dpi_hsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 2, 2),
 	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG, 1, 1),
@@ -325,29 +325,29 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_cmd_mode_dcs_sw_sr_en =	REG_FIELD(DSI_CMD_MODE_CFG, 16, 18),
 	.cfg_cmd_mode_dcs_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 19, 19),
 	.cfg_cmd_mode_max_rd_pkt_size =	REG_FIELD(DSI_CMD_MODE_CFG, 24, 24),
-	.cfg_cmd_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
-	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS, 0, 31),
-	.cfg_vid_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
+	.cfg_cmd_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 0),
+	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS, 0, 6),
+	.cfg_vid_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 0),
 	.cfg_vid_mode_type =		REG_FIELD(DSI_VID_MODE_CFG, 0, 1),
 	.cfg_vid_mode_low_power =	REG_FIELD(DSI_VID_MODE_CFG, 8, 13),
 	.cfg_vid_mode_vpg_en =		REG_FIELD(DSI_VID_MODE_CFG, 16, 16),
 	.cfg_vid_mode_vpg_horiz =	REG_FIELD(DSI_VID_MODE_CFG, 24, 24),
-	.cfg_vid_pkt_size =		REG_FIELD(DSI_VID_PKT_SIZE, 0, 10),
-	.cfg_vid_hsa_time =		REG_FIELD(DSI_VID_HSA_TIME, 0, 31),
-	.cfg_vid_hbp_time =		REG_FIELD(DSI_VID_HBP_TIME, 0, 31),
-	.cfg_vid_hline_time =		REG_FIELD(DSI_VID_HLINE_TIME, 0, 31),
-	.cfg_vid_vsa_time =		REG_FIELD(DSI_VID_VSA_LINES, 0, 31),
-	.cfg_vid_vbp_time =		REG_FIELD(DSI_VID_VBP_LINES, 0, 31),
-	.cfg_vid_vfp_time =		REG_FIELD(DSI_VID_VFP_LINES, 0, 31),
-	.cfg_vid_vactive_time =		REG_FIELD(DSI_VID_VACTIVE_LINES, 0, 31),
+	.cfg_vid_pkt_size =		REG_FIELD(DSI_VID_PKT_SIZE, 0, 13),
+	.cfg_vid_hsa_time =		REG_FIELD(DSI_VID_HSA_TIME, 0, 11),
+	.cfg_vid_hbp_time =		REG_FIELD(DSI_VID_HBP_TIME, 0, 11),
+	.cfg_vid_hline_time =		REG_FIELD(DSI_VID_HLINE_TIME, 0, 14),
+	.cfg_vid_vsa_time =		REG_FIELD(DSI_VID_VSA_LINES, 0, 9),
+	.cfg_vid_vbp_time =		REG_FIELD(DSI_VID_VBP_LINES, 0, 9),
+	.cfg_vid_vfp_time =		REG_FIELD(DSI_VID_VFP_LINES, 0, 9),
+	.cfg_vid_vactive_time =		REG_FIELD(DSI_VID_VACTIVE_LINES, 0, 13),
 	.cfg_phy_txrequestclkhs =	REG_FIELD(DSI_LPCLK_CTRL, 0, 0),
-	.cfg_phy_bta_time =		REG_FIELD(DSI_BTA_TO_CNT, 0, 31),
-	.cfg_phy_max_rd_time =		REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
+	.cfg_phy_bta_time =		REG_FIELD(DSI_BTA_TO_CNT, 0, 15),
+	.cfg_phy_max_rd_time =		REG_FIELD(DSI_PHY_TMR_CFG, 0, 14),
 	.cfg_phy_lp2hs_time =		REG_FIELD(DSI_PHY_TMR_CFG, 16, 23),
 	.cfg_phy_hs2lp_time =		REG_FIELD(DSI_PHY_TMR_CFG, 24, 31),
-	.cfg_phy_max_rd_time_v131 =	REG_FIELD(DSI_PHY_TMR_RD_CFG, 0, 15),
-	.cfg_phy_lp2hs_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
-	.cfg_phy_hs2lp_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 16, 31),
+	.cfg_phy_max_rd_time_v131 =	REG_FIELD(DSI_PHY_TMR_RD_CFG, 0, 14),
+	.cfg_phy_lp2hs_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 0, 9),
+	.cfg_phy_hs2lp_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 16, 25),
 	.cfg_phy_clklp2hs_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 0, 15),
 	.cfg_phy_clkhs2lp_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 16, 31),
 	.cfg_phy_testclr =		REG_FIELD(DSI_PHY_TST_CTRL0, 0, 0),
@@ -361,11 +361,11 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_pckhdl_cfg =		REG_FIELD(DSI_PCKHDL_CFG, 0, 4),
 	.cfg_hstx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 16, 31),
 	.cfg_lprx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 0, 15),
-	.cfg_int_stat0 =		REG_FIELD(DSI_INT_ST0, 0, 31),
-	.cfg_int_stat1 =		REG_FIELD(DSI_INT_ST1, 0, 31),
-	.cfg_int_mask0 =		REG_FIELD(DSI_INT_MSK0, 0, 31),
-	.cfg_int_mask1 =		REG_FIELD(DSI_INT_MSK1, 0, 31),
-	.cfg_gen_hdr =			REG_FIELD(DSI_GEN_HDR, 0, 31),
+	.cfg_int_stat0 =		REG_FIELD(DSI_INT_ST0, 0, 20),
+	.cfg_int_stat1 =		REG_FIELD(DSI_INT_ST1, 0, 12),
+	.cfg_int_mask0 =		REG_FIELD(DSI_INT_MSK0, 0, 20),
+	.cfg_int_mask1 =		REG_FIELD(DSI_INT_MSK1, 0, 12),
+	.cfg_gen_hdr =			REG_FIELD(DSI_GEN_HDR, 0, 23),
 	.cfg_gen_payload =		REG_FIELD(DSI_GEN_PLD_DATA, 0, 31),
 };
 
@@ -382,7 +382,7 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {
 	.cfg_cmd_mode_gen_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 11, 11),
 	.cfg_cmd_mode_dcs_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 12, 12),
 	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG_V101, 13, 13),
-	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 14),
+	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 6),
 	.cfg_vid_mode_en =		REG_FIELD(DSI_VID_MODE_CFG_V101, 0, 0),
 	.cfg_vid_mode_type =		REG_FIELD(DSI_VID_MODE_CFG_V101, 1, 2),
 	.cfg_vid_mode_low_power =	REG_FIELD(DSI_VID_MODE_CFG_V101, 3, 8),
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
