Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F197E517F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNk5h2dU5QhCFvQ4zhkcub59Yum7Z+f4vPrKMYbD3kI=; b=Sva/iSngqmyZqO
	Z+4B3so5YorD9nELp/TV85Mip4SknEzsTEXikTAorDKp/6RFe6CNzef5uez8mx8XzuQN/E548qaVT
	ovQYt+1S+tkT/HDOFmE+qIg0RBcA8y/fjobWvI2SOZ6BNv0axk/HWGdaomqhofm/If3BF/BkngVdP
	e0oOo1pNWR2LIENOVMAVwpKnLqkwcprOsU1u764iBtNVCHkF25DmtdYAjPD18Rpnuhzvm2zWHE0/8
	TTbQ95N/RlQe+ZBWa985pH65ni9P4d2hRMIn40ZIe0JBKulFMJ1gilXhXwdmfKdtVuz0eq7ElIyQr
	++RjegOsRzJqY/iYBDfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO2ha-0007qN-0k; Fri, 25 Oct 2019 16:44:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO2fz-0006N8-Kl
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:43:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A96F6492;
 Fri, 25 Oct 2019 09:42:58 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6FEF3F71A;
 Fri, 25 Oct 2019 09:42:57 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 7/7] arm64: entry-common: don't touch daif before
 bp-hardening
Date: Fri, 25 Oct 2019 17:42:16 +0100
Message-Id: <20191025164216.53626-8-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025164216.53626-1-james.morse@arm.com>
References: <20191025164216.53626-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_094259_796250_966020BB 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The previous patches mechanically transformed the assembly version of
entry.S to entry-common.c for synchronous exceptions.

The C version of local_daif_restore() doesn't quite do the same thing
as the assembly versions if pseudo-NMI is in use. In particular,
| local_daif_restore(DAIF_PROCCTX_NOIRQ)
will still allow pNMI to be delivered. This is not the behaviour
do_el0_ia_bp_hardening() and do_sp_pc_abort() want as it should not
be possible for the PMU handler to run as an NMI until the bp-hardening
sequence has run.

The bp-hardening calls were placed where they are because this was the
first C code to run after the relevant exceptions. As we've now moved
that point earlier, move the checks and calls earlier too.

This makes it clearer that this stuff runs before any kind of exception,
and saves modifying PSTATE twice.

Signed-off-by: James Morse <james.morse@arm.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>

---
Changes since v1:
 * Header include order
 * Moved is_ttbr1_addr() into headers for symmetry
---
 arch/arm64/include/asm/processor.h | 14 ++++++++++++
 arch/arm64/kernel/entry-common.c   | 18 ++++++++++++---
 arch/arm64/mm/fault.c              | 36 +-----------------------------
 3 files changed, 30 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5623685c7d13..8899d26f73ff 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -26,10 +26,12 @@
 #include <linux/init.h>
 #include <linux/stddef.h>
 #include <linux/string.h>
+#include <linux/thread_info.h>
 
 #include <asm/alternative.h>
 #include <asm/cpufeature.h>
 #include <asm/hw_breakpoint.h>
+#include <asm/kasan.h>
 #include <asm/lse.h>
 #include <asm/pgtable-hwdef.h>
 #include <asm/pointer_auth.h>
@@ -214,6 +216,18 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
 	regs->sp = sp;
 }
 
+static inline bool is_ttbr0_addr(unsigned long addr)
+{
+	/* entry assembly clears tags for TTBR0 addrs */
+	return addr < TASK_SIZE;
+}
+
+static inline bool is_ttbr1_addr(unsigned long addr)
+{
+	/* TTBR1 addresses may have a tag if KASAN_SW_TAGS is in use */
+	return arch_kasan_reset_tag(addr) >= PAGE_OFFSET;
+}
+
 #ifdef CONFIG_COMPAT
 static inline void compat_start_thread(struct pt_regs *regs, unsigned long pc,
 				       unsigned long sp)
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 2c318e41d84b..5dce5e56995a 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -14,6 +14,7 @@
 #include <asm/esr.h>
 #include <asm/exception.h>
 #include <asm/kprobes.h>
+#include <asm/mmu.h>
 #include <asm/sysreg.h>
 
 static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
@@ -112,9 +113,17 @@ static void notrace el0_ia(struct pt_regs *regs, unsigned long esr)
 {
 	unsigned long far = read_sysreg(far_el1);
 
+	/*
+	 * We've taken an instruction abort from userspace and not yet
+	 * re-enabled IRQs. If the address is a kernel address, apply
+	 * BP hardening prior to enabling IRQs and pre-emption.
+	 */
+	if (!is_ttbr0_addr(far))
+		arm64_apply_bp_hardening();
+
 	user_exit_irqoff();
-	local_daif_restore(DAIF_PROCCTX_NOIRQ);
-	do_el0_ia_bp_hardening(far, esr, regs);
+	local_daif_restore(DAIF_PROCCTX);
+	do_mem_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el0_ia);
 
@@ -154,8 +163,11 @@ static void notrace el0_pc(struct pt_regs *regs, unsigned long esr)
 {
 	unsigned long far = read_sysreg(far_el1);
 
+	if (!is_ttbr0_addr(instruction_pointer(regs)))
+		arm64_apply_bp_hardening();
+
 	user_exit_irqoff();
-	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	local_daif_restore(DAIF_PROCCTX);
 	do_sp_pc_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el0_pc);
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index cb13f4daa878..1bb2e3737e51 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -32,8 +32,8 @@
 #include <asm/daifflags.h>
 #include <asm/debug-monitors.h>
 #include <asm/esr.h>
-#include <asm/kasan.h>
 #include <asm/kprobes.h>
+#include <asm/processor.h>
 #include <asm/sysreg.h>
 #include <asm/system_misc.h>
 #include <asm/pgtable.h>
@@ -102,18 +102,6 @@ static void mem_abort_decode(unsigned int esr)
 		data_abort_decode(esr);
 }
 
-static inline bool is_ttbr0_addr(unsigned long addr)
-{
-	/* entry assembly clears tags for TTBR0 addrs */
-	return addr < TASK_SIZE;
-}
-
-static inline bool is_ttbr1_addr(unsigned long addr)
-{
-	/* TTBR1 addresses may have a tag if KASAN_SW_TAGS is in use */
-	return arch_kasan_reset_tag(addr) >= PAGE_OFFSET;
-}
-
 static inline unsigned long mm_to_pgd_phys(struct mm_struct *mm)
 {
 	/* Either init_pg_dir or swapper_pg_dir */
@@ -758,30 +746,8 @@ void do_el0_irq_bp_hardening(void)
 }
 NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
 
-void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
-			    struct pt_regs *regs)
-{
-	/*
-	 * We've taken an instruction abort from userspace and not yet
-	 * re-enabled IRQs. If the address is a kernel address, apply
-	 * BP hardening prior to enabling IRQs and pre-emption.
-	 */
-	if (!is_ttbr0_addr(addr))
-		arm64_apply_bp_hardening();
-
-	local_daif_restore(DAIF_PROCCTX);
-	do_mem_abort(addr, esr, regs);
-}
-NOKPROBE_SYMBOL(do_el0_ia_bp_hardening);
-
 void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 {
-	if (user_mode(regs)) {
-		if (!is_ttbr0_addr(instruction_pointer(regs)))
-			arm64_apply_bp_hardening();
-		local_daif_restore(DAIF_PROCCTX);
-	}
-
 	arm64_notify_die("SP/PC alignment exception", regs,
 			 SIGBUS, BUS_ADRALN, (void __user *)addr, esr);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
