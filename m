Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF4DBD878
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u9LbbxnssG+OBFmP3d3tMt1zkhJDx/MvXviPaCHdRss=; b=AjWoBGkEYFc+sY
	PJSg90v4ARMTPxU0J5owfrxOrYpoRE7T26kMo34iE8XQLVVtRxDGITRPJvmh7KpmtxmOAEda7NwXC
	Yjcuv7q/mgIKSsgTxK7/1mZFgap5YCwQCOpzD6K8wb4CExDfunr5zxonDzzL+Qoa8AuxX6tVaLAy7
	shfCnbS2TSuUUaNBn3IKs0g4srNPmPqvVEo1nZ20Cah+IRtdHm4LWKi6BEODiuRBIaXg8vkws/5OM
	/YhuFZd43q3ek2MilGqN2N6AJAPrUmFxcFhp3eCrR7V7HBdu8fPgHYwUM4ru4Ra8Jm+MstWTa8Tir
	I97DiCWaC00rv1Lkqe5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD13C-00045L-38; Wed, 25 Sep 2019 06:45:22 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iD12x-0002lU-5F
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:45:09 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID x8P6hmvS000685,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id x8P6hmvS000685
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Sep 2019 14:43:48 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCAS11.realtek.com.tw ([fe80::7c6d:ced5:c4ff:8297%15]) with mapi id
 14.03.0468.000; Wed, 25 Sep 2019 14:43:46 +0800
From: James Tai <james.tai@realtek.com>
To: "'Masahiro Yamada'" <yamada.masahiro@socionext.com>, "'Arnd Bergmann'"
 <arnd@arndb.de>
Subject: [PATCH v1] ARM: Add support for Realtek SOC
Thread-Topic: [PATCH v1] ARM: Add support for Realtek SOC
Thread-Index: AdVza7e7/HSc6pgzSMeYxrV2x7H8ew==
Date: Wed, 25 Sep 2019 06:43:45 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF8EA2B1@RTITMBSVM04.realtek.com.tw>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.6.95]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_234507_459071_387C70B3 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "'Jason A . Donenfeld'" <Jason@zx2c4.com>,
 =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
 'Linus Walleij' <linus.walleij@linaro.org>, 'Stefan Agner' <stefan@agner.ch>,
 'Benjamin Gaignard' <benjamin.gaignard@linaro.org>,
 =?utf-8?B?U2ltb24gSHN1W+W+kOaWh+e/sF0=?= <simon_hsu@realtek.com>,
 'Mauro Carvalho Chehab' <mchehab+samsung@kernel.org>,
 =?utf-8?B?VG9tIFRpbmdb5LiB6YOB5bqtXQ==?= <tom_ting@realtek.com>,
 =?utf-8?B?SmltIFRzYWkgW+iUoee2reaZiV0=?= <tsaijim10@realtek.com>,
 Phinex Hung <phinex@realtek.com>,
 =?utf-8?B?RWR3YXJkIFd1W+WQs+WlleWvrF0=?= <edwardwu@realtek.com>,
 'Rob Herring' <robh@kernel.org>,
 'Lorenzo Pieralisi' <Lorenzo.Pieralisi@arm.com>,
 'Russell King' <linux@armlinux.org.uk>, 'Mike Rapoport' <rppt@linux.ibm.com>,
 =?utf-8?B?WUhfSHNpZWhb6Kyd5a6H5YuzXQ==?= <yh_hsieh@realtek.com>,
 =?utf-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>,
 'Thierry Reding' <treding@nvidia.com>,
 "'jamestai.sky@gmail.com'" <jamestai.sky@gmail.com>,
 =?utf-8?B?WlJfQ2hlblvpmbPmjK/mpq5d?= <zhenrcaaron@realtek.com>,
 Hau <hau@realtek.com>, Yukuen <yukuen@realtek.com>,
 =?utf-8?B?Smlubi5DaGVuZ1vphK3miY3pgLJd?= <jinn.cheng@realtek.com>,
 =?utf-8?B?Q2hhc2UgWWVuIFvpoY/lkYjogrJd?= <chase.yen@realtek.com>,
 =?utf-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>,
 'Doug Anderson' <armlinux@m.disordat.com>,
 'Linux ARM' <linux-arm-kernel@lists.infradead.org>,
 =?utf-8?B?RXJpYyBXYW5nW+eOi+WBieWFqF0=?= <ericwang@realtek.com>,
 Adklei <adklei@realtek.com>, James Tai <james.tai@realtek.com>,
 =?utf-8?B?RWRnYXIgTGVlIFvmnY7mib/oq61d?= <cylee12@realtek.com>,
 'Ard Biesheuvel' <ard.biesheuvel@linaro.org>,
 =?utf-8?B?UEsuQ2h1YW5nIFvojorljZrlh7Fd?= <pk.chuang@realtek.com>,
 'Nicolas Pitre' <nico@fluxnic.net>,
 'Nick Desaulniers' <ndesaulniers@google.com>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 'Paul Burton' <paul.burton@mips.com>, phelic <phelic@realtek.com>,
 =?utf-8?B?J0FuZHJlYXMgRsOkcmJlcic=?= <afaerber@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "james.tai" <james.tai@realtek.com>

