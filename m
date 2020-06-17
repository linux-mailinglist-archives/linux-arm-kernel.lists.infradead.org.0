Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DF01FC587
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 07:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VGcZYA8gweZdmwEO4IdHpk64LDe4XNGDDnN4EReZzCY=; b=Rfz
	vOP+bnbbvKjGUwaekVNJrHvAPlKtGmu36f+Io00wgnuMlubhasV65EKfiZYNx4482DmZ46yD3eK3h
	8kNifxE6GVj/66pWTaWAAsab6wI8BvtQRW7w0cT9C0MDbDd0liH1TqH2WXJolPdPXQD6s8z3fcGes
	0AEjyL2CquEHpMmHw6s4oof1dTtzgGsQUmr4QIvlBEi4HTsv9TFRn9uPhJC6wHHLVkGIqA9iG+rOw
	dJ1Sm7efaiavi7R9qn60RzinKA6kVoo0phB1+WuW2aCwqz41uh2ena5+Rn/lb2hJAdEycPNLhfgm6
	G3hqog29kcxpXYDk95A4cmSxmlxopfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlQGD-0007jx-2D; Wed, 17 Jun 2020 05:05:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlQFs-0007j1-TT
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 05:04:58 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D0B532003D0;
 Wed, 17 Jun 2020 07:04:51 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E20B82008A5;
 Wed, 17 Jun 2020 07:04:46 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9A6A3402B3;
 Wed, 17 Jun 2020 13:04:40 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, peng.fan@nxp.com, arnd@arndb.de,
 leonard.crestez@nxp.com, krzk@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] soc: imx-scu: Support module build
Date: Wed, 17 Jun 2020 12:53:43 +0800
Message-Id: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_220457_090365_A9B3BA5B 
X-CRM114-Status: UNSURE (   7.88  )
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

Change the configuration type to tristate, add module description,
author and license to support module build.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/Kconfig       | 2 +-
 drivers/soc/imx/soc-imx-scu.c | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index d515d2c..c255acb 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -9,7 +9,7 @@ config IMX_GPCV2_PM_DOMAINS
 	default y if SOC_IMX7D
 
 config IMX_SCU_SOC
-	bool "i.MX System Controller Unit SoC info support"
+	tristate "i.MX System Controller Unit SoC info support"
 	depends on IMX_SCU
 	select SOC_BUS
 	help
diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
index 20d37ea..bdd43ed 100644
--- a/drivers/soc/imx/soc-imx-scu.c
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/firmware/imx/rsrc.h>
 #include <linux/firmware/imx/sci.h>
+#include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/sys_soc.h>
 #include <linux/platform_device.h>
@@ -185,3 +186,7 @@ static int __init imx_scu_soc_init(void)
 	return PTR_ERR_OR_ZERO(pdev);
 }
 device_initcall(imx_scu_soc_init);
+
+MODULE_AUTHOR("Anson Huang <anson.huang@nxp.com>");
+MODULE_DESCRIPTION("NXP i.MX SCU SoC driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
