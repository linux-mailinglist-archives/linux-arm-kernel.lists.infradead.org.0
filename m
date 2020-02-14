Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6041915D215
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jmDE09szONcExTnOfEHDxNUlnDZ1ITU/iltW+c6iUI=; b=aSQCdxkjEZe9Da
	dclCkzXWzjImJ9DMVuyhzSTVtRW3OKW9AI+Lo7BqzWCMfgVAQAuFUo30CyaYtxUs8E2ZJQlBYVvFe
	BhJfuJMo2wWyuSGuhd+lOA6gY012cv041AL/JW82gUjqHKAi0YJQU8SchWVQ/lvcZ4YaHBR4+RhLZ
	5z4FQSn2cnPDUvBCmAx+pFB0DEdb7LchQdRqAg1jaAAwKaQ2QCzFtkq5EPAJYm7nXTv+beRYxJJUX
	+FtfYZ+Nasfczo2r7QREJu+VLIe0LJfbC3L1Z4gVMqiJALP0O5gYXQP5UE1UgyP6aZH8Yd44j+TYC
	XzHeLYwY03Ot76G6gzMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2URb-0002xV-GM; Fri, 14 Feb 2020 06:27:19 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2URO-0002vs-9c
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 06:27:08 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m13so3505959pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 22:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6m0wKT11+R7CJOjoRsWO8Pr4RXElruZP9dFH32DME6A=;
 b=TImDPxVECGTtF6BbPylZ9cw+7NQkr+joHRgULdu0By3TTXb4F3KG8t6hy6dky7kcmM
 mjtwJntZfDFB5K0WjL3OPrRlq9B7UiXAlsgz4kW38cqqZ3qIMOPvG1sKuKCa4rE5Q2r0
 c13VPYxVc72XVLRF27VITFldOyhLHaZKqv5bo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6m0wKT11+R7CJOjoRsWO8Pr4RXElruZP9dFH32DME6A=;
 b=man20WWeRNOvnPs2PSQQHjypePEV5v1Z7rB++JX56QiGQ39bGRXZFcI+DBdUPl/lqb
 HBaeM3gJ02Qjm34tEZpamAets+V137mlYeYSI5TsYp1b7kkkozFyXxXL+Vqu5mh6TI6X
 l9/xBZ3lsiqoqocPn2mbjepOFnVY/qDt24LcKr7/5+/ouWLdZ7YZqeHF6wrEfLE7FoLn
 xW1cHUZMt7RaqzLdkzvNn3Vx4Eu6eqmQUkdyJdXuHMmVOYW401PkXUM0hCYtNeJ5ma66
 OmwAVlVnN0PvvtcI/Wv22losWcRBQ2+5525jtoWASCaOE0SDoTcOIluO1nzw8OL6H2Jh
 aQOA==
X-Gm-Message-State: APjAAAWQ9AqTeoUG4xKt4Xi4TJcEuj8n0P4Sr7EMfQ+Y6BlIbQybzVpd
 rkK3Pu6gj5CPcud2F8YDWPenSA==
X-Google-Smtp-Source: APXvYqwRQzy01yvP1qdp4CpmYWfbRAnEmQyWpWeZDsTF/s84Aytl8amytxh/5yICPiaKASuHVg7P9g==
X-Received: by 2002:a17:90a:c389:: with SMTP id
 h9mr1757635pjt.128.1581661625273; 
 Thu, 13 Feb 2020 22:27:05 -0800 (PST)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id r198sm5660030pfr.54.2020.02.13.22.26.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 22:27:04 -0800 (PST)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] watchdog: Add new arm_smc_wdt watchdog driver
Date: Fri, 14 Feb 2020 17:26:37 +1100
Message-Id: <20200214172512.2.I7c8247c29891a538f258cb47828d58acf22c95a2@changeid>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200214062637.216209-1-evanbenn@chromium.org>
References: <20200214062637.216209-1-evanbenn@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_222706_336236_CA89E6DA 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-watchdog@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Evan Benn <evanbenn@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, jwerner@chromium.org,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julius Werner <jwerner@chromium.org>

This patch adds a stub watchdog driver that can be used on ARM systems
with a Secure Monitor firmware to forward watchdog operations to
firmware via a Secure Monitor Call. This may be useful for platforms
using TrustZone that want the Secure Monitor firmware to have the final
control over the watchdog.

