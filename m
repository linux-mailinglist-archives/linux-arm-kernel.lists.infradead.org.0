Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45927139D51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:31:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGreNtY5419gyNLC+wrwkhMbqwEZ6NesLPFn1mAmt1g=; b=h7FM8I1cy2xRoV
	y+FeVkjBlo3/66/TB4/KVc5q8So4G3h78EwTzTj48AmJjE9twu/3PVxr+QCPP0bABRcN/lzSu4Xzv
	PN5+KrnbZ+fAyKbmuAVaLydZJw+SAeyypi5m6hhs+uQHctMowIOgytahfgTCmYQb+VEA8/zlOxrYQ
	v9Ek7UXatQe/FgQk0XYTHpao2JTJnm4fPpaDNQk4l3JbmLpcooRk/rnhAtAMfoSaQJA2vEoBC5ZwF
	5tRQ5I5ir10P9bzdOLfJU7hbVwMRkCSbJXdC1JE8PQ6sVd6IRE2iMBVS00jOzT4MCjEeVzePfdFm9
	/O0tPJa7R1CGDz5eNH7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9Ax-0005WH-Hr; Mon, 13 Jan 2020 23:31:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9Ak-0005Sl-T2
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:31:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A42FF11B3;
 Mon, 13 Jan 2020 15:31:01 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8A6403F68E;
 Mon, 13 Jan 2020 15:31:00 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/7] arm64: Introduce system_capabilities_finalized() marker
Date: Mon, 13 Jan 2020 23:30:17 +0000
Message-Id: <20200113233023.928028-2-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200113233023.928028-1-suzuki.poulose@arm.com>
References: <20200113233023.928028-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_153103_039068_79710674 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We finalize the system wide capabilities after the SMP CPUs
are booted by the kernel. This is used as a marker for deciding
various checks in the kernel. e.g, sanity check the hotplugged
CPUs for missing mandatory features.

However there is no explicit helper available for this in the
kernel. There is sys_caps_initialised, which is not exposed.
The other closest one we have is the jump_label arm64_const_caps_ready
which denotes that the capabilities are set and the capability checks
could use the individual jump_labels for fast path. This is
performed before setting the ELF Hwcaps, which must be checked
against the new CPUs. We also perform some of the other initialization
e.g, SVE setup, which is important for the use of FP/SIMD
where SVE is supported. Normally userspace doesn't get to run
before we finish this. However the in-kernel users may
potentially start using the neon mode. So, we need to
reject uses of neon mode before we are set. Instead of defining
a new marker for the completion of SVE setup, we could simply
reuse the arm64_const_caps_ready and enable it once we have
finished all the setup. Also we could expose this to the
various users as "system_capabilities_finalized()" to make
it more meaningful than "const_caps_ready".

Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/include/asm/cpufeature.h |  5 +++++
 arch/arm64/include/asm/kvm_host.h   |  2 +-
 arch/arm64/kernel/cpufeature.c      | 28 ++++++++++------------------
 arch/arm64/kernel/process.c         |  2 +-
 4 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 4261d55e8506..92ef9539874a 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -613,6 +613,11 @@ static inline bool system_has_prio_mask_debugging(void)
 	       system_uses_irq_prio_masking();
 }
 
