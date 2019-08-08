Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD42D85934
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 06:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYGezOhj7NeOetFPo4CPOtCNIDBbJv9m4h2mk90MJJw=; b=R3JmysETM7l7Ng
	LMakmKWkz093O1bHVIsMzcyf1vYxFO3Jx0x+/BF9PTTRZK0NlNRfTA8ezBAlrwtClgHb5Vdp6NyTc
	bGqezhTGwavzkV7Q+vI4OoBDcZ/d7hGAUU3+jnSnMkVCZhPxied3UXHuw69y8kKEL3673LGKKnYP8
	luGtAiPYAzjEC3msb+N0aDSFbkdguu74t9sWoRhoWBMcNLqneNg3YfQecxJ+/5+tJcUdSl2wYiuB5
	GoieDx+LI0aIeCHZ43sfpaeuDmJ/GIm43gGnZ/65fI2g+bU7EqS+pUng3NzJGgDp06Jw3XvhqBHij
	h+Eswr0HZ3eAR9Rj3EVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZzC-0006cr-S5; Thu, 08 Aug 2019 04:25:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZy9-00061L-2P; Thu, 08 Aug 2019 04:24:06 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B607B21743;
 Thu,  8 Aug 2019 04:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565238244;
 bh=NQpIQJrYfNfRB6Kbbni2dCL41z7UZicaOJuU+9k4hDw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DisW0jjVhy5Rhdj5nNZCPj/t5tB66CoL3FFaEq9oMImqy1fjBDgBMhIRQ4sQxTk4/
 GoFpRnZrMGFhKSnkafqsBHofCX60EWWjhSL1jN0iGGtMZXspOYSllotmIzHoHApfba
 ubgP/WgUuz6hBg3dPBPXO+F6TwHtqJSfvlbgAC1E=
From: Kevin Hilman <khilman@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-rtc@vger.kernel.org
Subject: [PATCH v2 2/2] rtc: Add Amlogic Virtual Wake RTC
Date: Wed,  7 Aug 2019 21:23:57 -0700
Message-Id: <20190808042357.4663-3-khilman@kernel.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808042357.4663-1-khilman@kernel.org>
References: <20190808042357.4663-1-khilman@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_212405_155222_0A867B82 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Neil Armstrong <narmstrong@baylibre.com>

The Amlogic Meson GX SoCs uses a special register to store the
time in seconds to wakeup after a system suspend.

In order to be able to reuse the RTC wakealarm feature, this
driver implements a fake RTC device which uses the system time
to deduce a suspend delay.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
[khilman: rebase to v5.3-rc, rework and modernization]
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 MAINTAINERS                  |   1 +
 drivers/rtc/Kconfig          |  11 +++
 drivers/rtc/Makefile         |   1 +
 drivers/rtc/rtc-meson-vrtc.c | 153 +++++++++++++++++++++++++++++++++++
 4 files changed, 166 insertions(+)
 create mode 100644 drivers/rtc/rtc-meson-vrtc.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 783569e3c4b4..2ae83e1acb05 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1443,6 +1443,7 @@ F:	arch/arm64/boot/dts/amlogic/
 F:	drivers/pinctrl/meson/
 F:	drivers/mmc/host/meson*
 F:	drivers/soc/amlogic/
+F:	drivers/rtc/rtc-meson*
 N:	meson
 
 ARM/Amlogic Meson SoC Sound Drivers
diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index e72f65b61176..7cd325ecc10b 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -373,6 +373,17 @@ config RTC_DRV_MAX77686
 	  This driver can also be built as a module. If so, the module
 	  will be called rtc-max77686.
 
+config RTC_DRV_MESON_VRTC
+	tristate "Amlogic Meson Virtual RTC"
+	depends on ARCH_MESON || COMPILE_TEST
+	default m if ARCH_MESON
+	help
+	  If you say yes here you will get support for the
+	  Virtual RTC of Amlogic SoCs.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called rtc-meson-vrtc.
+
 config RTC_DRV_RK808
 	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 RTC"
 	depends on MFD_RK808
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index 6b09c21dc1b6..b50fd3aa81b3 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -102,6 +102,7 @@ obj-$(CONFIG_RTC_DRV_MAX8907)	+= rtc-max8907.o
 obj-$(CONFIG_RTC_DRV_MAX8925)	+= rtc-max8925.o
 obj-$(CONFIG_RTC_DRV_MAX8997)	+= rtc-max8997.o
 obj-$(CONFIG_RTC_DRV_MAX8998)	+= rtc-max8998.o
+obj-$(CONFIG_RTC_DRV_MESON_VRTC)+= rtc-meson-vrtc.o
 obj-$(CONFIG_RTC_DRV_MC13XXX)	+= rtc-mc13xxx.o
 obj-$(CONFIG_RTC_DRV_MCP795)	+= rtc-mcp795.o
 obj-$(CONFIG_RTC_DRV_MESON)	+= rtc-meson.o
