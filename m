Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A842E172330
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8v857zTZJN29fB0cnfnz4iyhjR7kg9wJEzJJnTFYb4=; b=gXGSnI5wh3LZKQ
	nA/Bsg05+uNUCMz83x36JYGO6++ysM5d+d+r/dKhMVkW3EXMtea13S/6vM6nhJR+bm2TCI90vR34i
	JKUpjnDlMY5SaWy5eU9AaSUSUWdDAlXbSjEg7zJAhPindi0Zr0z/Ow9P/tNuEQ9xj7w80dDhkmVAt
	mQOOy7+7VjAdkGumWudJUKE3wMpoTAt3leveosLfRINIKXsz3i2pmDwm9L6pWhKgMwuXQ4z7tjRGL
	IzbdAXrYz07g5FeNsabM7akVY59BV7Zb3hMIANgOywFwcZFskHOlmo9RmkUHz+3bZslXqTdOqQuRc
	q9p1wYJXDMEtQXZzzuVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7LxO-0002xb-5w; Thu, 27 Feb 2020 16:24:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lv4-00015Y-K5
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:21:51 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luq-0001sT-2X; Thu, 27 Feb 2020 17:21:36 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007w0-J7; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 11/17] drm/imx: imx-ldb: release ldb-channel resources within
 encoder destroy
Date: Thu, 27 Feb 2020 17:21:19 +0100
Message-Id: <20200227162125.10450-12-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200227_082150_695607_A4912BAB 
X-CRM114-Status: GOOD (  12.27  )
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

There is no reason why the resoruces should be freed manually within the
component.unbind() call instead it is easier to use the drm-core destroy
helper. The destroy helper gets called for each registered encoder
during a drm_mode_config_cleanup() call.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/imx/imx-ldb.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 06b435f9b6c9..87bf659990da 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -155,6 +155,16 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	return num_modes;
 }
 
+static void imx_ldb_encoder_destroy(struct drm_encoder *encoder)
+{
+	struct imx_ldb_channel *channel = enc_to_imx_ldb_ch(encoder);
+
+	if (channel->panel)
+		drm_panel_detach(channel->panel);
+	drm_encoder_cleanup(encoder);
+	i2c_put_adapter(channel->ddc);
+}
+
 static void imx_ldb_set_clock(struct imx_ldb *ldb, int mux, int chno,
 		unsigned long serial_clk, unsigned long di_clk)
 {
@@ -385,7 +395,7 @@ static const struct drm_connector_helper_funcs imx_ldb_connector_helper_funcs =
 };
 
 static const struct drm_encoder_funcs imx_ldb_encoder_funcs = {
-	.destroy = imx_drm_encoder_destroy,
+	.destroy = imx_ldb_encoder_destroy,
 };
 
 static const struct drm_encoder_helper_funcs imx_ldb_encoder_helper_funcs = {
@@ -699,25 +709,8 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 	return ret;
 }
 
-static void imx_ldb_unbind(struct device *dev, struct device *master,
-	void *data)
-{
-	struct imx_ldb *imx_ldb = dev_get_drvdata(dev);
-	int i;
-
-	for (i = 0; i < 2; i++) {
-		struct imx_ldb_channel *channel = &imx_ldb->channel[i];
-
-		if (channel->panel)
-			drm_panel_detach(channel->panel);
-
-		i2c_put_adapter(channel->ddc);
-	}
-}
-
 static const struct component_ops imx_ldb_ops = {
 	.bind	= imx_ldb_bind,
-	.unbind	= imx_ldb_unbind,
 };
 
 static int imx_ldb_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
