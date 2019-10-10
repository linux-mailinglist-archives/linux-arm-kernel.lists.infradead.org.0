Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E528FD1D44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ms4uOft4SOHurpSj3eBkdW7Z1A5XWteELDfA6w06Lw=; b=MhU/R7DTyX637s
	TJwFyodRGUqUNPYIPL/Ou57GhqYdHofxwoDFYjf1OQSDqZ0+8h0bac/VuWlnDwbz68ArrgMt7gCqg
	GlZ6E0nquArNZZLaLo4XE7h/4+ZSQ55anglX/lupvMgGHpKGYJLX0RZogaBtU4pQwADtnk4tA4U3t
	Y2+BvdXwIwr9HpCid6kvbztUTWJu5OUyby/9qLtsWH7qpA0ePfsk8wNB5Ku8SO1lLTTzck9zn8wH5
	ZPXm7blIHpxWQwklxN8wIqPaRt6zxMGs+xEasx0LNlXrUGDktgOj56QUbjINbEy0a6ruNHactPOUA
	xv/WvMKlMUUKEpssehTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIM5f-0008JI-Js; Thu, 10 Oct 2019 00:13:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIM4J-0007EZ-GC
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:12:37 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 953928140;
 Thu, 10 Oct 2019 00:13:07 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 5/8] ARM: OMAP2+: Configure voltage controller for cpcap
Date: Wed,  9 Oct 2019 17:12:21 -0700
Message-Id: <20191010001224.41826-6-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010001224.41826-1-tony@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_171235_605791_D90D6380 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org, Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can configure voltage controller for cpcap with the data available in
Motorola Mapphone Android Linux kernel. Let's add it so we can have droid4
behave the same way for voltage controller as other omap4 devices and save
some power when idle.

Note that we're now using high-speed i2c mode, looks like the Motorola
kernel had a typo using 0x200 instead of 200 for the timings which may
caused it to not work properly.

Also note that in the long run, this should just become dts data for a
voltage controller device driver. But let's get things working first to
make it possible to test further changes easily.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/Makefile     |   5 +
 arch/arm/mach-omap2/omap_twl.c   |   5 -
 arch/arm/mach-omap2/pm.c         |   1 +
 arch/arm/mach-omap2/pm.h         |  14 ++
 arch/arm/mach-omap2/pmic-cpcap.c | 265 +++++++++++++++++++++++++++++++
 5 files changed, 285 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/mach-omap2/pmic-cpcap.c

diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -29,6 +29,11 @@ obj-y += mcbsp.o
 endif
 
 obj-$(CONFIG_TWL4030_CORE) += omap_twl.o
+
+ifneq ($(CONFIG_MFD_CPCAP),)
+obj-y 					+= pmic-cpcap.o
+endif
+
 obj-$(CONFIG_SOC_HAS_OMAP2_SDRC)	+= sdrc.o
 
 # SMP support ONLY available for OMAP4
diff --git a/arch/arm/mach-omap2/omap_twl.c b/arch/arm/mach-omap2/omap_twl.c
--- a/arch/arm/mach-omap2/omap_twl.c
+++ b/arch/arm/mach-omap2/omap_twl.c
@@ -36,11 +36,6 @@
 #define OMAP4_VDD_CORE_SR_VOLT_REG	0x61
 #define OMAP4_VDD_CORE_SR_CMD_REG	0x62
 
-#define OMAP4_VP_CONFIG_ERROROFFSET	0x00
-#define OMAP4_VP_VSTEPMIN_VSTEPMIN	0x01
-#define OMAP4_VP_VSTEPMAX_VSTEPMAX	0x04
-#define OMAP4_VP_VLIMITTO_TIMEOUT_US	200
-
 static bool is_offset_valid;
 static u8 smps_offset;
 
diff --git a/arch/arm/mach-omap2/pm.c b/arch/arm/mach-omap2/pm.c
--- a/arch/arm/mach-omap2/pm.c
+++ b/arch/arm/mach-omap2/pm.c
@@ -148,6 +148,7 @@ int __init omap2_common_pm_late_init(void)
 	/* Init the voltage layer */
 	omap3_twl_init();
 	omap4_twl_init();
+	omap4_cpcap_init();
 	omap_voltage_late_init();
 
 	/* Smartreflex device init */
