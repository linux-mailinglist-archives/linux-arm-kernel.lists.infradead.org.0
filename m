Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904F71B53BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 06:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqQIhKPGUCrTSG3Bja+LRlY8UXLHI8uBntINnR9+10k=; b=G6B0+J0QdLKPvO
	19UPXXBJwGHW1OG+FazccrL06oPdJJ3DLt8Up3YuBmo1aF4qwy4lvB7HxwPt3dzyJvxnPkrLr3EIm
	75jSJJ+QKHaWj4sp5nT+arx9VgsxQe9Y0l2Vey8RSlQAh/qCHqQw9Ujy//V5rG8xOLmkF7hS+ETnW
	AifTqTpyGQK7tFbXYh8RpypaaDFLZt1SlZfYudyFnVLLmKq6GZL6Y+BB5V2o1Qa5LKKa2o4HZpkfk
	43+/q+yCgN59y8Bzz+Cro4j9RtNIUMVkAR/ZOmTCGq3sDfloevtT5ml3PMVVmsG64L5bz5tjZ04+o
	dmgWmG/Rm8KF1b0LkggQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRTg0-0000ax-4l; Thu, 23 Apr 2020 04:41:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRTfg-0000UD-QY
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 04:41:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id n16so2258309pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 21:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=neZvYSmnlNni0Tvb9Upl+depscD06FdC/T7+q9W88go=;
 b=khp/oGR/01tjCHJR9FAzKgTqLxOkhyhJrLYIxNoW1uqawXHuWjAK3+YGS+cpudKFNJ
 nmll8SwP6tlSiP5HwOfx0/ROTjd0MK5SSosbuqyDTBq6BLMEfvk+WFRJagXfBbKzPKSc
 tdKLZQgTqTXkhDTJuTXnAohuZo5DHGsolCk9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=neZvYSmnlNni0Tvb9Upl+depscD06FdC/T7+q9W88go=;
 b=UKCLhWBqrPhtAWw0+zwpBKaUeEHYPjslRrcEZEYjDsdz9Ahd2jhVffhT/7arWp52W7
 V1Ls9emphoI/i1aKgP96oWYN+tdiBZEbImClIdmBLJIsiUNzeCFbEgUvFi65d9l9m3ps
 ht1WiTb5l8hmS4Jz9vkTffo+VQ0kNEYQ2f6BwpKhvpwpBFPjAoxXQVLtGWu8gFgMoVjT
 NE4/7F4nJ27WopoD7uQSQBSxsHg3B3wW0SSWkh7RP95i6RLmp4so9s3GTdsb/6MJgHcV
 2lIqtHNlNr1Xi5CDxtT16o2KK0Wy4j11FicxyC8/Yx4aJH92PG8nypf9PpOYdKfLi9pR
 eY/g==
X-Gm-Message-State: AGi0PubGh+S+QQj4OQK1CdLvYUsTw1DVeVpE2SOakReLuQFq4UHYnLxQ
 rgSP4yt7OFIfUrYTD7hTQ3X9kw==
X-Google-Smtp-Source: APiQypJV1Op/V2nJFwiLrojnBAS+UzKJgYYJGHrz2PD2lunNoBIe75jm/jo9lXnByDLTKnar6dCK/g==
X-Received: by 2002:a63:eb15:: with SMTP id t21mr2274211pgh.279.1587616867954; 
 Wed, 22 Apr 2020 21:41:07 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id r78sm1254705pfr.10.2020.04.22.21.41.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 21:41:07 -0700 (PDT)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 2/2] watchdog: Add new arm_smc_wdt watchdog driver
Date: Thu, 23 Apr 2020 14:40:36 +1000
Message-Id: <20200423143945.v5.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200423044036.234578-1-evanbenn@chromium.org>
References: <20200423044036.234578-1-evanbenn@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_214108_875082_5AAA73AA 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
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

Changes in v5:
- Make timeleft return 0 on error
- Use type punning on smc_func_id to save an alloc
- Change compatible to arm,smc-wdt

Changes in v4:
- Get smc-id from of property
- Return a1 instead of a0 in timeleft

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
 drivers/watchdog/arm_smc_wdt.c | 189 +++++++++++++++++++++++++++++++++
 5 files changed, 205 insertions(+)
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 0f2b39767bfa9..2b782bbff200a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1462,6 +1462,7 @@ M:	Julius Werner <jwerner@chromium.org>
 R:	Evan Benn <evanbenn@chromium.org>
 S:	Maintained
 F:	devicetree/bindings/watchdog/arm-smc-wdt.yaml
