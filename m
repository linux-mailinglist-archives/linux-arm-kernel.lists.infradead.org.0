Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17F9C0255
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8ZWbc7bGmd/5Q7Aw6Q6e1OF32fR+m5e2cS+dWX1wdA=; b=bBgAVqzfmeAFw8
	PYirvvS2y7Xq+w7Fkd7+QopVNv9I+Qu0ZA9wuEFKWgyGM5wburvJ+VcEbwoj14bryerO1iY3EaUYr
	wS5PnDG6XWxb+DmDS2FynAUskZozthSxtEuqgIybGH5xM0ayEyg05M/qE9kTADAtKggi7w6s6Ias+
	c1JcwU+lelS4Oso7m0m5PPw+DqVmfScTqqWqif6lhhN3hCC3wjMf4PexqbJOXhIXDPyIYwLPitZ3B
	8AdvbT9eCdg3ybnjBYTqJrbamYjCVf/V04EFNGeMXi02cJnghjLc3Xg42ABXEqzoXSwYIHpd5gN/K
	meA6Jw+Dp3td+Qun26ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmY7-0000jt-Ci; Fri, 27 Sep 2019 09:28:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmX4-0008SF-Vn; Fri, 27 Sep 2019 09:27:25 +0000
X-UUID: d11dfa2d5997461cbdd8c913175a0571-20190927
X-UUID: d11dfa2d5997461cbdd8c913175a0571-20190927
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 696705172; Fri, 27 Sep 2019 01:27:15 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 02:27:15 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 17:27:02 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 17:27:01 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>, <mark.rutland@arm.com>, <robh+dt@kernel.org>,
 <linux@roeck-us.net>, <wim@linux-watchdog.org>
Subject: [PATCH 2/4] WIP: watchdog: mtk_wdt: mt8183: Add reset controller
Date: Fri, 27 Sep 2019 17:26:55 +0800
Message-ID: <1569576417-20663-3-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1569576417-20663-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1569576417-20663-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_022723_122680_3B6F0AC4 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: alsa-devel@alsa-project.org, yong.liang@mediatek.com, lgirdwood@gmail.com,
 jiaxin.yu@mediatek.com, perex@perex.cz, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

Provide assert/deassert/reset API in watchdog driver.
Register reset controller for toprgu device in watchdog probe.

Signed-off-by: yong.liang <yong.liang@mediatek.com>
---
 drivers/watchdog/Kconfig   |   1 +
 drivers/watchdog/mtk_wdt.c | 110 ++++++++++++++++++++++++++++++++++++-
 2 files changed, 110 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 2e07caab9db2..629249fe5305 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -717,6 +717,7 @@ config MEDIATEK_WATCHDOG
 	tristate "Mediatek SoCs watchdog support"
 	depends on ARCH_MEDIATEK || COMPILE_TEST
 	select WATCHDOG_CORE
+	select RESET_CONTROLLER
 	help
 	  Say Y here to include support for the watchdog timer
 	  in Mediatek SoCs.
diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
index 9c3d0033260d..660fb0e48d8e 100644
--- a/drivers/watchdog/mtk_wdt.c
+++ b/drivers/watchdog/mtk_wdt.c
@@ -20,6 +20,10 @@
 #include <linux/types.h>
 #include <linux/watchdog.h>
 #include <linux/delay.h>
+#include <linux/reset-controller.h>
+#include <linux/slab.h>
+#include <linux/reset.h>
+#include <linux/of_device.h>
 
 #define WDT_MAX_TIMEOUT		31
 #define WDT_MIN_TIMEOUT		1
@@ -44,17 +48,113 @@
 #define WDT_SWRST		0x14
 #define WDT_SWRST_KEY		0x1209
 
+#define WDT_SWSYSRST		0x18U
+#define WDT_SWSYS_RST_KEY	0x88000000
+
 #define DRV_NAME		"mtk-wdt"
 #define DRV_VERSION		"1.0"
 
 static bool nowayout = WATCHDOG_NOWAYOUT;
 static unsigned int timeout;
 
