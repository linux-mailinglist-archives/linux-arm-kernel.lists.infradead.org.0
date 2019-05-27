Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3019C2BC18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 00:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1UMABxPMbT6OoZOD/rYBQYqFtwSU6C3lz+QbC33gyrw=; b=MVnD+9TNHo4NgT
	XucRNy+JOA4Z8H6B5bz1p5vaiGNbqr2BupT+RGOZ3j6E7rSwVaFraeoMhVNvpr9DMxYJMDDZc2D3N
	eimWw2ajHQA5bMAhd2vKkXTXcMcYcI3BoXMFBl3051L4+P0texqgCXZ3ytAkqLksFDzJq6j7Y2E/o
	7H4t3ePu7qp9K+18skfOdWU+DAodJbA/d+2wgsP45GLm36kORGl/0VYcONrhxkCzyuVeDowauUP3T
	BTw0Pe5n5xs4eA2QqRpkMRqUYmWeXJA5o2iMlknjtB+uSY1Zvddx9AzJMVhmXWAh6GAwMpd0niOJA
	/ap+dVIopq4ubb/aG4eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVOJ5-0005x7-Db; Mon, 27 May 2019 22:41:27 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVOIm-0005k2-Tx
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 22:41:11 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3c0a::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id E9C155C0104;
 Tue, 28 May 2019 00:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1558996860;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=RAept5Q5fVmuZ++ThCZbA37evns015LjBoUehasT/og=;
 b=jCk6OtNrXck/LIzjSb18suAI3aialfD3oiTaItrudx/eaOX7FEdiT944EFpBD1wT/RQhUo
 7JRRZ28/icNKcV51vJzREifORHjqWTqMfqOwxLF7y3hdGO4ZWiv/rjn5l5uyBIPF8Pmw6K
 fvAoLLr794AEOmRxb7dD0k+pDqqPGGQ=
From: Stefan Agner <stefan@agner.ch>
To: arm@kernel.org,
	olof@lixom.net
Subject: [PATCH v4 1/2] ARM: use arch_extension directive instead of arch
 argument
Date: Tue, 28 May 2019 00:40:50 +0200
Message-Id: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_154109_258647_42307EA9 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, mans@mansr.com, tony@atomide.com,
 Stefan Agner <stefan@agner.ch>, robh@kernel.org, f.fainelli@gmail.com,
 gregory.clement@bootlin.com, linux@armlinux.org.uk, krzk@kernel.org,
 kgene@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net, arnd@arndb.de,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com, nico@fluxnic.net,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LLVM Target parser currently does not allow to specify the security
extension as part of -march (see also LLVM Bug 40186 [0]). When trying
to use Clang with LLVM's integrated assembler, this leads to build
errors such as this:
  clang-8: error: the clang compiler does not support '-Wa,-march=armv7-a+sec'

Use ".arch_extension sec" to enable the security extension in a more
portable fasion. Also make sure to use ".arch armv7-a" in case a v6/v7
multi-platform kernel is being built.

Note that this is technically not exactly the same as the old code
checked for availabilty of the security extension by calling as-instr.
However, there are already other sites which use ".arch_extension sec"
unconditionally, hence de-facto we need an assembler capable of
".arch_extension sec" already today (arch/arm/mm/proc-v7.S). The
arch extension "sec" is available since binutils 2.21 according to
its documentation [1].

[0] https://bugs.llvm.org/show_bug.cgi?id=40186
[1] https://sourceware.org/binutils/docs-2.21/as/ARM-Options.html

Signed-off-by: Stefan Agner <stefan@agner.ch>
Acked-by: Mans Rullgard <mans@mansr.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
Changes since v1:
- Explicitly specify assembler architecture as armv7-a to avoid
  build issues when bulding v6/v7 multi arch kernel.

Changes since v2:
- Add armv7-a also in mach-tango
- Move .arch armv7-a outside of ifdef'ed area in sleep44xx.S
  to make the kernel compile also without CONFIG_SMP/PM.

