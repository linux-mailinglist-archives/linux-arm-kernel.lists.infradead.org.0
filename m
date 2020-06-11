Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630BB1F6720
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/H1MgYXQyWP2hTTq4h0W+cZBrNsJMC93NndEqgi79gY=; b=r+fwOvyvlm+e7poPuB1SrUyfoP
	MrrnzGfHtKBusxvESvpOQrRKUdkML/1BxK3xxSgaYFBz1qfKBLxu2mJhrKCMYNKMdpwSNyYv+2C1V
	NUhUljhqpGTFxCBW84ne2bhZnGfShx4FvsyW0Vl72fXAed0GC3DDl+/YhBZPwMSRdTGLSA8+IrdN1
	xJxpS1U5n7pQjc5lc7pcUOV4p/N6o/X+isYj4WB/b33acbQw32uGjI6vBmEMRqgoV7cRCuYBfWoHn
	EBo2gTD6vIdVHanGBNJJRkye02xyjreatLu9sXPzqnRjfLTi67bXSFuuZnsIk3dhiIGpOtRifLQR0
	Rp0JZoQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLh9-0000K2-I7; Thu, 11 Jun 2020 11:48:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLem-0006cD-Qh
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:46:06 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8AECF1A070E;
 Thu, 11 Jun 2020 13:46:03 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0B52E1A070A;
 Thu, 11 Jun 2020 13:45:59 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 832E740323;
 Thu, 11 Jun 2020 19:45:53 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 9/9] pinctrl: imx8dxl: Support building as module
Date: Thu, 11 Jun 2020 19:34:55 +0800
Message-Id: <1591875295-19427-10-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_044605_012525_D850D6BB 
X-CRM114-Status: UNSURE (   9.71  )
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

Change configuration to "tristate", add module device table,
author, description and license to support building i.MX8DXL
pinctrl driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V4:
	- remove unnecessary change of replacing arch_initcall() with module_platform_driver();
	- add module author and description;
	- add more details to commit message.
---
 drivers/pinctrl/freescale/Kconfig           | 2 +-
 drivers/pinctrl/freescale/pinctrl-imx8dxl.c | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index de8d571..922ae4b 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -167,7 +167,7 @@ config PINCTRL_IMX8QXP
 	  Say Y here to enable the imx8qxp pinctrl driver
 
 config PINCTRL_IMX8DXL
-	bool "IMX8DXL pinctrl driver"
+	tristate "IMX8DXL pinctrl driver"
 	depends on IMX_SCU && ARCH_MXC && ARM64
 	select PINCTRL_IMX_SCU
 	help
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
index be3b09e..d3020c0 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
@@ -168,6 +168,7 @@ static const struct of_device_id imx8dxl_pinctrl_of_match[] = {
 	{ .compatible = "fsl,imx8dxl-iomuxc", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx8dxl_pinctrl_of_match);
 
 static int imx8dxl_pinctrl_probe(struct platform_device *pdev)
 {
@@ -194,3 +195,7 @@ static int __init imx8dxl_pinctrl_init(void)
 	return platform_driver_register(&imx8dxl_pinctrl_driver);
 }
 arch_initcall(imx8dxl_pinctrl_init);
+
+MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
+MODULE_DESCRIPTION("NXP i.MX8DXL pinctrl driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