This patch adds the basic machine file for
the Realtek RTD16XX and RTD13XX platform.

Signed-off-by: james.tai <james.tai@realtek.com>
---
Changes since last version:
	- Add RTD13XX platform.
	- Add PSCI support.
	- Add ARCH_MULTI_V7 config.
	- remove 'textofs-$(CONFIG_ARCH_REALTEK) := 0x00208000' from 
	  'arch/arm/Makefile'.
	- remove map_io,init_time,init_machine and smp_init from machine
	  descriptor.
---
 arch/arm/Kconfig                |  2 ++
 arch/arm/Makefile               |  1 +
 arch/arm/mach-realtek/Kconfig   | 20 +++++++++++++
 arch/arm/mach-realtek/Makefile  |  3 ++
 arch/arm/mach-realtek/platsmp.c | 51 +++++++++++++++++++++++++++++++++
 arch/arm/mach-realtek/platsmp.h |  6 ++++
 arch/arm/mach-realtek/realtek.c | 43 +++++++++++++++++++++++++++
 7 files changed, 126 insertions(+)
 create mode 100644 arch/arm/mach-realtek/Kconfig
 create mode 100644 arch/arm/mach-realtek/Makefile
 create mode 100644 arch/arm/mach-realtek/platsmp.c
 create mode 100644 arch/arm/mach-realtek/platsmp.h
 create mode 100644 arch/arm/mach-realtek/realtek.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..1f7967c97267 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -793,6 +793,8 @@ source "arch/arm/mach-realview/Kconfig"
 
 source "arch/arm/mach-rockchip/Kconfig"
 
+source "arch/arm/mach-realtek/Kconfig"
+
 source "arch/arm/mach-s3c24xx/Kconfig"
 
 source "arch/arm/mach-s3c64xx/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..560ae7d72aab 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -205,6 +205,7 @@ machine-$(CONFIG_ARCH_RDA)		+= rda
 machine-$(CONFIG_ARCH_REALVIEW)		+= realview
 machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
 machine-$(CONFIG_ARCH_RPC)		+= rpc
+machine-$(CONFIG_ARCH_REALTEK)		+= realtek
 machine-$(CONFIG_ARCH_S3C24XX)		+= s3c24xx
 machine-$(CONFIG_ARCH_S3C64XX)		+= s3c64xx
 machine-$(CONFIG_ARCH_S5PV210)		+= s5pv210
