Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9AE19CFD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 07:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzpK1P+dlLJVGzyFKs2DSLa9UPx5TB5iaYDb2pXB0k4=; b=lxmE6UlHpz8tuH
	Xfz+Kex6uGiasUx2mA8U/ebAFsmoX8cSWdPSiuC7xTsg5XWVOk0gT+Ki0jwd0LcktbGWU6YiVU7uL
	vwJiFPEbsvOo6IqA4414FxSGxHZXiQcavBw+tmhbMdgw/Kml0v69v2s7rUz9pXIbrmGzJr9RvCimx
	TGD5NckE2NroUyAgJJfbHuGa1ezma3oC4h7HJmcgPwWzGkYCoOF5xKkI1U5N1uqZO0EEI8RDbZjj+
	d+v5zEqDUwusE8nwPK0nAlhfJ2TmByGlU/2YkMktwwKmEUBnTFjHQvcsTtwnHbk4bvgOB3nOY57Rs
	QjlXC9njj3bEhhC394/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKEuJ-0004Z9-IJ; Fri, 03 Apr 2020 05:30:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKEtm-0004Ql-4z
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 05:29:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id c21so2949652pfo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 22:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IOQ4VkXOlVBsS6AzreYmGymNEVK3siv1or7MyGGQVX8=;
 b=kUKOiWpA3TIGUUOBf+V9dnf5HdXryMdctV3Rr3d12wkarso1RyRmeEyi5QmvymvQS0
 rBvsk4g9TDCV3wIXHXpTrvjwLqTkgaPSlY9NjHCDBwoW4ttjJp2EeKiQPIBXWMEpETRe
 MSwoxXpe2DMmMvluxmDVVhaKIWef4ObpuZ/Kc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IOQ4VkXOlVBsS6AzreYmGymNEVK3siv1or7MyGGQVX8=;
 b=FEyVFuyGqfOPH/kjVQAM+cR8MwWROUCX46WSoxU8bI9oVg9gCTs5bbXMw3CWz0THBa
 y57sIVUF5VN8SNhhNr8EvSpqN2K0xXxmA3llHWqxwxKXwONezHb75TzE84jZnRZSpcTK
 GznwLn/EddoJW8RJmDnxM2RCZKxZBnLUHmTY6M/A89Xyxyfo4VMOf8A0cEY+r8PFRyxK
 vilOvwIQ2WuSS+XByCuSDJ31HP/GjB2XcMSOl7Sh0zbGDC324KCs98R8GMn3xAkHwnsg
 Nb31jfEaAGyM+/+BDr9StewuVWLp7K4UZYFRqMJyN2ooZO/rRHgegczXPPJYaRKHAiet
 eHjw==
X-Gm-Message-State: AGi0PuYRLBcODAuKEWufiDNuxGUhOaC7COsoSMpWVpI+peG4z22valmh
 wppB/ZT0ZEjDAXWkIJoD/H+Erw==
X-Google-Smtp-Source: APiQypJQcxlAo0WAx64joAbtIcVTCkL01eab8EGORvPmpQeFKKY7MDtevBA32CimWeqlV3+AQxbc7g==
X-Received: by 2002:a63:e210:: with SMTP id q16mr6481381pgh.26.1585891785270; 
 Thu, 02 Apr 2020 22:29:45 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id p9sm4496022pgs.50.2020.04.02.22.29.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 22:29:44 -0700 (PDT)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] watchdog: Add new arm_smd_wdt watchdog driver
Date: Fri,  3 Apr 2020 16:29:00 +1100
Message-Id: <20200403162742.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200403052900.258855-1-evanbenn@chromium.org>
References: <20200403052900.258855-1-evanbenn@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_222946_237690_60CEEAAC 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, jwerner@chromium.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julius Werner <jwerner@chromium.org>

This patch adds a watchdog driver that can be used on ARM systems
with the appropriate watchdog implemented in Secure Monitor firmware.
The driver communicates with firmware via a Secure Monitor Call.
This may be useful for platforms using TrustZone that want
the Secure Monitor firmware to have the final control over the watchdog.

This is implemented on mt8173 chromebook devices oak, elm and hana in
arm trusted firmware file plat/mediatek/mt8173/drivers/wdt/wdt.c.

Signed-off-by: Julius Werner <jwerner@chromium.org>
Signed-off-by: Evan Benn <evanbenn@chromium.org>

---

Changes in v3:
- Add optional get_timeleft op
- change name to arm_smc_wdt

Changes in v2:
- use watchdog_stop_on_reboot
- use watchdog_stop_on_unregister
- use devm_watchdog_register_device
- remove smcwd_shutdown, smcwd_remove
- change error codes

 MAINTAINERS                    |   1 +
 arch/arm64/configs/defconfig   |   1 +
 drivers/watchdog/Kconfig       |  13 +++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/arm_smc_wdt.c | 181 +++++++++++++++++++++++++++++++++
 5 files changed, 197 insertions(+)
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

diff --git a/MAINTAINERS b/MAINTAINERS
index af8842b998a93..2ec83d4c1032f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1426,6 +1426,7 @@ M:	Julius Werner <jwerner@chromium.org>
 R:	Evan Benn <evanbenn@chromium.org>
 S:	Maintained
 F:	devicetree/bindings/watchdog/arm-smc-wdt.yaml
+F:	drivers/watchdog/arm_smc_wdt.c
 
 ARM SMMU DRIVERS
 M:	Will Deacon <will@kernel.org>
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4db223dbc5499..b5117d46c1d96 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -467,6 +467,7 @@ CONFIG_QCOM_SPMI_TEMP_ALARM=m
 CONFIG_UNIPHIER_THERMAL=y
 CONFIG_WATCHDOG=y
 CONFIG_ARM_SP805_WATCHDOG=y
