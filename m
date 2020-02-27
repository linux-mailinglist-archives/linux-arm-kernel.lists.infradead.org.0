Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8B5172333
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRhTiuS8GyGFGqu4ZoSF/QuPME6bzgJh4RRMubsXEI8=; b=d5hrjkBPHmENdo
	M+ZwY56p3n0TTP5+2E6G/BG8CDrGfWaMxKHG1yJYApwhDiE8y4wZ4/7VIfVPwG6yzHx2arVkbzfFQ
	hFAdfjeoSeu49QmR+YBtz8uCBYFO5+n5n2LD0IDdJndQ8nA+XUi+9uns2Kp25Bm3rHBsXVFBUQImA
	pW2/skszAb6V0lc9RCaD/gxk/hDudidqF+C5xWP7cl1bN950ijf4PuCp09IaYVZuEKlCHgDjOPpmR
	ESjr96GnWT/EB3wZum3l3Qy2Eya0VPGnGcDYlrFMdAMzYOxTCsh7TNWjF+baZxe2Et8KGHk4np7Yp
	UeDV92YCiUZzqwvj6rqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lxm-0003Og-A9; Thu, 27 Feb 2020 16:24:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lv9-00019v-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:21:57 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sM-8a; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007k0-6T; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 04/17] drm/imx: parallel-display: detach panel within
 drm_encoder destroy
Date: Thu, 27 Feb 2020 17:21:12 +0100
Message-Id: <20200227162125.10450-5-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200227_082155_172939_2FCFE04D 
X-CRM114-Status: GOOD (  12.05  )
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

There is no reason why this should be done within the
component.unbind() call so let the drm-core do the cleanup during a
drm_mode_config_cleanup() call.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/gpu/drm/imx/parallel-display.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 6ee028faa9a8..e731b19fd6b2 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -81,6 +81,15 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	return num_modes;
 }
 
+static void imx_pd_encoder_destroy(struct drm_encoder *encoder)
+{
+	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
+
+	if (imxpd->panel)
+		drm_panel_detach(imxpd->panel);
+	drm_encoder_cleanup(encoder);
+}
+
 static void imx_pd_encoder_enable(struct drm_encoder *encoder)
 {
 	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
@@ -131,7 +140,7 @@ static const struct drm_connector_helper_funcs imx_pd_connector_helper_funcs = {
 };
 
 static const struct drm_encoder_funcs imx_pd_encoder_funcs = {
-	.destroy = imx_drm_encoder_destroy,
+	.destroy = imx_pd_encoder_destroy,
 };
 
 static const struct drm_encoder_helper_funcs imx_pd_encoder_helper_funcs = {
@@ -230,23 +239,11 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	dev_set_drvdata(dev, imxpd);
-
 	return 0;
 }
 
-static void imx_pd_unbind(struct device *dev, struct device *master,
-	void *data)
-{
-	struct imx_parallel_display *imxpd = dev_get_drvdata(dev);
-
-	if (imxpd->panel)
-		drm_panel_detach(imxpd->panel);
-}
-
 static const struct component_ops imx_pd_ops = {
 	.bind	= imx_pd_bind,
-	.unbind	= imx_pd_unbind,
 };
 
 static int imx_pd_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