+F:	drivers/watchdog/arm_smc_wdt.c
 
 ARM SMMU DRIVERS
 M:	Will Deacon <will@kernel.org>
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 24e534d850454..0619df80f7575 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -513,6 +513,7 @@ CONFIG_UNIPHIER_THERMAL=y
 CONFIG_WATCHDOG=y
 CONFIG_ARM_SP805_WATCHDOG=y
 CONFIG_ARM_SBSA_WATCHDOG=y
+CONFIG_ARM_SMC_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
 CONFIG_DW_WATCHDOG=y
 CONFIG_SUNXI_WATCHDOG=m
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 0663c604bd642..c440b576d23bf 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -867,6 +867,19 @@ config DIGICOLOR_WATCHDOG
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
index 6de2e4ceef190..97bed1d3d97cb 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -94,6 +94,7 @@ obj-$(CONFIG_UNIPHIER_WATCHDOG) += uniphier_wdt.o
 obj-$(CONFIG_RTD119X_WATCHDOG) += rtd119x_wdt.o
 obj-$(CONFIG_SPRD_WATCHDOG) += sprd_wdt.o
 obj-$(CONFIG_PM8916_WATCHDOG) += pm8916_wdt.o
+obj-$(CONFIG_ARM_SMC_WATCHDOG) += arm_smc_wdt.o
 
 # X86 (i386 + ia64 + x86_64) Architecture
 obj-$(CONFIG_ACQUIRE_WDT) += acquirewdt.o
diff --git a/drivers/watchdog/arm_smc_wdt.c b/drivers/watchdog/arm_smc_wdt.c
new file mode 100644
index 0000000000000..7e14909bddda2
--- /dev/null
+++ b/drivers/watchdog/arm_smc_wdt.c
@@ -0,0 +1,189 @@
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
+static int smcwd_call(struct watchdog_device *wdd, enum smcwd_call call,
+		      unsigned long arg, struct arm_smccc_res *res)
+{
+	struct arm_smccc_res local_res;
+
+	if (!res)
+		res = &local_res;
+
+	arm_smccc_smc((u32)(uintptr_t)watchdog_get_drvdata(wdd), call, arg, 0,
+		      0, 0, 0, 0, res);
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
+	return smcwd_call(wdd, SMCWD_PET, 0, NULL);
+}
+
+static unsigned int smcwd_get_timeleft(struct watchdog_device *wdd)
+{
+	struct arm_smccc_res res;
+
+	smcwd_call(wdd, SMCWD_GET_TIMELEFT, 0, &res);
+	if (res.a0)
+		return 0;
+	return res.a1;
+}
+
+static int smcwd_set_timeout(struct watchdog_device *wdd, unsigned int timeout)
+{
+	int res;
+
+	res = smcwd_call(wdd, SMCWD_SET_TIMEOUT, timeout, NULL);
+	if (!res)
+		wdd->timeout = timeout;
+	return res;
+}
+
+static int smcwd_stop(struct watchdog_device *wdd)
+{
+	return smcwd_call(wdd, SMCWD_ENABLE, 0, NULL);
+}
+
+static int smcwd_start(struct watchdog_device *wdd)
+{
+	return smcwd_call(wdd, SMCWD_ENABLE, 1, NULL);
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
+	u32 smc_func_id;
+
+	wdd = devm_kzalloc(&pdev->dev, sizeof(*wdd), GFP_KERNEL);
+	if (!wdd)
+		return -ENOMEM;
+	platform_set_drvdata(pdev, wdd);
+
+	err = of_property_read_u32(pdev->dev.of_node, "arm,smc-id",
+				   &smc_func_id);
+	if (err < 0)
+		return err;
+	watchdog_set_drvdata(wdd, (void *)(uintptr_t)smc_func_id);
+
+	err = smcwd_call(wdd, SMCWD_INIT, 0, &res);
+	if (err < 0)
+		return err;
+
+	wdd->info = &smcwd_info;
+	/* get_timeleft is optional */
+	if (smcwd_call(wdd, SMCWD_GET_TIMELEFT, 0, NULL))
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
+	dev_info(&pdev->dev,
+		 "Watchdog registered (timeout=%d sec, nowayout=%d)\n",
+		 wdd->timeout, nowayout);
+
+	return 0;
+}
+
+static const struct of_device_id smcwd_dt_ids[] = {
+	{ .compatible = "arm,smc-wdt" },
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
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
