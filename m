Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B363CC54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RiQYAdEMHkELV/0Tp7SoKGTWHJ2SYl8W/y/eTQKFe9o=; b=HRmsYpSwf6eANuhh803l2GNH9I
	ABaN5nI/WxnMK7EsSOy3XL+OlDj/+J7R61oEiRwQQnQpeb7Ejj+Q12WzhJwslA1DFlR4v5fkM8WcW
	oiScEtXCK/IzkVrCTeDjw4ED5MQXDJcLa9lrDuxAeMwqj4WYhPqvndAleDB9wOSeqxGg3h4ue1FDp
	Is6FOYWRcIiXpKbRbpcIPPmgzoJuNxnQW81epPs1GIuRLMC1tlJIHNDN1jRGazyNIOX14BmasST5E
	GABtjdOl2s35B5nOdTY05X+RwfJR4vMbFHOYKbYV2yhcTPCDMR6j0i2tVUJ3h4kfeOhQG5INHzwt7
	bHX1/fcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagJf-0004yk-2f; Tue, 11 Jun 2019 12:55:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hagHc-0002Kd-Si
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:53:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCD1DEBD;
 Tue, 11 Jun 2019 05:53:47 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (unknown [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A26CC3F557;
 Tue, 11 Jun 2019 05:53:46 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Date: Tue, 11 Jun 2019 13:53:13 +0100
Message-Id: <20190611125315.18736-6-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611125315.18736-1-raphael.gault@arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_055349_080632_3FD7BCE3 
X-CRM114-Status: GOOD (  20.67  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, acme@kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to prevent the userspace processes which are trying to access
the registers from the pmu registers on a big.LITTLE environment we
introduce a hook to handle undefined instructions.

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
index 80babf451519..d9b2be97cc06 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2167,8 +2167,8 @@ static int emulate_mrs(struct pt_regs *regs, u32 insn)
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
index 293e4c365a53..93ac24b51d5f 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -19,9 +19,11 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
+#include <asm/cpu.h>
 #include <asm/irq_regs.h>
 #include <asm/perf_event.h>
 #include <asm/sysreg.h>
+#include <asm/traps.h>
 #include <asm/virt.h>
 
 #include <linux/acpi.h>
@@ -1041,6 +1043,59 @@ static int armv8pmu_probe_pmu(struct arm_pmu *cpu_pmu)
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