Changes since v3:
- Rebase on top of v5.2-rc2

 arch/arm/mach-bcm/Makefile         | 3 ---
 arch/arm/mach-bcm/bcm_kona_smc.c   | 2 --
 arch/arm/mach-exynos/Makefile      | 4 ----
 arch/arm/mach-exynos/exynos-smc.S  | 3 ++-
 arch/arm/mach-exynos/sleep.S       | 3 ++-
 arch/arm/mach-highbank/Makefile    | 3 ---
 arch/arm/mach-highbank/smc.S       | 3 ++-
 arch/arm/mach-keystone/Makefile    | 3 ---
 arch/arm/mach-keystone/smc.S       | 1 +
 arch/arm/mach-omap2/Makefile       | 8 --------
 arch/arm/mach-omap2/omap-headsmp.S | 2 ++
 arch/arm/mach-omap2/omap-smc.S     | 3 ++-
 arch/arm/mach-omap2/sleep33xx.S    | 1 +
 arch/arm/mach-omap2/sleep34xx.S    | 2 ++
 arch/arm/mach-omap2/sleep43xx.S    | 2 ++
 arch/arm/mach-omap2/sleep44xx.S    | 3 +++
 arch/arm/mach-tango/Makefile       | 3 ---
 arch/arm/mach-tango/smc.S          | 2 ++
 18 files changed, 21 insertions(+), 30 deletions(-)

diff --git a/arch/arm/mach-bcm/Makefile b/arch/arm/mach-bcm/Makefile
index 8fd23b263c60..b59c813b1af4 100644
--- a/arch/arm/mach-bcm/Makefile
+++ b/arch/arm/mach-bcm/Makefile
@@ -40,9 +40,6 @@ obj-$(CONFIG_ARCH_BCM_MOBILE_L2_CACHE) += kona_l2_cache.o
 
 # Support for secure monitor traps
 obj-$(CONFIG_ARCH_BCM_MOBILE_SMC) += bcm_kona_smc.o
-ifeq ($(call as-instr,.arch_extension sec,as_has_sec),as_has_sec)
-CFLAGS_bcm_kona_smc.o		+= -Wa,-march=armv7-a+sec -DREQUIRES_SEC
-endif
 
 # BCM2835
 obj-$(CONFIG_ARCH_BCM2835)	+= board_bcm2835.o
diff --git a/arch/arm/mach-bcm/bcm_kona_smc.c b/arch/arm/mach-bcm/bcm_kona_smc.c
index a55a7ecf146a..541e850a736c 100644
--- a/arch/arm/mach-bcm/bcm_kona_smc.c
+++ b/arch/arm/mach-bcm/bcm_kona_smc.c
@@ -125,9 +125,7 @@ static int bcm_kona_do_smc(u32 service_id, u32 buffer_phys)
 		__asmeq("%2", "r4")
 		__asmeq("%3", "r5")
 		__asmeq("%4", "r6")
-#ifdef REQUIRES_SEC
 		".arch_extension sec\n"
-#endif
 		"	smc    #0\n"
 		: "=r" (ip), "=r" (r0)
 		: "r" (r4), "r" (r5), "r" (r6)
diff --git a/arch/arm/mach-exynos/Makefile b/arch/arm/mach-exynos/Makefile
index 264dbaa89c3d..5ccf9d7e58d4 100644
--- a/arch/arm/mach-exynos/Makefile
+++ b/arch/arm/mach-exynos/Makefile
@@ -14,9 +14,5 @@ obj-$(CONFIG_PM_SLEEP)		+= suspend.o
 
 obj-$(CONFIG_SMP)		+= platsmp.o headsmp.o
 
-plus_sec := $(call as-instr,.arch_extension sec,+sec)
-AFLAGS_exynos-smc.o		:=-Wa,-march=armv7-a$(plus_sec)
-AFLAGS_sleep.o			:=-Wa,-march=armv7-a$(plus_sec)
-
 obj-$(CONFIG_MCPM)		+= mcpm-exynos.o
 CFLAGS_mcpm-exynos.o		+= -march=armv7-a
diff --git a/arch/arm/mach-exynos/exynos-smc.S b/arch/arm/mach-exynos/exynos-smc.S
index d259532ba937..6da31e6a7acb 100644
--- a/arch/arm/mach-exynos/exynos-smc.S
+++ b/arch/arm/mach-exynos/exynos-smc.S
@@ -10,7 +10,8 @@
 /*
  * Function signature: void exynos_smc(u32 cmd, u32 arg1, u32 arg2, u32 arg3)
  */
-
+	.arch armv7-a
+	.arch_extension sec
 ENTRY(exynos_smc)
 	stmfd	sp!, {r4-r11, lr}
 	dsb
diff --git a/arch/arm/mach-exynos/sleep.S b/arch/arm/mach-exynos/sleep.S
index 2783c3a0c06a..ed93f91853b8 100644
--- a/arch/arm/mach-exynos/sleep.S
+++ b/arch/arm/mach-exynos/sleep.S
@@ -44,7 +44,8 @@ ENTRY(exynos_cpu_resume)
 ENDPROC(exynos_cpu_resume)
 
 	.align
