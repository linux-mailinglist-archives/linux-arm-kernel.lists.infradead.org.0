Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C675CCD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=djOBtr0M0cs4F+LVe1u+oJ/5BKYUp8xN4P8IwQRPiLw=; b=TU+jJB1Q29xujftHxinDaOi/NX
	93haff5MLz6NOBJfJhzncKk3Z9jlHNtqoUQVM6B522s/zfCd8PxI1Uwramx7zPGEZLlSOWaVHvPFt
	tL3MX6SRbz8T/xqZa0XhMvPwzP3o+JE0G7a5oRbPSxBNcbOSEGHRdgxUYbqJ6QQckO9Q1pSfuLBCi
	DlE8qDFYqgNejEVOgL1DP8Y4D9+trZngv3Wknwi2Dlz1NxMlwTA3GI8cnIPMF8YF5rhUcogpWUZZl
	5tUJB/f73fb4CsA4NOpYWu/gIhRcJS21gz9KFYsysAAYazYdT+6TpLoB/eXtNQXEMj3/XoShZQ3p/
	sSlj09RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFJ0-00014k-AM; Tue, 02 Jul 2019 09:42:30 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFHd-00009u-9g; Tue, 02 Jul 2019 09:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562060458;
 bh=P78rL3Ld2zVHKNP51vJ5yxaFpjg+8kHYhm1mASieWfo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=cxtqcHWW8BKBfk5Ohh9Shxx0GsuKswn85+c2dXMLoN7+SgO/iMclX94FZ21BpEpPU
 PL5lm9zKNBrOHQpFk5GojDrUEHBwPsYUUa/P8wZsgO38vKbh30Ne4M+VTqWCHScHxM
 xM5VdpI4Pin4fg88UGsjq28wcQ4g1D9BRQ1weqVg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.147.59]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MdefJ-1iHJ3D0quX-00ZgaA; Tue, 02 Jul 2019 11:40:58 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] add driver and MAINTAINERS for poweroff
Date: Tue,  2 Jul 2019 11:40:45 +0200
Message-Id: <20190702094045.3652-4-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702094045.3652-1-frank-w@public-files.de>
References: <20190702094045.3652-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:6FmA4arq4ZzpiAobLjMPQOA6UtycJ2Yp9uDqjSKL0F1XwQyhxZV
 o3Zj4Q4+na5rZtIAKS34Ir22r/3iV6tcpvT1Yte+gGd17xGVUxzysG8nQA37Dl1XrdsuVF2
 vXmRR8wuUzpvqkRyCv7MYJIootWmgi4qdRlyPn9PttDfI9ygAkPzQfXD6dp+8i2/ZC5ULvF
 KhxzfZRd7Dazs/53UHjRQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wsHrJiLhzcY=:43YkmyE05ntG7JmOQ7Y/Qk
 ND5H8cXwUfbAK5DK/eBjq3Qvj4zJYAomi1aE2ODxArk5cVyFNQ7e7R6BdubNZ0Qj4zHHcpBZD
 SeJuEKrWByU4u8qKQUqBHj8+QhkbxMh/A6WkESosw1WyRZOpLCdhjp/GTYdgja1XkfSEBRCD4
 T53brgE4dWiRkkkNaZkXeUSmJ3JWmKTfiJENvfBP612SBHEzMD0wJGFXyxe2JFiX46lTI8Ui/
 2NSuc5eVuu8ZpOHOHJ0ly8tHpLBsWMPoTWrm3mbKOlFu9j/VJ26Ynd+VfVFNh3yb54X2qwjRI
 mpKl9YHeJ2OfmDNaBhRCV8/iah0Yt2z0Pn9pdlazvIR6pzXsE5J/V0i4Xx6EmOKHGb/Gl3mkd
 zDf6+2yO9fxTPumwIcTm0MBCWdtIvujEYrojPqMrOg/dxu7IYAJUKBnncDS9Zw5wgCaaEZySi
 kc3WEhO0Ff+K8jU7UObsIE1rqq+p+XaXGfzDE3mRCqDbO62KRM+rK6gD5/u+vBcxBySDLC6qm
 THS2L/b3NKBnBjAZ4oesT5cNyypTlWI7LuK63vFpZQG/NZeuY5m02F4sGBB3SQGCYVfdPUlqe
 tIrUr4yRlAgwYUEhHkwjQBjCYFbKN0BnrdRMMPE/14hbiFqZJBpMteP9OyJYRPeWyczGTHzvN
 eKHFw/2Mb2UWLR5GN3aK/JHVorxjK4GgkIVSkJ8+4MWE5Z8li9EKBt3axWKUtFuqHwPc4gd0r
 4hmonUtn/A0+PwwD5PlS5LVzW3Fz9/LOndyYx6pxS5rlJKorpfXVYUECjeYuyPN3zoRXp2dLr
 lNbYxvWusi5IfubbULvtqWeJNo82Npl7fm6t/SNQuIKjlxY2HcUChyVncpWyl7GMEgt5DhEPn
 KDfWAxdOBeDjKT75fn+x+ewXIbv6XwJx8l9vlqZobQ/uSoW/XHtI+7Z0WVpbSWN257VTjkbn3
 S5/dyX0xMZ5VW5sTMvMhZlihc0Mtgb2oxzG2/4Lu6Ch5HfzD0RoCnaeOprfDvy+qgyPf+j2sP
 l0ijEIUik1V/H0rWHRLc6cidd4xWQbXJf60+C6tU+eZUkMU6uSY74wwVlFmwOzjg12a1feLPS
 gldbKDCqBPqQBk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_024105_633807_8E0482A9 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Josef Friedl <josef.friedl@speed.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

