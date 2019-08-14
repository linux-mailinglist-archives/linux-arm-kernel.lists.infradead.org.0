Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802AD8CE4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lYslKuiCy3NBQHcm65P0cm5yQtABY8YmY/tWjA58wjY=; b=HecI8JypPfzDDq
	tKbrUaD/1ttXRTH84tOjT3Bcmu9F5p0Pmr7Rlydd3nCbZFgcIJJoeN9y+Qt3kJP2ph7JDrVCPGQZX
	loybRkWUuQP7uHpO2B+SUZTHfZlLHogbRCPueklGl+A74nSxDUsH016PSfPrGnyn9BRMlXeLzkEZ0
	VMAXdi47LmK/4HQSfcyy8p8gWqMiFCJeQ2pj9QTWE01cRI20OrIiss+/pFld8wV5ugIaUmUgv2p78
	N9gIIIZUtR4oeZZjaG3oZVn0EnQpPNM9e0H6UuPQon8Z1fFUlCy+QRGancAfM6yxhLXaKXOPe8FcI
	nGqqARNV6QLLyHWx7vGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoZD-000236-QL; Wed, 14 Aug 2019 08:23:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoYy-00022P-VF
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:23:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxoYx-00024z-Kg; Wed, 14 Aug 2019 10:23:19 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxoYx-0007u3-8v; Wed, 14 Aug 2019 10:23:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] bus: imx-weim: module_platform_driver()
Date: Wed, 14 Aug 2019 10:23:16 +0200
Message-Id: <20190814082316.30300-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012321_002146_A9E74E77 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch from module_platform_driver_probe() to module_platform_driver().
The former is not suitable for booting with device tree as the driver
will be registered before the device and thus won't be probed again
when the device is present.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/bus/imx-weim.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index db74334ca5ef..8a9f8a4328c2 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -183,8 +183,7 @@ static int __init weim_timing_setup(struct device *dev,
 	return 0;
 }
 
-static int __init weim_parse_dt(struct platform_device *pdev,
-				void __iomem *base)
+static int weim_parse_dt(struct platform_device *pdev, void __iomem *base)
 {
 	const struct of_device_id *of_id = of_match_device(weim_id_table,
 							   &pdev->dev);
@@ -217,7 +216,7 @@ static int __init weim_parse_dt(struct platform_device *pdev,
 	return ret;
 }
 
-static int __init weim_probe(struct platform_device *pdev)
+static int weim_probe(struct platform_device *pdev)
 {
 	struct resource *res;
 	struct clk *clk;
@@ -254,8 +253,9 @@ static struct platform_driver weim_driver = {
 		.name		= "imx-weim",
 		.of_match_table	= weim_id_table,
 	},
+	.probe = weim_probe,
 };
-module_platform_driver_probe(weim_driver, weim_probe);
+module_platform_driver(weim_driver);
 
 MODULE_AUTHOR("Freescale Semiconductor Inc.");
 MODULE_DESCRIPTION("i.MX EIM Controller Driver");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
