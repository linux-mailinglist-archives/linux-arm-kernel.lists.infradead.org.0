Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169EC1FEAA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 07:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S242814Y83j959QVZ5y8si5eMGCqsIeTUlGsHA5jNxQ=; b=NkH8kcsqreKfbIqg07f9k5iJeu
	m/2ZoLM52+oPnWsnmNY8FHR3RFqC5vvUrBiJMAHmE2dpMWSeUjGp0xO1VWLMXJRHu9jpVN5TlVP+p
	nkDgfr3ksEjr8fUQT67HC3yOkfxmvyVz1oELn2knachrI9RTOA2m2yJDlUVIkWc6KsZMMC0fEqnw2
	0JEbNY0YauwG2JtROeXe3rrFahxYps1o1UZwircz2brA0W0Wx92/KetQIIlRXMEifPes7f0XADxA2
	kYgArcABLlI+MK33yaUrwsnqvNbOZTNIghsQzZoDIyWdGn5c3aSznWmtsgdkdpwtMhY5xP7cOhDra
	nKNCR9Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlmpU-0000b4-1C; Thu, 18 Jun 2020 05:11:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlmp5-0000St-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 05:10:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30475101E;
 Wed, 17 Jun 2020 22:10:46 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DDE113F71F;
 Wed, 17 Jun 2020 22:10:42 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/3] arm64: ptrauth: add pointer authentication Armv8.6
 enhanced feature
Date: Thu, 18 Jun 2020 10:40:27 +0530
Message-Id: <1592457029-18547-2-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592457029-18547-1-git-send-email-amit.kachhap@arm.com>
References: <1592457029-18547-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_221048_090447_9A2C906E 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add changes for Pointer Authentication enhanced features
mandatory for Armv8.6. These features are,

* An enhanced PAC generation logic which hardens finding the correct
  PAC value of the authenticated pointer. However, no code change done
  for this.

* Fault(FPAC) is generated now when the ptrauth authentication instruction
  fails in authenticating the PAC present in the address. This is different
  from earlier case when such failures just adds an error code in the top
  byte and waits for subsequent load/store to abort. The ptrauth
  instructions which may cause this fault are autiasp, retaa etc.

The above features are now represented by additional configurations
for the Address Authentication cpufeature.

The fault received in the kernel due to FPAC is treated as Illegal
instruction and hence signal SIGILL is injected with ILL_ILLOPN as the
signal code. Note that this is different from earlier ARMv8.3 ptrauth
where signal SIGSEGV is issued due to Pointer authentication failures.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
No change since v2.

 arch/arm64/include/asm/esr.h       |  4 +++-
 arch/arm64/include/asm/exception.h |  1 +
 arch/arm64/include/asm/sysreg.h    | 24 ++++++++++++++++--------
 arch/arm64/kernel/entry-common.c   | 24 ++++++++++++++++++++++++
 arch/arm64/kernel/traps.c          |  9 +++++++++
 5 files changed, 53 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
index 035003acfa87..22c81f1edda2 100644
--- a/arch/arm64/include/asm/esr.h
+++ b/arch/arm64/include/asm/esr.h
@@ -35,7 +35,9 @@
 #define ESR_ELx_EC_SYS64	(0x18)
 #define ESR_ELx_EC_SVE		(0x19)
 #define ESR_ELx_EC_ERET		(0x1a)	/* EL2 only */
-/* Unallocated EC: 0x1b - 0x1E */
+/* Unallocated EC: 0x1B */
+#define ESR_ELx_EC_FPAC		(0x1C)	/* EL1 and above */
+/* Unallocated EC: 0x1D - 0x1E */
 #define ESR_ELx_EC_IMP_DEF	(0x1f)	/* EL3 only */
 #define ESR_ELx_EC_IABT_LOW	(0x20)
 #define ESR_ELx_EC_IABT_CUR	(0x21)
diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index 7577a754d443..3140b90f2e4f 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -47,4 +47,5 @@ void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr);
 void do_cp15instr(unsigned int esr, struct pt_regs *regs);
 void do_el0_svc(struct pt_regs *regs);
 void do_el0_svc_compat(struct pt_regs *regs);
+void do_ptrauth_fault(struct pt_regs *regs, unsigned long esr);
 #endif	/* __ASM_EXCEPTION_H */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 463175f80341..c71bcd0c002a 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -633,14 +633,22 @@
 #define ID_AA64ISAR1_APA_SHIFT		4
 #define ID_AA64ISAR1_DPB_SHIFT		0
 