poweroff for BPI-R2
Suggested-by: Frank Wunderlich <frank-w@public-files.de>

Signed-off-by: Josef Friedl <josef.friedl@speed.at>
---
 MAINTAINERS                           |   1 +
 drivers/mfd/mt6397-core.c             |  40 +++++++---
 drivers/power/reset/Kconfig           |  10 +++
 drivers/power/reset/Makefile          |   1 +
 drivers/power/reset/mt6323-poweroff.c |  97 +++++++++++++++++++++++
 drivers/rtc/rtc-mt6397.c              | 110 ++++++--------------------
 include/linux/mfd/mt6397/core.h       |   2 +
 include/linux/mfd/mt6397/rtc.h        |  71 +++++++++++++++++
 8 files changed, 234 insertions(+), 98 deletions(-)
 create mode 100644 drivers/power/reset/mt6323-poweroff.c
 create mode 100644 include/linux/mfd/mt6397/rtc.h

diff --git a/MAINTAINERS b/MAINTAINERS
index ec6ff342aa3c..31c1e882b7d2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9925,6 +9925,7 @@ M:	Sean Wang <sean.wang@mediatek.com>
 L:	linux-pm@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
+F:	drivers/power/reset/mt6323-poweroff.c

 MEDIATEK JPEG DRIVER
 M:	Rick Chang <rick.chang@mediatek.com>
diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 337bcccdb914..a4abce00f156 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -1,10 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (c) 2014 MediaTek Inc.
+ * Copyright (c) 2014-2018 MediaTek Inc.
  * Author: Flora Fu, MediaTek
  */

 #include <linux/interrupt.h>
+#include <linux/ioport.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
@@ -15,24 +16,27 @@
 #include <linux/mfd/mt6397/registers.h>
 #include <linux/mfd/mt6323/registers.h>

+#define MT6323_RTC_BASE		0x8000
+#define MT6323_RTC_SIZE		0x40
+
 #define MT6397_RTC_BASE		0xe000
 #define MT6397_RTC_SIZE		0x3e

+#define MT6323_PWRC_BASE	0x8000
+#define MT6323_PWRC_SIZE	0x40
+
 #define MT6323_CID_CODE		0x23
 #define MT6391_CID_CODE		0x91
 #define MT6397_CID_CODE		0x97

