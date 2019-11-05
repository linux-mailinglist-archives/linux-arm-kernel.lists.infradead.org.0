Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153B4F0789
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XoKOaHU+55j/RsJgQ3bamR6jiKfLWNKy2QcBljb/fY4=; b=nbyQntkHJucrSRt+Vq0sxKN2sm
	Tn+v8n8DOoRzlPSama9EvLGirCQSr7gK4AF6FhFk6bDnb6yDoSfkieSgcbdx2vJphI0itvBhkQAg0
	VqQEp0nCqPCy6SOLWRark8z1Ts+8WNS7ctWZQ+K/UADpNZ21WxfZ8W6xptk5yf5OR36uqYXqvcPoW
	KlOJTJvNcySxL3fvzCRcsEmNbdEA7FTXN59M+6xFVKhkIio4PDZneTXd818HdpX9iTHq3oOR4btiC
	aCTdN+zKp9NvR5A3IoallZO/KQDdKun1yTgTlF0Chh/tX375VXO5HGK+I7azYVxhk6mvyJ1JnD9l1
	5r6vJbgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5wM-0007c1-SP; Tue, 05 Nov 2019 21:00:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5ux-00057l-2m
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:12 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAE8C222C1;
 Tue,  5 Nov 2019 20:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987550;
 bh=Oq4qxjNlIhJPIuOSCqUS5bvKK6mzMrpUrieH1mqMXb8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=afAkR2OxPZ1zF1q6QlEdZ6FI8JCNQdHkX7LWnJgp2K2EfSUJG/CSR35/4Wf8qNWyE
 FTX75ixCQmipQGqnpu0ptpYkCo1H3buyiQ4jj5l9+/lsToJrhpYO+RW/QSrLnO5yGB
 xSQflcdHohhFu6qhNhSnUU8SCRJdX0N+C1922VQI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 04/53] ARM: 8480/2: arm64: add implementation
 for arm-smccc
Date: Tue,  5 Nov 2019 21:57:57 +0100
Message-Id: <20191105205846.1394-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125911_172371_5FFDF2AF 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Russell King <rmk+kernel@arm.linux.org.uk>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jens Wiklander <jens.wiklander@linaro.org>

Commit 14457459f9ca2ff8521686168ea179edc3a56a44 upstream.

Adds implementation for arm-smccc and enables CONFIG_HAVE_SMCCC.

Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/Kconfig              |  1 +
 arch/arm64/kernel/Makefile      |  2 +-
 arch/arm64/kernel/arm64ksyms.c  |  5 +++
 arch/arm64/kernel/asm-offsets.c |  3 ++
 arch/arm64/kernel/smccc-call.S  | 43 ++++++++++++++++++++
 5 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index f18b8c26a959..644f4326b3e7 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -92,6 +92,7 @@ config ARM64
 	select SPARSE_IRQ
 	select SYSCTL_EXCEPTION_TRACE
 	select HAVE_CONTEXT_TRACKING
+	select HAVE_ARM_SMCCC
 	help
 	  ARM 64-bit (AArch64) Linux support.
 
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 474691f8b13a..0170bea3d4ae 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -17,7 +17,7 @@ arm64-obj-y		:= debug-monitors.o entry.o irq.o fpsimd.o		\
 			   hyp-stub.o psci.o psci-call.o cpu_ops.o insn.o	\
 			   return_address.o cpuinfo.o cpu_errata.o		\
 			   cpufeature.o alternative.o cacheinfo.o		\
-			   smp.o smp_spin_table.o topology.o
+			   smp.o smp_spin_table.o topology.o smccc-call.o
 
 extra-$(CONFIG_EFI)			:= efi-entry.o
 
diff --git a/arch/arm64/kernel/arm64ksyms.c b/arch/arm64/kernel/arm64ksyms.c
index 3b6d8cc9dfe0..678f30b05a45 100644
--- a/arch/arm64/kernel/arm64ksyms.c
+++ b/arch/arm64/kernel/arm64ksyms.c
@@ -26,6 +26,7 @@
 #include <linux/syscalls.h>
 #include <linux/uaccess.h>
 #include <linux/io.h>
+#include <linux/arm-smccc.h>
 
 #include <asm/checksum.h>
 
@@ -68,3 +69,7 @@ EXPORT_SYMBOL(test_and_change_bit);
 #ifdef CONFIG_FUNCTION_TRACER
 EXPORT_SYMBOL(_mcount);
 #endif
+
+	/* arm-smccc */
+EXPORT_SYMBOL(arm_smccc_smc);
+EXPORT_SYMBOL(arm_smccc_hvc);
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 087cf9a65359..7c4146a4257b 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -28,6 +28,7 @@
 #include <asm/suspend.h>
 #include <asm/vdso_datapage.h>
 #include <linux/kbuild.h>
+#include <linux/arm-smccc.h>
 
 int main(void)
 {
@@ -162,5 +163,7 @@ int main(void)
   DEFINE(SLEEP_SAVE_SP_PHYS,	offsetof(struct sleep_save_sp, save_ptr_stash_phys));
   DEFINE(SLEEP_SAVE_SP_VIRT,	offsetof(struct sleep_save_sp, save_ptr_stash));
 #endif
+  DEFINE(ARM_SMCCC_RES_X0_OFFS,	offsetof(struct arm_smccc_res, a0));
+  DEFINE(ARM_SMCCC_RES_X2_OFFS,	offsetof(struct arm_smccc_res, a2));
   return 0;
 }
diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
new file mode 100644
index 000000000000..ae0496fa4235
--- /dev/null
+++ b/arch/arm64/kernel/smccc-call.S
@@ -0,0 +1,43 @@
+/*
+ * Copyright (c) 2015, Linaro Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License Version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <linux/linkage.h>
+#include <asm/asm-offsets.h>
+
+	.macro SMCCC instr
+	.cfi_startproc
+	\instr	#0
+	ldr	x4, [sp]
+	stp	x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
+	stp	x2, x3, [x4, #ARM_SMCCC_RES_X2_OFFS]
+	ret
+	.cfi_endproc
+	.endm
+
+/*
+ * void arm_smccc_smc(unsigned long a0, unsigned long a1, unsigned long a2,
+ *		  unsigned long a3, unsigned long a4, unsigned long a5,
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ */
+ENTRY(arm_smccc_smc)
+	SMCCC	smc
+ENDPROC(arm_smccc_smc)
+
+/*
+ * void arm_smccc_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
+ *		  unsigned long a3, unsigned long a4, unsigned long a5,
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ */
+ENTRY(arm_smccc_hvc)
+	SMCCC	hvc
+ENDPROC(arm_smccc_hvc)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