Signed-off-by: Julius Werner <jwerner@chromium.org>
Signed-off-by: Evan Benn <evanbenn@chromium.org>
---

 MAINTAINERS                    |   1 +
 arch/arm64/configs/defconfig   |   1 +
 drivers/watchdog/Kconfig       |  12 +++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/arm_smc_wdt.c | 191 +++++++++++++++++++++++++++++++++
 5 files changed, 206 insertions(+)
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 5c45536e1177..71df3c110fdb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1426,6 +1426,7 @@ M:	Julius Werner <jwerner@chromium.org>
 R:	Evan Benn <evanbenn@chromium.org>
 S:	Maintained
 F:	devicetree/bindings/watchdog/arm,smc-wdt.yaml
+F:	drivers/watchdog/arm_smc_wdt.c
 
 ARM SMMU DRIVERS
 M:	Will Deacon <will@kernel.org>
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b2f667307f82..8527db9e92a6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -451,6 +451,7 @@ CONFIG_QCOM_TSENS=y
 CONFIG_UNIPHIER_THERMAL=y
 CONFIG_WATCHDOG=y
 CONFIG_ARM_SP805_WATCHDOG=y
+CONFIG_ARM_SMC_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
 CONFIG_DW_WATCHDOG=y
 CONFIG_SUNXI_WATCHDOG=m
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index cec868f8db3f..0f7f93342051 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -857,6 +857,18 @@ config DIGICOLOR_WATCHDOG
 	  To compile this driver as a module, choose M here: the
 	  module will be called digicolor_wdt.
 
+config ARM_SMC_WATCHDOG
+	tristate "ARM Secure Monitor Call based watchdog support"
+	depends on ARM || ARM64
+	select WATCHDOG_CORE
+	help
+	  Say Y here to include support for a watchdog timer
+	  implemented by the EL3 Secure Monitor on ARM platforms.
+	  Requires firmware support.
+	  To compile this driver as a module, choose M here: the
+	  module will be called arm_smc_wdt.
+
+
 config LPC18XX_WATCHDOG
 	tristate "LPC18xx/43xx Watchdog"
 	depends on ARCH_LPC18XX || COMPILE_TEST
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 2ee352bf3372..a1e6d83a7659 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -92,6 +92,7 @@ obj-$(CONFIG_STM32_WATCHDOG) += stm32_iwdg.o
 obj-$(CONFIG_UNIPHIER_WATCHDOG) += uniphier_wdt.o
 obj-$(CONFIG_RTD119X_WATCHDOG) += rtd119x_wdt.o
 obj-$(CONFIG_SPRD_WATCHDOG) += sprd_wdt.o
+obj-$(CONFIG_ARM_SMC_WATCHDOG) += arm_smc_wdt.o
 obj-$(CONFIG_PM8916_WATCHDOG) += pm8916_wdt.o
 
 # X86 (i386 + ia64 + x86_64) Architecture
