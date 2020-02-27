Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BFA17231E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1W/yIaVMDYXWzs+UTXQVn0ptzq9n6Fz8Ci77dF99mQk=; b=BWZYX5iRP8Ykjn
	oFu1jdB+CRuQyqOaI295mqeVWwHt7GkcHKo5WNHVBd0YwyCeaGhYyZyZGwUifOC9EIXBpGOAjvSYl
	R7JJOTpBH9F+Lt1gG+cQop8TplYdJ7+IGE4zANoZ5eHUS9JKx+Al43c5mvqQWXTTfV3xyWDCrp5qu
	Xjms9UDAuGCiZUMv5l6nx62CqeSP9DWtPG7zvWimuANOKdl4OiSbEPXCkjxjiACGbIef7O0tjwaWT
	reUP6AGc0naxrojaQpIKH/WP/9XlJi81BqQDfwsWayxgCHqxPm6OUCVXXQTwYNw7KA55ey91x+zqS
	XTuEiwg4SWOCdlFHobRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lvo-0001VC-BM; Thu, 27 Feb 2020 16:22:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Luu-0000wC-6t
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:21:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sJ-8X; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007hd-2z; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 01/17] drm/imx: drop useless best_encoder callback
Date: Thu, 27 Feb 2020 17:21:09 +0100
Message-Id: <20200227162125.10450-2-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200227_082140_256115_588FD207 
X-CRM114-Status: GOOD (  10.76  )
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

The best_encoder() callback is used by the drm-core to find an encoder
if the connector is connected to multiple encoders but the parallel, tve
and ldb uses always the 1-encoder : 1-connector setup. Such a simple
setup can be handled by the drm-core.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/gpu/drm/imx/imx-ldb.c          | 9 ---------
 drivers/gpu/drm/imx/imx-tve.c          | 9 ---------
 drivers/gpu/drm/imx/parallel-display.c | 9 ---------
 3 files changed, 27 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 8cb2665b2c74..cd399058b00e 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -155,14 +155,6 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	return num_modes;
 }
 
-static struct drm_encoder *imx_ldb_connector_best_encoder(
-		struct drm_connector *connector)
-{
-	struct imx_ldb_channel *imx_ldb_ch = con_to_imx_ldb_ch(connector);
-
-	return &imx_ldb_ch->encoder;
-}
-
 static void imx_ldb_set_clock(struct imx_ldb *ldb, int mux, int chno,
 		unsigned long serial_clk, unsigned long di_clk)
 {
@@ -390,7 +382,6 @@ static const struct drm_connector_funcs imx_ldb_connector_funcs = {
 
 static const struct drm_connector_helper_funcs imx_ldb_connector_helper_funcs = {
 	.get_modes = imx_ldb_connector_get_modes,
-	.best_encoder = imx_ldb_connector_best_encoder,
 };
 
 static const struct drm_encoder_funcs imx_ldb_encoder_funcs = {
diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
index 5bbfaa2cd0f4..e113014a1a79 100644
--- a/drivers/gpu/drm/imx/imx-tve.c
+++ b/drivers/gpu/drm/imx/imx-tve.c
@@ -259,14 +259,6 @@ static int imx_tve_connector_mode_valid(struct drm_connector *connector,
 	return MODE_BAD;
 }
 
-static struct drm_encoder *imx_tve_connector_best_encoder(
-		struct drm_connector *connector)
-{
-	struct imx_tve *tve = con_to_tve(connector);
-
-	return &tve->encoder;
-}
-
 static void imx_tve_encoder_mode_set(struct drm_encoder *encoder,
 				     struct drm_display_mode *orig_mode,
 				     struct drm_display_mode *mode)
@@ -344,7 +336,6 @@ static const struct drm_connector_funcs imx_tve_connector_funcs = {
 
 static const struct drm_connector_helper_funcs imx_tve_connector_helper_funcs = {
 	.get_modes = imx_tve_connector_get_modes,
-	.best_encoder = imx_tve_connector_best_encoder,
 	.mode_valid = imx_tve_connector_mode_valid,
 };
 
diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 3dca424059f7..b2dbf0bc4cdc 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -81,14 +81,6 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	return num_modes;
 }
 
-static struct drm_encoder *imx_pd_connector_best_encoder(
-		struct drm_connector *connector)
-{
-	struct imx_parallel_display *imxpd = con_to_imxpd(connector);
-
-	return &imxpd->encoder;
-}
-
 static void imx_pd_encoder_enable(struct drm_encoder *encoder)
 {
 	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
@@ -136,7 +128,6 @@ static const struct drm_connector_funcs imx_pd_connector_funcs = {
 
 static const struct drm_connector_helper_funcs imx_pd_connector_helper_funcs = {
 	.get_modes = imx_pd_connector_get_modes,
-	.best_encoder = imx_pd_connector_best_encoder,
 };
 
 static const struct drm_encoder_funcs imx_pd_encoder_funcs = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
