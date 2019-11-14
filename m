Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C44FC964
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gg2Rq79vo6G4PEi4QJaDh77uRwMQQHHtJT/7D9K6Rho=; b=oJRS8iV+ghAfDC
	BjXQXtud9ZfO820cnUlLBxn4GmmBbnF93nvqdXC22ckU6suosfEsXL80yFtHQ/gIp2H1FY2JfonOH
	rIw7I9UQFk17xbEh3uq9vcfEpKK5Tbz/nfZnyk90NXTG/vvJQ+uDoZmQl2ioy5vfdaAoONi90yzID
	P0bpaXepu2lqmOZBo+Hgaw4933f/L7LSRzpeio9wsyP/5orIdt59y++i0p4KPINZkC7zk9WzChZbB
	wpPsGH37UuHaoAB3ohKx2C0798lSP9XDSyi+PT5FoM5wpLYMHGYj+fKYfgNy2gGKlgvRV6XXUEneH
	suhCyit3csc9OSjSl/FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGbt-00081F-Pe; Thu, 14 Nov 2019 15:00:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGbJ-0006P4-48
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:00:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8219BC8F;
 Thu, 14 Nov 2019 07:00:00 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 63B813F52E;
 Thu, 14 Nov 2019 06:59:59 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] arm64: mm: Workaround Cortex-A77 erratum 1542418 on ASID
 rollover
Date: Thu, 14 Nov 2019 14:59:15 +0000
Message-Id: <20191114145918.235339-3-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114145918.235339-1-suzuki.poulose@arm.com>
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_070001_271942_CBD0B321 
X-CRM114-Status: GOOD (  19.13  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

On affected Cortex-A77 cores, software relying on the
prefetch-speculation-protection instead of explicit synchronisation may
fetch a stale instruction from a CPU-specific cache. This violates the
ordering rules for instruction fetches.

This can only happen when the CPU correctly predicts the modified branch
based on a previous ASID/VMID. The workaround is to prevent these
predictions by selecting 60 ASIDs before an ASID is reused.

Add this logic as a workaround in the asid-alloctor's per-cpu rollover
path. When the first asid of the new generation is about to be used,
select 60 different ASIDs before we do the TLB maintenance.

Signed-off-by: James Morse <james.morse@arm.com>
[ Added/modified commentary ]
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 Documentation/arm64/silicon-errata.rst |  2 +
 arch/arm64/Kconfig                     | 16 ++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/kernel/cpu_errata.c         |  7 ++++
 arch/arm64/mm/context.c                | 56 +++++++++++++++++++++++++-
 5 files changed, 82 insertions(+), 2 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 5a09661330fc..a6a5ece00392 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -84,6 +84,8 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A76      | #1463225        | ARM64_ERRATUM_1463225       |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-A77      | #1542418        | ARM64_ERRATUM_1542418       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1188873,1418040| ARM64_ERRATUM_1418040       |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1349291        | N/A                         |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..f0fc570ce05f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -558,6 +558,22 @@ config ARM64_ERRATUM_1463225
 
 	  If unsure, say Y.
 
+config ARM64_ERRATUM_1542418
+	bool "Cortex-A77: The core might fetch a stale instuction, violating the ordering of instruction fetches"
+	default y
+	help
+	  This option adds a workaround for Arm Cortex-A77 erratum 1542418.
+
+	  On the affected Cortex-A77 cores (r0p0 and r1p0), software relying
+	  on the prefetch-speculation-protection instead of explicit
+	  synchronisation may fetch a stale instruction from a CPU-specific
+	  cache. This violates the ordering rules for instruction fetches.
+
+	  Work around the erratum by ensuring that 60 ASIDs are selected
+	  before any ASID is reused.
+
+	  If unsure, say Y.
+
 config CAVIUM_ERRATUM_22375
 	bool "Cavium erratum 22375, 24313"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index ac1dbca3d0cd..1f90084e8a59 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -54,7 +54,8 @@
 #define ARM64_WORKAROUND_1463225		44
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
+#define ARM64_WORKAROUND_1542418		47
 
-#define ARM64_NCAPS				47
+#define ARM64_NCAPS				48
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 93f34b4eca25..a66d433d0113 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -926,6 +926,13 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.capability = ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM,
 		ERRATA_MIDR_RANGE_LIST(tx2_family_cpus),
 	},
+#endif
+#ifdef CONFIG_ARM64_ERRATUM_1542418
+	{
+		.desc = "ARM erratum 1542418",
+		.capability = ARM64_WORKAROUND_1542418,
+		ERRATA_MIDR_RANGE(MIDR_CORTEX_A77, 0, 0, 1, 0),
+	},
 #endif
 	{
 	}
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index b5e329fde2dd..ae3ee8e101d6 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -77,6 +77,58 @@ void verify_cpu_asid_bits(void)
 	}
 }
 
+
+/*
+ * When the CnP is active, the caller must have set the ttbr0 to reserved
+ * before calling this function.
+ * Upon completion, the caller must ensure to:
+ *   - restore the ttbr0
+ *   - execute isb() to synchronize the change.
+ */
+static void __arm64_workaround_1542418_asid_rollover(void)
+{
+	phys_addr_t ttbr1_baddr;
+	u64 idx, ttbr1;	/* ASID is in ttbr1 due to TCR_EL1.A1 */
+
+	if (!IS_ENABLED(CONFIG_ARM64_ERRATUM_1542418) ||
+	    !cpus_have_const_cap(ARM64_WORKAROUND_1542418) ||
+	    !this_cpu_has_cap(ARM64_WORKAROUND_1542418))
+		return;
+
+	/*
+	 * We're about to use an arbitrary set of ASIDs, which may have
+	 * live entries in the TLB (and on other CPUs with CnP). Ensure
+	 * that we can't allocate conflicting entries using this task's
+	 * TTBR0.
+	 */
+	if (!system_supports_cnp())
+		cpu_set_reserved_ttbr0();
+	/* else: the caller must have already set this */
+
+	ttbr1 = read_sysreg(ttbr1_el1);
+	ttbr1_baddr = ttbr1 & ~TTBR_ASID_MASK;
+
+	/*
+	 * Select 60 asids to invalidate the branch history for this generation.
+	 * If kpti is in use we avoid selecting a user asid as
+	 * __sdei_asm_entry_trampoline() uses USER_ASID_FLAG to determine if
+	 * the NMI interrupted the kpti trampoline. Avoid using the reserved
+	 * asid 0.
+	 */
+	for (idx = 1; idx <= 61; idx++) {
+		write_sysreg((idx2asid(idx) << 48) | ttbr1_baddr, ttbr1_el1);
+		isb();
+	}
+
+	/* restore the current ASID */
+	write_sysreg(ttbr1, ttbr1_el1);
+
+	/*
+	 * Rely on local_flush_tlb_all()'s isb to complete the ASID restore.
+	 * check_and_switch_context() will call cpu_switch_mm() to (re)set ttbr0_el1.
+	 */
+}
+
 static void flush_context(void)
 {
 	int i;
@@ -219,8 +271,10 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 		atomic64_set(&mm->context.id, asid);
 	}
 
-	if (cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending))
+	if (cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending)) {
+		__arm64_workaround_1542418_asid_rollover();
 		local_flush_tlb_all();
+	}
 
 	atomic64_set(&per_cpu(active_asids, cpu), asid);
 	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