+struct toprgu_reset {
+	spinlock_t lock; /* Protects reset_controller access */
+	void __iomem *toprgu_swrst_base;
+	int regofs;
+	struct reset_controller_dev rcdev;
+};
+
 struct mtk_wdt_dev {
 	struct watchdog_device wdt_dev;
 	void __iomem *wdt_base;
+	struct toprgu_reset reset_controller;
+	const struct mtk_wdt_compatible *dev_comp;
+};
+
+struct mtk_wdt_compatible {
+	int sw_rst_num;
+};
+
+static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
+			       unsigned long id)
+{
+	unsigned int tmp;
+	unsigned long flags;
+	struct toprgu_reset *data = container_of(rcdev,
+				struct toprgu_reset, rcdev);
+
+	spin_lock_irqsave(&data->lock, flags);
+
+	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
+	tmp |= BIT(id);
+	tmp |= WDT_SWSYS_RST_KEY;
+	writel(tmp, data->toprgu_swrst_base + data->regofs);
+
+	spin_unlock_irqrestore(&data->lock, flags);
+
+	return 0;
+}
+
+static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
+				 unsigned long id)
+{
+	unsigned int tmp;
+	unsigned long flags;
+	struct toprgu_reset *data = container_of(rcdev,
+					struct toprgu_reset, rcdev);
+
+	spin_lock_irqsave(&data->lock, flags);
+
+	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
+	tmp &= ~BIT(id);
+	tmp |= WDT_SWSYS_RST_KEY;
+	writel(tmp, data->toprgu_swrst_base + data->regofs);
+
+	spin_unlock_irqrestore(&data->lock, flags);
+
+	return 0;
+}
+
+static int toprgu_reset(struct reset_controller_dev *rcdev,
+			unsigned long id)
+{
+	int ret;
+
+	ret = toprgu_reset_assert(rcdev, id);
+	if (ret)
+		return ret;
+
+	return toprgu_reset_deassert(rcdev, id);
+}
+
+static struct reset_control_ops toprgu_reset_ops = {
+	.assert = toprgu_reset_assert,
+	.deassert = toprgu_reset_deassert,
+	.reset = toprgu_reset,
 };
 
+static void toprgu_register_reset_controller(struct platform_device *pdev,
+					     int regofs)
+{
+	int ret;
+	struct mtk_wdt_dev *mtk_wdt = platform_get_drvdata(pdev);
+
+	spin_lock_init(&mtk_wdt->reset_controller.lock);
+
+	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);
+	mtk_wdt->reset_controller.toprgu_swrst_base = mtk_wdt->wdt_base;
+	mtk_wdt->reset_controller.regofs = regofs;
+	mtk_wdt->reset_controller.rcdev.owner = THIS_MODULE;
+	mtk_wdt->reset_controller.rcdev.nr_resets =
+				mtk_wdt->dev_comp->sw_rst_num;
+	mtk_wdt->reset_controller.rcdev.ops = &toprgu_reset_ops;
+	mtk_wdt->reset_controller.rcdev.of_node = pdev->dev.of_node;
+	ret = reset_controller_register(&mtk_wdt->reset_controller.rcdev);
+	if (ret != 0)
+		dev_err(&pdev->dev,
+			"couldn't register wdt reset controller: %d\n", ret);
+}
+
 static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
 			   unsigned long action, void *data)
 {
@@ -187,9 +287,12 @@ static int mtk_wdt_probe(struct platform_device *pdev)
 	if (unlikely(err))
 		return err;
 
-	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
+	dev_info(&pdev->dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
 		 mtk_wdt->wdt_dev.timeout, nowayout);
 
+	mtk_wdt->dev_comp = of_device_get_match_data(&pdev->dev);
+	if (mtk_wdt->dev_comp)
+		toprgu_register_reset_controller(pdev, WDT_SWSYSRST);
 	return 0;
 }
 
@@ -217,7 +320,12 @@ static int mtk_wdt_resume(struct device *dev)
 }
 #endif
 
+static const struct mtk_wdt_compatible mt8183_compat = {
+	.sw_rst_num = 18,
+};
+
 static const struct of_device_id mtk_wdt_dt_ids[] = {
+	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_compat },
 	{ .compatible = "mediatek,mt6589-wdt" },
 	{ /* sentinel */ }
 };
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