-
+	.arch armv7-a
+	.arch_extension sec
 ENTRY(exynos_cpu_resume_ns)
 	mrc	p15, 0, r0, c0, c0, 0
 	ldr	r1, =CPU_MASK
diff --git a/arch/arm/mach-highbank/Makefile b/arch/arm/mach-highbank/Makefile
index 7e6732c16862..71cc68041d92 100644
--- a/arch/arm/mach-highbank/Makefile
+++ b/arch/arm/mach-highbank/Makefile
@@ -1,7 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y					:= highbank.o system.o smc.o
 
-plus_sec := $(call as-instr,.arch_extension sec,+sec)
-AFLAGS_smc.o				:=-Wa,-march=armv7-a$(plus_sec)
-
 obj-$(CONFIG_PM_SLEEP)			+= pm.o
diff --git a/arch/arm/mach-highbank/smc.S b/arch/arm/mach-highbank/smc.S
index 407d17baaaa9..860a79135b7b 100644
--- a/arch/arm/mach-highbank/smc.S
+++ b/arch/arm/mach-highbank/smc.S
@@ -16,7 +16,8 @@
  * the monitor API number.
  * Function signature : void highbank_smc1(u32 fn, u32 arg)
  */
-
+	.arch armv7-a
+	.arch_extension sec
 ENTRY(highbank_smc1)
 	stmfd   sp!, {r4-r11, lr}
 	mov	r12, r0
diff --git a/arch/arm/mach-keystone/Makefile b/arch/arm/mach-keystone/Makefile
index f8b0dccac8dc..739b38be5696 100644
--- a/arch/arm/mach-keystone/Makefile
+++ b/arch/arm/mach-keystone/Makefile
@@ -1,9 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-y					:= keystone.o smc.o
 
-plus_sec := $(call as-instr,.arch_extension sec,+sec)
-AFLAGS_smc.o				:=-Wa,-march=armv7-a$(plus_sec)
-
 obj-$(CONFIG_SMP)			+= platsmp.o
 
 # PM domain driver for Keystone SOCs
diff --git a/arch/arm/mach-keystone/smc.S b/arch/arm/mach-keystone/smc.S
index d15de8179fab..ec03dc499270 100644
--- a/arch/arm/mach-keystone/smc.S
+++ b/arch/arm/mach-keystone/smc.S
@@ -21,6 +21,7 @@
  *
  * Return: Non zero value on failure
  */
+	.arch_extension sec
 ENTRY(keystone_cpu_smc)
 	stmfd   sp!, {r4-r11, lr}
 	smc	#0
diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
index 85d1b13c9215..f1d283995b31 100644
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -41,11 +41,6 @@ obj-$(CONFIG_SOC_OMAP5)			+= $(omap-4-5-common) $(smp-y) sleep44xx.o
 obj-$(CONFIG_SOC_AM43XX)		+= $(omap-4-5-common)
 obj-$(CONFIG_SOC_DRA7XX)		+= $(omap-4-5-common) $(smp-y) sleep44xx.o
 
-plus_sec := $(call as-instr,.arch_extension sec,+sec)
-AFLAGS_omap-headsmp.o			:=-Wa,-march=armv7-a$(plus_sec)
-AFLAGS_omap-smc.o			:=-Wa,-march=armv7-a$(plus_sec)
-AFLAGS_sleep44xx.o			:=-Wa,-march=armv7-a$(plus_sec)
-
 # Functions loaded to SRAM
 obj-$(CONFIG_SOC_OMAP2420)		+= sram242x.o
 obj-$(CONFIG_SOC_OMAP2430)		+= sram243x.o
@@ -95,9 +90,6 @@ obj-$(CONFIG_POWER_AVS_OMAP)		+= sr_device.o
 obj-$(CONFIG_POWER_AVS_OMAP_CLASS3)    += smartreflex-class3.o
 
 AFLAGS_sleep24xx.o			:=-Wa,-march=armv6
-AFLAGS_sleep34xx.o			:=-Wa,-march=armv7-a$(plus_sec)
-AFLAGS_sleep33xx.o			:=-Wa,-march=armv7-a$(plus_sec)
-AFLAGS_sleep43xx.o			:=-Wa,-march=armv7-a$(plus_sec)
 
 endif
 
diff --git a/arch/arm/mach-omap2/omap-headsmp.S b/arch/arm/mach-omap2/omap-headsmp.S
index 4c6f14cf92a8..b26c0daaa3c1 100644
--- a/arch/arm/mach-omap2/omap-headsmp.S
+++ b/arch/arm/mach-omap2/omap-headsmp.S
@@ -58,6 +58,8 @@ ENDPROC(omap5_secondary_startup)
  * omap5_secondary_startup if the primary CPU was put into HYP mode by
  * the boot loader.
  */
