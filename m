Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F491F3E2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y4V2pcYKPmQzoA+7cntZBuMN9I+D40JQNhIcRuJhFXA=; b=DCVaUIr0tB8rxcGxV7yB3EYU44
	Crm1LMDhLEOP6Ydc0d/gUIxK4KF7/6QTo3nd//JqsRuSmO9yVWuQ9RQiEv4mpXXr1EYXgPk+oFYSz
	b3FvgIUYx/nvpiy5LlhyfITUPYVA+UxpVmXSSZelxEGip+Kp5D2aOHv2rhAzC0HJHtDBXttBLXxlW
	wY+BpfzmQTMVIR8MZC5uKnTXTvcfsra0ZJ4YLyWjsuXDb8ljPJqO08pvZUPRQKzc4v2KWJmTUAYIc
	nD5DoHQQ0EQFY/YrxOFcfCUGyO3BaEiCrY/eOuYfQNrqgkItdYjjuKJemLex+CPklYJM41424MGwY
	zAbNmWZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifIz-0006F7-70; Tue, 09 Jun 2020 14:32:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifIV-0005rs-DM
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:32:17 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 257561A13DF;
 Tue,  9 Jun 2020 16:32:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D68F1A13DB;
 Tue,  9 Jun 2020 16:32:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 802F54029F;
 Tue,  9 Jun 2020 22:32:03 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 1/9] pinctrl: imx: Support building SCU pinctrl driver as
 module
Date: Tue,  9 Jun 2020 22:21:17 +0800
Message-Id: <1591712485-20609-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591712485-20609-1-git-send-email-Anson.Huang@nxp.com>
References: <1591712485-20609-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_073215_722518_8AAA7CAF 
X-CRM114-Status: GOOD (  10.97  )
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

Export necessary functions and use "IS_ENABLED" instead of "ifdef"
to support SCU pinctrl driver user and itself to be built as module.

And when PINCTRL_IMX_SCU can be built as module, if PINCTRL_IMX is
built in while PINCTRL_IMX_SCU is built as module, build will fail
due to SCU pinctrl driver's APIs are NOT implemented, to avoid such
common scenario, the config dependency needs to be changed to below:

    - All i.MX platforms pinctrl driver will select PINCTRL_IMX;
    - All i.MX ARM64 platforms will select PINCTRL_IMX_SCU;

However, it introduces a tiny side effect that, for i.MX8M platforms,
although PINCTRL_IMX_SCU is NOT needed, but it will be still selected.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- change the config dependency of PINCTRL_IMX_SCU to support
	  scenario of building in PINCTRL_IMX while building PINCTRL_IMX_SCU
	  as module.
---
 drivers/pinctrl/freescale/Kconfig       | 10 +++++-----
 drivers/pinctrl/freescale/pinctrl-imx.h |  2 +-
 drivers/pinctrl/freescale/pinctrl-scu.c |  6 ++++++
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index 4ca44dd..f6c00d5 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -5,11 +5,11 @@ config PINCTRL_IMX
 	select GENERIC_PINMUX_FUNCTIONS
 	select GENERIC_PINCONF
 	select REGMAP
+	select PINCTRL_IMX_SCU if (ARCH_MXC && ARM64)
 
 config PINCTRL_IMX_SCU
-	bool
+	tristate "IMX SCU pinctrl driver"
 	depends on IMX_SCU
-	select PINCTRL_IMX
 
 config PINCTRL_IMX1_CORE
 	bool
@@ -154,21 +154,21 @@ config PINCTRL_IMX8MQ
 config PINCTRL_IMX8QM
 	bool "IMX8QM pinctrl driver"
 	depends on IMX_SCU && ARCH_MXC && ARM64
-	select PINCTRL_IMX_SCU
+	select PINCTRL_IMX
 	help
 	  Say Y here to enable the imx8qm pinctrl driver
 
 config PINCTRL_IMX8QXP
 	bool "IMX8QXP pinctrl driver"
 	depends on IMX_SCU && ARCH_MXC && ARM64
-	select PINCTRL_IMX_SCU
+	select PINCTRL_IMX
 	help
 	  Say Y here to enable the imx8qxp pinctrl driver
 
 config PINCTRL_IMX8DXL
 	bool "IMX8DXL pinctrl driver"
 	depends on IMX_SCU && ARCH_MXC && ARM64
-	select PINCTRL_IMX_SCU
+	select PINCTRL_IMX
 	help
 	  Say Y here to enable the imx8dxl pinctrl driver
 
diff --git a/drivers/pinctrl/freescale/pinctrl-imx.h b/drivers/pinctrl/freescale/pinctrl-imx.h
index 333d32b..4e93f12 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx.h
+++ b/drivers/pinctrl/freescale/pinctrl-imx.h
@@ -137,7 +137,7 @@ struct imx_pinctrl {
 int imx_pinctrl_probe(struct platform_device *pdev,
 			const struct imx_pinctrl_soc_info *info);
 
-#ifdef CONFIG_PINCTRL_IMX_SCU
+#if IS_ENABLED(CONFIG_PINCTRL_IMX_SCU)
 #define BM_PAD_CTL_GP_ENABLE		BIT(30)
 #define BM_PAD_CTL_IFMUX_ENABLE		BIT(31)
 #define BP_PAD_CTL_IFMUX		27
diff --git a/drivers/pinctrl/freescale/pinctrl-scu.c b/drivers/pinctrl/freescale/pinctrl-scu.c
index 23cf04b..35efd5c 100644
--- a/drivers/pinctrl/freescale/pinctrl-scu.c
+++ b/drivers/pinctrl/freescale/pinctrl-scu.c
@@ -7,6 +7,7 @@
 
 #include <linux/err.h>
 #include <linux/firmware/imx/sci.h>
+#include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/platform_device.h>
@@ -41,6 +42,7 @@ int imx_pinctrl_sc_ipc_init(struct platform_device *pdev)
 {
 	return imx_scu_get_handle(&pinctrl_ipc_handle);
 }
+EXPORT_SYMBOL_GPL(imx_pinctrl_sc_ipc_init);
 
 int imx_pinconf_get_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 			unsigned long *config)
@@ -66,6 +68,7 @@ int imx_pinconf_get_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(imx_pinconf_get_scu);
 
 int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 			unsigned long *configs, unsigned num_configs)
@@ -101,6 +104,7 @@ int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(imx_pinconf_set_scu);
 
 void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
 			       unsigned int *pin_id, struct imx_pin *pin,
@@ -119,3 +123,5 @@ void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
 	dev_dbg(ipctl->dev, "%s: 0x%x 0x%08lx", info->pins[pin->pin].name,
 		pin_scu->mux_mode, pin_scu->config);
 }
+EXPORT_SYMBOL_GPL(imx_pinctrl_parse_pin_scu);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