diff --git a/arch/arm/mach-omap2/pm.h b/arch/arm/mach-omap2/pm.h
--- a/arch/arm/mach-omap2/pm.h
+++ b/arch/arm/mach-omap2/pm.h
@@ -107,6 +107,11 @@ extern u16 pm44xx_errata;
 #define IS_PM44XX_ERRATUM(id)		0
 #endif
 
+#define OMAP4_VP_CONFIG_ERROROFFSET	0x00
+#define OMAP4_VP_VSTEPMIN_VSTEPMIN	0x01
+#define OMAP4_VP_VSTEPMAX_VSTEPMAX	0x04
+#define OMAP4_VP_VLIMITTO_TIMEOUT_US	200
+
 #ifdef CONFIG_POWER_AVS_OMAP
 extern int omap_devinit_smartreflex(void);
 extern void omap_enable_smartreflex_on_init(void);
@@ -134,6 +139,15 @@ static inline int omap4_twl_init(void)
 }
 #endif
 
+#if IS_ENABLED(CONFIG_MFD_CPCAP)
+extern int omap4_cpcap_init(void);
+#else
+static inline int omap4_cpcap_init(void)
+{
+	return -EINVAL;
+}
+#endif
+
 #ifdef CONFIG_PM
 extern void omap_pm_setup_oscillator(u32 tstart, u32 tshut);
 extern void omap_pm_get_oscillator(u32 *tstart, u32 *tshut);