+	.arch armv7-a
+	.arch_extension sec
 ENTRY(omap5_secondary_hyp_startup)
 wait_2:	ldr	r2, =AUX_CORE_BOOT0_PA	@ read from AuxCoreBoot0
 	ldr	r0, [r2]
diff --git a/arch/arm/mach-omap2/omap-smc.S b/arch/arm/mach-omap2/omap-smc.S
index 72506e6cf9e7..a14aee5e81d1 100644
--- a/arch/arm/mach-omap2/omap-smc.S
+++ b/arch/arm/mach-omap2/omap-smc.S
@@ -23,7 +23,8 @@
  * link register "lr".
  * Function signature : void omap_smc1(u32 fn, u32 arg)
  */
-
+	.arch armv7-a
+	.arch_extension sec
 ENTRY(omap_smc1)
 	stmfd   sp!, {r2-r12, lr}
 	mov	r12, r0
diff --git a/arch/arm/mach-omap2/sleep33xx.S b/arch/arm/mach-omap2/sleep33xx.S
index 47a816468cdb..68fee339d3f1 100644
--- a/arch/arm/mach-omap2/sleep33xx.S
+++ b/arch/arm/mach-omap2/sleep33xx.S
@@ -24,6 +24,7 @@
 #define BIT(nr)			(1 << (nr))
 
 	.arm
+	.arch armv7-a
 	.align 3
 
 ENTRY(am33xx_do_wfi)
diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
index 22daf4efed68..4927304b5902 100644
--- a/arch/arm/mach-omap2/sleep34xx.S
+++ b/arch/arm/mach-omap2/sleep34xx.S
@@ -97,6 +97,8 @@ ENDPROC(enable_omap3630_toggle_l2_on_restore)
  *
  * r0 = physical address of the parameters
  */
+	.arch armv7-a
+	.arch_extension sec
 ENTRY(save_secure_ram_context)
 	stmfd	sp!, {r4 - r11, lr}	@ save registers on stack
 	mov	r3, r0			@ physical address of parameters
diff --git a/arch/arm/mach-omap2/sleep43xx.S b/arch/arm/mach-omap2/sleep43xx.S
index 0c1031442571..c1f4e4852644 100644
--- a/arch/arm/mach-omap2/sleep43xx.S
+++ b/arch/arm/mach-omap2/sleep43xx.S
@@ -56,6 +56,8 @@
 #define RTC_PMIC_EXT_WAKEUP_EN				BIT(0)
 
 	.arm
+	.arch armv7-a
+	.arch_extension sec
 	.align 3
 
 ENTRY(am43xx_do_wfi)
diff --git a/arch/arm/mach-omap2/sleep44xx.S b/arch/arm/mach-omap2/sleep44xx.S
index 0cae3b070208..fb559d3de1f2 100644
--- a/arch/arm/mach-omap2/sleep44xx.S
+++ b/arch/arm/mach-omap2/sleep44xx.S
@@ -21,8 +21,11 @@
 #include "omap44xx.h"
 #include "omap4-sar-layout.h"
 
+	.arch armv7-a
+
 #if defined(CONFIG_SMP) && defined(CONFIG_PM)
 
+	.arch_extension sec
 .macro	DO_SMC
 	dsb
 	smc	#0
diff --git a/arch/arm/mach-tango/Makefile b/arch/arm/mach-tango/Makefile
index da6c633d3cc0..97cd04508fa1 100644
--- a/arch/arm/mach-tango/Makefile
+++ b/arch/arm/mach-tango/Makefile
@@ -1,7 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-plus_sec := $(call as-instr,.arch_extension sec,+sec)
-AFLAGS_smc.o := -Wa,-march=armv7-a$(plus_sec)
-
 obj-y += setup.o smc.o
 obj-$(CONFIG_SMP) += platsmp.o
 obj-$(CONFIG_SUSPEND) += pm.o
diff --git a/arch/arm/mach-tango/smc.S b/arch/arm/mach-tango/smc.S
index 361a8dc89804..b1752aaa72bc 100644
--- a/arch/arm/mach-tango/smc.S
+++ b/arch/arm/mach-tango/smc.S
@@ -1,6 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #include <linux/linkage.h>
 
+	.arch armv7-a
+	.arch_extension sec
 ENTRY(tango_smc)
 	push	{lr}
 	mov	ip, r1
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
