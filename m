Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2351B7BD8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5fBBVIF6SuCRN2kcxKu01OfrYaaKvWAyeOrTYwnYPI=; b=pf5FmTOgLxHW5a
	ixoKDKH4OrWLbyQK8LZTcRBNDp+C0PN53Q8GrmpdX8NdNOC6BRtB+jG8vT/va9cHnSeUx98w5dZLh
	CV7PxqplpUVE6GquCAbZbIWWJnvIbEOY44bhYx480pECdVbXxI/UeNHIu0+JHho1Z4cxCrvJ+hlpA
	DGZxyKRuggyiDdWLSs8BWdXtBAMTwQ7KnQLQUZwhiJDgLVbGLObtc+GQg2V83wW0EIbrmyP8BhIrZ
	jxFGnGwqj3hJxfExzf40wRweq4ANJKJtStwt7G0s49xiyGRgVq9QA9Vh3+jyIbCxjYCGTeJ+swPOF
	acpjT4bKlubtNt7v2GvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1NZ-0003Xr-LN; Fri, 24 Apr 2020 16:40:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1M8-0008WC-3j
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:39:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 210BE31B;
 Fri, 24 Apr 2020 09:39:11 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A77CB3F68F;
 Fri, 24 Apr 2020 09:39:10 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: stable@vger.kernel.org
Subject: [stable:PATCH 2/5 v4.19] arm64: errata: Hide CTR_EL0.DIC on systems
 affected by Neoverse-N1 #1542419
Date: Fri, 24 Apr 2020 17:38:42 +0100
Message-Id: <20200424163845.4141-3-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200424163845.4141-1-james.morse@arm.com>
References: <20200424163845.4141-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_093912_397888_D0AB55B2 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit 05460849c3b51180d5ada3373d0449aea19075e4 ]

Cores affected by Neoverse-N1 #1542419 could execute a stale instruction
when a branch is updated to point to freshly generated instructions.

To workaround this issue we need user-space to issue unnecessary
icache maintenance that we can trap. Start by hiding CTR_EL0.DIC.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Removed cpu_enable_trap_ctr_access() hunk due to no 4afe8e79da92]
Signed-off-by: James Morse <james.morse@arm.com>
---
 Documentation/arm64/silicon-errata.txt |  1 +
 arch/arm64/Kconfig                     | 16 ++++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/kernel/cpu_errata.c         | 22 ++++++++++++++++++++++
 arch/arm64/kernel/traps.c              |  3 +++
 5 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/Documentation/arm64/silicon-errata.txt b/Documentation/arm64/silicon-errata.txt
index eeb3fc9d777b..667ea906266e 100644
--- a/Documentation/arm64/silicon-errata.txt
+++ b/Documentation/arm64/silicon-errata.txt
@@ -59,6 +59,7 @@ stable kernels.
 | ARM            | Cortex-A73      | #858921         | ARM64_ERRATUM_858921        |
 | ARM            | Cortex-A55      | #1024718        | ARM64_ERRATUM_1024718       |
 | ARM            | Cortex-A76      | #1463225        | ARM64_ERRATUM_1463225       |
+| ARM            | Neoverse-N1     | #1542419        | ARM64_ERRATUM_1542419       |
 | ARM            | MMU-500         | #841119,#826419 | N/A                         |
 |                |                 |                 |                             |
 | Cavium         | ThunderX ITS    | #22375, #24313  | CAVIUM_ERRATUM_22375        |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 51fe21f5d078..1fe3e5cb2927 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -499,6 +499,22 @@ config ARM64_ERRATUM_1463225
 
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
index c3de0bbf0e9a..df8fe8ecc37e 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -53,7 +53,8 @@
 #define ARM64_HAS_STAGE2_FWB			32
 #define ARM64_WORKAROUND_1463225		33
 #define ARM64_SSBS				34
+#define ARM64_WORKAROUND_1542419		35
 
-#define ARM64_NCAPS				35
+#define ARM64_NCAPS				36
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 71888808ded7..76490b0cefce 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -643,6 +643,18 @@ needs_tx2_tvm_workaround(const struct arm64_cpu_capabilities *entry,
 	return false;
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
@@ -834,6 +846,16 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		ERRATA_MIDR_RANGE_LIST(tx2_family_cpus),
 		.matches = needs_tx2_tvm_workaround,
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
index c8dc3a3640e7..253b7f84a5a0 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -481,6 +481,9 @@ static void ctr_read_handler(unsigned int esr, struct pt_regs *regs)
 	int rt = (esr & ESR_ELx_SYS64_ISS_RT_MASK) >> ESR_ELx_SYS64_ISS_RT_SHIFT;
 	unsigned long val = arm64_ftr_reg_user_value(&arm64_ftr_reg_ctrel0);
 
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419))
+		val &= ~BIT(CTR_DIC_SHIFT);
+
 	pt_regs_write_reg(regs, rt, val);
 
 	arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