diff --git a/arch/arm/mach-omap2/pmic-cpcap.c b/arch/arm/mach-omap2/pmic-cpcap.c
new file mode 100644
--- /dev/null
+++ b/arch/arm/mach-omap2/pmic-cpcap.c
@@ -0,0 +1,265 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * pmic-cpcap.c - CPCAP-specific functions for the OPP code
+ *
+ * Adapted from Motorola Mapphone Android Linux kernel
+ * Copyright (C) 2011 Motorola, Inc.
+ */
+
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+
+#include "soc.h"
+#include "pm.h"
+#include "voltage.h"
+
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include "pm.h"
+#include "vc.h"
+
+/**
+ * omap_cpcap_vsel_to_vdc - convert CPCAP VSEL value to microvolts DC
+ * @vsel: CPCAP VSEL value to convert
+ *
+ * Returns the microvolts DC that the CPCAP PMIC should generate when
+ * programmed with @vsel.
+ */
+unsigned long omap_cpcap_vsel_to_uv(unsigned char vsel)
+{
+	if (vsel > 0x44)
+		vsel = 0x44;
+	return (((vsel * 125) + 6000)) * 100;
+}
+
+/**
+ * omap_cpcap_uv_to_vsel - convert microvolts DC to CPCAP VSEL value
+ * @uv: microvolts DC to convert
+ *
+ * Returns the VSEL value necessary for the CPCAP PMIC to
+ * generate an output voltage equal to or greater than @uv microvolts DC.
+ */
+unsigned char omap_cpcap_uv_to_vsel(unsigned long uv)
+{
+	if (uv < 600000)
+		uv = 600000;
+	else if (uv > 1450000)
+		uv = 1450000;
+	return DIV_ROUND_UP(uv - 600000, 12500);
+}
+
+static struct omap_voltdm_pmic omap_cpcap_core = {
+	.slew_rate = 4000,
+	.step_size = 12500,
+	.vp_erroroffset = OMAP4_VP_CONFIG_ERROROFFSET,
+	.vp_vstepmin = OMAP4_VP_VSTEPMIN_VSTEPMIN,
+	.vp_vstepmax = OMAP4_VP_VSTEPMAX_VSTEPMAX,
+	.vddmin = 900000,
+	.vddmax = 1350000,
+	.vp_timeout_us = OMAP4_VP_VLIMITTO_TIMEOUT_US,
+	.i2c_slave_addr = 0x02,
+	.volt_reg_addr = 0x00,
+	.cmd_reg_addr = 0x01,
+	.i2c_high_speed = true,
+	.vsel_to_uv = omap_cpcap_vsel_to_uv,
+	.uv_to_vsel = omap_cpcap_uv_to_vsel,
+};
+
+static struct omap_voltdm_pmic omap_cpcap_iva = {
+	.slew_rate = 4000,
+	.step_size = 12500,
+	.vp_erroroffset = OMAP4_VP_CONFIG_ERROROFFSET,
+	.vp_vstepmin = OMAP4_VP_VSTEPMIN_VSTEPMIN,
+	.vp_vstepmax = OMAP4_VP_VSTEPMAX_VSTEPMAX,
+	.vddmin = 900000,
+	.vddmax = 1350000,
+	.vp_timeout_us = OMAP4_VP_VLIMITTO_TIMEOUT_US,
+	.i2c_slave_addr = 0x44,
+	.volt_reg_addr = 0x0,
+	.cmd_reg_addr = 0x01,
+	.i2c_high_speed = true,
+	.vsel_to_uv = omap_cpcap_vsel_to_uv,
+	.uv_to_vsel = omap_cpcap_uv_to_vsel,
+};
+
+/**
+ * omap_max8952_vsel_to_vdc - convert MAX8952 VSEL value to microvolts DC
+ * @vsel: MAX8952 VSEL value to convert
+ *
+ * Returns the microvolts DC that the MAX8952 Regulator should generate when
+ * programmed with @vsel.
+ */
+unsigned long omap_max8952_vsel_to_uv(unsigned char vsel)
+{
+	if (vsel > 0x3F)
+		vsel = 0x3F;
+	return (((vsel * 100) + 7700)) * 100;
+}
+
+/**
+ * omap_max8952_uv_to_vsel - convert microvolts DC to MAX8952 VSEL value
+ * @uv: microvolts DC to convert
+ *
+ * Returns the VSEL value necessary for the MAX8952 Regulator to
+ * generate an output voltage equal to or greater than @uv microvolts DC.
+ */
+unsigned char omap_max8952_uv_to_vsel(unsigned long uv)
+{
+	if (uv < 770000)
+		uv = 770000;
+	else if (uv > 1400000)
+		uv = 1400000;
+	return DIV_ROUND_UP(uv - 770000, 10000);
+}
+
+static struct omap_voltdm_pmic omap443x_max8952_mpu = {
+	.slew_rate = 16000,
+	.step_size = 10000,
+	.vp_erroroffset = OMAP4_VP_CONFIG_ERROROFFSET,
+	.vp_vstepmin = OMAP4_VP_VSTEPMIN_VSTEPMIN,
+	.vp_vstepmax = OMAP4_VP_VSTEPMAX_VSTEPMAX,
+	.vddmin = 900000,
+	.vddmax = 1400000,
+	.vp_timeout_us = OMAP4_VP_VLIMITTO_TIMEOUT_US,
+	.i2c_slave_addr = 0x60,
+	.volt_reg_addr = 0x03,
+	.cmd_reg_addr = 0x03,
+	.i2c_high_speed = true,
+	.vsel_to_uv = omap_max8952_vsel_to_uv,
+	.uv_to_vsel = omap_max8952_uv_to_vsel,
+};
+
+/**
+ * omap_fan5355_vsel_to_vdc - convert FAN535503 VSEL value to microvolts DC
+ * @vsel: FAN535503 VSEL value to convert
+ *
+ * Returns the microvolts DC that the FAN535503 Regulator should generate when
+ * programmed with @vsel.
+ */
+unsigned long omap_fan535503_vsel_to_uv(unsigned char vsel)
+{
+	/* Extract bits[5:0] */
+	vsel &= 0x3F;
+
+	return (((vsel * 125) + 7500)) * 100;
+}
+
+/**
+ * omap_fan535508_vsel_to_vdc - convert FAN535508 VSEL value to microvolts DC
+ * @vsel: FAN535508 VSEL value to convert
+ *
+ * Returns the microvolts DC that the FAN535508 Regulator should generate when
+ * programmed with @vsel.
+ */
+unsigned long omap_fan535508_vsel_to_uv(unsigned char vsel)
+{
+	/* Extract bits[5:0] */
+	vsel &= 0x3F;
+
+	if (vsel > 0x37)
+		vsel = 0x37;
+	return (((vsel * 125) + 7500)) * 100;
+}
+
+
+/**
+ * omap_fan535503_uv_to_vsel - convert microvolts DC to FAN535503 VSEL value
+ * @uv: microvolts DC to convert
+ *
+ * Returns the VSEL value necessary for the MAX8952 Regulator to
+ * generate an output voltage equal to or greater than @uv microvolts DC.
+ */
+unsigned char omap_fan535503_uv_to_vsel(unsigned long uv)
+{
+	unsigned char vsel;
+	if (uv < 750000)
+		uv = 750000;
+	else if (uv > 1537500)
+		uv = 1537500;
+
+	vsel = DIV_ROUND_UP(uv - 750000, 12500);
+	return vsel | 0xC0;
+}
+
+/**
+ * omap_fan535508_uv_to_vsel - convert microvolts DC to FAN535508 VSEL value
+ * @uv: microvolts DC to convert
+ *
+ * Returns the VSEL value necessary for the MAX8952 Regulator to
+ * generate an output voltage equal to or greater than @uv microvolts DC.
+ */
+unsigned char omap_fan535508_uv_to_vsel(unsigned long uv)
+{
+	unsigned char vsel;
+	if (uv < 750000)
+		uv = 750000;
+	else if (uv > 1437500)
+		uv = 1437500;
+
+	vsel = DIV_ROUND_UP(uv - 750000, 12500);
+	return vsel | 0xC0;
+}
+
+/* fan5335-core */
+static struct omap_voltdm_pmic omap4_fan_core = {
+	.slew_rate = 4000,
+	.step_size = 12500,
+	.vp_erroroffset = OMAP4_VP_CONFIG_ERROROFFSET,
+	.vp_vstepmin = OMAP4_VP_VSTEPMIN_VSTEPMIN,
+	.vp_vstepmax = OMAP4_VP_VSTEPMAX_VSTEPMAX,
+	.vddmin = 850000,
+	.vddmax = 1375000,
+	.vp_timeout_us = OMAP4_VP_VLIMITTO_TIMEOUT_US,
+	.i2c_slave_addr = 0x4A,
+	.i2c_high_speed = true,
+	.volt_reg_addr = 0x01,
+	.cmd_reg_addr = 0x01,
+	.vsel_to_uv = omap_fan535508_vsel_to_uv,
+	.uv_to_vsel = omap_fan535508_uv_to_vsel,
+};
+
+/* fan5335 iva */
+static struct omap_voltdm_pmic omap4_fan_iva = {
+	.slew_rate = 4000,
+	.step_size = 12500,
+	.vp_erroroffset = OMAP4_VP_CONFIG_ERROROFFSET,
+	.vp_vstepmin = OMAP4_VP_VSTEPMIN_VSTEPMIN,
+	.vp_vstepmax = OMAP4_VP_VSTEPMAX_VSTEPMAX,
+	.vddmin = 850000,
+	.vddmax = 1375000,
+	.vp_timeout_us = OMAP4_VP_VLIMITTO_TIMEOUT_US,
+	.i2c_slave_addr = 0x48,
+	.volt_reg_addr = 0x01,
+	.cmd_reg_addr = 0x01,
+	.i2c_high_speed = true,
+	.vsel_to_uv = omap_fan535503_vsel_to_uv,
+	.uv_to_vsel = omap_fan535503_uv_to_vsel,
+};
+
+int __init omap4_cpcap_init(void)
+{
+	struct voltagedomain *voltdm;
+
+	if (!of_find_compatible_node(NULL, NULL, "motorola,cpcap"))
+		return -ENODEV;
+
+	voltdm = voltdm_lookup("mpu");
+	omap_voltage_register_pmic(voltdm, &omap443x_max8952_mpu);
+
+	if (of_machine_is_compatible("motorola,droid-bionic")) {
+		voltdm = voltdm_lookup("mpu");
+		omap_voltage_register_pmic(voltdm, &omap_cpcap_core);
+
+		voltdm = voltdm_lookup("mpu");
+		omap_voltage_register_pmic(voltdm, &omap_cpcap_iva);
+	} else {
+		voltdm = voltdm_lookup("core");
+		omap_voltage_register_pmic(voltdm, &omap4_fan_core);
+
+		voltdm = voltdm_lookup("iva");
+		omap_voltage_register_pmic(voltdm, &omap4_fan_iva);
+	}
+
+	return 0;
+}
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