+static const struct resource mt6323_rtc_resources[] = {
+	DEFINE_RES_MEM(MT6323_RTC_BASE, MT6323_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6323_IRQ_STATUS_RTC),
+};
+
 static const struct resource mt6397_rtc_resources[] = {
-	{
-		.start = MT6397_RTC_BASE,
-		.end   = MT6397_RTC_BASE + MT6397_RTC_SIZE,
-		.flags = IORESOURCE_MEM,
-	},
-	{
-		.start = MT6397_IRQ_RTC,
-		.end   = MT6397_IRQ_RTC,
-		.flags = IORESOURCE_IRQ,
-	},
+	DEFINE_RES_MEM(MT6397_RTC_BASE, MT6397_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6397_IRQ_RTC),
 };

 static const struct resource mt6323_keys_resources[] = {
@@ -45,8 +49,17 @@ static const struct resource mt6397_keys_resources[] = {
 	DEFINE_RES_IRQ(MT6397_IRQ_HOMEKEY),
 };

+static const struct resource mt6323_pwrc_resources[] = {
+	DEFINE_RES_MEM(MT6323_PWRC_BASE, MT6323_PWRC_SIZE),
+};
+
 static const struct mfd_cell mt6323_devs[] = {
 	{
+		.name = "mt6323-rtc",
+		.num_resources = ARRAY_SIZE(mt6323_rtc_resources),
+		.resources = mt6323_rtc_resources,
+		.of_compatible = "mediatek,mt6323-rtc",
+	}, {
 		.name = "mt6323-regulator",
 		.of_compatible = "mediatek,mt6323-regulator"
 	}, {
@@ -57,6 +70,11 @@ static const struct mfd_cell mt6323_devs[] = {
 		.num_resources = ARRAY_SIZE(mt6323_keys_resources),
 		.resources = mt6323_keys_resources,
 		.of_compatible = "mediatek,mt6323-keys"
+	}, {
+		.name = "mt6323-pwrc",
+		.num_resources = ARRAY_SIZE(mt6323_pwrc_resources),
+		.resources = mt6323_pwrc_resources,
+		.of_compatible = "mediatek,mt6323-pwrc"
 	},
 };

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 980951dff834..492678e22088 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -140,6 +140,16 @@ config POWER_RESET_LTC2952
 	  This driver supports an external powerdown trigger and board power
 	  down via the LTC2952. Bindings are made in the device tree.

+config POWER_RESET_MT6323
+       bool "MediaTek MT6323 power-off driver"
+       depends on MFD_MT6397
+       help
+         The power-off driver is responsible for externally shutdown down
+         the power of a remote MediaTek SoC MT6323 is connected to through
+         controlling a tiny circuit BBPU inside MT6323 RTC.
+
+         Say Y if you have a board where MT6323 could be found.
+
 config POWER_RESET_QNAP
 	bool "QNAP power-off driver"
 	depends on OF_GPIO && PLAT_ORION
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 0aebee954ac1..94eaceb01d66 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
 obj-$(CONFIG_POWER_RESET_HISI) += hisi-reboot.o
 obj-$(CONFIG_POWER_RESET_MSM) += msm-poweroff.o
+obj-$(CONFIG_POWER_RESET_MT6323) += mt6323-poweroff.o
 obj-$(CONFIG_POWER_RESET_QCOM_PON) += qcom-pon.o
 obj-$(CONFIG_POWER_RESET_OCELOT_RESET) += ocelot-reset.o
 obj-$(CONFIG_POWER_RESET_PIIX4_POWEROFF) += piix4-poweroff.o
diff --git a/drivers/power/reset/mt6323-poweroff.c b/drivers/power/reset/mt6323-poweroff.c
new file mode 100644
index 000000000000..1caf43d9e46d
--- /dev/null
+++ b/drivers/power/reset/mt6323-poweroff.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Power off through MediaTek PMIC
+ *
+ * Copyright (C) 2018 MediaTek Inc.
+ *
+ * Author: Sean Wang <sean.wang@mediatek.com>
+ *
+ */
+
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/mfd/mt6397/core.h>
+#include <linux/mfd/mt6397/rtc.h>
+
+struct mt6323_pwrc {
+	struct device *dev;
+	struct regmap *regmap;
+	u32 base;
+};
+
+static struct mt6323_pwrc *mt_pwrc;
+
+static void mt6323_do_pwroff(void)
+{
+	struct mt6323_pwrc *pwrc = mt_pwrc;
+	unsigned int val;
+	int ret;
+
+	regmap_write(pwrc->regmap, pwrc->base + RTC_BBPU, RTC_BBPU_KEY);
+	regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR, 1);
+
+	ret = regmap_read_poll_timeout(pwrc->regmap,
+					pwrc->base + RTC_BBPU, val,
+					!(val & RTC_BBPU_CBUSY),
+					MTK_RTC_POLL_DELAY_US,
+					MTK_RTC_POLL_TIMEOUT);
+	if (ret)
+		dev_err(pwrc->dev, "failed to write BBPU: %d\n", ret);
+
+	/* Wait some time until system down, otherwise, notice with a warn */
+	mdelay(1000);
+
+	WARN_ONCE(1, "Unable to power off system\n");
+}
+
+static int mt6323_pwrc_probe(struct platform_device *pdev)
+{
+	struct mt6397_chip *mt6397_chip = dev_get_drvdata(pdev->dev.parent);
+	struct mt6323_pwrc *pwrc;
+	struct resource *res;
+
+	pwrc = devm_kzalloc(&pdev->dev, sizeof(*pwrc), GFP_KERNEL);
+	if (!pwrc)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	pwrc->base = res->start;
+	pwrc->regmap = mt6397_chip->regmap;
+	pwrc->dev = &pdev->dev;
+	mt_pwrc = pwrc;
+
+	pm_power_off = &mt6323_do_pwroff;
+
+	return 0;
+}
+
+static int mt6323_pwrc_remove(struct platform_device *pdev)
+{
+	if (pm_power_off == &mt6323_do_pwroff)
+		pm_power_off = NULL;
+
+	return 0;
+}
+
+static const struct of_device_id mt6323_pwrc_dt_match[] = {
+	{ .compatible = "mediatek,mt6323-pwrc" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, mt6323_pwrc_dt_match);
+
+static struct platform_driver mt6323_pwrc_driver = {
+	.probe          = mt6323_pwrc_probe,
+	.remove         = mt6323_pwrc_remove,
+	.driver         = {
+		.name   = "mt6323-pwrc",
+		.of_match_table = mt6323_pwrc_dt_match,
+	},
+};
+
+module_platform_driver(mt6323_pwrc_driver);
+
+MODULE_DESCRIPTION("Poweroff driver for MT6323 PMIC");
+MODULE_AUTHOR("Sean Wang <sean.wang@mediatek.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index b46ed4dc7015..e5ddf0d0b6f1 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -4,69 +4,19 @@
 * Author: Tianping.Fang <tianping.fang@mediatek.com>
 */

-#include <linux/delay.h>
-#include <linux/init.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/mt6397/core.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/rtc.h>
-#include <linux/irqdomain.h>
-#include <linux/platform_device.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
-#include <linux/io.h>
-#include <linux/mfd/mt6397/core.h>
-
-#define RTC_BBPU		0x0000
-#define RTC_BBPU_CBUSY		BIT(6)
-
-#define RTC_WRTGR		0x003c
-
-#define RTC_IRQ_STA		0x0002
-#define RTC_IRQ_STA_AL		BIT(0)
-#define RTC_IRQ_STA_LP		BIT(3)
-
-#define RTC_IRQ_EN		0x0004
-#define RTC_IRQ_EN_AL		BIT(0)
-#define RTC_IRQ_EN_ONESHOT	BIT(2)
-#define RTC_IRQ_EN_LP		BIT(3)
-#define RTC_IRQ_EN_ONESHOT_AL	(RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
-
-#define RTC_AL_MASK		0x0008
-#define RTC_AL_MASK_DOW		BIT(4)
-
-#define RTC_TC_SEC		0x000a
-/* Min, Hour, Dom... register offset to RTC_TC_SEC */
-#define RTC_OFFSET_SEC		0
-#define RTC_OFFSET_MIN		1
-#define RTC_OFFSET_HOUR		2
-#define RTC_OFFSET_DOM		3
-#define RTC_OFFSET_DOW		4
-#define RTC_OFFSET_MTH		5
-#define RTC_OFFSET_YEAR		6
-#define RTC_OFFSET_COUNT	7
-
-#define RTC_AL_SEC		0x0018
-
-#define RTC_PDN2		0x002e
-#define RTC_PDN2_PWRON_ALARM	BIT(4)
-
-#define RTC_MIN_YEAR		1968
-#define RTC_BASE_YEAR		1900
-#define RTC_NUM_YEARS		128
-#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
-
-struct mt6397_rtc {
-	struct device		*dev;
-	struct rtc_device	*rtc_dev;
-	struct mutex		lock;
-	struct regmap		*regmap;
-	int			irq;
-	u32			addr_base;
-};
+#include <linux/mfd/mt6397/rtc.h>
+#include <linux/mod_devicetable.h>

 static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 {
-	unsigned long timeout = jiffies + HZ;
 	int ret;
 	u32 data;

@@ -74,19 +24,13 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 	if (ret < 0)
 		return ret;

-	while (1) {
-		ret = regmap_read(rtc->regmap, rtc->addr_base + RTC_BBPU,
-				  &data);
-		if (ret < 0)
-			break;
-		if (!(data & RTC_BBPU_CBUSY))
-			break;
-		if (time_after(jiffies, timeout)) {
-			ret = -ETIMEDOUT;
-			break;
-		}
-		cpu_relax();
-	}
+	ret = regmap_read_poll_timeout(rtc->regmap,
+					rtc->addr_base + RTC_BBPU, data,
+					!(data & RTC_BBPU_CBUSY),
+					MTK_RTC_POLL_DELAY_US,
+					MTK_RTC_POLL_TIMEOUT);
+	if (ret < 0)
+		dev_err(rtc->dev, "failed to write WRTGE: %d\n", ret);

 	return ret;
 }
@@ -324,14 +268,11 @@ static int mtk_rtc_probe(struct platform_device *pdev)

 	platform_set_drvdata(pdev, rtc);

-	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
-	if (IS_ERR(rtc->rtc_dev))
-		return PTR_ERR(rtc->rtc_dev);
+	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
+					mtk_rtc_irq_handler_thread,
+					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
+					"mt6397-rtc", rtc);

-	ret = request_threaded_irq(rtc->irq, NULL,
-				   mtk_rtc_irq_handler_thread,
-				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
-				   "mt6397-rtc", rtc);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
 			rtc->irq, ret);
@@ -340,6 +281,10 @@ static int mtk_rtc_probe(struct platform_device *pdev)

 	device_init_wakeup(&pdev->dev, 1);

+	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
+	if (IS_ERR(rtc->rtc_dev))
+		return PTR_ERR(rtc->rtc_dev);
+
 	rtc->rtc_dev->ops = &mtk_rtc_ops;

 	ret = rtc_register_device(rtc->rtc_dev);
@@ -355,15 +300,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	return ret;
 }

