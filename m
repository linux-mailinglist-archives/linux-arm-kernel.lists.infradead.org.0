Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBB4989AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 04:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UkY6xHLKhj99G/5sc2UuIN6awjrhhdpJCFeQkwGapoI=; b=pt3aUCeVborn/VYdUR9CpBW6TU
	TV29j1vQZLcWX7w+gHNggBrzXkgqkIdENrI/MXcZLZgZ/Dnq2e1No1nOzHSm+CqeTpVxMeFOcBz1A
	BCfRQRk2u1y6Ob2VRLDN0Kgvf0ryLEEwQNWtRnmx0ivYZwfzu/coYg3BQZLSFQl+hgbnQrDvMkrsY
	CL50zCBa2Htl4wiesT1deuJGAHXvyg/2Pvm0bcoizdRIGEgrGGZfph9jZZ5sPbNcbQ2bYbrboKjA6
	XRsQId6RdxiBN7+Bbl5u1QCOvIVEYMu5EbU5LQ7BcBKuB7FILR6BYBhmUP0b/DvOJ1EBPzzerRZEW
	ob2ki1ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0dHa-0000Un-W6; Thu, 22 Aug 2019 02:57:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0dHD-0000JY-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 02:56:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5211F200116;
 Thu, 22 Aug 2019 04:56:35 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1C76620005C;
 Thu, 22 Aug 2019 04:56:26 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 184CE402E1;
 Thu, 22 Aug 2019 10:56:15 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux@armlinux.org.uk,
 otavio@ossystems.com.br, leonard.crestez@nxp.com, schnitzeltony@gmail.com,
 u.kleine-koenig@pengutronix.de, jan.tuerk@emtrion.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 2/4] watchdog: Add i.MX7ULP watchdog support
Date: Wed, 21 Aug 2019 22:37:41 -0400
Message-Id: <1566441463-11911-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566441463-11911-1-git-send-email-Anson.Huang@nxp.com>
References: <1566441463-11911-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_195639_955324_30EEF470 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Changes since V3:
	- pass clk directly for reset action to avoid dereference from structure;
	- use constant instead of variable for wdog clock rate, as it is fixed as 1KHz.
---
 drivers/watchdog/Kconfig       |  13 +++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/imx7ulp_wdt.c | 243 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 257 insertions(+)
 create mode 100644 drivers/watchdog/imx7ulp_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index a8f5c81..d68e5b5 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -724,6 +724,19 @@ config IMX_SC_WDT
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
index b5a0aed..2ee352b 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -67,6 +67,7 @@ obj-$(CONFIG_TS4800_WATCHDOG) += ts4800_wdt.o
 obj-$(CONFIG_TS72XX_WATCHDOG) += ts72xx_wdt.o
 obj-$(CONFIG_IMX2_WDT) += imx2_wdt.o
 obj-$(CONFIG_IMX_SC_WDT) += imx_sc_wdt.o
+obj-$(CONFIG_IMX7ULP_WDT) += imx7ulp_wdt.o
 obj-$(CONFIG_UX500_WATCHDOG) += ux500_wdt.o
 obj-$(CONFIG_RETU_WATCHDOG) += retu_wdt.o
 obj-$(CONFIG_BCM2835_WDT) += bcm2835_wdt.o
diff --git a/drivers/watchdog/imx7ulp_wdt.c b/drivers/watchdog/imx7ulp_wdt.c
new file mode 100644
index 0000000..5ce5102
--- /dev/null
+++ b/drivers/watchdog/imx7ulp_wdt.c
@@ -0,0 +1,243 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <linux/clk.h>
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
+#define WDOG_CS_CMD32EN		BIT(13)
+#define WDOG_CS_ULK		BIT(11)
+#define WDOG_CS_RCS		BIT(10)
+#define WDOG_CS_EN		BIT(7)
+#define WDOG_CS_UPDATE		BIT(5)
+
+#define WDOG_CNT	0x4
+#define WDOG_TOVAL	0x8
+
+#define REFRESH_SEQ0	0xA602
+#define REFRESH_SEQ1	0xB480
+#define REFRESH		((REFRESH_SEQ1 << 16) | REFRESH_SEQ0)
+
+#define UNLOCK_SEQ0	0xC520
+#define UNLOCK_SEQ1	0xD928
+#define UNLOCK		((UNLOCK_SEQ1 << 16) | UNLOCK_SEQ0)
+
+#define DEFAULT_TIMEOUT	60
+#define MAX_TIMEOUT	128
+#define WDOG_CLOCK_RATE	1000
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
+	struct clk *clk;
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
+	u32 val = WDOG_CLOCK_RATE * timeout;
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
+	val = BIT(13) | BIT(8) | BIT(5);
+	writel(val, base + WDOG_CS);
+}
+
+static void imx7ulp_wdt_action(void *data)
+{
+	clk_disable_unprepare(data);
+}
+
+static int imx7ulp_wdt_probe(struct platform_device *pdev)
+{
+	struct imx7ulp_wdt_device *imx7ulp_wdt;
+	struct device *dev = &pdev->dev;
+	struct watchdog_device *wdog;
+	int ret;
+
+	imx7ulp_wdt = devm_kzalloc(dev, sizeof(*imx7ulp_wdt), GFP_KERNEL);
+	if (!imx7ulp_wdt)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, imx7ulp_wdt);
+
+	imx7ulp_wdt->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(imx7ulp_wdt->base))
+		return PTR_ERR(imx7ulp_wdt->base);
+
+	imx7ulp_wdt->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(imx7ulp_wdt->clk)) {
+		dev_err(dev, "Failed to get watchdog clock\n");
+		return PTR_ERR(imx7ulp_wdt->clk);
+	}
+
+	ret = clk_prepare_enable(imx7ulp_wdt->clk);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, imx7ulp_wdt_action, imx7ulp_wdt->clk);
+	if (ret)
+		return ret;
+
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
+	imx7ulp_wdt_init(imx7ulp_wdt->base, wdog->timeout * WDOG_CLOCK_RATE);
+
+	return devm_watchdog_register_device(dev, wdog);
+}
+
+static int __maybe_unused imx7ulp_wdt_suspend(struct device *dev)
+{
+	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
+
+	if (watchdog_active(&imx7ulp_wdt->wdd))
+		imx7ulp_wdt_stop(&imx7ulp_wdt->wdd);
+
+	clk_disable_unprepare(imx7ulp_wdt->clk);
+
+	return 0;
+}
+
+static int __maybe_unused imx7ulp_wdt_resume(struct device *dev)
+{
+	struct imx7ulp_wdt_device *imx7ulp_wdt = dev_get_drvdata(dev);
+	u32 timeout = imx7ulp_wdt->wdd.timeout * WDOG_CLOCK_RATE;
+	int ret;
+
+	ret = clk_prepare_enable(imx7ulp_wdt->clk);
+	if (ret)
+		return ret;
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
