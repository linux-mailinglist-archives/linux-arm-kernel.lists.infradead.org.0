Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF941F680F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LA2kMcE5N4LBPSlsMl1Q5T35jpIGsyMTQ94ipTOLMc8=; b=nabtaWAszt1cWr
	bon9qsiljAG7gSMkBc1Rr4uyhrcbjVsC6iEgsgBwTXEiANjGx+n5CG5AipFiEwV1G8FlVntuLV0jX
	Uv9tkyckdf8MqVYI18Dgq3+rAa5ReFBb8PLsekzpmlbXrDBmOlXjErcSbmKpgoXeHiwZ9hzKT4Kqp
	KVvHA4B1fFub9K8ajyhf9+QVOZhw40cB3U32EfbFlt8xJIQtme11hURPz3E+HHXwX60dXKiDhmQ6H
	6MsuSp8JnldehZW74yPXnEsRJoxoj+cG8Th9mgHdxKKF+Glx+b8Nw0vZuFbkIwKieY2Q64z/WK1lg
	xPkyhQUkmuobUOwp/Zrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMZ4-0002KA-Mt; Thu, 11 Jun 2020 12:44:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMYe-0002AE-Ks
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:43:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jjMYV-0004eU-F1; Thu, 11 Jun 2020 14:43:39 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jjMYT-0005Qx-7n; Thu, 11 Jun 2020 14:43:37 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 2/2] drm/imx: tve: fix regulator_disable error path
Date: Thu, 11 Jun 2020 14:43:32 +0200
Message-Id: <20200611124332.20819-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200611124332.20819-1-m.felsch@pengutronix.de>
References: <20200611124332.20819-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_054348_768401_5F260D4B 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing regulator_disable() as devm_action to avoid dedicated
unbind() callback and fix the missing error handling.

Fixes: fcbc51e54d2a ("staging: drm/imx: Add support for Television Encoder (TVEv2)")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Note: This patch depends on: 14422f14da81 ("component: allow missing
unbind callback")

 drivers/gpu/drm/imx/imx-tve.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
index 9fd4b464e829..f91c3eb7697b 100644
--- a/drivers/gpu/drm/imx/imx-tve.c
+++ b/drivers/gpu/drm/imx/imx-tve.c
@@ -494,6 +494,13 @@ static int imx_tve_register(struct drm_device *drm, struct imx_tve *tve)
 	return 0;
 }
 
+static void imx_tve_disable_regulator(void *data)
+{
+	struct imx_tve *tve = data;
+
+	regulator_disable(tve->dac_reg);
+}
+
 static bool imx_tve_readable_reg(struct device *dev, unsigned int reg)
 {
 	return (reg % 4 == 0) && (reg <= 0xdc);
@@ -617,6 +624,9 @@ static int imx_tve_bind(struct device *dev, struct device *master, void *data)
 		ret = regulator_enable(tve->dac_reg);
 		if (ret)
 			return ret;
+		ret = devm_add_action_or_reset(dev, imx_tve_disable_regulator, tve);
+		if (ret)
+			return ret;
 	}
 
 	tve->clk = devm_clk_get(dev, "tve");
@@ -661,18 +671,8 @@ static int imx_tve_bind(struct device *dev, struct device *master, void *data)
 	return 0;
 }
 
-static void imx_tve_unbind(struct device *dev, struct device *master,
-	void *data)
-{
-	struct imx_tve *tve = dev_get_drvdata(dev);
-
-	if (!IS_ERR(tve->dac_reg))
-		regulator_disable(tve->dac_reg);
-}
-
 static const struct component_ops imx_tve_ops = {
 	.bind	= imx_tve_bind,
-	.unbind	= imx_tve_unbind,
 };
 
 static int imx_tve_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