-static int mtk_rtc_remove(struct platform_device *pdev)
-{
-	struct mt6397_rtc *rtc = platform_get_drvdata(pdev);
-
-	free_irq(rtc->irq, rtc);
-
-	return 0;
-}
-
 #ifdef CONFIG_PM_SLEEP
 static int mt6397_rtc_suspend(struct device *dev)
 {
@@ -390,6 +326,7 @@ static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
 			mt6397_rtc_resume);

 static const struct of_device_id mt6397_rtc_of_match[] = {
+	{ .compatible = "mediatek,mt6323-rtc", },
 	{ .compatible = "mediatek,mt6397-rtc", },
 	{ }
 };
@@ -402,7 +339,6 @@ static struct platform_driver mtk_rtc_driver = {
 		.pm = &mt6397_pm_ops,
 	},
 	.probe	= mtk_rtc_probe,
-	.remove = mtk_rtc_remove,
 };

 module_platform_driver(mtk_rtc_driver);
diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/core.h
index 25a95e72179b..652da61e3711 100644
--- a/include/linux/mfd/mt6397/core.h
+++ b/include/linux/mfd/mt6397/core.h
@@ -7,6 +7,8 @@
 #ifndef __MFD_MT6397_CORE_H__
 #define __MFD_MT6397_CORE_H__

