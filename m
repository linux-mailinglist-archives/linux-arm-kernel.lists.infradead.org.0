Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C663F3C7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 01:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ed2HCZsNpQIVUvUZ3CPRnzFxR07a4tuPU9RQoOVwoZg=; b=ctTw1I2+rpUFQa
	R7rq41Eh7pqLluyUkGAqWwrqGeEww4jm6E8pLlamNkr8G5R/kPDqWJT8ynt8oqy1k0oNQuO4+ZUID
	s9nRtT24k7c0BDCU+leMS2iPFHnjwmKBCIethsn9yAsnEeHyEUaluMTlDa2Rud5Dc9norGgfVqvoo
	sFnHvdDbGUVowdLKJjTX4bcTBQpk9UpPIZ27TrQKqSPsvDLeSBnUuI/Cq7CDexXxSsqEBU5CszgnE
	aGxoGuFRBHG//SHlwSXg/tnUCZbDWB+tKLFAdHd1FnDJYG69scxh5SRvXvPMUETC/Bq/NF5Gj9iPO
	/cGzeZ4ysZz0n+tCnyEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrlf-0007fS-0V; Fri, 08 Nov 2019 00:04:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrkE-0006P1-6H; Fri, 08 Nov 2019 00:03:22 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrk1-00065H-HQ; Fri, 08 Nov 2019 01:03:05 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com
Subject: [PATCH v2 3/5] drm/rockchip: add ability to handle external dphys in
 mipi-dsi
Date: Fri,  8 Nov 2019 01:02:51 +0100
Message-Id: <20191108000253.8560-4-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160318_409030_E632B655 
X-CRM114-Status: GOOD (  17.21  )
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

While the common case is that the dsi controller uses an internal dphy,
accessed through the phy registers inside the dsi controller, there is
also the possibility to use a separate dphy from a different vendor.

One such case is the Rockchip px30 that uses a Innosilicon Mipi dphy,
so add the support for handling such a constellation, including the pll
also getting generated inside that external phy.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 68 +++++++++++++++++--
 1 file changed, 64 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index bc073ec5c183..1e6578f911a0 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/phy/phy.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
@@ -223,6 +224,10 @@ struct dw_mipi_dsi_rockchip {
 	bool is_slave;
 	struct dw_mipi_dsi_rockchip *slave;
 
+	/* optional external dphy */
+	struct phy *phy;
+	union phy_configure_opts phy_opts;
+
 	unsigned int lane_mbps; /* per lane */
 	u16 input_div;
 	u16 feedback_div;
@@ -359,6 +364,9 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 	struct dw_mipi_dsi_rockchip *dsi = priv_data;
 	int ret, i, vco;
 
+	if (dsi->phy)
+		return 0;
+
 	/*
 	 * Get vco from frequency(lane_mbps)
 	 * vco	frequency table
@@ -467,6 +475,28 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 	return ret;
 }
 
+static void dw_mipi_dsi_phy_power_on(void *priv_data)
+{
+	struct dw_mipi_dsi_rockchip *dsi = priv_data;
+	int ret;
+
+	ret = phy_set_mode(dsi->phy, PHY_MODE_MIPI_DPHY);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "failed to set phy mode: %d\n", ret);
+		return;
+	}
+
+	phy_configure(dsi->phy, &dsi->phy_opts);
+	phy_power_on(dsi->phy);
+}
+
+static void dw_mipi_dsi_phy_power_off(void *priv_data)
+{
+	struct dw_mipi_dsi_rockchip *dsi = priv_data;
+
+	phy_power_off(dsi->phy);
+}
+
 static int
 dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 			  unsigned long mode_flags, u32 lanes, u32 format,
@@ -504,6 +534,17 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 				      "DPHY clock frequency is out of range\n");
 	}
 
+	/* for external phy only a the mipi_dphy_config is necessary */
+	if (dsi->phy) {
+		phy_mipi_dphy_get_default_config(mode->clock * 1000 * 10 / 8,
+						 bpp, lanes,
+						 &dsi->phy_opts.mipi_dphy);
+		dsi->lane_mbps = target_mbps;
+		*lane_mbps = dsi->lane_mbps;
+
+		return 0;
+	}
+
 	fin = clk_get_rate(dsi->pllref_clk);
 	fout = target_mbps * USEC_PER_SEC;
 
@@ -561,6 +602,8 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 
 static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
 	.init = dw_mipi_dsi_phy_init,
+	.power_on = dw_mipi_dsi_phy_power_on,
+	.power_off = dw_mipi_dsi_phy_power_off,
 	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
 };
 
@@ -920,12 +963,29 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	/* try to get a possible external dphy */
+	dsi->phy = devm_phy_optional_get(dev, "dphy");
+	if (IS_ERR(dsi->phy)) {
+		ret = PTR_ERR(dsi->phy);
+		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
+		return ret;
+	}
+
 	dsi->pllref_clk = devm_clk_get(dev, "ref");
 	if (IS_ERR(dsi->pllref_clk)) {
-		ret = PTR_ERR(dsi->pllref_clk);
-		DRM_DEV_ERROR(dev,
-			      "Unable to get pll reference clock: %d\n", ret);
-		return ret;
+		if (dsi->phy) {
+			/*
+			 * if external phy is present, pll will be
+			 * generated there.
+			 */
+			dsi->pllref_clk = NULL;
+		} else {
+			ret = PTR_ERR(dsi->pllref_clk);
+			DRM_DEV_ERROR(dev,
+				      "Unable to get pll reference clock: %d\n",
+				      ret);
+			return ret;
+		}
 	}
 
 	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