diff --git a/drivers/watchdog/arm_smc_wdt.c b/drivers/watchdog/arm_smc_wdt.c
new file mode 100644
index 000000000000..58e7294136ef
--- /dev/null
+++ b/drivers/watchdog/arm_smc_wdt.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * ARM Secure Monitor Call watchdog driver
+ *
+ * Copyright 2018 The Chromium OS Authors. All rights reserved.
+ *
+ * Julius Werner <jwerner@chromium.org>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Based on mtk_wdt.c
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/types.h>
+#include <linux/watchdog.h>
+#include <uapi/linux/psci.h>
+
+#define DRV_NAME		"arm_smc_wdt"
+#define DRV_VERSION		"1.0"
+
+#define SMCWD_FUNC_ID		0x82003d06
+
+enum smcwd_call {
+	SMCWD_INFO		= 0,
+	SMCWD_SET_TIMEOUT	= 1,
+	SMCWD_ENABLE		= 2,
+	SMCWD_PET		= 3,
+};
+
+static bool nowayout = WATCHDOG_NOWAYOUT;
+static unsigned int timeout;
+
+static int smcwd_call(enum smcwd_call call, unsigned long arg,
+		      struct arm_smccc_res *res)
+{
+	struct arm_smccc_res local_res;
+
+	if (!res)
+		res = &local_res;
+
+	arm_smccc_smc(SMCWD_FUNC_ID, call, arg, 0, 0, 0, 0, 0, res);
+
+	if ((int)res->a0 == PSCI_RET_NOT_SUPPORTED)
+		return -ENOTSUPP;
+	if ((int)res->a0 == PSCI_RET_INVALID_PARAMS)
+		return -EINVAL;
+	if ((int)res->a0 < 0)
+		return -EIO;
+	return res->a0;
+}
+
+static int smcwd_ping(struct watchdog_device *wdd)
+{
+	return smcwd_call(SMCWD_PET, 0, NULL);
+}
+
+static int smcwd_set_timeout(struct watchdog_device *wdd,
+				unsigned int timeout)
+{
+	int res;
+
+	res = smcwd_call(SMCWD_SET_TIMEOUT, timeout, NULL);
+	if (!res)
+		wdd->timeout = timeout;
+	return res;
+}
+
+static int smcwd_stop(struct watchdog_device *wdd)
+{
+	return smcwd_call(SMCWD_ENABLE, 0, NULL);
+}
+
+static int smcwd_start(struct watchdog_device *wdd)
+{
+	return smcwd_call(SMCWD_ENABLE, 1, NULL);
+}
+
+static const struct watchdog_info smcwd_info = {
+	.identity	= DRV_NAME,
+	.options	= WDIOF_SETTIMEOUT |
+			  WDIOF_KEEPALIVEPING |
+			  WDIOF_MAGICCLOSE,
+};
+
+static const struct watchdog_ops smcwd_ops = {
+	.owner		= THIS_MODULE,
+	.start		= smcwd_start,
+	.stop		= smcwd_stop,
+	.ping		= smcwd_ping,
+	.set_timeout	= smcwd_set_timeout,
+};
+
+static int smcwd_probe(struct platform_device *pdev)
+{
+	struct watchdog_device *wdd;
+	int err;
+	struct arm_smccc_res res;
+
+	err = smcwd_call(SMCWD_INFO, 0, &res);
+	if (err < 0)
+		return err;
+
+	wdd = devm_kzalloc(&pdev->dev, sizeof(*wdd), GFP_KERNEL);
+	if (!wdd)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, wdd);
+
+	wdd->info = &smcwd_info;
+	wdd->ops = &smcwd_ops;
+	wdd->timeout = res.a2;
+	wdd->max_timeout = res.a2;
+	wdd->min_timeout = res.a1;
+	wdd->parent = &pdev->dev;
+
+	watchdog_set_nowayout(wdd, nowayout);
+	watchdog_init_timeout(wdd, timeout, &pdev->dev);
+	err = smcwd_set_timeout(wdd, wdd->timeout);
+	if (err)
+		return err;
+
+	err = watchdog_register_device(wdd);
+	if (err)
+		return err;
+
+	dev_info(&pdev->dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
+			wdd->timeout, nowayout);
+
+	return 0;
+}
+
+static void smcwd_shutdown(struct platform_device *pdev)
+{
+	struct watchdog_device *wdd = platform_get_drvdata(pdev);
+
+	if (watchdog_active(wdd))
+		smcwd_stop(wdd);
+}
+
+static int smcwd_remove(struct platform_device *pdev)
+{
+	struct watchdog_device *wdd = platform_get_drvdata(pdev);
+
+	watchdog_unregister_device(wdd);
+
+	return 0;
+}
+
+static const struct of_device_id smcwd_dt_ids[] = {
+	{ .compatible = "arm,smc-wdt" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, smcwd_dt_ids);
+
+static struct platform_driver smcwd_driver = {
+	.probe		= smcwd_probe,
+	.remove		= smcwd_remove,
+	.shutdown	= smcwd_shutdown,
+	.driver		= {
+		.name		= DRV_NAME,
+		.of_match_table	= smcwd_dt_ids,
+	},
+};
+
+module_platform_driver(smcwd_driver);
+
+module_param(timeout, uint, 0);
+MODULE_PARM_DESC(timeout, "Watchdog heartbeat in seconds");
+
+module_param(nowayout, bool, 0);
+MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
+			__MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Julius Werner <jwerner@chromium.org>");
+MODULE_DESCRIPTION("ARM Secure Monitor Call Watchdog Driver");
+MODULE_VERSION(DRV_VERSION);
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
