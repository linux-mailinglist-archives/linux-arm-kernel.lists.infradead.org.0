Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7CEF3C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 01:04:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/F2XyAnKW52TBAIR26+wVW6b7V8NzYEPzpFGV1UJoo=; b=oZGk73+iaBO+5n
	V7UtkWgUSXV/LkN7V+sEuGrNv4PS9+UeUB8AS98MgTpHqjgJSplCjDSHvmlZ6fOR7/2wNW1YGYxiA
	BFdBpNqNUcxUO838OCcgAcNTzcTCwyiAKB/ScezLP2bAksl6qQ9xmfbA80XTL0AtRv1qnJAta/hyc
	kljHramlIjK0FxvdRCjQjs2nyO3NJgItLJRlvkk6zQdX5uOl0RGQFOMsnBzNUQSjTpEmL/taO79ON
	+8/V6DLkWQyOAN8pD+44WueyC7meopzBipgNQhrCPyG8F6B6F9SNeR74qC9nwG7V8QWP5TdbmNVMT
	2KcUG7VJ7ODO9oWAEobA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrl0-0006yJ-A1; Fri, 08 Nov 2019 00:04:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrkE-0006P3-Du; Fri, 08 Nov 2019 00:03:22 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrk0-00065H-8a; Fri, 08 Nov 2019 01:03:04 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com
Subject: [PATCH v2 1/5] drm/bridge/synopsys: dsi: move phy_ops callbacks
 around panel enablement
Date: Fri,  8 Nov 2019 01:02:49 +0100
Message-Id: <20191108000253.8560-2-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160318_630786_DF47612F 
X-CRM114-Status: GOOD (  10.49  )
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

If implementation-specific phy_ops need to be defined they probably
should be enabled before trying to talk to the panel and disabled only
after the panel was disabled.

Right now they are enabled last and disabled first, so might make it
impossible to talk to some panels - example for this being the px30
with an external Innosilicon dphy that needs the phy to be enabled
to transfer commands to the panel.

So move the calls appropriately.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 675442bfc1bd..49f5600a1dea 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -797,9 +797,6 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
 	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
 	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
 
-	if (phy_ops->power_off)
-		phy_ops->power_off(dsi->plat_data->priv_data);
-
 	/*
 	 * Switch to command mode before panel-bridge post_disable &
 	 * panel unprepare.
@@ -816,6 +813,9 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
 	 */
 	dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
 
+	if (phy_ops->power_off)
+		phy_ops->power_off(dsi->plat_data->priv_data);
+
 	if (dsi->slave) {
 		dw_mipi_dsi_disable(dsi->slave);
 		clk_disable_unprepare(dsi->slave->pclk);
@@ -882,6 +882,9 @@ static void dw_mipi_dsi_mode_set(struct dw_mipi_dsi *dsi,
 
 	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
 	dw_mipi_dsi_set_mode(dsi, 0);
+
+	if (phy_ops->power_on)
+		phy_ops->power_on(dsi->plat_data->priv_data);
 }
 
 static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
@@ -898,15 +901,11 @@ static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
 static void dw_mipi_dsi_bridge_enable(struct drm_bridge *bridge)
 {
 	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
-	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
 
 	/* Switch to video mode for panel-bridge enable & panel enable */
 	dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
 	if (dsi->slave)
 		dw_mipi_dsi_set_mode(dsi->slave, MIPI_DSI_MODE_VIDEO);
-
-	if (phy_ops->power_on)
-		phy_ops->power_on(dsi->plat_data->priv_data);
 }
 
 static enum drm_mode_status
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