diff --git a/arch/arm/mach-realtek/Kconfig b/arch/arm/mach-realtek/Kconfig
new file mode 100644
index 000000000000..a638f4322bb2
--- /dev/null
+++ b/arch/arm/mach-realtek/Kconfig
@@ -0,0 +1,20 @@
+# SPDX-License-Identifier: GPL-2.0-only
+menuconfig ARCH_REALTEK
+	bool "Realtek SoC Support"
+	depends on ARCH_MULTI_V7
+	help
+	  Support for Realtek rtd16xx & rtd13xx SoCs.
+
+if ARCH_REALTEK
+
+config ARCH_RTD13XX
+	bool "Enable support for RTD1319"
+	select ARM_GIC_V3
+	select ARM_PSCI
+
+config ARCH_RTD16XX
+	bool "Enable support for RTD1619"
+	select ARM_GIC_V3
+	select ARM_PSCI
+
+endif
diff --git a/arch/arm/mach-realtek/Makefile b/arch/arm/mach-realtek/Makefile
new file mode 100644
index 000000000000..9cdc1f1f2917
--- /dev/null
+++ b/arch/arm/mach-realtek/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_ARCH_REALTEK) += realtek.o
+obj-$(CONFIG_SMP) += platsmp.o
diff --git a/arch/arm/mach-realtek/platsmp.c b/arch/arm/mach-realtek/platsmp.c
new file mode 100644
index 000000000000..b3fc99447ad4
--- /dev/null
+++ b/arch/arm/mach-realtek/platsmp.c
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+#include <linux/init.h>
+#include <linux/delay.h>
+#include <linux/jiffies.h>
+#include <linux/io.h>
+#include <linux/memory.h>
+#include <linux/smp.h>
+#include <linux/of.h>
+#include <linux/arm-smccc.h>
+#include <asm/smp_plat.h>
+#include <asm/cacheflush.h>
+#include <asm/cp15.h>
+#include <asm/barrier.h>
+
+#define BL31_CMD 0x8400ff04
+#define BL31_DAT 0x00001619
+#define CORE_PWRDN_EN 0x1
+
+#define CPUPWRCTLR __ACCESS_CP15(c15, 0, c2, 7)
+
+#ifdef CONFIG_HOTPLUG_CPU
+
+static void rtk_cpu_die(unsigned int cpu)
+{
+	struct arm_smccc_res res;
+	unsigned int cpu_pwr_ctrl;
+
+	/* notify BL31 cpu hotplug */
+	arm_smccc_smc(BL31_CMD, BL31_DAT, 0, 0, 0, 0, 0, 0, &res);
+	v7_exit_coherency_flush(louis);
+
+	cpu_pwr_ctrl = read_sysreg(CPUPWRCTLR);
+	cpu_pwr_ctrl |= CORE_PWRDN_EN;
+	write_sysreg(cpu_pwr_ctrl, CPUPWRCTLR);
+
+	dsb(sy);
+
+	for (;;)
+		wfi();
+}
+#endif
+
+struct smp_operations rtk_smp_ops __initdata = {
+#ifdef CONFIG_HOTPLUG_CPU
+	.cpu_die = rtk_cpu_die,
+#endif
+};
diff --git a/arch/arm/mach-realtek/platsmp.h b/arch/arm/mach-realtek/platsmp.h
new file mode 100644
index 000000000000..c9c4d712369c
--- /dev/null
+++ b/arch/arm/mach-realtek/platsmp.h
@@ -0,0 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+extern struct smp_operations rtk_smp_ops;
diff --git a/arch/arm/mach-realtek/realtek.c b/arch/arm/mach-realtek/realtek.c
new file mode 100644
index 000000000000..2692ac53f59b
--- /dev/null
+++ b/arch/arm/mach-realtek/realtek.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/clocksource.h>
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/irqchip.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/io.h>
+#include <linux/memblock.h>
+#include <linux/delay.h>
+#include <linux/clockchips.h>
+#include <asm/mach/arch.h>
+#include <asm/mach/map.h>
+#include <asm/system_misc.h>
+#include <asm/system_info.h>
+
+#include "platsmp.h"
+
+static const char *const rtd13xx_board_dt_compat[] = {
+	"realtek,rtd1319",
+	NULL,
+};
+
+static const char *const rtd16xx_board_dt_compat[] = {
+	"realtek,rtd1619",
+	NULL,
+};
+
+DT_MACHINE_START(RTD13XX, "Realtek rtd13xx platform")
+	.dt_compat = rtd13xx_board_dt_compat,
+	.smp = smp_ops(rtk_smp_ops),
+MACHINE_END
+
+DT_MACHINE_START(RTD16XX, "Realtek rtd16xx platform")
+	.dt_compat = rtd16xx_board_dt_compat,
+	.smp = smp_ops(rtk_smp_ops),
+MACHINE_END
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