-#define ID_AA64ISAR1_APA_NI		0x0
-#define ID_AA64ISAR1_APA_ARCHITECTED	0x1
-#define ID_AA64ISAR1_API_NI		0x0
-#define ID_AA64ISAR1_API_IMP_DEF	0x1
-#define ID_AA64ISAR1_GPA_NI		0x0
-#define ID_AA64ISAR1_GPA_ARCHITECTED	0x1
-#define ID_AA64ISAR1_GPI_NI		0x0
-#define ID_AA64ISAR1_GPI_IMP_DEF	0x1
+#define ID_AA64ISAR1_APA_NI			0x0
+#define ID_AA64ISAR1_APA_ARCHITECTED		0x1
+#define ID_AA64ISAR1_APA_ARCH_EPAC		0x2
+#define ID_AA64ISAR1_APA_ARCH_EPAC2		0x3
+#define ID_AA64ISAR1_APA_ARCH_EPAC2_FPAC	0x4
+#define ID_AA64ISAR1_APA_ARCH_EPAC2_FPAC_CMB	0x5
+#define ID_AA64ISAR1_API_NI			0x0
+#define ID_AA64ISAR1_API_IMP_DEF		0x1
+#define ID_AA64ISAR1_API_IMP_DEF_EPAC		0x2
+#define ID_AA64ISAR1_API_IMP_DEF_EPAC2		0x3
+#define ID_AA64ISAR1_API_IMP_DEF_EPAC2_FPAC	0x4
+#define ID_AA64ISAR1_API_IMP_DEF_EPAC2_FPAC_CMB	0x5
+#define ID_AA64ISAR1_GPA_NI			0x0
+#define ID_AA64ISAR1_GPA_ARCHITECTED		0x1
+#define ID_AA64ISAR1_GPI_NI			0x0
+#define ID_AA64ISAR1_GPI_IMP_DEF		0x1
 
 /* id_aa64pfr0 */
 #define ID_AA64PFR0_CSV3_SHIFT		60
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 3dbdf9752b11..08a4805a5cca 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -66,6 +66,13 @@ static void notrace el1_dbg(struct pt_regs *regs, unsigned long esr)
 }
 NOKPROBE_SYMBOL(el1_dbg);
 
+static void notrace el1_fpac(struct pt_regs *regs, unsigned long esr)
+{
+	local_daif_inherit(regs);
+	do_ptrauth_fault(regs, esr);
+}
+NOKPROBE_SYMBOL(el1_fpac);
+
 asmlinkage void notrace el1_sync_handler(struct pt_regs *regs)
 {
 	unsigned long esr = read_sysreg(esr_el1);
@@ -92,6 +99,9 @@ asmlinkage void notrace el1_sync_handler(struct pt_regs *regs)
 	case ESR_ELx_EC_BRK64:
 		el1_dbg(regs, esr);
 		break;
+	case ESR_ELx_EC_FPAC:
+		el1_fpac(regs, esr);
+		break;
 	default:
 		el1_inv(regs, esr);
 	}
@@ -227,6 +237,14 @@ static void notrace el0_svc(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(el0_svc);
 
+static void notrace el0_fpac(struct pt_regs *regs, unsigned long esr)
+{
+	user_exit_irqoff();
+	local_daif_restore(DAIF_PROCCTX);
+	do_ptrauth_fault(regs, esr);
+}
+NOKPROBE_SYMBOL(el0_fpac);
+
 asmlinkage void notrace el0_sync_handler(struct pt_regs *regs)
 {
 	unsigned long esr = read_sysreg(esr_el1);
@@ -272,6 +290,9 @@ asmlinkage void notrace el0_sync_handler(struct pt_regs *regs)
 	case ESR_ELx_EC_BRK64:
 		el0_dbg(regs, esr);
 		break;
+	case ESR_ELx_EC_FPAC:
+		el0_fpac(regs, esr);
+		break;
 	default:
 		el0_inv(regs, esr);
 	}
@@ -335,6 +356,9 @@ asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
 	case ESR_ELx_EC_BKPT32:
 		el0_dbg(regs, esr);
 		break;
+	case ESR_ELx_EC_FPAC:
+		el0_fpac(regs, esr);
+		break;
 	default:
 		el0_inv(regs, esr);
 	}
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 50cc30acf106..f596ef585560 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -479,6 +479,14 @@ void do_bti(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(do_bti);
 
+void do_ptrauth_fault(struct pt_regs *regs, unsigned long esr)
+{
+	BUG_ON(!user_mode(regs));
+	arm64_notify_die("pointer authentication fault", regs, SIGILL,
+			 ILL_ILLOPN, (void __user *)regs->pc, esr);
+}
+NOKPROBE_SYMBOL(do_ptrauth_fault);
+
 #define __user_cache_maint(insn, address, res)			\
 	if (address >= user_addr_max()) {			\
 		res = -EFAULT;					\
@@ -775,6 +783,7 @@ static const char *esr_class_str[] = {
 	[ESR_ELx_EC_SYS64]		= "MSR/MRS (AArch64)",
 	[ESR_ELx_EC_SVE]		= "SVE",
 	[ESR_ELx_EC_ERET]		= "ERET/ERETAA/ERETAB",
+	[ESR_ELx_EC_FPAC]		= "FPAC",
 	[ESR_ELx_EC_IMP_DEF]		= "EL3 IMP DEF",
 	[ESR_ELx_EC_IABT_LOW]		= "IABT (lower EL)",
 	[ESR_ELx_EC_IABT_CUR]		= "IABT (current EL)",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
