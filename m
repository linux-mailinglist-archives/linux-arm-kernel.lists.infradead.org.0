Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AB517232E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7prAsdm1TlgkN8pGinOX9JBfJ0W3buUfOtkiRSoWvwQ=; b=fl5gKde98WL6so
	t1NFEjjrK6J8rvnxwI6woNExye4i8U4RxTkskwzw646vl/Irf74ELqHnCnlQBJV8sAjo2feIPsUgq
	MxvTxRsOS0k/I7hkbuTnakL+uOO4mRwXEVwsVkMDDzgLL+TNYLFVYZWIv2zpOAzlQQSWt7VYwwXWG
	80vBLGFl1VShEWZG8V0UmvqoRHtmEkUErdTEqKuv7iWil2HyHAvnSNKBU5K+CtARcUDTnFQAwYlIT
	eherPTpfU9ptYpeRYz1DnkZje6RWUInAEOo8SZOUPDQtLINDua3zJtrauJ7Gt5yVXhSK4XoqF7cWw
	3xzyVgtcGgzMxUbt5D7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lwy-0002Sw-As; Thu, 27 Feb 2020 16:23:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lv0-00011M-Pt
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:21:48 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sO-8X; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007m8-9R; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 06/17] imx/drm: parallel-display: split attach function
Date: Thu, 27 Feb 2020 17:21:14 +0100
Message-Id: <20200227162125.10450-7-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200227_082146_846457_3A6AE102 
X-CRM114-Status: GOOD (  11.32  )
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

Split the maybe failing attach function from imx_pd_register() so we
can construct simple error paths later on.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/imx/parallel-display.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index a05808982f2f..78703b15c7cf 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -192,6 +192,16 @@ static int imx_pd_register(struct drm_device *drm,
 				   DRM_MODE_CONNECTOR_DPI);
 	}
 
+	return 0;
+}
+static int imx_pd_attach(struct drm_device *drm,
+			 struct imx_parallel_display *imxpd,
+			 struct imx_parallel_connector *imxpc)
+{
+	struct drm_encoder *encoder = &imxpd->encoder;
+	int ret;
+
+
 	if (imxpd->panel)
 		drm_panel_attach(imxpd->panel, &imxpc->connector);
 
@@ -261,7 +271,7 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	return 0;
+	return imx_pd_attach(drm, imxpd, imxpc);
 }
 
 static const struct component_ops imx_pd_ops = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
