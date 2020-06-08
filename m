Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A101F1B63
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d8l8Kt6pJNXH5B+iJ3t7OJKdnIv6Aek+NMxOLpISECs=; b=Yd6icoIloI5S9t3/PHgMQ2VBd/
	1SdRC0Rg+LFSIKt5kLgIOeLgud2mYKu5IRxni3hN11NTSoSicKj9uPZnyVGM5wi/MSEoB3W7eCihc
	BZjj0BUE+uRvmM0w7eekZ4Oidh1bnyhla6waOaXVkGKwOb8yPWRQmMlEx0aZ0JiYM9iEAd9XUFzVv
	2MJh6Os/Ygx3HlXj8t8pgESFPa/+gbJcHHAU9EyjqQmzFhRKJSosA61z503s+D8AwjMeqYvEmJdol
	c5CB7jX355UXQ3yPfIDvYBmRuvzXjdh6xuPH35N6GzFsQ/m6Un20zFkHrdiK1daTpBvnChkWD2sfp
	IWIgVnIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJ5l-0001Js-BP; Mon, 08 Jun 2020 14:49:37 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJ4a-0007zt-9u
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:48:25 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 056A11A1097;
 Mon,  8 Jun 2020 16:48:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7A2361A105F;
 Mon,  8 Jun 2020 16:48:18 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9B41D402FB;
 Mon,  8 Jun 2020 22:48:12 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 3/9] pinctrl: imx8mm: Support building as module
Date: Mon,  8 Jun 2020 22:37:30 +0800
Message-Id: <1591627056-19022-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591627056-19022-1-git-send-email-Anson.Huang@nxp.com>
References: <1591627056-19022-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_074824_500676_6519BB74 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support building i.MX8MM pinctrl driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 drivers/pinctrl/freescale/Kconfig          |  2 +-
 drivers/pinctrl/freescale/pinctrl-imx8mm.c | 10 ++++------
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index 58d48df..baa7e70 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -124,7 +124,7 @@ config PINCTRL_IMX7ULP
 	  Say Y here to enable the imx7ulp pinctrl driver
 
 config PINCTRL_IMX8MM
-	bool "IMX8MM pinctrl driver"
+	tristate "IMX8MM pinctrl driver"
 	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8mm.c b/drivers/pinctrl/freescale/pinctrl-imx8mm.c
index 6d1038a..eca1424 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8mm.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8mm.c
@@ -5,6 +5,7 @@
 
 #include <linux/err.h>
 #include <linux/init.h>
+#include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/platform_device.h>
@@ -326,6 +327,7 @@ static const struct of_device_id imx8mm_pinctrl_of_match[] = {
 	{ .compatible = "fsl,imx8mm-iomuxc", .data = &imx8mm_pinctrl_info, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx8mm_pinctrl_of_match);
 
 static int imx8mm_pinctrl_probe(struct platform_device *pdev)
 {
@@ -340,9 +342,5 @@ static struct platform_driver imx8mm_pinctrl_driver = {
 	},
 	.probe = imx8mm_pinctrl_probe,
 };
-
-static int __init imx8mm_pinctrl_init(void)
-{
-	return platform_driver_register(&imx8mm_pinctrl_driver);
-}
-arch_initcall(imx8mm_pinctrl_init);
+module_platform_driver(imx8mm_pinctrl_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
