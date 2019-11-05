Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CD4F078C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a2h5mNAR1m8uww15UMjXOME/C21dp+IKvYlc5cjDYII=; b=T3n+vSPk0R7TN8vKF/x/YN7Y3S
	24LEbaAU1iolTvVMjtfIf1QBvtOxLantkkSAHzR9M7p4NZ8hSEEVp8nWd4tFUAIZPDwUYSKmHhVnb
	SOj9cDyhi/2W9k7rCF+q8jp5mGn+kGfUkEEAw0TcgZ+hcrE2giq3oAm9fw+QJxTpNXwm5QnkEs/4S
	1x0reECl4HuzCgZc85jK70lOrRyPg0IqlQ7IMh2lNcClRS2pobivpjndxqpvb6RYt7aLZGsv6P+mB
	Ow5wcZeyp8NDGPURvmI/5MsLTVSfTO0MM/lkiek/JxU60cyVnHLqko1slwcQC/Q8KXTuQoNXFAYg+
	j5trAvkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5wf-0007ry-Vk; Tue, 05 Nov 2019 21:00:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5v0-0005AT-1p
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:16 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2D7021D7C;
 Tue,  5 Nov 2019 20:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987553;
 bh=raGn9eVUNnR4HSDKZEarboOKuZzlgxarNuh1y7j/MCk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rRCcg/ogNMcS1AfhAr/W6ivvApSR76Kvy7FsbtIA/l0e3OzvxRakc4dvrrlEXs7ne
 ap9EtMKsW2p2eF5vQnSNw3KawWq7WihpS2nr3Jx240/cZCECke/KD3jrQ5cwFppuKD
 1GBSOkjjR4GncZgZ9sHdXe9/K54rZA13l5yqY+YI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 05/53] ARM: 8481/2: drivers: psci: replace
 psci firmware calls
Date: Tue,  5 Nov 2019 21:57:58 +0100
Message-Id: <20191105205846.1394-6-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125914_145169_345A54A7 
X-CRM114-Status: GOOD (  15.12  )
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

Commit e679660dbb8347f275fe5d83a5dd59c1fb6c8e63 upstream.

Switch to use a generic interface for issuing SMC/HVC based on ARM SMC
Calling Convention. Removes now the now unused psci-call.S.

Acked-by: Will Deacon <will.deacon@arm.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Tested-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/Kconfig              |  2 +-
 arch/arm/kernel/Makefile      |  1 -
 arch/arm/kernel/psci-call.S   | 31 --------------------
 arch/arm64/kernel/Makefile    |  2 +-
 arch/arm64/kernel/psci-call.S | 28 ------------------
 drivers/firmware/psci.c       | 23 +++++++++++++--
 6 files changed, 23 insertions(+), 64 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ef742bacd568..2ba69df49cf8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1482,7 +1482,7 @@ config HOTPLUG_CPU
 
 config ARM_PSCI
 	bool "Support for the ARM Power State Coordination Interface (PSCI)"
-	depends on CPU_V7
+	depends on HAVE_ARM_SMCCC
 	select ARM_PSCI_FW
 	help
 	  Say Y here if you want Linux to communicate with system firmware
diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
index 599c950468fc..82bdac0f2804 100644
--- a/arch/arm/kernel/Makefile
+++ b/arch/arm/kernel/Makefile
@@ -87,7 +87,6 @@ obj-$(CONFIG_EARLY_PRINTK)	+= early_printk.o
 
 obj-$(CONFIG_ARM_VIRT_EXT)	+= hyp-stub.o
 ifeq ($(CONFIG_ARM_PSCI),y)
-obj-y				+= psci-call.o
 obj-$(CONFIG_SMP)		+= psci_smp.o
 endif
 
