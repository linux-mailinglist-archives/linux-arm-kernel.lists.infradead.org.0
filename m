Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36563DB39D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSHFOYMUn1Nc9OzQQLJoqbS52nFcmDnb8WnLXJPHyio=; b=eVT3vzCGOexXG0
	MCLiRrz3hsfnO63QCspY3kPdY0PT3774OjQcZCmC5acJOkkGg0WgeqPeyE/0mFeQttiwF8RkTRAPn
	fYAwZ8qkFsfCJZKCb1AC55Tt23eHtGxuHira9q5g+QHeamQ1br7ltHvAnaANQgd5yiWe+mPiG8HBq
	3hmA6RmlwJj8eCq8cfoNCdMXiA51fdHc6NXbzc5cTEbp2OfyWugUR1TN5t2tE20Oa6rT4t8snxKqS
	Se0qJ2Ej2rGEPzNFCZRlkyBx1Z14iA+5JsG1GWIKyol0R3FgblsRUik1bqHkdxs+v5ik75a/2BxWD
	As+jL1UsBW1sHN4g2+xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9ok-0003kj-ID; Thu, 17 Oct 2019 17:44:06 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9o0-00037L-3D
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 17:43:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51BC532B;
 Thu, 17 Oct 2019 10:43:15 -0700 (PDT)
Received: from eglon.cambridge.arm.com (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 846973F718;
 Thu, 17 Oct 2019 10:43:14 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] arm64: errata: Hide CTR_EL0.DIC on systems affected by
 Neoverse-N1 #1542419
Date: Thu, 17 Oct 2019 18:42:58 +0100
Message-Id: <20191017174300.29770-2-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174300.29770-1-james.morse@arm.com>
References: <20191017174300.29770-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_104320_231106_3E208957 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cores affected by Neoverse-N1 #1542419 could execute a stale instruction
when a branch is updated to point to freshly generated instructions.

To workaround this issue we need user-space to issue unnecessary
icache maintenance that we can trap. Start by hiding CTR_EL0.DIC.

Signed-off-by: James Morse <james.morse@arm.com>

---
Changes since v1:
 * Enable trap if any CPU has the errata to avoid shearing DIC on big/little.
 * Update silicon-errata.txt
---
 Documentation/arm64/silicon-errata.rst |  2 ++
 arch/arm64/Kconfig                     | 16 +++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/kernel/cpu_errata.c         | 32 +++++++++++++++++++++++++-
 arch/arm64/kernel/traps.c              |  3 +++
 5 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 17ea3fecddaa..d0d480dac361 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -88,6 +88,8 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1349291        | N/A                         |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Neoverse-N1     | #1542419        | ARM64_ERRATUM_1542419       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | MMU-500         | #841119,826419  | N/A                         |
 +----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 950a56b71ff0..7c3e3e334421 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -558,6 +558,22 @@ config ARM64_ERRATUM_1463225
 
 	  If unsure, say Y.
 
+config ARM64_ERRATUM_1542419
+	bool "Neoverse-N1: workaround mis-ordering of instruction fetches"
+	default y
+	help
+	  This option adds a workaround for ARM Neoverse-N1 erratum
+	  1542419.
+
+	  Affected Neoverse-N1 cores could execute a stale instruction when
+	  modified by another CPU. The workaround depends on a firmware
+	  counterpart.
+
+	  Workaround the issue by hiding the DIC feature from EL0. This
+	  forces user-space to perform cache maintenance.
+
+	  If unsure, say Y.
+
 config CAVIUM_ERRATUM_22375
 	bool "Cavium erratum 22375, 24313"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..f05afaec18cd 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_WORKAROUND_1542419		45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index f593f4cffc0d..6558f48b8b3f 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -87,13 +87,21 @@ has_mismatched_cache_type(const struct arm64_cpu_capabilities *entry,
 }
 
 static void
-cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *__unused)
+cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *cap)
 {
 	u64 mask = arm64_ftr_reg_ctrel0.strict_mask;
+	bool enable_uct_trap = false;
 
 	/* Trap CTR_EL0 access on this CPU, only if it has a mismatch */
 	if ((read_cpuid_cachetype() & mask) !=
 	    (arm64_ftr_reg_ctrel0.sys_val & mask))
+		enable_uct_trap = true;
+
+	/* ... or if this CPU is affected by an errata */
+	if (cap->capability == ARM64_WORKAROUND_1542419)
+		enable_uct_trap = true;
+
+	if (enable_uct_trap)
 		sysreg_clear_set(sctlr_el1, SCTLR_EL1_UCT, 0);
 }
 
@@ -623,6 +631,18 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 	return (need_wa > 0);
 }
 
+static bool __maybe_unused
+has_neoverse_n1_erratum_1542419(const struct arm64_cpu_capabilities *entry,
+				int scope)
+{
+	u32 midr = read_cpuid_id();
+	bool has_dic = read_cpuid_cachetype() & BIT(CTR_DIC_SHIFT);
+	const struct midr_range range = MIDR_ALL_VERSIONS(MIDR_NEOVERSE_N1);
+
+	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
+	return is_midr_in_range(midr, &range) && has_dic;
+}
+
 #ifdef CONFIG_HARDEN_EL2_VECTORS
 
 static const struct midr_range arm64_harden_el2_vectors[] = {
@@ -851,6 +871,16 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = has_cortex_a76_erratum_1463225,
 	},
+#endif
+#ifdef CONFIG_ARM64_ERRATUM_1542419
+	{
+		/* we depend on the firmware portion for correctness */
+		.desc = "ARM erratum 1542419 (kernel portion)",
+		.capability = ARM64_WORKAROUND_1542419,
+		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
+		.matches = has_neoverse_n1_erratum_1542419,
+		.cpu_enable = cpu_enable_trap_ctr_access,
+	},
 #endif
 	{
 	}
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 34739e80211b..465f0a0f8f0a 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -470,6 +470,9 @@ static void ctr_read_handler(unsigned int esr, struct pt_regs *regs)
 	int rt = ESR_ELx_SYS64_ISS_RT(esr);
 	unsigned long val = arm64_ftr_reg_user_value(&arm64_ftr_reg_ctrel0);
 
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419))
+		val &= ~BIT(CTR_DIC_SHIFT);
+
 	pt_regs_write_reg(regs, rt, val);
 
 	arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
