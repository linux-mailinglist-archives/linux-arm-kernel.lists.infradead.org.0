Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E17F1F671A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=50Ehsib/E7BwKnR4SWXZSRwqArc3uHI4gjH4J/iurQk=; b=hi38skWkuUqLI1D4YZjSw5yLMV
	1bIxdieO1RHnr5Gb9lfzKlG+5PBUYQ1ofGKNqJMv0k1qIDk6KrKSXjjfaa7Ob8O06jNaY2CNrq8Cp
	FaFcdhWQgwq3dU3O8qoVhfaQMsntsAUpPkeX+0tAXRqJ+82srLik7FN4QaUnN8zPKKznAIaKRZYPY
	IpPCQN86L221K4TiIobkFsgu+P0di7MoShqwkyvRyhyP75ZAwEOLrjI60Te7dHv5enA2mTggfXKKv
	cdcK6Z68KqYexDvkWIWhHeTtK69Jenx/bsjbtyUjMz6zCsy0wpn8uN2GF8+drixPbbnwEBkBZ9IL8
	KVAEr66Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLff-0007Cs-PG; Thu, 11 Jun 2020 11:46:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLeh-0006XQ-Nx
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:46:01 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7FC192006D3;
 Thu, 11 Jun 2020 13:45:58 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F33662006CE;
 Thu, 11 Jun 2020 13:45:53 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1EF8D402D3;
 Thu, 11 Jun 2020 19:45:48 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 4/9] pinctrl: imx8mn: Support building as module
Date: Thu, 11 Jun 2020 19:34:50 +0800
Message-Id: <1591875295-19427-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_044559_916097_2D1127C6 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change configuration to "tristate", add module device table,
author, description and license to support building i.MX8MN
pinctrl driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V4:
	- remove unnecessary change of replacing arch_initcall() with module_platform_driver();
	- add module author and description;
	- add more details to commit message.
---
 drivers/pinctrl/freescale/Kconfig          | 2 +-
 drivers/pinctrl/freescale/pinctrl-imx8mn.c | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index 556adc3..fe3e49c 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -132,7 +132,7 @@ config PINCTRL_IMX8MM
 	  Say Y here to enable the imx8mm pinctrl driver
 
 config PINCTRL_IMX8MN
-	bool "IMX8MN pinctrl driver"
+	tristate "IMX8MN pinctrl driver"
 	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8mn.c b/drivers/pinctrl/freescale/pinctrl-imx8mn.c
index 100ed8c..14c9deb 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8mn.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8mn.c
@@ -5,6 +5,7 @@
 
 #include <linux/err.h>
 #include <linux/init.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/platform_device.h>
@@ -326,6 +327,7 @@ static const struct of_device_id imx8mn_pinctrl_of_match[] = {
 	{ .compatible = "fsl,imx8mn-iomuxc", .data = &imx8mn_pinctrl_info, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx8mn_pinctrl_of_match);
 
 static int imx8mn_pinctrl_probe(struct platform_device *pdev)
 {
@@ -346,3 +348,7 @@ static int __init imx8mn_pinctrl_init(void)
 	return platform_driver_register(&imx8mn_pinctrl_driver);
 }
 arch_initcall(imx8mn_pinctrl_init);
+
+MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
+MODULE_DESCRIPTION("NXP i.MX8MN pinctrl driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