diff --git a/drivers/rtc/rtc-meson-vrtc.c b/drivers/rtc/rtc-meson-vrtc.c
new file mode 100644
index 000000000000..bdf9c2fe5b91
--- /dev/null
+++ b/drivers/rtc/rtc-meson-vrtc.c
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
+ */
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/rtc.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/time64.h>
+
+struct meson_vrtc_data {
+	void __iomem *io_alarm;
+	struct rtc_device *rtc;
+	unsigned long alarm_time;
+	bool enabled;
+};
+
+static int meson_vrtc_read_time(struct device *dev, struct rtc_time *tm)
+{
+	struct timespec64 time;
+
+	dev_dbg(dev, "%s\n", __func__);
+	ktime_get_raw_ts64(&time);
+	rtc_time64_to_tm(time.tv_sec, tm);
+
+	return 0;
+}
+
+static void meson_vrtc_set_wakeup_time(struct meson_vrtc_data *vrtc,
+				       unsigned long time)
+{
+	writel_relaxed(time, vrtc->io_alarm);
+}
+
+static int meson_vrtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
+{
+	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "%s: alarm->enabled=%d\n", __func__, alarm->enabled);
+	if (alarm->enabled)
+		vrtc->alarm_time = rtc_tm_to_time64(&alarm->time);
+	else
+		vrtc->alarm_time = 0;
+
+	return 0;
+}
+
+static int meson_vrtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
+{
+	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
+
+	vrtc->enabled = enabled;
+	return 0;
+}
+
+static const struct rtc_class_ops meson_vrtc_ops = {
+	.read_time = meson_vrtc_read_time,
+	.set_alarm = meson_vrtc_set_alarm,
+	.alarm_irq_enable = meson_vrtc_alarm_irq_enable,
+};
+
+static int meson_vrtc_probe(struct platform_device *pdev)
+{
+	struct meson_vrtc_data *vrtc;
+	struct resource *res;
+
+	vrtc = devm_kzalloc(&pdev->dev, sizeof(*vrtc), GFP_KERNEL);
+	if (!vrtc)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	vrtc->io_alarm = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(vrtc->io_alarm))
+		return PTR_ERR(vrtc->io_alarm);
+
+	device_init_wakeup(&pdev->dev, 1);
+
+	platform_set_drvdata(pdev, vrtc);
+
+	vrtc->rtc = devm_rtc_device_register(&pdev->dev, "meson-vrtc",
+					     &meson_vrtc_ops, THIS_MODULE);
+	if (IS_ERR(vrtc->rtc))
+		return PTR_ERR(vrtc->rtc);
+
+	return 0;
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int meson_vrtc_suspend(struct device *dev)
+{
+	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "%s\n", __func__);
+	if (vrtc->alarm_time) {
+		unsigned long local_time;
+		long alarm_secs;
+		struct timespec64 time;
+
+		ktime_get_raw_ts64(&time);
+		local_time = time.tv_sec;
+
+		dev_dbg(dev, "alarm_time = %lus, local_time=%lus\n",
+			vrtc->alarm_time, local_time);
+		alarm_secs = vrtc->alarm_time - local_time;
+		if (alarm_secs > 0) {
+			meson_vrtc_set_wakeup_time(vrtc, alarm_secs);
+			dev_dbg(dev, "system will wakeup in %lds.\n",
+				alarm_secs);
+		} else {
+			dev_err(dev, "alarm time already passed: %lds.\n",
+				alarm_secs);
+		}
+	}
+
+	return 0;
+}
+
+static int meson_vrtc_resume(struct device *dev)
+{
+	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "%s\n", __func__);
+
+	vrtc->alarm_time = 0;
+	meson_vrtc_set_wakeup_time(vrtc, 0);
+	return 0;
+}
+#endif
+static SIMPLE_DEV_PM_OPS(meson_vrtc_pm_ops,
+			 meson_vrtc_suspend, meson_vrtc_resume);
+
+static const struct of_device_id meson_vrtc_dt_match[] = {
+	{ .compatible = "amlogic,meson-vrtc"},
+	{},
+};
+MODULE_DEVICE_TABLE(of, meson_vrtc_dt_match);
+
+static struct platform_driver meson_vrtc_driver = {
+	.probe = meson_vrtc_probe,
+	.driver = {
+		.name = "meson-vrtc",
+		.of_match_table = meson_vrtc_dt_match,
+		.pm = &meson_vrtc_pm_ops,
+	},
+};
+
+module_platform_driver(meson_vrtc_driver);
+
+MODULE_DESCRIPTION("Amlogic Virtual Wakeup RTC Timer driver");
+MODULE_LICENSE("GPL");
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
