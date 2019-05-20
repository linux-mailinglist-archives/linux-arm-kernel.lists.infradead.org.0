Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B55231AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eh77ocaw6plrOjh96IKAaKW+h+pkhVWC5r17wbPgiKc=; b=E+11Xc5VyuHkOK
	KNvEiag9Qd+TXRVhl4pmvAHIfF2kTVyp7TPVTYLRi+yOU1KfGqwXeZMT4tM/I+5f9irpRnfE6YnRW
	HcJA2DsLU53PnP6GCnY00UZGu012z5ZqB9/ygJrC0HmLVgHVsqJQ1/s6gYHQEAC3H6j4vNSK4IEI5
	TeatkFa/7pXAvsH3cBmNzrpcz/s1fnzdZmrd5bBiyRqxCjg28iEruBnA0HWlSIGhhzcREErIjost7
	kH9caXSy8nrKD43aXK8Pv8nyFKdtCDdWdDhQxKFQ9khH514WmpToAZ8rsGcFL+kxDptYd5F26Vz/W
	PIEg1jQf0t1s/JZhssMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfqH-0001NE-GE; Mon, 20 May 2019 10:48:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfpY-0000Zp-A9; Mon, 20 May 2019 10:47:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B410AAFDD;
 Mon, 20 May 2019 10:47:40 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFC v2 5/5] cpufreq: add driver for Raspbery Pi
Date: Mon, 20 May 2019 12:47:07 +0200
Message-Id: <20190520104708.11980-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520104708.11980-1-nsaenzjulienne@suse.de>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_034744_646126_3F81186C 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Raspberry Pi's firmware offers and interface though which update it's
performance requirements. It allows us to request for specific runtime
frequencies, which the firmware might or might not respect, depending on
the firmware configuration and thermals.

As the maximum and minimum frequencies are configurable in the firmware
there is no way to know in advance their values. So the Raspberry Pi
cpufreq driver queries them, builds an opp frequency table to then
launch cpufreq-dt.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/cpufreq/Kconfig.arm           |  8 +++
 drivers/cpufreq/Makefile              |  1 +
 drivers/cpufreq/raspberrypi-cpufreq.c | 83 +++++++++++++++++++++++++++
 3 files changed, 92 insertions(+)
 create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c

diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
index 179a1d302f48..f6eba7ae50d0 100644
--- a/drivers/cpufreq/Kconfig.arm
+++ b/drivers/cpufreq/Kconfig.arm
@@ -308,3 +308,11 @@ config ARM_PXA2xx_CPUFREQ
 	  This add the CPUFreq driver support for Intel PXA2xx SOCs.
 
 	  If in doubt, say N.
+
+config ARM_RASPBERRYPI_CPUFREQ
+	tristate "Raspberry Pi cpufreq support"
+	depends on RASPBERRYPI_FIRMWARE || COMPILE_TEST
+	help
+	  This adds the CPUFreq driver for Raspberry Pi
+
+	  If in doubt, say N.
diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
index 689b26c6f949..02678e9b2ff5 100644
--- a/drivers/cpufreq/Makefile
+++ b/drivers/cpufreq/Makefile
@@ -84,6 +84,7 @@ obj-$(CONFIG_ARM_TEGRA124_CPUFREQ)	+= tegra124-cpufreq.o
 obj-$(CONFIG_ARM_TEGRA186_CPUFREQ)	+= tegra186-cpufreq.o
 obj-$(CONFIG_ARM_TI_CPUFREQ)		+= ti-cpufreq.o
 obj-$(CONFIG_ARM_VEXPRESS_SPC_CPUFREQ)	+= vexpress-spc-cpufreq.o
+obj-$(CONFIG_ARM_RASPBERRYPI_CPUFREQ) 	+= raspberrypi-cpufreq.o
 
 
 ##################################################################################
diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c b/drivers/cpufreq/raspberrypi-cpufreq.c
new file mode 100644
index 000000000000..a85988867d56
--- /dev/null
+++ b/drivers/cpufreq/raspberrypi-cpufreq.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Raspberry Pi cpufreq driver
+ *
+ * Copyright (C) 2019, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
+ */
+
+#include <linux/of.h>
+#include <linux/clk.h>
+#include <linux/cpu.h>
+#include <linux/module.h>
+#include <linux/pm_opp.h>
+#include <linux/cpufreq.h>
+#include <linux/platform_device.h>
+
+static const struct of_device_id machines[] __initconst = {
+	{ .compatible = "raspberrypi,3-model-b-plus" },
+	{ .compatible = "raspberrypi,3-model-b" },
+	{ /* sentinel */ }
+};
+
+static int __init raspberrypi_cpufreq_driver_init(void)
+{
+	struct platform_device *pdev;
+	struct device *cpu_dev;
+	struct clk *clk;
+	long min, max;
+	long rate;
+	int ret;
+
+	if (!of_match_node(machines, of_root))
+		return -ENODEV;
+
+	cpu_dev = get_cpu_device(0);
+	if (!cpu_dev) {
+		pr_err("Cannot get CPU for cpufreq driver\n");
+		return -ENODEV;
+	}
+
+	clk = clk_get(cpu_dev, 0);
+	if (IS_ERR(clk)) {
+		dev_err(cpu_dev, "Cannot get clock for CPU0\n");
+		return PTR_ERR(clk);
+	}
+
+	/*
+	 * The max and min frequencies are configurable in the Raspberry Pi
+	 * firmware, so we query them at runtime
+	 */
+	min = clk_round_rate(clk, 0);
+	max = clk_round_rate(clk, ULONG_MAX);
+	clk_put(clk);
+
+	for (rate = min; rate < max; rate += 100000000) {
+		ret = dev_pm_opp_add(cpu_dev, rate, 0);
+		if (ret)
+			goto remove_opp;
+	}
+
+	ret = dev_pm_opp_add(cpu_dev, max, 0);
+	if (ret)
+		goto remove_opp;
+
+	pdev = platform_device_register_data(NULL, "cpufreq-dt", -1, NULL, 0);
+	ret = PTR_ERR_OR_ZERO(pdev);
+	if (ret) {
+		dev_err(cpu_dev, "Failed to create platform device, %d\n", ret);
+		goto remove_opp;
+	}
+
+	return 0;
+
+remove_opp:
+	dev_pm_opp_remove_all_dynamic(cpu_dev);
+
+	return ret;
+}
+
+late_initcall(raspberrypi_cpufreq_driver_init);
+
+MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de");
+MODULE_DESCRIPTION("Raspberry Pi cpufreq driver");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
