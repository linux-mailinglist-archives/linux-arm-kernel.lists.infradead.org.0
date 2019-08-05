Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9076813C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 09:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jA82aO6mjU5WXUzSboBv3BVthp5fTPSgqfV4AQ1qJTE=; b=jPJ6TIpp0EeaWw
	8wKemBsoAaaoXhFyZyqeQg7sa0aw9DB34/RwOqF72zibt1CL5v1WbNHU6oiXySmESxd32l09R+eBO
	kEvyVue5nWKy08khVH7vHw2Cfv3lO9bUlpgW8PGeTOL+OQDuAo3MYvTb03ZlMFHuu70Un4dRynH8L
	QTBEhtHiZ2vAq+CZEPahE0bkBuP5Hv19vJYH9LF+7gj6L9HD8/gK4FSvkzhrfqpBs00g9FaPTIztC
	uZcAJQOtAmZroAsPO+sRlOt4mawX4B15yIdEjCzIe+r+k7oRxC9r15L0xybsIr/5RR4czO42uzKv0
	wg3/BtnbGU9er68wopyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXtJ-0001XY-Fs; Mon, 05 Aug 2019 07:58:49 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXt1-0001X1-8X
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 07:58:33 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MLAF0-1hcKXl0u5i-00IAXS; Mon, 05 Aug 2019 09:58:23 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Sebastian Reichel <sre@kernel.org>
Subject: [PATCH] power: reset: make reboot-mode user selectable
Date: Mon,  5 Aug 2019 09:57:15 +0200
Message-Id: <20190805075812.1056069-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:eB6KAa6NN+juzvqJXgzHBfsfG/scGuoWUNe/iXcQ4WsqcfrIT4c
 abT1fGHqLKnDU5AgeZfPXwiEpachq2sxcC1bcghQEJVDXahbDdkuKpdlceGWMvv2oLT517f
 1AhDr+hSSSGpK5xTRq7TXJuaN+Af28kshLMnVtDBs+9CuaXJTVrcVo3pFjPnS0NokZ11J0a
 YJROpXnDR2Y39WdDhBsHA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tNJ49rDmRec=:vWYI6b80lwQs6h4UnOE/YK
 Y+ceupVhOpprNmKpqD8SEcdR/9rX4DtZrdgekpLYIKV1PrgXJn9mmmOzSdWlNhujkTCFvmPu4
 msJpr9EICT9JyMGOwBRfVZQEK+OiGDYli9CF9X8mzSnXFU1Zdm0Lbfr5nfEi1RlUVBqIhhign
 qSJKFtNuZIqzS+J3NwRiyhFmHPdNNlHAS1TngkYd4rOaPlPN9udRhkeSVQYcbZ5UOKUhM8zRw
 CiNRAiASlTJhkdf3SD7dd8HHY4qi9TgUaHuGZ162ELSL3lBKP9pIAXAHnagZRX+A5UZQJZPjp
 WGFcOhF8GAAo0wEWeKqTTNXj19b7f2iBprSaYwBjZDMlSPBTHDsaU1G1NuoYS+hl+G74CJc7U
 einXiunzhprAU95Wi9wfLGmwuDLE4/t8Bqu46aAvnlfamSutlpy4ZbyQFoIiFCvpQbt0vdrDZ
 tvsI1B5pDfz3o98w8Asv3sz7jycXvKevk7ExEMoRJJ/SIPgLYaCtCuMPAXncFGOJrKdMFU/gs
 +6U9imBonMlivUCizLAreqCKA19lO/5tgmnK+feOjUCRvpUd23Wb1dTm6LW1UMl337Sj5hny0
 47fZdXMq6R+xvWXWv42BuSynTY4t8fjcqVpeD1b4BC7kFS1UMOdRCajQQzG8Sb7cPnPxtflZU
 wXqrbyMaCNr4KzcVSlfohsZjbzKxV8KfYmADtDpZG+Wm+wuxA64nGgsCO+S7EFYdHwZPAUZN7
 Vp2SauL0pj1f9+4pN9CX/IGuSoCFB0ALAHu0SQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_005831_590000_884575FC 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Nandor Han <nandor.han@vaisala.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nandor Han points out that there might be drivers that can use
the reboot-mode interfaces but might also be usable on configurations
without device tree.

Move the 'depends on OF' dependency into CONFIG_REBOOT_MODE since
that is the only thing that truely has a compile-time dependency
on CONFIG_OF, and make it user visible to make it possible to
disable it.

The drivers that used to 'select REBOOT_MODE' of course now have to
use 'depends on REBOOT_MODE instead'. With this, we can soften the
dependency and allow compile-testing the three front-end drivers
on non-OF platforms.

