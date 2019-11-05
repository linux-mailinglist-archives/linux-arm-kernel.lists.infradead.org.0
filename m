Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F91F0788
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DIAtNb5ON1Vc17xHEKQI0Fju7eMVbb903suXXUNjLmY=; b=EkRjVylyeO4FzzuibWQEgVXk71
	mvEXCnB+9rgbcYdloNmdKE5hpo8qwPpNf8lOwRhgBMQ8OzpnlXQiaVluAWLfrumqtVq0JlFregsNK
	IGesDwg4WXBfjBGtWRSWugmj9qAfT57E8MinEy/r+qmDIrv9PlzKg25App5ab+ZB9zJzdM3LiMJuq
	aoxbpQuDHWOik2JbxfKvUmdsRnbQ3BMqzpDoBcMgCbv3+FlrAyUn1NIih1/fKw+PECeYWIy7dqPjZ
	Imf+4A5Wcl5xN6bjKCCW6fMRT8hnjTmkem416cHtu24J2G6d02a43hW+kkpMuXFTe1pmGLl/LKBoS
	BXC312RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5w6-00065A-Ty; Tue, 05 Nov 2019 21:00:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5uu-00050C-5E
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:09 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C1C3222C9;
 Tue,  5 Nov 2019 20:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987547;
 bh=xyCHHCLvpdzZqaC5UGmrIgpEhqZXB3G4JbzR9NWg6pg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fVN7v+1qB0xcHGScsggR3ypRRpqWsWiygCgNcZJtIeHJ6KXLPXGk2oPcY8pt0i/mm
 F4eZ40f9GCk0U1wFu/ajuKZEFGwex30m6F3SHsWd6Rcm0NQBtVqGMGjMTA/6hdw014
 2d5tCbhdYr0Nk6xG+XXZdlTqOKObmY2iQEfncWug=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 03/53] ARM: 8479/2: add implementation for
 arm-smccc
Date: Tue,  5 Nov 2019 21:57:56 +0100
Message-Id: <20191105205846.1394-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125908_265221_46B352E2 
X-CRM114-Status: GOOD (  16.17  )
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

Commit b329f95d70f3f955093e9a2b18ac1ed3587a8f73 upstream.

Adds implementation for arm-smccc and enables CONFIG_HAVE_SMCCC for
architectures that may support arm-smccc. It's the responsibility of the
caller to know if the SMC instruction is supported by the platform.

Reviewed-by: Lars Persson <lars.persson@axis.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/Kconfig             |  1 +
 arch/arm/kernel/Makefile     |  2 +
 arch/arm/kernel/armksyms.c   |  6 ++
 arch/arm/kernel/smccc-call.S | 62 ++++++++++++++++++++
 4 files changed, 71 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 737c8b0dda84..ef742bacd568 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -37,6 +37,7 @@ config ARM
 	select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32
 	select HAVE_ARCH_SECCOMP_FILTER if (AEABI && !OABI_COMPAT)
 	select HAVE_ARCH_TRACEHOOK
+	select HAVE_ARM_SMCCC if CPU_V7
 	select HAVE_BPF_JIT
 	select HAVE_CC_STACKPROTECTOR
 	select HAVE_CONTEXT_TRACKING
diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
index 3c789496297f..599c950468fc 100644
--- a/arch/arm/kernel/Makefile
+++ b/arch/arm/kernel/Makefile
@@ -91,4 +91,6 @@ obj-y				+= psci-call.o
 obj-$(CONFIG_SMP)		+= psci_smp.o
 endif
 
+obj-$(CONFIG_HAVE_ARM_SMCCC)	+= smccc-call.o
+
 extra-y := $(head-y) vmlinux.lds
diff --git a/arch/arm/kernel/armksyms.c b/arch/arm/kernel/armksyms.c
index f89811fb9a55..7e45f69a0ddc 100644
--- a/arch/arm/kernel/armksyms.c
+++ b/arch/arm/kernel/armksyms.c
@@ -16,6 +16,7 @@
 #include <linux/syscalls.h>
 #include <linux/uaccess.h>
 #include <linux/io.h>
+#include <linux/arm-smccc.h>
 
 #include <asm/checksum.h>
 #include <asm/ftrace.h>
@@ -175,3 +176,8 @@ EXPORT_SYMBOL(__gnu_mcount_nc);
 EXPORT_SYMBOL(__pv_phys_pfn_offset);
 EXPORT_SYMBOL(__pv_offset);
 #endif
+
+#ifdef CONFIG_HAVE_ARM_SMCCC
+EXPORT_SYMBOL(arm_smccc_smc);
+EXPORT_SYMBOL(arm_smccc_hvc);
+#endif
diff --git a/arch/arm/kernel/smccc-call.S b/arch/arm/kernel/smccc-call.S
new file mode 100644
index 000000000000..2e48b674aab1
--- /dev/null
+++ b/arch/arm/kernel/smccc-call.S
@@ -0,0 +1,62 @@
+/*
+ * Copyright (c) 2015, Linaro Limited
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <linux/linkage.h>
+
+#include <asm/opcodes-sec.h>
+#include <asm/opcodes-virt.h>
+#include <asm/unwind.h>
+
+	/*
+	 * Wrap c macros in asm macros to delay expansion until after the
+	 * SMCCC asm macro is expanded.
+	 */
+	.macro SMCCC_SMC
+	__SMC(0)
+	.endm
+
+	.macro SMCCC_HVC
+	__HVC(0)
+	.endm
+
+	.macro SMCCC instr
+UNWIND(	.fnstart)
+	mov	r12, sp
+	push	{r4-r7}
+UNWIND(	.save	{r4-r7})
+	ldm	r12, {r4-r7}
+	\instr
+	pop	{r4-r7}
+	ldr	r12, [sp, #(4 * 4)]
+	stm	r12, {r0-r3}
+	bx	lr
+UNWIND(	.fnend)
+	.endm
+
+/*
+ * void smccc_smc(unsigned long a0, unsigned long a1, unsigned long a2,
+ *		  unsigned long a3, unsigned long a4, unsigned long a5,
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ */
+ENTRY(arm_smccc_smc)
+	SMCCC SMCCC_SMC
+ENDPROC(arm_smccc_smc)
+
+/*
+ * void smccc_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
+ *		  unsigned long a3, unsigned long a4, unsigned long a5,
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ */
+ENTRY(arm_smccc_hvc)
+	SMCCC SMCCC_HVC
+ENDPROC(arm_smccc_hvc)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
