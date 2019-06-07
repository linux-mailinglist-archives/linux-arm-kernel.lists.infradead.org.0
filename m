Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C763961D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1rKfesul2CCQ4HYdaYV07zkAgUGObMGtTbfezvYJ5s=; b=Iyovkat8NGKK6j
	zJ/7q6Pcg0blB7N1SYYKmqGctpxQeY+lXFzvn7QjFu8aNIfZJPSZtrF65uK0rFm7lfO7sWgHUn92k
	W1c6Sre66J5i/vZoBqRIj7KyrEqX9H3kepSuOFFPcrrQSVjg/IebEvB2zoMcVi7Dzqf9pgVaVi1g4
	q1GfPmhVuctSV79Dsu2vwBKqbGWLTsVwmG9zC+glEgFSXZpLJo3+OCsYuUvdcntUYud9RYdZ7kH0u
	wNivfnuaACWyLY7TN+boTAgGbBbTLJ/Mqsds3077/4zb7XuK7nwW+yZ6/sXKxPe7uFgV19rdcHanU
	d4pUlJMPmVHnPzhI/yjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKma-0000Mn-Ta; Fri, 07 Jun 2019 19:44:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKm8-00006e-K9; Fri, 07 Jun 2019 19:43:46 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B8D9208E3;
 Fri,  7 Jun 2019 19:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559936624;
 bh=GJ+QUPOmqyMWmUxURQkzA0pp+rSOKSz2pl7nJLh+RMU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SKbOO26sT5XEOapBMw/AuZoThvOSfFkw4w9M+A34WaTRQf2fVb96J4g2vDEXOAzak
 InAy+7qukY1NEhd03LB2wkKeFPQ5jcQYSZPjZQ17s6z0vjd+mmY8vkthUwH6LwXzos
 cmRifOzaftSYPLrS42G4d5K+vNt5ZDLsGZJD9V8g=
From: Kevin Hilman <khilman@kernel.org>
To: linux-rtc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 2/2] rtc: Add Amlogic Virtual Wake RTC
Date: Fri,  7 Jun 2019 12:43:43 -0700
Message-Id: <20190607194343.18359-2-khilman@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607194343.18359-1-khilman@kernel.org>
References: <20190607194343.18359-1-khilman@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_124344_694465_FBF098E5 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Neil Armstrong <narmstrong@baylibre.com>

The 64-bit Amlogic SoCs uses a special register to store the time in
seconds to wakeup after a system suspend.

In order to be able to reuse the RTC wakealarm feature, this
driver implements a fake RTC device which uses the system time
to deduce a suspend delay.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
[khilman: rebase to v5.2-rc, moved from do_gettimeofday()]
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
Originally written/sumbmitted by Neil as part of a broader/suspend
resume series[1] for the GXBB family.  Newer SoCs support PSCI
properly, so don't need the PSCI changes there, and this driver alone
enables RTC wakeups from suspend.

[1] https://lore.kernel.org/lkml/1478183365-23708-1-git-send-email-narmstrong@baylibre.com/

 drivers/rtc/Kconfig          |  11 +++
 drivers/rtc/Makefile         |   1 +
 drivers/rtc/rtc-meson-vrtc.c | 149 +++++++++++++++++++++++++++++++++++
 3 files changed, 161 insertions(+)
 create mode 100644 drivers/rtc/rtc-meson-vrtc.c

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 5c0790eed656..78d2967d5ee3 100644
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
 	tristate "Rockchip RK805/RK808/RK818 RTC"
 	depends on MFD_RK808
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index 9d997faa2c26..9485fb46b023 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -101,6 +101,7 @@ obj-$(CONFIG_RTC_DRV_MAX8907)	+= rtc-max8907.o
 obj-$(CONFIG_RTC_DRV_MAX8925)	+= rtc-max8925.o
 obj-$(CONFIG_RTC_DRV_MAX8997)	+= rtc-max8997.o
 obj-$(CONFIG_RTC_DRV_MAX8998)	+= rtc-max8998.o
