Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C1DF3C74
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 01:03:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTNKzTvGjM0TjRS0TZ+aELOdUWu3h9ZmxNGrKEtLZNA=; b=ky6Lhv2tJGh9xp
	RP7Xkpai0TMCKd4hDyGpGneCQqe/EhiTs7fjrdborhzk7SbYaMAkYe4fgjoS2bUt2tCxdjxamvsKg
	v6vkOzxS+H+hpDZqj9sw9piP2eYT9bJo53WJui3idqrm3Z6WM5XTBSxXghZxCBMgvhNIOaJ+Nw0O9
	ed9kBJPBqHRDqZmHSHo1TniS0NGp0ybHAmEJ5xhXuRhwy41LZvvhQP44RTgX6FwgID1PsAccgIDLf
	2/W55Wpobb73OfFKTXD7CPAhSOOxATVgbB/d+i5q9gv/sOMNLqH1uhCbkzW+TuwB/MBZKcHfpiVyL
	acpWecszaTpM834ndpOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrkh-0006ay-PY; Fri, 08 Nov 2019 00:03:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrkE-0006Or-6D; Fri, 08 Nov 2019 00:03:19 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrk2-00065H-PI; Fri, 08 Nov 2019 01:03:06 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com
Subject: [PATCH v2 5/5] drm/rockchip: dsi: add px30 support
Date: Fri,  8 Nov 2019 01:02:53 +0100
Message-Id: <20191108000253.8560-6-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160318_402125_E2C8FCBC 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com, hjc@rock-chips.com, philippe.cornu@st.com,
 yannick.fertre@st.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatible and GRF definitions for the PX30 soc.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 1e6578f911a0..13858f377a0c 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -140,6 +140,12 @@
 #define DW_MIPI_NEEDS_PHY_CFG_CLK	BIT(0)
 #define DW_MIPI_NEEDS_GRF_CLK		BIT(1)
 
+#define PX30_GRF_PD_VO_CON1		0x0438
+#define PX30_DSI_FORCETXSTOPMODE	(0xf << 7)
+#define PX30_DSI_FORCERXMODE		BIT(6)
+#define PX30_DSI_TURNDISABLE		BIT(5)
+#define PX30_DSI_LCDC_SEL		BIT(0)
+
 #define RK3288_GRF_SOC_CON6		0x025c
 #define RK3288_DSI0_LCDC_SEL		BIT(6)
 #define RK3288_DSI1_LCDC_SEL		BIT(9)
@@ -1049,6 +1055,24 @@ static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct rockchip_dw_dsi_chip_data px30_chip_data[] = {
+	{
+		.reg = 0xff450000,
+		.lcdsel_grf_reg = PX30_GRF_PD_VO_CON1,
+		.lcdsel_big = HIWORD_UPDATE(0, PX30_DSI_LCDC_SEL),
+		.lcdsel_lit = HIWORD_UPDATE(PX30_DSI_LCDC_SEL,
+					    PX30_DSI_LCDC_SEL),
+
+		.lanecfg1_grf_reg = PX30_GRF_PD_VO_CON1,
+		.lanecfg1 = HIWORD_UPDATE(0, PX30_DSI_TURNDISABLE |
+					     PX30_DSI_FORCERXMODE |
+					     PX30_DSI_FORCETXSTOPMODE),
+
+		.max_data_lanes = 4,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_dw_dsi_chip_data rk3288_chip_data[] = {
 	{
 		.reg = 0xff960000,
@@ -1117,6 +1141,9 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 
 static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	{
+	 .compatible = "rockchip,px30-mipi-dsi",
+	 .data = &px30_chip_data,
+	}, {
 	 .compatible = "rockchip,rk3288-mipi-dsi",
 	 .data = &rk3288_chip_data,
 	}, {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