+#include <linux/mutex.h>
+
 enum mt6397_irq_numbers {
 	MT6397_IRQ_SPKL_AB = 0,
 	MT6397_IRQ_SPKR_AB,
diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
new file mode 100644
index 000000000000..b702c29e8c74
--- /dev/null
+++ b/include/linux/mfd/mt6397/rtc.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2014-2018 MediaTek Inc.
+ *
+ * Author: Tianping.Fang <tianping.fang@mediatek.com>
+ *        Sean Wang <sean.wang@mediatek.com>
+ */
+
+#ifndef _LINUX_MFD_MT6397_RTC_H_
+#define _LINUX_MFD_MT6397_RTC_H_
+
+#include <linux/jiffies.h>
+#include <linux/mutex.h>
+#include <linux/regmap.h>
+#include <linux/rtc.h>
+
+#define RTC_BBPU               0x0000
+#define RTC_BBPU_CBUSY         BIT(6)
+#define RTC_BBPU_KEY            (0x43 << 8)
+
+#define RTC_WRTGR              0x003c
+
+#define RTC_IRQ_STA            0x0002
+#define RTC_IRQ_STA_AL         BIT(0)
+#define RTC_IRQ_STA_LP         BIT(3)
+
+#define RTC_IRQ_EN             0x0004
+#define RTC_IRQ_EN_AL          BIT(0)
+#define RTC_IRQ_EN_ONESHOT     BIT(2)
+#define RTC_IRQ_EN_LP          BIT(3)
+#define RTC_IRQ_EN_ONESHOT_AL  (RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
+
+#define RTC_AL_MASK            0x0008
+#define RTC_AL_MASK_DOW                BIT(4)
+
+#define RTC_TC_SEC             0x000a
+/* Min, Hour, Dom... register offset to RTC_TC_SEC */
+#define RTC_OFFSET_SEC         0
+#define RTC_OFFSET_MIN         1
+#define RTC_OFFSET_HOUR                2
+#define RTC_OFFSET_DOM         3
+#define RTC_OFFSET_DOW         4
+#define RTC_OFFSET_MTH         5
+#define RTC_OFFSET_YEAR                6
+#define RTC_OFFSET_COUNT       7
+
+#define RTC_AL_SEC             0x0018
+
+#define RTC_PDN2               0x002e
+#define RTC_PDN2_PWRON_ALARM   BIT(4)
+
+#define RTC_MIN_YEAR           1968
+#define RTC_BASE_YEAR          1900
+#define RTC_NUM_YEARS          128
+#define RTC_MIN_YEAR_OFFSET    (RTC_MIN_YEAR - RTC_BASE_YEAR)
+
+#define MTK_RTC_POLL_DELAY_US  10
+#define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
+
+struct mt6397_rtc {
+	struct device           *dev;
+	struct rtc_device       *rtc_dev;
+
+	/* Protect register access from multiple tasks */
+	struct mutex            lock;
+	struct regmap           *regmap;
+	int                     irq;
+	u32                     addr_base;
+};
+
+#endif /* _LINUX_MFD_MT6397_RTC_H_ */
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