+static inline bool system_capabilities_finalized(void)
+{
+	return static_branch_likely(&arm64_const_caps_ready);
+}
+
 #define ARM64_BP_HARDEN_UNKNOWN		-1
 #define ARM64_BP_HARDEN_WA_NEEDED	0
 #define ARM64_BP_HARDEN_NOT_REQUIRED	1
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index c61260cf63c5..48ce54639eb5 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -547,7 +547,7 @@ static inline void __cpu_init_hyp_mode(phys_addr_t pgd_ptr,
 	 * wrong, and hyp will crash and burn when it uses any
 	 * cpus_have_const_cap() wrapper.
 	 */
-	BUG_ON(!static_branch_likely(&arm64_const_caps_ready));
+	BUG_ON(!system_capabilities_finalized());
 	__kvm_call_hyp((void *)pgd_ptr, hyp_stack_ptr, vector_ptr, tpidr_el2);
 
 	/*
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index fa907b13dd55..1154f2d47b4b 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -56,13 +56,14 @@ EXPORT_SYMBOL(arm64_use_ng_mappings);
  * will be used to determine if a new booting CPU should
  * go through the verification process to make sure that it
  * supports the system capabilities, without using a hotplug
- * notifier.
+ * notifier. This is also used to decide if we could use
+ * the fast path for checking constant CPU caps.
  */
-static bool sys_caps_initialised;
-
-static inline void set_sys_caps_initialised(void)
+DEFINE_STATIC_KEY_FALSE(arm64_const_caps_ready);
+EXPORT_SYMBOL(arm64_const_caps_ready);
+static inline void finalize_system_capabilities(void)
 {
-	sys_caps_initialised = true;
+	static_branch_enable(&arm64_const_caps_ready);
 }
 
 static int dump_cpu_hwcaps(struct notifier_block *self, unsigned long v, void *p)
@@ -789,7 +790,7 @@ void update_cpu_features(int cpu,
 
 		/* Probe vector lengths, unless we already gave up on SVE */
 		if (id_aa64pfr0_sve(read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1)) &&
-		    !sys_caps_initialised)
+		    !system_capabilities_finalized())
 			sve_update_vq_map();
 	}
 
@@ -1002,7 +1003,7 @@ bool kaslr_requires_kpti(void)
 	 */
 	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
 		tx1_bug = false;
-	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
+	} else if (!system_capabilities_finalized()) {
 		extern const struct midr_range cavium_erratum_27456_cpus[];
 
 		tx1_bug = is_midr_in_range_list(read_cpuid_id(),
@@ -2046,7 +2047,7 @@ void check_local_cpu_capabilities(void)
 	 * Otherwise, this CPU should verify that it has all the system
 	 * advertised capabilities.
 	 */
-	if (!sys_caps_initialised)
+	if (!system_capabilities_finalized())
 		update_cpu_capabilities(SCOPE_LOCAL_CPU);
 	else
 		verify_local_cpu_capabilities();
@@ -2060,14 +2061,6 @@ static void __init setup_boot_cpu_capabilities(void)
 	enable_cpu_capabilities(SCOPE_BOOT_CPU);
 }
 
-DEFINE_STATIC_KEY_FALSE(arm64_const_caps_ready);
-EXPORT_SYMBOL(arm64_const_caps_ready);
-
-static void __init mark_const_caps_ready(void)
-{
-	static_branch_enable(&arm64_const_caps_ready);
-}
-
 bool this_cpu_has_cap(unsigned int n)
 {
 	if (!WARN_ON(preemptible()) && n < ARM64_NCAPS) {
@@ -2126,7 +2119,6 @@ void __init setup_cpu_features(void)
 	u32 cwg;
 
 	setup_system_capabilities();
-	mark_const_caps_ready();
 	setup_elf_hwcaps(arm64_elf_hwcaps);
 
 	if (system_supports_32bit_el0())
@@ -2139,7 +2131,7 @@ void __init setup_cpu_features(void)
 	minsigstksz_setup();
 
 	/* Advertise that we have computed the system capabilities */
-	set_sys_caps_initialised();
+	finalize_system_capabilities();
 
 	/*
 	 * Check for sane CTR_EL0.CWG value.
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 71f788cd2b18..48a38144ea7b 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -646,6 +646,6 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
 	 * Only allow a task to be preempted once cpufeatures have been
 	 * enabled.
 	 */
-	if (static_branch_likely(&arm64_const_caps_ready))
+	if (system_capabilities_finalized())
 		preempt_schedule_irq();
 }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