diff --git a/arch/arm/kernel/psci-call.S b/arch/arm/kernel/psci-call.S
deleted file mode 100644
index a78e9e1e206d..000000000000
--- a/arch/arm/kernel/psci-call.S
+++ /dev/null
@@ -1,31 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * Copyright (C) 2015 ARM Limited
- *
- * Author: Mark Rutland <mark.rutland@arm.com>
- */
-
-#include <linux/linkage.h>
-
-#include <asm/opcodes-sec.h>
-#include <asm/opcodes-virt.h>
-
-/* int __invoke_psci_fn_hvc(u32 function_id, u32 arg0, u32 arg1, u32 arg2) */
-ENTRY(__invoke_psci_fn_hvc)
-	__HVC(0)
-	bx	lr
-ENDPROC(__invoke_psci_fn_hvc)
-
-/* int __invoke_psci_fn_smc(u32 function_id, u32 arg0, u32 arg1, u32 arg2) */
-ENTRY(__invoke_psci_fn_smc)
-	__SMC(0)
-	bx	lr
-ENDPROC(__invoke_psci_fn_smc)
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 0170bea3d4ae..27bf1e5180a1 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -14,7 +14,7 @@ CFLAGS_REMOVE_return_address.o = -pg
 arm64-obj-y		:= debug-monitors.o entry.o irq.o fpsimd.o		\
 			   entry-fpsimd.o process.o ptrace.o setup.o signal.o	\
 			   sys.o stacktrace.o time.o traps.o io.o vdso.o	\
-			   hyp-stub.o psci.o psci-call.o cpu_ops.o insn.o	\
+			   hyp-stub.o psci.o cpu_ops.o insn.o	\
 			   return_address.o cpuinfo.o cpu_errata.o		\
 			   cpufeature.o alternative.o cacheinfo.o		\
 			   smp.o smp_spin_table.o topology.o smccc-call.o
diff --git a/arch/arm64/kernel/psci-call.S b/arch/arm64/kernel/psci-call.S
deleted file mode 100644
index cf83e61cd3b5..000000000000
--- a/arch/arm64/kernel/psci-call.S
+++ /dev/null
@@ -1,28 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * Copyright (C) 2015 ARM Limited
- *
- * Author: Will Deacon <will.deacon@arm.com>
- */
-
-#include <linux/linkage.h>
-
-/* int __invoke_psci_fn_hvc(u64 function_id, u64 arg0, u64 arg1, u64 arg2) */
-ENTRY(__invoke_psci_fn_hvc)
-	hvc	#0
-	ret
-ENDPROC(__invoke_psci_fn_hvc)
-
-/* int __invoke_psci_fn_smc(u64 function_id, u64 arg0, u64 arg1, u64 arg2) */
-ENTRY(__invoke_psci_fn_smc)
-	smc	#0
-	ret
-ENDPROC(__invoke_psci_fn_smc)
diff --git a/drivers/firmware/psci.c b/drivers/firmware/psci.c
index ae70d2485ca1..b38305ba0965 100644
--- a/drivers/firmware/psci.c
+++ b/drivers/firmware/psci.c
@@ -13,6 +13,7 @@
 
 #define pr_fmt(fmt) "psci: " fmt
 
+#include <linux/arm-smccc.h>
 #include <linux/errno.h>
 #include <linux/linkage.h>
 #include <linux/of.h>
@@ -58,8 +59,6 @@ struct psci_operations psci_ops;
 
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
 				unsigned long, unsigned long);
-asmlinkage psci_fn __invoke_psci_fn_hvc;
-asmlinkage psci_fn __invoke_psci_fn_smc;
 static psci_fn *invoke_psci_fn;
 
 enum psci_function {
@@ -107,6 +106,26 @@ bool psci_power_state_is_valid(u32 state)
 	return !(state & ~valid_mask);
 }
 
+static unsigned long __invoke_psci_fn_hvc(unsigned long function_id,
+			unsigned long arg0, unsigned long arg1,
+			unsigned long arg2)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_hvc(function_id, arg0, arg1, arg2, 0, 0, 0, 0, &res);
+	return res.a0;
+}
+
+static unsigned long __invoke_psci_fn_smc(unsigned long function_id,
+			unsigned long arg0, unsigned long arg1,
+			unsigned long arg2)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(function_id, arg0, arg1, arg2, 0, 0, 0, 0, &res);
+	return res.a0;
+}
+
 static int psci_to_linux_errno(int errno)
 {
 	switch (errno) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