+CONFIG_ARM_SMC_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
 CONFIG_DW_WATCHDOG=y
 CONFIG_SUNXI_WATCHDOG=m
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 9ea2b43d4b012..2a44af10d9beb 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -859,6 +859,19 @@ config DIGICOLOR_WATCHDOG
 	  To compile this driver as a module, choose M here: the
 	  module will be called digicolor_wdt.
 
+config ARM_SMC_WATCHDOG
+	tristate "ARM Secure Monitor Call based watchdog support"
+	depends on ARM || ARM64
+	depends on OF
+	depends on HAVE_ARM_SMCCC
+	select WATCHDOG_CORE
+	help
+	  Say Y here to include support for a watchdog timer
+	  implemented by the EL3 Secure Monitor on ARM platforms.
+	  Requires firmware support.
+	  To compile this driver as a module, choose M here: the
+	  module will be called arm_smc_wdt.
+
 config LPC18XX_WATCHDOG
 	tristate "LPC18xx/43xx Watchdog"
 	depends on ARCH_LPC18XX || COMPILE_TEST
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 2ee352bf3372d..ec9d4337dad70 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -93,6 +93,7 @@ obj-$(CONFIG_UNIPHIER_WATCHDOG) += uniphier_wdt.o
 obj-$(CONFIG_RTD119X_WATCHDOG) += rtd119x_wdt.o
 obj-$(CONFIG_SPRD_WATCHDOG) += sprd_wdt.o
 obj-$(CONFIG_PM8916_WATCHDOG) += pm8916_wdt.o
+obj-$(CONFIG_ARM_SMC_WATCHDOG) += arm_smc_wdt.o
 
 # X86 (i386 + ia64 + x86_64) Architecture
 obj-$(CONFIG_ACQUIRE_WDT) += acquirewdt.o
diff --git a/drivers/watchdog/arm_smc_wdt.c b/drivers/watchdog/arm_smc_wdt.c
new file mode 100644
index 0000000000000..468995f776b3c
--- /dev/null
+++ b/drivers/watchdog/arm_smc_wdt.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * ARM Secure Monitor Call watchdog driver
+ *
+ * Copyright 2020 Google LLC.
+ * Julius Werner <jwerner@chromium.org>
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
+	SMCWD_INIT		= 0,
+	SMCWD_SET_TIMEOUT	= 1,
+	SMCWD_ENABLE		= 2,
+	SMCWD_PET		= 3,
+	SMCWD_GET_TIMELEFT	= 4,
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
+	if (res->a0 == PSCI_RET_NOT_SUPPORTED)
+		return -ENODEV;
+	if (res->a0 == PSCI_RET_INVALID_PARAMS)
+		return -EINVAL;
+	if (res->a0 != PSCI_RET_SUCCESS)
+		return -EIO;
+	return 0;
+}
+
+static int smcwd_ping(struct watchdog_device *wdd)
+{
+	return smcwd_call(SMCWD_PET, 0, NULL);
+}
+
+static unsigned int smcwd_get_timeleft(struct watchdog_device *wdd)
+{
+	struct arm_smccc_res res;
+
+	smcwd_call(SMCWD_GET_TIMELEFT, 0, &res);
+	return res.a0;
+}
+
+static int smcwd_set_timeout(struct watchdog_device *wdd, unsigned int timeout)
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
+	.start		= smcwd_start,
+	.stop		= smcwd_stop,
+	.ping		= smcwd_ping,
+	.set_timeout	= smcwd_set_timeout,
+};
+
+static const struct watchdog_ops smcwd_timeleft_ops = {
+	.start		= smcwd_start,
+	.stop		= smcwd_stop,
+	.ping		= smcwd_ping,
+	.set_timeout	= smcwd_set_timeout,
+	.get_timeleft	= smcwd_get_timeleft,
+};
+
+static int smcwd_probe(struct platform_device *pdev)
+{
+	struct watchdog_device *wdd;
+	int err;
+	struct arm_smccc_res res;
+
+	err = smcwd_call(SMCWD_INIT, 0, &res);
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
+	/* get_timeleft is optional */
+	if (smcwd_call(SMCWD_GET_TIMELEFT, 0, NULL))
+		wdd->ops = &smcwd_ops;
+	else
+		wdd->ops = &smcwd_timeleft_ops;
+	wdd->timeout = res.a2;
+	wdd->max_timeout = res.a2;
+	wdd->min_timeout = res.a1;
+	wdd->parent = &pdev->dev;
+
+	watchdog_stop_on_reboot(wdd);
+	watchdog_stop_on_unregister(wdd);
+	watchdog_set_nowayout(wdd, nowayout);
+	watchdog_init_timeout(wdd, timeout, &pdev->dev);
+	err = smcwd_set_timeout(wdd, wdd->timeout);
+	if (err)
+		return err;
+
+	err = devm_watchdog_register_device(&pdev->dev, wdd);
+	if (err)
+		return err;
+
+	dev_info(&pdev->dev, "Watchdog registered (timeout=%d sec, nowayout=%d)\n",
+		 wdd->timeout, nowayout);
+
+	return 0;
+}
+
+static const struct of_device_id smcwd_dt_ids[] = {
+	{ .compatible = "mediatek,mt8173-smc-wdt" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, smcwd_dt_ids);
+
+static struct platform_driver smcwd_driver = {
+	.probe		= smcwd_probe,
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
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
