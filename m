Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129C987341
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WDVtCSTmmHxPG/NDl15NMhbZpqKtNqpIQPaSmEkJnc4=; b=oa0w5CVKOw0cIgd79GX3HJaSsq
	YEs42iWS0RhL3EEKDK5Znc92ytf1rrEssYT/0lrLUDi2MHagaqQ5JVbSiu/LJkbmQK88hNeeuDl5g
	nwwE4CHtXyggfaWmr+SP/m3ek9M7CM0gzQ7voCOJOdaRI1AsnJsBeDcDLDLjj3lewmUhJKsJi/YYu
	o/5mHdBQC4XahgykQBkcfgtcvC0Gl9V7tOe5EpHmJloRG02WMbr7AMGVycVIwO5veQEMCG5OHOxab
	A/rQxrBYLkSEl8WD070nctVkiGjixdt+BEp3O2oBSEKOc2XO0lHqHBH2lbkRPACQpf52oJVAkyoET
	gguShUhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzTg-0000Kq-Hd; Fri, 09 Aug 2019 07:38:20 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzSa-0007dE-NB
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:37:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9BEA01A00F1;
 Fri,  9 Aug 2019 09:37:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 208D91A0366;
 Fri,  9 Aug 2019 09:37:01 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 408164029A;
 Fri,  9 Aug 2019 15:36:51 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux@armlinux.org.uk,
 otavio@ossystems.com.br, leonard.crestez@nxp.com, schnitzeltony@gmail.com,
 u.kleine-koenig@pengutronix.de, jan.tuerk@emtrion.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] watchdog: Add i.MX7ULP watchdog support
Date: Fri,  9 Aug 2019 15:14:00 +0800
Message-Id: <1565334842-28161-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565334842-28161-1-git-send-email-Anson.Huang@nxp.com>
References: <1565334842-28161-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_003713_027252_DF2A48DE 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

The i.MX7ULP Watchdog Timer (WDOG) module is an independent timer
that is available for system use.
It provides a safety feature to ensure that software is executing
as planned and that the CPU is not stuck in an infinite loop or
executing unintended code. If the WDOG module is not serviced
(refreshed) within a certain period, it resets the MCU.

Add driver support for i.MX7ULP watchdog.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/watchdog/Kconfig       |  13 +++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/imx7ulp_wdt.c | 221 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 235 insertions(+)
 create mode 100644 drivers/watchdog/imx7ulp_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 8188963..0884e53 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -740,6 +740,19 @@ config IMX_SC_WDT
 	  To compile this driver as a module, choose M here: the
 	  module will be called imx_sc_wdt.
 
+config IMX7ULP_WDT
+	tristate "IMX7ULP Watchdog"
+	depends on ARCH_MXC || COMPILE_TEST
+	select WATCHDOG_CORE
+	help
+	  This is the driver for the hardware watchdog on the Freescale
+	  IMX7ULP and later processors. If you have one of these
+	  processors and wish to have watchdog support enabled,
+	  say Y, otherwise say N.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called imx7ulp_wdt.
+
 config UX500_WATCHDOG
 	tristate "ST-Ericsson Ux500 watchdog"
 	depends on MFD_DB8500_PRCMU
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 7caa920..7d32537 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -69,6 +69,7 @@ obj-$(CONFIG_TS4800_WATCHDOG) += ts4800_wdt.o
 obj-$(CONFIG_TS72XX_WATCHDOG) += ts72xx_wdt.o
 obj-$(CONFIG_IMX2_WDT) += imx2_wdt.o
 obj-$(CONFIG_IMX_SC_WDT) += imx_sc_wdt.o
+obj-$(CONFIG_IMX7ULP_WDT) += imx7ulp_wdt.o
 obj-$(CONFIG_UX500_WATCHDOG) += ux500_wdt.o
 obj-$(CONFIG_RETU_WATCHDOG) += retu_wdt.o
 obj-$(CONFIG_BCM2835_WDT) += bcm2835_wdt.o
