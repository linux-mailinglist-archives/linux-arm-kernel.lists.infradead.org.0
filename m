Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF049E92A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zrCi2Y8t1Z8aGEIYEkK0HbX6WkFrziJm+PuStVCH3Tk=; b=grNyy/TC7L3ZS+haToEq/rNgZZ
	8tgOMGgwOLBt2aEtpBjUTZQq2aH7PthAyyLxEGU56QBCcSkvrVXJdHUAEPk6hhnXCLX4I9oBxFt6r
	LhAcFGcEcv7+qa2QOviS4ZwmUuvshvcSoYG9WAbue2zXcXErFhs7QuAqziuYy4pWp+aBGfUcim8w/
	apy6UPf04I41RyuOZkxuXtTS6pdq7Gy2VRY0OlLSkgcfA7xJbDyFteXGzi91WsPb3xoCX2Zy2MQ74
	yjrslrndELIAxNH/RjSDZTDSI4N05y9naKq2UkPD06XHQrHvxh7u/aLw2SyESQNPviUJxmIvrF+mm
	hbw5wQog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bRI-0007Zo-T2; Tue, 27 Aug 2019 13:23:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMx-0002i3-Kw
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F85F15AD;
 Tue, 27 Aug 2019 06:18:42 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7C8AF3F246;
 Tue, 27 Aug 2019 06:18:41 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] arm64: mm: Ignore spurious translation faults taken from
 the kernel
Date: Tue, 27 Aug 2019 14:18:17 +0100
Message-Id: <20190827131818.14724-6-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190827131818.14724-1-will@kernel.org>
References: <20190827131818.14724-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061843_869110_378E0370 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arch@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks to address translation being performed out of order with respect to
loads and stores, it is possible for a CPU to take a translation fault when
accessing a page that was mapped by a different CPU.

For example, in the case that one CPU maps a page and then sets a flag to
tell another CPU:

	CPU 0
	-----

	MOV	X0, <valid pte>
	STR	X0, [Xptep]	// Store new PTE to page table
	DSB	ISHST
	ISB
	MOV	X1, #1
	STR	X1, [Xflag]	// Set the flag

	CPU 1
	-----

loop:	LDAR	X0, [Xflag]	// Poll flag with Acquire semantics
	CBZ	X0, loop
	LDR	X1, [X2]	// Translates using the new PTE

then the final load on CPU 1 can raise a translation fault because the
translation can be performed speculatively before the read of the flag and
marked as "faulting" by the CPU. This isn't quite as bad as it sounds
since, in reality, code such as:

	CPU 0				CPU 1
	-----				-----
	spin_lock(&lock);		spin_lock(&lock);
	*ptr = vmalloc(size);		if (*ptr)
	spin_unlock(&lock);			foo = **ptr;
					spin_unlock(&lock);

will not trigger the fault because there is an address dependency on CPU 1
which prevents the speculative translation. However, more exotic code where
the virtual address is known ahead of time, such as:

	CPU 0				CPU 1
	-----				-----
	spin_lock(&lock);		spin_lock(&lock);
	set_fixmap(0, paddr, prot);	if (mapped)
	mapped = true;				foo = *fix_to_virt(0);
	spin_unlock(&lock);		spin_unlock(&lock);

could fault. This can be avoided by any of:

	* Introducing broadcast TLB maintenance on the map path
	* Adding a DSB;ISB sequence after checking a flag which indicates
	  that a virtual address is now mapped
	* Handling the spurious fault

Given that we have never observed a problem due to this under Linux and
future revisions of the architecture are being tightened so that
translation table walks are effectively ordered in the same way as explicit
memory accesses, we no longer treat spurious kernel faults as fatal if an
AT instruction indicates that the access does not trigger a translation
fault.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/mm/fault.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index cfd65b63f36f..9808da29a653 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/acpi.h>
+#include <linux/bitfield.h>
 #include <linux/extable.h>
 #include <linux/signal.h>
 #include <linux/mm.h>
@@ -242,6 +243,34 @@ static inline bool is_el1_permission_fault(unsigned long addr, unsigned int esr,
 	return false;
 }
 
+static bool __kprobes is_spurious_el1_translation_fault(unsigned long addr,
+							unsigned int esr,
+							struct pt_regs *regs)
+{
+	unsigned long flags;
+	u64 par, dfsc;
+
+	if (ESR_ELx_EC(esr) != ESR_ELx_EC_DABT_CUR ||
+	    (esr & ESR_ELx_FSC_TYPE) != ESR_ELx_FSC_FAULT)
+		return false;
+
+	local_irq_save(flags);
+	asm volatile("at s1e1r, %0" :: "r" (addr));
+	isb();
+	par = read_sysreg(par_el1);
+	local_irq_restore(flags);
+
+	if (!(par & SYS_PAR_EL1_F))
+		return false;
+
+	/*
+	 * If we got a different type of fault from the AT instruction,
+	 * treat the translation fault as spurious.
+	 */
+	dfsc = FIELD_PREP(SYS_PAR_EL1_FST, par);
+	return (dfsc & ESR_ELx_FSC_TYPE) != ESR_ELx_FSC_FAULT;
+}
+
 static void die_kernel_fault(const char *msg, unsigned long addr,
 			     unsigned int esr, struct pt_regs *regs)
 {
@@ -270,6 +299,10 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
 	if (!is_el1_instruction_abort(esr) && fixup_exception(regs))
 		return;
 
+	if (WARN_RATELIMIT(is_spurious_el1_translation_fault(addr, esr, regs),
+	    "Ignoring spurious kernel translation fault at virtual address %016lx\n", addr))
+		return;
+
 	if (is_el1_permission_fault(addr, esr, regs)) {
 		if (esr & ESR_ELx_WNR)
 			msg = "write to read-only memory";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
