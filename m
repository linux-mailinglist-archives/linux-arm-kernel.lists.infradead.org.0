Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2EA836FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aZtuGl8fzn8W3HZiYRx+rH7p9huSaOqyQ8cLy1V3RGM=; b=En/70urItAWFclBv6vbOE9JnN/
	urojju4TFlnfHUBeALMrF5YlEgZ+ofL+yxmhMJEbnO7kCc+zDEr4Gn8auSSKcNlcFssnObkFQeXSX
	D1EhDfAs/4gcgx9dGN5T47E8tQ/hyM+P4HG0AApvnvt5+XMXMyGs01Ox3jqKQwb5l+OdQ4YpD654D
	xptLdaOoZDszZOL/e3devWC7e5H5DRj3k7HeUGrqMkO2SY1zMZbNdyPp4QwCAgCxqHlJjlkQNMMXp
	8rD8PhBZSn+XOeGr6T6eGYpW/BPJx2bCKg48hg9ZWZuXnqNJgiOpCDXhedUyBBASKXBvr19lBGFLD
	6jiXPoRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2MO-0003jr-LT; Tue, 06 Aug 2019 16:30:52 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2KW-0000Vs-FP; Tue, 06 Aug 2019 16:28:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565108895;
 bh=YYhqVadKi9Ny0MQd5nYruiuZfLEPo+Mk45x6ClJf9vs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=X83wdvbqiQWov+vx/Y7tRkRKeHEWDZQ1V/OIOhPqZlZSuEcGdBa4PjJbohz7I98bI
 kpRE8qR2VzutyxDD5oiXHioiI6NxRZLqdNA0XjD8jx0dd2lRidR2r7HmYlTU8nWnH+
 +39FXC15ccBpn7mmYUc0x9YgDRFEt0sx2RhailYY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.153.94]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MUHbK-1hmosH0fqc-00R3PH; Tue, 06 Aug 2019 18:28:15 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v4 08/10] power: reset: add driver for mt6323 poweroff
Date: Tue,  6 Aug 2019 18:27:43 +0200
Message-Id: <20190806162745.8414-9-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806162745.8414-1-frank-w@public-files.de>
References: <20190806162745.8414-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:6Nvk99cZ4lkB9xXKbFHJNhLkUhjDQqkoO6Kw5xHbaPS4bfFc+ZK
 L++rabZ5AN/jHCYnXxRJEEEXCxbcwkN3wdiog2qdFNtuUogjRNuCBaI50Gid9dje9t8G9Ao
 XfOOXB5l6M9HypzOxjicoJ0X/YIhinGJNdqjLmUq+3F/8ZQ+MFu9X9pqnL+dGseaYJZdVSI
 EUo9BMQ7NVolRdr5SMKGQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/OknRzOgVBc=:EcfajLlIrF9zRC/n3HTFb+
 4yz6pWy+aN60wl1VmTNhazBOCARSZwKmxZ2PMpKC21LrUxLZ9o5Em1RpeGQbnK6iBLjubbK4c
 fC2vf7M4Hrb2nYBfjMCVLEwZmOPnl5KWE61t63ZvHk8KnlRZUcxcFRhEM+MILP2OUYF/Zi2L1
 KkB2AF2UI+ubXds6y5z2pKY+AjtpIbKKHjiLFemGEGPgxH6TN3M+ArnR0aeZE5m7Ugv1xP43w
 3h3DJrkuWwkDwVjWL2M1+bWspLdbAHLFe7pmKrXD/bgglFmoBhhXYLI3JVsx1i+XW5CSSCqyd
 gxy6YH1gqhc6RBtKcHcVarA22FY8q9TQyNebXjBpef282yLjs8OiD6gIQtDhXefx1vBeaPAZ7
 U36lgM11tpAOP6kXC9adcQ+qHDwslgyJBVRSoOBnHfuv8cswa1jvfqCLQKPHj4UpfL3YPJfxI
 KyXVmyEOFr8+KRwJXphi/hs3xCXEQ74IZkwZiLATb8kG6KyGFKfelBbgCAPsLhGCNAqcbexFC
 gvkZeY0xSyt+5J/ykRy7j5UzpAhLo6qvzLaiJI3ijdQR3eviUUWrnWmY7MNiAt6AiVMdodE0i
 Wc6QhioBqWdYqycJfeHwo5udxp+PpzqdyVy3ze9dvgAvrWIXgq0clm81tP7McLvsVolYk/rsG
 GaOroiN2ekc0IZKsSoNZ3FsEYUFFd30fwzqI0hoURTHxY/+ScX41KP2yke2Td4X7U7BKQLB9Z
 rXyq7HgweWoBL0n6J92dJh0e7WeOVJGC8cCbGhPOK2qlAb71dFp7qEZ9unWNPw7JfF353kpXm
 AOrY/r5HufLyl5kJPuWU4X4o0h3NR/IAOHQzqb8NssupaY8y0GTawVSMPEgOPeK3yVFRVQxoQ
 eBhFeRuEp9LVNZ82hdTKbJzv0TTbyZozfXKppITdlFgvlqViyhO8z/PweR5I3iAYogQmMxb8g
 JPcE5U/PoV/l1iP0ElUAOoQdIdSwPCqcRyWc9Mk+S/yfAN0Q3jt0vO8W0JRAnojPe5A/Ic4L0
 jkw+Haz2mgKJolIB/7Pc+O3j8aQxwjFgVzzC2J4A0Z5LnYyRKe1sXC1lY4ALrSM6XOrxSRNv0
 Fs606no9/swNQA04yKiBtfe5YgGxyxo1PePptaJedEQt9Q93MtXCIA6LQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092856_822693_74665B59 
X-CRM114-Status: GOOD (  16.96  )
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

add poweroff driver for mt6323 and make Makefile and Kconfig-Entries

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v3: none
changes since v2: none (=v2 part 5)

 drivers/power/reset/Kconfig           | 10 +++
 drivers/power/reset/Makefile          |  1 +
 drivers/power/reset/mt6323-poweroff.c | 97 +++++++++++++++++++++++++++
 include/linux/mfd/mt6397/core.h       |  2 +
 4 files changed, 110 insertions(+)
 create mode 100644 drivers/power/reset/mt6323-poweroff.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index a564237278ff..c721939767eb 100644
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
index 85da3198e4e0..da37f8b851dc 100644
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
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