diff --git a/drivers/watchdog/imx7ulp_wdt.c b/drivers/watchdog/imx7ulp_wdt.c
new file mode 100644
index 0000000..8d56023
--- /dev/null
+++ b/drivers/watchdog/imx7ulp_wdt.c
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <linux/init.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reboot.h>
+#include <linux/watchdog.h>
+
+#define WDOG_CS			0x0
+#define WDOG_CS_CMD32EN		(1 << 13)
+#define WDOG_CS_ULK		(1 << 11)
+#define WDOG_CS_RCS		(1 << 10)
+#define WDOG_CS_EN		(1 << 7)
+#define WDOG_CS_UPDATE		(1 << 5)
+
+#define WDOG_CNT	0x4
+#define WDOG_TOVAL	0x8
+
+#define REFRESH_SEQ0	0xA602
+#define REFRESH_SEQ1	0xB480
+#define REFRESH		((REFRESH_SEQ1 << 16) | (REFRESH_SEQ0))
+
+#define UNLOCK_SEQ0	0xC520
+#define UNLOCK_SEQ1	0xD928
+#define UNLOCK		((UNLOCK_SEQ1 << 16) | (UNLOCK_SEQ0))
+
+#define DEFAULT_TIMEOUT 60
+#define MAX_TIMEOUT 128
+
+static bool nowayout = WATCHDOG_NOWAYOUT;
+module_param(nowayout, bool, 0000);
+MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
+		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
+
+struct imx7ulp_wdt_device {
+	struct notifier_block restart_handler;
+	struct watchdog_device wdd;
+	void __iomem *base;
+	int rate;
+};
+
+static inline void imx7ulp_wdt_enable(void __iomem *base, bool enable)
+{
+	u32 val = readl(base + WDOG_CS);
+
+	writel(UNLOCK, base + WDOG_CNT);
+	if (enable)
+		writel(val | WDOG_CS_EN, base + WDOG_CS);
+	else
+		writel(val & ~WDOG_CS_EN, base + WDOG_CS);
+}
+
+static inline bool imx7ulp_wdt_is_enabled(void __iomem *base)
+{
+	u32 val = readl(base + WDOG_CS);
+
+	return val & WDOG_CS_EN;
+}
+
+static int imx7ulp_wdt_ping(struct watchdog_device *wdog)
+{
+	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
+
+	writel(REFRESH, wdt->base + WDOG_CNT);
+
+	return 0;
+}
+
+static int imx7ulp_wdt_start(struct watchdog_device *wdog)
+{
+	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
+
+	imx7ulp_wdt_enable(wdt->base, true);
+
+	return 0;
+}
+
+static int imx7ulp_wdt_stop(struct watchdog_device *wdog)
+{
+	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
+
+	imx7ulp_wdt_enable(wdt->base, false);
+
+	return 0;
+}
+
+static int imx7ulp_wdt_set_timeout(struct watchdog_device *wdog,
+				   unsigned int timeout)
+{
+	struct imx7ulp_wdt_device *wdt = watchdog_get_drvdata(wdog);
+	u32 val = wdt->rate * timeout;
+
+	writel(UNLOCK, wdt->base + WDOG_CNT);
+	writel(val, wdt->base + WDOG_TOVAL);
+
+	wdog->timeout = timeout;
+
+	return 0;
+}
+
+static const struct watchdog_ops imx7ulp_wdt_ops = {
+	.owner = THIS_MODULE,
+	.start = imx7ulp_wdt_start,
+	.stop  = imx7ulp_wdt_stop,
+	.ping  = imx7ulp_wdt_ping,
+	.set_timeout = imx7ulp_wdt_set_timeout,
+};
+
+static const struct watchdog_info imx7ulp_wdt_info = {
+	.identity = "i.MX7ULP watchdog timer",
+	.options  = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
+		    WDIOF_MAGICCLOSE,
+};
+
+static inline void imx7ulp_wdt_init(void __iomem *base, unsigned int timeout)
+{
+	u32 val;
+
+	/* unlock the wdog for reconfiguration */
+	writel_relaxed(UNLOCK_SEQ0, base + WDOG_CNT);
+	writel_relaxed(UNLOCK_SEQ1, base + WDOG_CNT);
+
+	/* set an initial timeout value in TOVAL */
+	writel(timeout, base + WDOG_TOVAL);
+	/* enable 32bit command sequence and reconfigure */
+	val = (1 << 13) | (1 << 8) | (1 << 5);
+	writel(val, base + WDOG_CS);
+}
+
+static int imx7ulp_wdt_probe(struct platform_device *pdev)
+{
+	struct imx7ulp_wdt_device *imx7ulp_wdt;
+	struct device *dev = &pdev->dev;
+	struct watchdog_device *wdog;
+	int ret;
+
+	imx7ulp_wdt = devm_kzalloc(&pdev->dev,
+				   sizeof(*imx7ulp_wdt), GFP_KERNEL);
+	if (!imx7ulp_wdt)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, imx7ulp_wdt);
+
+	imx7ulp_wdt->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(imx7ulp_wdt->base))
+		return PTR_ERR(imx7ulp_wdt->base);
+
+	imx7ulp_wdt->rate = 1000;
+	wdog = &imx7ulp_wdt->wdd;
+	wdog->info = &imx7ulp_wdt_info;
+	wdog->ops = &imx7ulp_wdt_ops;
+	wdog->min_timeout = 1;
+	wdog->max_timeout = MAX_TIMEOUT;
+	wdog->parent = dev;
+	wdog->timeout = DEFAULT_TIMEOUT;
+
+	watchdog_init_timeout(wdog, 0, dev);
+	watchdog_stop_on_reboot(wdog);
+	watchdog_stop_on_unregister(wdog);
+	watchdog_set_drvdata(wdog, imx7ulp_wdt);
+	imx7ulp_wdt_init(imx7ulp_wdt->base, wdog->timeout * imx7ulp_wdt->rate);
+
+	ret = devm_watchdog_register_device(dev, wdog);
+	if (ret)
+		dev_err(dev, "Failed to register watchdog device\n");
+
+	return ret;
+}
+
+static int __maybe_unused imx7ulp_wdt_suspend(struct device *dev)
+{
+	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
+
+	if (watchdog_active(&imx7ulp_wdt->wdd))
+		imx7ulp_wdt_stop(&imx7ulp_wdt->wdd);
+
+	return 0;
+}
+
+static int __maybe_unused imx7ulp_wdt_resume(struct device *dev)
+{
+	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
+	u32 timeout = imx7ulp_wdt->wdd.timeout * imx7ulp_wdt->rate;
+
+	if (imx7ulp_wdt_is_enabled(imx7ulp_wdt->base))
+		imx7ulp_wdt_init(imx7ulp_wdt->base, timeout);
+
+	if (watchdog_active(&imx7ulp_wdt->wdd))
+		imx7ulp_wdt_start(&imx7ulp_wdt->wdd);
+
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(imx7ulp_wdt_pm_ops, imx7ulp_wdt_suspend,
+			 imx7ulp_wdt_resume);
+
+static const struct of_device_id imx7ulp_wdt_dt_ids[] = {
+	{ .compatible = "fsl,imx7ulp-wdt", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx7ulp_wdt_dt_ids);
+
+static struct platform_driver imx7ulp_wdt_driver = {
+	.probe		= imx7ulp_wdt_probe,
+	.driver		= {
+		.name	= "imx7ulp-wdt",
+		.pm	= &imx7ulp_wdt_pm_ops,
+		.of_match_table = imx7ulp_wdt_dt_ids,
+	},
+};
+module_platform_driver(imx7ulp_wdt_driver);
+
+MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
+MODULE_DESCRIPTION("Freescale i.MX7ULP watchdog driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