+obj-$(CONFIG_RTC_DRV_MESON_VRTC)+= rtc-meson-vrtc.o
 obj-$(CONFIG_RTC_DRV_MC13XXX)	+= rtc-mc13xxx.o
 obj-$(CONFIG_RTC_DRV_MCP795)	+= rtc-mcp795.o
 obj-$(CONFIG_RTC_DRV_MESON)	+= rtc-meson.o
diff --git a/drivers/rtc/rtc-meson-vrtc.c b/drivers/rtc/rtc-meson-vrtc.c
new file mode 100644
index 000000000000..f695f65ab199
--- /dev/null
+++ b/drivers/rtc/rtc-meson-vrtc.c
@@ -0,0 +1,149 @@
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
+	struct platform_device *pdev;
+	void __iomem *io_alarm;
+	struct rtc_device *rtc;
+	unsigned long alarm_time;
+};
+
+static int meson_vrtc_read_time(struct device *dev, struct rtc_time *tm)
+{
+	unsigned long local_time;
+	struct timespec64 time;
+
+	ktime_get_raw_ts64(&time);
+	local_time = time.tv_sec - (sys_tz.tz_minuteswest * 60);
+	rtc_time_to_tm(local_time, tm);
+
+	return 0;
+}
+
+static void meson_vrtc_set_wakeup_time(struct meson_vrtc_data *vrtc,
+				       unsigned long time)
+{
+	writel_relaxed(time, vrtc->io_alarm);
+
+	dev_dbg(&vrtc->pdev->dev, "set_wakeup_time: %lu\n", time);
+}
+
+static int meson_vrtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
+{
+	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
+	struct timespec64 time;
+	unsigned long local_time;
+	unsigned long alarm_secs;
+	int ret;
+
+	if (alarm->enabled) {
+		ret = rtc_tm_to_time(&alarm->time, &alarm_secs);
+		if (ret)
+			return ret;
+
+		ktime_get_raw_ts64(&time);
+		local_time = time.tv_sec - (sys_tz.tz_minuteswest * 60);
+
+		vrtc->alarm_time = alarm_secs;
+
+		if (alarm_secs >= local_time) {
+			alarm_secs = alarm_secs - local_time;
+
+			meson_vrtc_set_wakeup_time(vrtc, alarm_secs);
+
+			pr_debug("system will wakeup %lus later\n", alarm_secs);
+		}
+	} else {
+		vrtc->alarm_time = 0;
+		meson_vrtc_set_wakeup_time(vrtc, 0);
+	}
+
+	return 0;
+}
+
+static int meson_vrtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
+{
+	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
+
+	if (!vrtc->alarm_time) {
+		alm->enabled = true;
+
+		rtc_time_to_tm(vrtc->alarm_time, &alm->time);
+	}
+
+	return 0;
+}
+
+static const struct rtc_class_ops meson_vrtc_ops = {
+	.read_time = meson_vrtc_read_time,
+	.set_alarm = meson_vrtc_set_alarm,
+	.read_alarm = meson_vrtc_read_alarm,
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
+	vrtc->pdev = pdev;
+
+	/* Alarm registers */
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
+int meson_vrtc_resume(struct platform_device *pdev)
+{
+	struct meson_vrtc_data *vrtc = platform_get_drvdata(pdev);
+
+	meson_vrtc_set_wakeup_time(vrtc, 0);
+
+	return 0;
+}
+
+static const struct of_device_id meson_vrtc_dt_match[] = {
+	{ .compatible = "amlogic,meson-vrtc"},
+	{},
+};
+MODULE_DEVICE_TABLE(of, meson_vrtc_dt_match);
+
+struct platform_driver meson_vrtc_driver = {
+	.driver = {
+		.name = "meson-vrtc",
+		.of_match_table = meson_vrtc_dt_match,
+	},
+	.probe = meson_vrtc_probe,
+	.resume = meson_vrtc_resume,
+};
+
+module_platform_driver(meson_vrtc_driver);
+
+MODULE_DESCRIPTION("Amlogic Virtual Wakeup RTC Timer driver");
+MODULE_LICENSE("GPL");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
