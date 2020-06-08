Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64301F1B67
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rc7KAC5QNJCoDIfRlyDTc2z7xhAtTpctluikGEuuZDo=; b=CAL3JPPEI6FZIWpeDDgCQn/E1e
	uzPoXKVBvPR/kBMWRsoYW+rdUJA7nuJbopud2pRhZeo7oK3d9LYDrSPOmDpU2CdyFbBmC08sxPEmA
	w2AxV7vpV9hc0wPrpm5F6YptM5bTDohgeUufSGdp3lkm3v7EU9/YK7Yg0wATVJT9678cD9oan7pIL
	BfLedglE0e0M7hz3GslwpaM4KkYdyZuzYDA7JU7bNHOH5pDyI+6KcoaMY70SjODWbvnf1kYomC/9u
	/3NZ7oSIDQaxZ5u56K20eEFhjAmQwSQNP26rzxZJBU+TZiSpdmA7Ods6TiMgksUze9zS7errwWPvX
	X/pV7g4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJ6x-0006QZ-TA; Mon, 08 Jun 2020 14:50:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJ4f-00087x-7u
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:48:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D6951A105F;
 Mon,  8 Jun 2020 16:48:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CD34C1A107E;
 Mon,  8 Jun 2020 16:48:22 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EE22E4031F;
 Mon,  8 Jun 2020 22:48:16 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 7/9] pinctrl: imx8qxp: Support building as module
Date: Mon,  8 Jun 2020 22:37:34 +0800
Message-Id: <1591627056-19022-8-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591627056-19022-1-git-send-email-Anson.Huang@nxp.com>
References: <1591627056-19022-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_074829_601261_B8F51EF3 
X-CRM114-Status: UNSURE (   9.03  )
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

Support building i.MX8QXP pinctrl driver as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 drivers/pinctrl/freescale/Kconfig           | 2 +-
 drivers/pinctrl/freescale/pinctrl-imx8qxp.c | 9 +++------
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index 8f89964..5c9714a 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -159,7 +159,7 @@ config PINCTRL_IMX8QM
 	  Say Y here to enable the imx8qm pinctrl driver
 
 config PINCTRL_IMX8QXP
-	bool "IMX8QXP pinctrl driver"
+	tristate "IMX8QXP pinctrl driver"
 	depends on IMX_SCU && ARCH_MXC && ARM64
 	select PINCTRL_IMX_SCU
 	help
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8qxp.c b/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
index 1131dc3..0eaa36b 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
@@ -204,6 +204,7 @@ static const struct of_device_id imx8qxp_pinctrl_of_match[] = {
 	{ .compatible = "fsl,imx8qxp-iomuxc", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx8qxp_pinctrl_of_match);
 
 static int imx8qxp_pinctrl_probe(struct platform_device *pdev)
 {
@@ -224,9 +225,5 @@ static struct platform_driver imx8qxp_pinctrl_driver = {
 	},
 	.probe = imx8qxp_pinctrl_probe,
 };
-
-static int __init imx8qxp_pinctrl_init(void)
-{
-	return platform_driver_register(&imx8qxp_pinctrl_driver);
-}
-arch_initcall(imx8qxp_pinctrl_init);
+module_platform_driver(imx8qxp_pinctrl_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
