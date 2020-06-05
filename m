Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25FA1EF1A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=odBBTAbjDvHj2/5DEYb8YkHU2JIj/9c56j7kXMKLpH4=; b=NwRZwWxeGc/fWdkbPLfvM4GsRc
	nGPCwSD4j07WzhlVR7SrjkA7Ktw+UfFFlKQjC/xz0gCdWbftPkOwnif1F7y6NMLCg6EHBBN2dvlsN
	Noc3lRej4LTHHTBUSrzUPZYESv0hvqC+5GqFNNY60wvzH0rDgPJ8iOlZPD/LMKeqQsApc+6NANiPJ
	NHWDuYMn2G56qO/TUkYNj+XmRYv2NyCjXga/i+oj60FWW2nBjL4mh+X5E3T6zIi/f9Kvilp3VBNwg
	HT/cFqPVOCLuj67Jgra71xRwdcvOVLpH5ylbR4pMxOuT1uC5otGEaNi1s+f+sKU362iR4LeVDNZbh
	C2stKS3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh68a-0005DZ-SC; Fri, 05 Jun 2020 06:47:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh66T-0003CE-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 06:45:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9869D2014A4;
 Fri,  5 Jun 2020 08:45:19 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 15A402002BD;
 Fri,  5 Jun 2020 08:45:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1AC29402E4;
 Fri,  5 Jun 2020 14:45:09 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/8] pinctrl: imx8dxl: Support building as module
Date: Fri,  5 Jun 2020 14:34:34 +0800
Message-Id: <1591338874-4733-9-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591338874-4733-1-git-send-email-Anson.Huang@nxp.com>
References: <1591338874-4733-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_234521_225864_ACA6BDF7 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
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

Support building i.MX8DXL pinctrl driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/pinctrl/freescale/Kconfig           | 2 +-
 drivers/pinctrl/freescale/pinctrl-imx8dxl.c | 9 +++------
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index d9fb5f2..08fcf5c 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -166,7 +166,7 @@ config PINCTRL_IMX8QXP
 	  Say Y here to enable the imx8qxp pinctrl driver
 
 config PINCTRL_IMX8DXL
-	bool "IMX8DXL pinctrl driver"
+	tristate "IMX8DXL pinctrl driver"
 	depends on IMX_SCU && ARCH_MXC && ARM64
 	select PINCTRL_IMX_SCU
 	help
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
index 7f32e57..c11fcfb 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
@@ -165,6 +165,7 @@ static const struct of_device_id imx8dxl_pinctrl_of_match[] = {
 	{ .compatible = "fsl,imx8dxl-iomuxc", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx8dxl_pinctrl_of_match);
 
 static int imx8dxl_pinctrl_probe(struct platform_device *pdev)
 {
@@ -185,9 +186,5 @@ static struct platform_driver imx8dxl_pinctrl_driver = {
 	},
 	.probe = imx8dxl_pinctrl_probe,
 };
-
-static int __init imx8dxl_pinctrl_init(void)
-{
-	return platform_driver_register(&imx8dxl_pinctrl_driver);
-}
-arch_initcall(imx8dxl_pinctrl_init);
+module_platform_driver(imx8dxl_pinctrl_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
