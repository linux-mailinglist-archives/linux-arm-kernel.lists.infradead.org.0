Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED1017234A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brTaWwJrqq1c5CM0yRAi4VD+82/irUGWm5yHQ2yjvZg=; b=Vfso4Squ9Dca6J
	Vezd4P8by1LTMRIVSQJXjMBoxUYBnfsZJI+ObfLfeZaIAZEzUFPXWMqGCSz1+dmSlFXJCGEaXW04g
	rvWWY0ArSAXdX7N/1YoB9dmEswVMndUZIbzU0h83mrx2tJh1XDRNKdEYV39J5ASigr3+1wrw73J3L
	9W5bLdwpmommZaNxNH+Qmah7xoikjTdCYzoSU0fTg+d/abTS2tDXlzB5h7mL0ecdTA7Q0d5N+DQGN
	lHvPvN4uMfHXa9nycX88oMNSgkCDCZSTxRcsiJkA3Fg+0qLZBSxceVQ86piC8j2cTlcK7kF51WVpd
	X+Iqe4v5gANE4cd7EKKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lye-0004Vp-S3; Thu, 27 Feb 2020 16:25:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7LvP-0001P0-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:22:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sW-8d; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-00080G-PZ; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 14/17] drm/imx: imx-ldb: add ldb_is_dual helper
Date: Thu, 27 Feb 2020 17:21:22 +0100
Message-Id: <20200227162125.10450-15-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227162125.10450-1-m.felsch@pengutronix.de>
References: <20200227162125.10450-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_082211_325139_16732189 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There where several places where this bit operation is made. Add a
simple helper so we don't need to remember the bit each time.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/imx/imx-ldb.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index e3fa46e1639d..5ef9fcb9ae94 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -95,11 +95,16 @@ struct imx_ldb {
 	const struct bus_mux *lvds_mux;
 };
 
+static inline int imx_ldb_is_dual(struct imx_ldb *ldb)
+{
+	return ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
+}
+
 static void imx_ldb_ch_set_bus_format(struct imx_ldb_channel *imx_ldb_ch,
 				      u32 bus_format)
 {
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
-	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
+	int dual = imx_ldb_is_dual(ldb);
 
 	switch (bus_format) {
 	case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG:
@@ -196,7 +201,7 @@ static void imx_ldb_encoder_enable(struct drm_encoder *encoder)
 {
 	struct imx_ldb_channel *imx_ldb_ch = enc_to_imx_ldb_ch(encoder);
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
-	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
+	int dual = imx_ldb_is_dual(ldb);
 	int mux = drm_of_encoder_active_port_id(imx_ldb_ch->child, encoder);
 
 	drm_panel_prepare(imx_ldb_ch->panel);
@@ -251,7 +256,7 @@ imx_ldb_encoder_atomic_mode_set(struct drm_encoder *encoder,
 	struct imx_ldb_channel *imx_ldb_ch = enc_to_imx_ldb_ch(encoder);
 	struct drm_display_mode *mode = &crtc_state->adjusted_mode;
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
-	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
+	int dual = imx_ldb_is_dual(ldb);
 	unsigned long serial_clk;
 	unsigned long di_clk = mode->clock * 1000;
 	int mux = drm_of_encoder_active_port_id(imx_ldb_ch->child, encoder);
@@ -315,7 +320,7 @@ static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
 
 	regmap_write(ldb->regmap, IOMUXC_GPR2, ldb->ldb_ctrl);
 
-	if (ldb->ldb_ctrl & LDB_SPLIT_MODE_EN) {
+	if (imx_ldb_is_dual(ldb)) {
 		clk_disable_unprepare(ldb->clk[0]);
 		clk_disable_unprepare(ldb->clk[1]);
 	}
@@ -434,7 +439,7 @@ static int imx_ldb_register(struct drm_device *drm,
 	if (ret)
 		return ret;
 
-	if (ldb->ldb_ctrl & LDB_SPLIT_MODE_EN) {
+	if (imx_ldb_is_dual(ldb)) {
 		ret = imx_ldb_get_clk(ldb, 1);
 		if (ret)
 			return ret;
@@ -557,7 +562,7 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 	struct drm_device *drm = data;
 	struct device_node *np = dev->of_node;
 	struct imx_ldb *imx_ldb = dev_get_drvdata(dev);
-	int dual = imx_ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
+	int dual = imx_ldb_is_dual(imx_ldb);
 	struct device_node *child;
 	int ret;
 	int i;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
