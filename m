Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA1D1F500C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FEQPnE1QUV7TjS4nWZDC6b6qxYM5NtOqURz0kbqn8XE=; b=cXuxquq6LbrFvRkmLjJ/UNZevV
	IpzmPxoWOWKv9JeMTXnCm/zj4AxM/dK39IBzuju4dyc8qKMO3I/rLUs9nBa34Og/6nnCUMiJ/jh6O
	dAbo2Z+hQoOVAOX2fvuq1W4Gv6dL/XvG5tw4JPsY988wF0UeQNiOhNx26kj36LN1VJckmwG5c/yam
	kAoMANPGok74/KdLUaxGSfdhjyURnyo6pP8N++2IYCdL3JrT3d7arBbEfbHch3hIPq6WfSf6UOCKO
	dV9QNoR5t9tgBB+dvWkCotbSw1KLLhJoE2CcamUX8twHvd2YfYo9CO/iquNBYX5auRjE8x2MVsTB+
	9mnHmxGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivol-0004wA-4B; Wed, 10 Jun 2020 08:10:39 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivmz-0001Im-0e
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:08:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9979C1A1508;
 Wed, 10 Jun 2020 10:08:47 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 17CCB1A1502;
 Wed, 10 Jun 2020 10:08:43 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1FF0B402BF;
 Wed, 10 Jun 2020 16:08:37 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 5/9] pinctrl: imx8mq: Support building as module
Date: Wed, 10 Jun 2020 15:57:41 +0800
Message-Id: <1591775865-26872-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
References: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_010849_239132_F97BEB2D 
X-CRM114-Status: UNSURE (   9.16  )
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

Support building i.MX8MQ pinctrl driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 drivers/pinctrl/freescale/Kconfig          | 2 +-
 drivers/pinctrl/freescale/pinctrl-imx8mq.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index fe3e49c..968c1e9 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -146,7 +146,7 @@ config PINCTRL_IMX8MP
 	  Say Y here to enable the imx8mp pinctrl driver
 
 config PINCTRL_IMX8MQ
-	bool "IMX8MQ pinctrl driver"
+	tristate "IMX8MQ pinctrl driver"
 	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8mq.c b/drivers/pinctrl/freescale/pinctrl-imx8mq.c
index 50aa1c0..db5b41a 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8mq.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8mq.c
@@ -8,6 +8,7 @@
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/io.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/pinctrl/pinctrl.h>
@@ -329,6 +330,7 @@ static const struct of_device_id imx8mq_pinctrl_of_match[] = {
 	{ .compatible = "fsl,imx8mq-iomuxc", .data = &imx8mq_pinctrl_info, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx8mq_pinctrl_of_match);
 
 static int imx8mq_pinctrl_probe(struct platform_device *pdev)
 {
@@ -345,8 +347,5 @@ static struct platform_driver imx8mq_pinctrl_driver = {
 	.probe = imx8mq_pinctrl_probe,
 };
 
-static int __init imx8mq_pinctrl_init(void)
-{
-	return platform_driver_register(&imx8mq_pinctrl_driver);
-}
-arch_initcall(imx8mq_pinctrl_init);
+module_platform_driver(imx8mq_pinctrl_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
