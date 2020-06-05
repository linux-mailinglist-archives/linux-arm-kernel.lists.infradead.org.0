Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6601EF18C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G8YKVFE1p8zYoK/IqqG09Grmy24QCwb3bFNgb56CxkY=; b=SJfG9b0osTazFAfjobVbXMoC+R
	gQraItU9808kbck1IwkbF3GeAkxuaNrm4dzKYTahR+8nS9A7pYF6MUhA1Px9l13DQSOIeuc81Uq4x
	aWtu5kBsutmVn38IcCtwtChBCyuxhnVKSpDoutaVPdnvE3m38Ezr8dgjG1AcOZE/NfaDJ3qvU3s7p
	0R94AjlLsPH99pYN9Gixd9zDgMBLRLGTUzQlopWMUoR9aKH9xBTh/pqM/vuaguMPGn+ip7agZMQsi
	vDMc2vNm5NFTs6hc2pmjHRwg3JXjOHwI3WOQjr83xyOdMpj4XDxjguaqU50rpy0oWTEpsmArEAbgk
	qnxVXX6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh67s-0004WF-D3; Fri, 05 Jun 2020 06:46:48 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh66P-00037A-6i
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 06:45:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DBAC21A1EF2;
 Fri,  5 Jun 2020 08:45:15 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5BFC31A1EF0;
 Fri,  5 Jun 2020 08:45:11 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 39F7840324;
 Fri,  5 Jun 2020 14:45:05 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] pinctrl: imx8mp: Support building as module
Date: Fri,  5 Jun 2020 14:34:31 +0800
Message-Id: <1591338874-4733-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591338874-4733-1-git-send-email-Anson.Huang@nxp.com>
References: <1591338874-4733-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_234517_402378_306176CD 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Support building i.MX8MP pinctrl driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/pinctrl/freescale/Kconfig          |  2 +-
 drivers/pinctrl/freescale/pinctrl-imx8mp.c | 10 ++++------
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index df77e752..2bf90b3 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -138,7 +138,7 @@ config PINCTRL_IMX8MN
 	  Say Y here to enable the imx8mn pinctrl driver
 
 config PINCTRL_IMX8MP
-	bool "IMX8MP pinctrl driver"
+	tristate "IMX8MP pinctrl driver"
 	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8mp.c b/drivers/pinctrl/freescale/pinctrl-imx8mp.c
index e3f644c..f3f3bdd 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8mp.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8mp.c
@@ -5,6 +5,7 @@
 
 #include <linux/err.h>
 #include <linux/init.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/platform_device.h>
@@ -324,6 +325,7 @@ static const struct of_device_id imx8mp_pinctrl_of_match[] = {
 	{ .compatible = "fsl,imx8mp-iomuxc", .data = &imx8mp_pinctrl_info, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx8mp_pinctrl_of_match);
 
 static int imx8mp_pinctrl_probe(struct platform_device *pdev)
 {
@@ -337,9 +339,5 @@ static struct platform_driver imx8mp_pinctrl_driver = {
 	},
 	.probe = imx8mp_pinctrl_probe,
 };
-
-static int __init imx8mp_pinctrl_init(void)
-{
-	return platform_driver_register(&imx8mp_pinctrl_driver);
-}
-arch_initcall(imx8mp_pinctrl_init);
+module_platform_driver(imx8mp_pinctrl_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
