Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC789972D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2BCzW1jU97sYHWMXvrxvA+qefAf5KU/y4dTtbcCpc5g=; b=uhUXgeTacje9szlrGPl0ZW+LmB
	Pn1WmVcPPsDleNmVmDr2trNMqSfboRh4dLrL0wc6EA8vhkKwJkmO97tLHM7HvEtl1DEzvmc3J15UQ
	8CblxjIOYxBoszQ9/aLUa4yq1MdFtzkYyMOVSmfrWoEMwgX/CDt8oC7MU3bqx/Qabjo2Ip4zQWefW
	ig6gTS75XmlAe59QldQE0Kim/A+OtrUaVQCrqTVAvB6DajD03FdSAYH2rwZ4fSG4PkFx5+lICDS1T
	cXmwUeYxI71YIbBwz/pC0WW2x+xvEVw99CzgxOUGq+PvuWZ3zvCykl1fhweOW3/4tGI23iF0cOQwv
	XBp5M4gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oJo-0005PR-Eg; Thu, 22 Aug 2019 14:44:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oIP-0004QQ-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:42:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5342F15BE;
 Thu, 22 Aug 2019 07:42:37 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F00EB3F706;
 Thu, 22 Aug 2019 07:42:35 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/7] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Date: Thu, 22 Aug 2019 15:42:17 +0100
Message-Id: <20190822144220.27860-5-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822144220.27860-1-raphael.gault@arm.com>
References: <20190822144220.27860-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074237_825348_69ADE104 
X-CRM114-Status: GOOD (  21.04  )
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, acme@kernel.org,
 Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch introduces a protection for the userspace processes which are
trying to access the registers from the pmu registers on a big.LITTLE
environment. It introduces a hook to handle undefined instructions.

The goal here is to prevent the process to be interrupted by a signal
when the error is caused by the task being scheduled while accessing
a counter, causing the counter access to be invalid. As we are not able
to know efficiently the number of counters available physically on both
pmu in that context we consider that any faulting access to a counter
which is architecturally correct should not cause a SIGILL signal if
the permissions are set accordingly.

This commit also modifies the mask of the mrs_hook declared in
arch/arm64/kernel/cpufeatures.c which emulates only feature register
access. This is necessary because this hook's mask was too large and
thus masking any mrs instruction, even if not related to the emulated
registers which made the pmu emulation inefficient.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/kernel/cpufeature.c |  4 +--
 arch/arm64/kernel/perf_event.c | 55 ++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 07be444c1e31..3a6285d0b2c0 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2186,8 +2186,8 @@ static int emulate_mrs(struct pt_regs *regs, u32 insn)
 }
 
 static struct undef_hook mrs_hook = {
-	.instr_mask = 0xfff00000,
-	.instr_val  = 0xd5300000,
+	.instr_mask = 0xffff0000,
+	.instr_val  = 0xd5380000,
 	.pstate_mask = PSR_AA32_MODE_MASK,
 	.pstate_val = PSR_MODE_EL0t,
 	.fn = emulate_mrs,
diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index a0b4f1bca491..64ca09c9ea65 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -8,9 +8,11 @@
  * This code is based heavily on the ARMv7 perf event code.
  */
 
+#include <asm/cpu.h>
 #include <asm/irq_regs.h>
 #include <asm/perf_event.h>
 #include <asm/sysreg.h>
+#include <asm/traps.h>
 #include <asm/virt.h>
 
 #include <linux/acpi.h>
@@ -1012,6 +1014,59 @@ static int armv8pmu_probe_pmu(struct arm_pmu *cpu_pmu)
 	return probe.present ? 0 : -ENODEV;
 }
 
+static int emulate_pmu(struct pt_regs *regs, u32 insn)
+{
+	u32 sys_reg, rt;
+	u32 pmuserenr;
+
+	sys_reg = (u32)aarch64_insn_decode_immediate(AARCH64_INSN_IMM_16, insn) << 5;
+	rt = aarch64_insn_decode_register(AARCH64_INSN_REGTYPE_RT, insn);
+	pmuserenr = read_sysreg(pmuserenr_el0);
+
+	if ((pmuserenr & (ARMV8_PMU_USERENR_ER|ARMV8_PMU_USERENR_CR)) !=
+	    (ARMV8_PMU_USERENR_ER|ARMV8_PMU_USERENR_CR))
+		return -EINVAL;
+
+
+	/*
+	 * Userspace is expected to only use this in the context of the scheme
+	 * described in the struct perf_event_mmap_page comments.
+	 *
+	 * Given that context, we can only get here if we got migrated between
+	 * getting the register index and doing the MSR read.  This in turn
+	 * implies we'll fail the sequence and retry, so any value returned is
+	 * 'good', all we need is to be non-fatal.
+	 *
+	 * The choice of the value 0 is comming from the fact that when
+	 * accessing a register which is not counting events but is accessible,
+	 * we get 0.
+	 */
+	pt_regs_write_reg(regs, rt, 0);
+
+	arm64_skip_faulting_instruction(regs, 4);
+	return 0;
+}
+
+/*
+ * This hook will only be triggered by mrs
+ * instructions on PMU registers. This is mandatory
+ * in order to have a consistent behaviour even on
+ * big.LITTLE systems.
+ */
+static struct undef_hook pmu_hook = {
+	.instr_mask = 0xffff8800,
+	.instr_val  = 0xd53b8800,
+	.fn = emulate_pmu,
+};
+
+static int __init enable_pmu_emulation(void)
+{
+	register_undef_hook(&pmu_hook);
+	return 0;
+}
+
+core_initcall(enable_pmu_emulation);
+
 static int armv8_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	int ret = armv8pmu_probe_pmu(cpu_pmu);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