Note: anyone who was using a reboot mode driver in their kernel
configuration now has to enable CONFIG_REBOOT_MODE as well.

Suggested-by: Nandor Han <nandor.han@vaisala.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
Nandor, this is so far untested, could you make sure this
works in all configurations and forward it along with the
bugfix?

Sebastian, I'm not convinced this is a good idea, just sending
it as Nandor requested. Please decide for yourself.
---
 arch/arm/configs/davinci_all_defconfig |  1 +
 arch/arm64/configs/defconfig           |  1 +
 drivers/power/reset/Kconfig            | 22 +++++++++++++---------
 include/linux/reboot-mode.h            | 20 ++++++++++++++++++++
 4 files changed, 35 insertions(+), 9 deletions(-)

diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index b34970ce6b31..ebf506c01899 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -139,6 +139,7 @@ CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_RESET_CONTROLLER=y
 CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_GPIO=y
+CONFIG_REBOOT_MODE=m
 CONFIG_SYSCON_REBOOT_MODE=m
 CONFIG_BATTERY_LEGO_EV3=m
 CONFIG_WATCHDOG=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..bb7d7bec1413 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -419,6 +419,7 @@ CONFIG_ROCKCHIP_IODOMAIN=y
 CONFIG_POWER_RESET_MSM=y
 CONFIG_POWER_RESET_XGENE=y
 CONFIG_POWER_RESET_SYSCON=y
+CONFIG_REBOOT_MODE=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_BATTERY_SBS=m
 CONFIG_BATTERY_BQ27XXX=y
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index a564237278ff..997323d443f5 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -9,6 +9,13 @@ menuconfig POWER_RESET
 
 if POWER_RESET
 
+config REBOOT_MODE
+	tristate "Pass reboot-mode to firmware"
+	depends on OF
+	help
+	  Some drivers allow setting the reboot mode through a platform
+	  interface that the boot firmware can read.
+
 config POWER_RESET_AS3722
 	bool "ams AS3722 power-off driver"
 	depends on MFD_AS3722
@@ -107,9 +114,9 @@ config POWER_RESET_MSM
 
 config POWER_RESET_QCOM_PON
 	tristate "Qualcomm power-on driver"
-	depends on ARCH_QCOM
+	depends on ARCH_QCOM || COMPILE_TEST
 	depends on MFD_SPMI_PMIC
-	select REBOOT_MODE
+	depends on REBOOT_MODE || !REBOOT_MODE
 	help
 	  Power On support for Qualcomm boards.
 	  If you have a Qualcomm platform and need support for
@@ -223,14 +230,11 @@ config POWER_RESET_ZX
 	help
 	  Reboot support for ZTE SoCs.
 
-config REBOOT_MODE
-	tristate
-
 config SYSCON_REBOOT_MODE
 	tristate "Generic SYSCON regmap reboot mode driver"
-	depends on OF
+	depends on OF || COMPILE_TEST
 	depends on MFD_SYSCON
-	select REBOOT_MODE
+	depends on REBOOT_MODE || !REBOOT_MODE
 	help
 	  Say y here will enable reboot mode driver. This will
 	  get reboot mode arguments and store it in SYSCON mapped
@@ -248,8 +252,8 @@ config POWER_RESET_SC27XX
 
 config NVMEM_REBOOT_MODE
 	tristate "Generic NVMEM reboot mode driver"
-	depends on OF
-	select REBOOT_MODE
+	depends on OF || COMPILE_TEST
+	depends on REBOOT_MODE || !REBOOT_MODE
 	help
 	  Say y here will enable reboot mode driver. This will
 	  get reboot mode arguments and store it in a NVMEM cell,
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index 4a2abb38d1d6..bd002060e3d0 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -9,11 +9,31 @@ struct reboot_mode_driver {
 	struct notifier_block reboot_notifier;
 };
 
+#if IS_ENABLED(CONFIG_REBOOT_MODE)
 int reboot_mode_register(struct reboot_mode_driver *reboot);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot);
 int devm_reboot_mode_register(struct device *dev,
 			      struct reboot_mode_driver *reboot);
 void devm_reboot_mode_unregister(struct device *dev,
 				 struct reboot_mode_driver *reboot);
+#else
+static inline int reboot_mode_register(struct reboot_mode_driver *reboot)
+{
+	return 0;
+}
+static inline int reboot_mode_unregister(struct reboot_mode_driver *reboot)
+{
+	return 0;
+}
+static inline int devm_reboot_mode_register(struct device *dev,
+			      struct reboot_mode_driver *reboot)
+{
+	return 0;
+}
+static inline void devm_reboot_mode_unregister(struct device *dev,
+				 struct reboot_mode_driver *reboot)
+{
+}
+#endif
 
 #endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
