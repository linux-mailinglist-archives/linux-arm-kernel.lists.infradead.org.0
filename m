Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0FDE2EE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6q1Nk0scAlw+vcxUEMujY3eObxdwzxuu8VIrkoVcbAo=; b=SJoBLpvg9Y8x28cJNYAbJnauEB
	WIMwoiyJQi6awees38z/T1inxOKLp+qKVumJjdmYn+ipAxDBF3nZT3Xt4doIUDWIl9fAAV0dlB10r
	4dldCun0dYoSYBQ17BR8Qx0OR6jodCLfgttAcCPMnBNTYNClF1/cb+3LYbXFmQ1KCQx9yc0jVl9Qs
	27B03Ahs7p4VzkSmiyUnbPeSWP52Uj3Y+S+MMRMyOh9ezsXvtlKI3lqMZLabrk6b0yuD6SG7SUp+j
	/S5FrVe3WS1ShCIOhQvaO7EylRCXlog1w9blp9YK61qbunkSNzwY4o0wJoj3hpmdRoKx7V+ZZ2nnq
	D8h/xLoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaNA-0006MU-Tz; Thu, 24 Oct 2019 10:29:40 +0000
Received: from out30-42.freemail.mail.aliyun.com ([115.124.30.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaLW-0004wI-VI
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:28:10 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R161e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01419; MF=shannon.zhao@linux.alibaba.com;
 NM=1; PH=DS; RN=8; SR=0; TI=SMTPD_---0Tg2twDz_1571912875; 
Received: from localhost(mailfrom:shannon.zhao@linux.alibaba.com
 fp:SMTPD_---0Tg2twDz_1571912875) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 24 Oct 2019 18:27:56 +0800
From: Shannon Zhao <shannon.zhao@linux.alibaba.com>
To: kvmarm@lists.cs.columbia.edu, maz@kernel.org, james.morse@arm.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com
Subject: [PATCH RFC 7/7] KVM: ARM: Support KVM being compiled as a kernel
 module
Date: Thu, 24 Oct 2019 18:27:50 +0800
Message-Id: <1571912870-18471-8-git-send-email-shannon.zhao@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_032759_575635_017A4BA9 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support for KVM ARM64 to be compiled as a kernel module.
It makes the CONFIG_KVM_ARM_HOST as a tristate option and adds a new
config option CONFIG_KVM_ARM_HOST_VHE_ONLY to ensure that kernel module
feature only supports for VHE system.

Signed-off-by: Shannon Zhao <shannon.zhao@linux.alibaba.com>
---
 arch/arm64/include/asm/cache.h       | 16 ++---------
 arch/arm64/include/asm/cpufeature.h  | 11 +-------
 arch/arm64/include/asm/fpsimd.h      |  6 +---
 arch/arm64/include/asm/kvm_host.h    |  3 --
 arch/arm64/include/asm/kvm_mmu.h     |  4 +++
 arch/arm64/include/asm/perf_event.h  |  2 ++
 arch/arm64/kernel/acpi.c             |  1 +
 arch/arm64/kernel/asm-offsets.c      |  2 +-
 arch/arm64/kernel/cpu_errata.c       | 15 +++++++++-
 arch/arm64/kernel/cpufeature.c       |  2 ++
 arch/arm64/kernel/cpuinfo.c          | 16 +++++++++++
 arch/arm64/kernel/entry-fpsimd.S     |  2 ++
 arch/arm64/kernel/entry.S            |  1 +
 arch/arm64/kernel/fpsimd.c           | 11 ++++++++
 arch/arm64/kernel/head.S             |  1 +
 arch/arm64/kernel/hibernate.c        |  6 ++++
 arch/arm64/kernel/hyp-stub.S         |  1 +
 arch/arm64/kernel/insn.c             |  2 ++
 arch/arm64/kernel/perf_event.c       | 19 +++++++++++--
 arch/arm64/kernel/probes/kprobes.c   |  2 ++
 arch/arm64/kernel/smp.c              |  1 +
 arch/arm64/kernel/traps.c            |  2 ++
 arch/arm64/kvm/Kconfig               | 19 ++++++++++---
 arch/arm64/kvm/Makefile              | 53 ++++++++++++++++++++----------------
 arch/arm64/kvm/hyp/Makefile          | 22 +++++++--------
 arch/arm64/kvm/va_layout.c           |  7 ++++-
 arch/arm64/mm/cache.S                |  2 ++
 arch/arm64/mm/hugetlbpage.c          |  2 ++
 arch/arm64/mm/mmu.c                  |  4 +++
 drivers/clocksource/arm_arch_timer.c |  1 +
 drivers/irqchip/irq-gic-common.c     |  1 +
 drivers/irqchip/irq-gic-v4.c         |  8 ++++++
 include/linux/interrupt.h            |  6 +---
 kernel/irq/manage.c                  |  6 ++++
 mm/pgtable-generic.c                 |  1 +
 virt/kvm/arm/arm.c                   | 36 ++++++++++++++++++++++--
 virt/kvm/arm/mmu.c                   |  4 +++
 37 files changed, 215 insertions(+), 83 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 43da6dd..db79fc9 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -57,21 +57,9 @@
 
 #define ICACHEF_ALIASING	0
 #define ICACHEF_VPIPT		1
-extern unsigned long __icache_flags;
 
-/*
- * Whilst the D-side always behaves as PIPT on AArch64, aliasing is
- * permitted in the I-cache.
- */
-static inline int icache_is_aliasing(void)
-{
-	return test_bit(ICACHEF_ALIASING, &__icache_flags);
-}
-
-static inline int icache_is_vpipt(void)
-{
-	return test_bit(ICACHEF_VPIPT, &__icache_flags);
-}
+int icache_is_aliasing(void);
+int icache_is_vpipt(void);
 
 static inline u32 cache_type_cwg(void)
 {
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 9cde5d2..eea7215 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -625,16 +625,7 @@ static inline bool system_has_prio_mask_debugging(void)
 #define ARM64_SSBD_FORCE_ENABLE		2
 #define ARM64_SSBD_MITIGATED		3
 
-static inline int arm64_get_ssbd_state(void)
-{
-#ifdef CONFIG_ARM64_SSBD
-	extern int ssbd_state;
-	return ssbd_state;
-#else
-	return ARM64_SSBD_UNKNOWN;
-#endif
-}
-
+int arm64_get_ssbd_state(void);
 void arm64_set_ssbd_mitigation(bool state);
 
 extern int do_emulate_mrs(struct pt_regs *regs, u32 sys_reg, u32 rt);
diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index 59f10dd..b0e04b8 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -95,11 +95,7 @@ static inline unsigned int __bit_to_vq(unsigned int bit)
 	return SVE_VQ_MAX - bit;
 }
 
-/* Ensure vq >= SVE_VQ_MIN && vq <= SVE_VQ_MAX before calling this function */
-static inline bool sve_vq_available(unsigned int vq)
-{
-	return test_bit(__vq_to_bit(vq), sve_vq_map);
-}
+bool sve_vq_available(unsigned int vq);
 
 #ifdef CONFIG_ARM64_SVE
 
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index f656169..4f89322 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -582,9 +582,6 @@ static inline int kvm_arch_vcpu_run_pid_change(struct kvm_vcpu *vcpu)
 
 void kvm_vcpu_pmu_restore_guest(struct kvm_vcpu *vcpu);
 void kvm_vcpu_pmu_restore_host(struct kvm_vcpu *vcpu);
-#else
-static inline void kvm_set_pmu_events(u32 set, struct perf_event_attr *attr) {}
-static inline void kvm_clr_pmu_events(u32 clr) {}
 #endif
 
 static inline void kvm_arm_vhe_guest_enter(void)
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index befe37d..f67e5b5 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -72,6 +72,7 @@
  * specific registers encoded in the instructions).
  */
 .macro kern_hyp_va	reg
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 alternative_cb kvm_update_va_mask
 	and     \reg, \reg, #1		/* mask with va_mask */
 	ror	\reg, \reg, #1		/* rotate to the first tag bit */
@@ -79,6 +80,7 @@
 	add	\reg, \reg, #0, lsl 12	/* insert the top 12 bits of the tag */
 	ror	\reg, \reg, #63		/* rotate back */
 alternative_cb_end
+#endif
 .endm
 
 #else
@@ -94,6 +96,7 @@ void kvm_update_va_mask(struct alt_instr *alt,
 
 static inline unsigned long __kern_hyp_va(unsigned long v)
 {
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	asm volatile(ALTERNATIVE_CB("and %0, %0, #1\n"
 				    "ror %0, %0, #1\n"
 				    "add %0, %0, #0\n"
@@ -101,6 +104,7 @@ static inline unsigned long __kern_hyp_va(unsigned long v)
 				    "ror %0, %0, #63\n",
 				    kvm_update_va_mask)
 		     : "+r" (v));
+#endif
 	return v;
 }
 
diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
index 2bdbc79..cfd602c 100644
--- a/arch/arm64/include/asm/perf_event.h
+++ b/arch/arm64/include/asm/perf_event.h
@@ -223,4 +223,6 @@
 	(regs)->pstate = PSR_MODE_EL1h;	\
 }
 
+void perf_event_register_kvm_pmu_events_handler(void *set, void *clr);
+
 #endif
diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index 3a58e9d..7295ead 100644
--- a/arch/arm64/kernel/acpi.c
+++ b/arch/arm64/kernel/acpi.c
@@ -288,3 +288,4 @@ int apei_claim_sea(struct pt_regs *regs)
 
 	return err;
 }
+EXPORT_SYMBOL(apei_claim_sea);
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 2146857..63c818c 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -88,7 +88,7 @@ int main(void)
   DEFINE(CPU_BOOT_STACK,	offsetof(struct secondary_data, stack));
   DEFINE(CPU_BOOT_TASK,		offsetof(struct secondary_data, task));
   BLANK();
-#ifdef CONFIG_KVM_ARM_HOST
+#if IS_ENABLED(CONFIG_KVM_ARM_HOST)
   DEFINE(VCPU_CONTEXT,		offsetof(struct kvm_vcpu, arch.ctxt));
   DEFINE(VCPU_FAULT_DISR,	offsetof(struct kvm_vcpu, arch.fault.disr_el1));
   DEFINE(VCPU_WORKAROUND_FLAGS,	offsetof(struct kvm_vcpu, arch.workaround_flags));
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 6c3b10a..c846dde 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -267,8 +267,19 @@ static int detect_harden_bp_fw(void)
 }
 
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
+EXPORT_SYMBOL(arm64_ssbd_callback_required);
 
 int ssbd_state __read_mostly = ARM64_SSBD_KERNEL;
+int arm64_get_ssbd_state(void)
+{
+#ifdef CONFIG_ARM64_SSBD
+	return ssbd_state;
+#else
+	return ARM64_SSBD_UNKNOWN;
+#endif
+}
+EXPORT_SYMBOL(arm64_get_ssbd_state);
+
 static bool __ssb_safe = true;
 
 static const struct ssbd_options {
@@ -323,7 +334,7 @@ void __init arm64_update_smccc_conduit(struct alt_instr *alt,
 	*updptr = cpu_to_le32(insn);
 }
 
-void __init arm64_enable_wa2_handling(struct alt_instr *alt,
+void arm64_enable_wa2_handling(struct alt_instr *alt,
 				      __le32 *origptr, __le32 *updptr,
 				      int nr_inst)
 {
@@ -336,6 +347,7 @@ void __init arm64_enable_wa2_handling(struct alt_instr *alt,
 	if (arm64_get_ssbd_state() == ARM64_SSBD_KERNEL)
 		*updptr = cpu_to_le32(aarch64_insn_gen_nop());
 }
+EXPORT_SYMBOL(arm64_enable_wa2_handling);
 
 void arm64_set_ssbd_mitigation(bool state)
 {
@@ -565,6 +577,7 @@ int get_spectre_v2_workaround_state(void)
 
 	return ARM64_BP_HARDEN_WA_NEEDED;
 }
+EXPORT_SYMBOL(get_spectre_v2_workaround_state);
 
 /*
  * List of CPUs that do not need any Spectre-v2 mitigation at all.
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 80f459a..54f666f 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -807,6 +807,7 @@ u64 read_sanitised_ftr_reg(u32 id)
 	BUG_ON(!regp);
 	return regp->sys_val;
 }
+EXPORT_SYMBOL(read_sanitised_ftr_reg);
 
 #define read_sysreg_case(r)	\
 	case r:		return read_sysreg_s(r)
@@ -2006,6 +2007,7 @@ bool this_cpu_has_cap(unsigned int n)
 
 	return false;
 }
+EXPORT_SYMBOL(this_cpu_has_cap);
 
 void cpu_set_feature(unsigned int num)
 {
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 05933c0..288d0c4 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -42,6 +42,22 @@
 
 unsigned long __icache_flags;
 
+/*
+ * Whilst the D-side always behaves as PIPT on AArch64, aliasing is
+ * permitted in the I-cache.
+ */
+int icache_is_aliasing(void)
+{
+	return test_bit(ICACHEF_ALIASING, &__icache_flags);
+}
+EXPORT_SYMBOL(icache_is_aliasing);
+
+int icache_is_vpipt(void)
+{
+	return test_bit(ICACHEF_VPIPT, &__icache_flags);
+}
+EXPORT_SYMBOL(icache_is_vpipt);
+
 static const char *const hwcap_str[] = {
 	"fp",
 	"asimd",
diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
index 0f24eae..4419fe2 100644
--- a/arch/arm64/kernel/entry-fpsimd.S
+++ b/arch/arm64/kernel/entry-fpsimd.S
@@ -36,11 +36,13 @@ ENTRY(sve_save_state)
 	sve_save 0, x1, 2
 	ret
 ENDPROC(sve_save_state)
+EXPORT_SYMBOL(sve_save_state)
 
 ENTRY(sve_load_state)
 	sve_load 0, x1, x2, 3, x4
 	ret
 ENDPROC(sve_load_state)
+EXPORT_SYMBOL(sve_load_state)
 
 ENTRY(sve_get_vl)
 	_sve_rdvl	0, 1
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index cf3bd29..cb2a9ca 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -493,6 +493,7 @@ ENTRY(vectors)
 	kernel_ventry	0, error_invalid, 32		// Error 32-bit EL0
 #endif
 END(vectors)
+EXPORT_SYMBOL(vectors)
 
 #ifdef CONFIG_VMAP_STACK
 	/*
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 37d3912..9645807 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -125,7 +125,9 @@ struct fpsimd_last_state_struct {
 
 /* Maximum supported vector length across all CPUs (initially poisoned) */
 int __ro_after_init sve_max_vl = SVE_VL_MIN;
+EXPORT_SYMBOL(sve_max_vl);
 int __ro_after_init sve_max_virtualisable_vl = SVE_VL_MIN;
+EXPORT_SYMBOL(sve_max_virtualisable_vl);
 
 /*
  * Set of available vector lengths,
@@ -146,6 +148,13 @@ struct fpsimd_last_state_struct {
 
 #endif /* ! CONFIG_ARM64_SVE */
 
+/* Ensure vq >= SVE_VQ_MIN && vq <= SVE_VQ_MAX before calling this function */
+bool sve_vq_available(unsigned int vq)
+{
+	return test_bit(__vq_to_bit(vq), sve_vq_map);
+}
+EXPORT_SYMBOL(sve_vq_available);
+
 DEFINE_PER_CPU(bool, fpsimd_context_busy);
 EXPORT_PER_CPU_SYMBOL(fpsimd_context_busy);
 
@@ -1120,6 +1129,7 @@ void fpsimd_bind_state_to_cpu(struct user_fpsimd_state *st, void *sve_state,
 	last->sve_state = sve_state;
 	last->sve_vl = sve_vl;
 }
+EXPORT_SYMBOL(fpsimd_bind_state_to_cpu);
 
 /*
  * Load the userland FPSIMD state of 'current' from memory, but only if the
@@ -1209,6 +1219,7 @@ void fpsimd_save_and_flush_cpu_state(void)
 	fpsimd_flush_cpu_state();
 	__put_cpu_fpsimd_context();
 }
+EXPORT_SYMBOL(fpsimd_save_and_flush_cpu_state);
 
 #ifdef CONFIG_KERNEL_MODE_NEON
 
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 989b194..a30c2f8 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -670,6 +670,7 @@ ENDPROC(set_cpu_boot_mode_flag)
 ENTRY(__boot_cpu_mode)
 	.long	BOOT_CPU_MODE_EL2
 	.long	BOOT_CPU_MODE_EL1
+EXPORT_SYMBOL(__boot_cpu_mode)
 /*
  * The booting CPU updates the failed status @__early_cpu_boot_status,
  * with MMU turned off.
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index a96b292..e7f3994 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -127,10 +127,12 @@ int arch_hibernation_header_save(void *addr, unsigned int max_size)
 	hdr->ttbr1_el1		= __pa_symbol(swapper_pg_dir);
 	hdr->reenter_kernel	= _cpu_resume;
 
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	/* We can't use __hyp_get_vectors() because kvm may still be loaded */
 	if (el2_reset_needed())
 		hdr->__hyp_stub_vectors = __pa_symbol(__hyp_stub_vectors);
 	else
+#endif
 		hdr->__hyp_stub_vectors = 0;
 
 	/* Save the mpidr of the cpu we called cpu_suspend() on... */
@@ -304,11 +306,13 @@ int swsusp_arch_suspend(void)
 		dcache_clean_range(__mmuoff_data_start, __mmuoff_data_end);
 		dcache_clean_range(__idmap_text_start, __idmap_text_end);
 
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 		/* Clean kvm setup code to PoC? */
 		if (el2_reset_needed()) {
 			dcache_clean_range(__hyp_idmap_text_start, __hyp_idmap_text_end);
 			dcache_clean_range(__hyp_text_start, __hyp_text_end);
 		}
+#endif
 
 		/* make the crash dump kernel image protected again */
 		crash_post_resume();
@@ -549,6 +553,7 @@ int swsusp_arch_resume(void)
 	 *
 	 * We can skip this step if we booted at EL1, or are running with VHE.
 	 */
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	if (el2_reset_needed()) {
 		phys_addr_t el2_vectors = phys_hibernate_exit;  /* base */
 		el2_vectors += hibernate_el2_vectors -
@@ -556,6 +561,7 @@ int swsusp_arch_resume(void)
 
 		__hyp_set_vectors(el2_vectors);
 	}
+#endif
 
 	hibernate_exit(virt_to_phys(tmp_pg_dir), resume_hdr.ttbr1_el1,
 		       resume_hdr.reenter_kernel, restore_pblist,
diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index 73d4607..c5633d6 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -42,6 +42,7 @@ ENTRY(__hyp_stub_vectors)
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
 ENDPROC(__hyp_stub_vectors)
+EXPORT_SYMBOL(__hyp_stub_vectors)
 
 	.align 11
 
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index d801a70..e1acf5a 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -569,6 +569,7 @@ u32 __kprobes aarch64_insn_gen_nop(void)
 {
 	return aarch64_insn_gen_hint(AARCH64_INSN_HINT_NOP);
 }
+EXPORT_SYMBOL(aarch64_insn_gen_nop);
 
 u32 aarch64_insn_gen_branch_reg(enum aarch64_insn_register reg,
 				enum aarch64_insn_branch_type type)
@@ -1661,3 +1662,4 @@ u32 aarch64_insn_gen_extr(enum aarch64_insn_variant variant,
 	insn = aarch64_insn_encode_register(AARCH64_INSN_REGTYPE_RN, insn, Rn);
 	return aarch64_insn_encode_register(AARCH64_INSN_REGTYPE_RM, insn, Rm);
 }
+EXPORT_SYMBOL(aarch64_insn_gen_extr);
diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index a0b4f1b..7d2c9c2 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -516,6 +516,16 @@ static inline int armv8pmu_enable_counter(int idx)
 	return idx;
 }
 
+static void (* kvm_set_pmu_events_ptr)(u32 set, struct perf_event_attr *attr) = NULL;
+static void (* kvm_clr_pmu_events_ptr)(u32 clr) = NULL;
+
+void perf_event_register_kvm_pmu_events_handler(void *set, void* clr)
+{
+	kvm_set_pmu_events_ptr = set;
+	kvm_clr_pmu_events_ptr = clr;
+}
+EXPORT_SYMBOL(perf_event_register_kvm_pmu_events_handler);
+
 static inline void armv8pmu_enable_event_counter(struct perf_event *event)
 {
 	struct perf_event_attr *attr = &event->attr;
@@ -525,7 +535,8 @@ static inline void armv8pmu_enable_event_counter(struct perf_event *event)
 	if (armv8pmu_event_is_chained(event))
 		counter_bits |= BIT(ARMV8_IDX_TO_COUNTER(idx - 1));
 
-	kvm_set_pmu_events(counter_bits, attr);
+	if (kvm_set_pmu_events_ptr)
+		(*kvm_set_pmu_events_ptr)(counter_bits, attr);
 
 	/* We rely on the hypervisor switch code to enable guest counters */
 	if (!kvm_pmu_counter_deferred(attr)) {
@@ -552,7 +563,8 @@ static inline void armv8pmu_disable_event_counter(struct perf_event *event)
 	if (armv8pmu_event_is_chained(event))
 		counter_bits |= BIT(ARMV8_IDX_TO_COUNTER(idx - 1));
 
-	kvm_clr_pmu_events(counter_bits);
+	if (kvm_clr_pmu_events_ptr)
+		(*kvm_clr_pmu_events_ptr)(counter_bits);
 
 	/* We rely on the hypervisor switch code to disable guest counters */
 	if (!kvm_pmu_counter_deferred(attr)) {
@@ -883,7 +895,8 @@ static void armv8pmu_reset(void *info)
 	}
 
 	/* Clear the counters we flip at guest entry/exit */
-	kvm_clr_pmu_events(U32_MAX);
+	if (kvm_clr_pmu_events_ptr)
+		kvm_clr_pmu_events_ptr(U32_MAX);
 
 	/*
 	 * Initialize & Reset PMNC. Request overflow interrupt for
diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c445282..34e5dd4 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -461,6 +461,7 @@ int __init arch_populate_kprobe_blacklist(void)
 		return ret;
 	ret = kprobe_add_area_blacklist((unsigned long)__idmap_text_start,
 					(unsigned long)__idmap_text_end);
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	if (ret)
 		return ret;
 	ret = kprobe_add_area_blacklist((unsigned long)__hyp_text_start,
@@ -469,6 +470,7 @@ int __init arch_populate_kprobe_blacklist(void)
 		return ret;
 	ret = kprobe_add_area_blacklist((unsigned long)__hyp_idmap_text_start,
 					(unsigned long)__hyp_idmap_text_end);
+#endif
 	return ret;
 }
 
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index dc9fe87..c7a4c82 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -947,6 +947,7 @@ void smp_send_reschedule(int cpu)
 {
 	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
 }
+EXPORT_SYMBOL(smp_send_reschedule);
 
 #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
 void tick_broadcast(const struct cpumask *mask)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 34739e8..46f0256 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -772,6 +772,7 @@ const char *esr_get_class_string(u32 esr)
 {
 	return esr_class_str[ESR_ELx_EC(esr)];
 }
+EXPORT_SYMBOL(esr_get_class_string);
 
 /*
  * bad_mode handles the impossible case in the exception vector. This is always
@@ -887,6 +888,7 @@ bool arm64_is_fatal_ras_serror(struct pt_regs *regs, unsigned int esr)
 		arm64_serror_panic(regs, esr);
 	}
 }
+EXPORT_SYMBOL(arm64_is_fatal_ras_serror);
 
 asmlinkage void do_serror(struct pt_regs *regs, unsigned int esr)
 {
diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
index a67121d..0681051 100644
--- a/arch/arm64/kvm/Kconfig
+++ b/arch/arm64/kvm/Kconfig
@@ -18,7 +18,7 @@ menuconfig VIRTUALIZATION
 
 if VIRTUALIZATION
 
-config KVM
+menuconfig KVM
 	bool "Kernel-based Virtual Machine (KVM) support"
 	depends on OF
 	select MMU_NOTIFIER
@@ -26,13 +26,11 @@ config KVM
 	select HAVE_KVM_CPU_RELAX_INTERCEPT
 	select HAVE_KVM_ARCH_TLB_FLUSH_ALL
 	select KVM_MMIO
-	select KVM_ARM_HOST
 	select KVM_GENERIC_DIRTYLOG_READ_PROTECT
 	select SRCU
 	select KVM_VFIO
 	select HAVE_KVM_EVENTFD
 	select HAVE_KVM_IRQFD
-	select KVM_ARM_PMU if HW_PERF_EVENTS
 	select HAVE_KVM_MSI
 	select HAVE_KVM_IRQCHIP
 	select HAVE_KVM_IRQ_ROUTING
@@ -45,11 +43,22 @@ config KVM
 	  levels of fake page tables.
 
 	  If unsure, say N.
+if KVM
 
 config KVM_ARM_HOST
-	bool
+	tristate "KVM support for ARM64"
+	select KVM_ARM_HOST_VHE_ONLY if KVM_ARM_HOST=m
+	select KVM_ARM_PMU if HW_PERF_EVENTS
+	default y
 	---help---
 	  Provides host support for ARM processors.
+	  To compile this as a module, choose M here: the module
+	  will be called kvm. Note it only works for VHE platform.
+
+config KVM_ARM_HOST_VHE_ONLY
+	bool
+	depends on KVM_ARM_HOST=m
+	default n
 
 config KVM_ARM_PMU
 	bool
@@ -60,6 +69,8 @@ config KVM_ARM_PMU
 config KVM_INDIRECT_VECTORS
        def_bool KVM && (HARDEN_BRANCH_PREDICTOR || HARDEN_EL2_VECTORS)
 
+endif # KVM
+
 source "drivers/vhost/Kconfig"
 
 endif # VIRTUALIZATION
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 3ac1a64..0aefb9c 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -8,30 +8,37 @@ ccflags-y += -I $(srctree)/$(src) -I $(srctree)/virt/kvm/arm/vgic
 KVM=../../../virt/kvm
 
 obj-$(CONFIG_KVM_ARM_HOST) += kvm.o
-obj-$(CONFIG_KVM_ARM_HOST) += hyp/
+#obj-$(CONFIG_KVM_ARM_HOST) += hyp/
 
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o $(KVM)/vfio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
+#kvm-y += hyp/
+kvm-y += $(addprefix hyp/, debug-sr.o fpsimd.o hyp-entry.o entry.o switch.o sysreg-sr.o tlb.o vgic-v2-cpuif-proxy.o)
+kvm-y += $(KVM)/arm/hyp/vgic-v3-sr.o
+kvm-y += $(KVM)/arm/hyp/timer-sr.o
+kvm-y += $(KVM)/arm/hyp/aarch32.o
+kvm-y += hyp.o hyp-init.o va_layout.o
 
-kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
-kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
-kvm-$(CONFIG_KVM_ARM_HOST) += guest.o debug.o reset.o sys_regs.o sys_regs_generic_v8.o
-kvm-$(CONFIG_KVM_ARM_HOST) += vgic-sys-reg-v3.o fpsimd.o pmu.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/aarch32.o
+kvm-y += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o $(KVM)/vfio.o
+kvm-y += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.o
+kvm-y += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
 
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-init.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-irqfd.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-v2.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-v3.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-v4.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-mmio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-mmio-v2.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-mmio-v3.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-kvm-device.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-its.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-debug.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/irqchip.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arch_timer.o
+kvm-y += inject_fault.o regmap.o va_layout.o
+kvm-y += hyp.o hyp-init.o handle_exit.o
+kvm-y += guest.o debug.o reset.o sys_regs.o sys_regs_generic_v8.o
+kvm-y += vgic-sys-reg-v3.o fpsimd.o pmu.o
+kvm-y += $(KVM)/arm/aarch32.o
+
+kvm-y += $(KVM)/arm/vgic/vgic.o
+kvm-y += $(KVM)/arm/vgic/vgic-init.o
+kvm-y += $(KVM)/arm/vgic/vgic-irqfd.o
+kvm-y += $(KVM)/arm/vgic/vgic-v2.o
+kvm-y += $(KVM)/arm/vgic/vgic-v3.o
+kvm-y += $(KVM)/arm/vgic/vgic-v4.o
+kvm-y += $(KVM)/arm/vgic/vgic-mmio.o
+kvm-y += $(KVM)/arm/vgic/vgic-mmio-v2.o
+kvm-y += $(KVM)/arm/vgic/vgic-mmio-v3.o
+kvm-y += $(KVM)/arm/vgic/vgic-kvm-device.o
+kvm-y += $(KVM)/arm/vgic/vgic-its.o
+kvm-y += $(KVM)/arm/vgic/vgic-debug.o
+kvm-y += $(KVM)/irqchip.o
+kvm-y += $(KVM)/arm/arch_timer.o
 kvm-$(CONFIG_KVM_ARM_PMU) += $(KVM)/arm/pmu.o
diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f6..f91ac14 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -8,18 +8,18 @@ ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 
 KVM=../../../../virt/kvm
 
-obj-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hyp/vgic-v3-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hyp/timer-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hyp/aarch32.o
+obj-y += $(KVM)/arm/hyp/vgic-v3-sr.o
+obj-y += $(KVM)/arm/hyp/timer-sr.o
+obj-y += $(KVM)/arm/hyp/aarch32.o
 
-obj-$(CONFIG_KVM_ARM_HOST) += vgic-v2-cpuif-proxy.o
-obj-$(CONFIG_KVM_ARM_HOST) += sysreg-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += debug-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += entry.o
-obj-$(CONFIG_KVM_ARM_HOST) += switch.o
-obj-$(CONFIG_KVM_ARM_HOST) += fpsimd.o
-obj-$(CONFIG_KVM_ARM_HOST) += tlb.o
-obj-$(CONFIG_KVM_ARM_HOST) += hyp-entry.o
+obj-y += vgic-v2-cpuif-proxy.o
+obj-y += sysreg-sr.o
+obj-y += debug-sr.o
+obj-y += entry.o
+obj-y += switch.o
+obj-y += fpsimd.o
+obj-y += tlb.o
+obj-y += hyp-entry.o
 
 # KVM code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index 2cf7d4b..c82c4e2 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -12,10 +12,12 @@
 #include <asm/insn.h>
 #include <asm/kvm_mmu.h>
 
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 /*
  * The LSB of the random hyp VA tag or 0 if no randomization is used.
  */
 static u8 tag_lsb;
+
 /*
  * The random hyp VA tag value with the region bit if hyp randomization is used
  */
@@ -103,7 +105,7 @@ static u32 compute_instruction(int n, u32 rd, u32 rn)
 	return insn;
 }
 
-void __init kvm_update_va_mask(struct alt_instr *alt,
+void kvm_update_va_mask(struct alt_instr *alt,
 			       __le32 *origptr, __le32 *updptr, int nr_inst)
 {
 	int i;
@@ -139,10 +141,12 @@ void __init kvm_update_va_mask(struct alt_instr *alt,
 		updptr[i] = cpu_to_le32(insn);
 	}
 }
+#endif
 
 void *__kvm_bp_vect_base;
 int __kvm_harden_el2_vector_slot;
 
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 void kvm_patch_vector_branch(struct alt_instr *alt,
 			     __le32 *origptr, __le32 *updptr, int nr_inst)
 {
@@ -213,3 +217,4 @@ void kvm_patch_vector_branch(struct alt_instr *alt,
 					   AARCH64_INSN_BRANCH_NOLINK);
 	*updptr++ = cpu_to_le32(insn);
 }
+#endif
diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index db767b0..653087f 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -95,6 +95,7 @@ alternative_else_nop_endif
 	mov	x0, #-EFAULT
 	b	1b
 ENDPROC(invalidate_icache_range)
+EXPORT_SYMBOL(invalidate_icache_range)
 
 /*
  *	__flush_dcache_area(kaddr, size)
@@ -109,6 +110,7 @@ ENTRY(__flush_dcache_area)
 	dcache_by_line_op civac, sy, x0, x1, x2, x3
 	ret
 ENDPIPROC(__flush_dcache_area)
+EXPORT_SYMBOL(__flush_dcache_area)
 
 /*
  *	__clean_dcache_area_pou(kaddr, size)
diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index bbeb6a5..171cff9 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -43,6 +43,7 @@ int pmd_huge(pmd_t pmd)
 {
 	return pmd_val(pmd) && !(pmd_val(pmd) & PMD_TABLE_BIT);
 }
+EXPORT_SYMBOL(pmd_huge);
 
 int pud_huge(pud_t pud)
 {
@@ -52,6 +53,7 @@ int pud_huge(pud_t pud)
 	return 0;
 #endif
 }
+EXPORT_SYMBOL(pud_huge);
 
 /*
  * Select all bits except the pfn
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 60c929f..828d87e 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -39,7 +39,9 @@
 #define NO_CONT_MAPPINGS	BIT(1)
 
 u64 idmap_t0sz = TCR_T0SZ(VA_BITS);
+EXPORT_SYMBOL(idmap_t0sz);
 u64 idmap_ptrs_per_pgd = PTRS_PER_PGD;
+EXPORT_SYMBOL(idmap_ptrs_per_pgd);
 
 u64 __section(".mmuoff.data.write") vabits_actual;
 EXPORT_SYMBOL(vabits_actual);
@@ -75,6 +77,8 @@ void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
 	pgd_clear_fixmap();
 	spin_unlock(&swapper_pgdir_lock);
 }
+EXPORT_SYMBOL(set_swapper_pgd);
+EXPORT_SYMBOL(swapper_pg_dir);
 
 pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 			      unsigned long size, pgprot_t vma_prot)
diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 9a5464c..cc858a5 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -956,6 +956,7 @@ struct arch_timer_kvm_info *arch_timer_get_kvm_info(void)
 {
 	return &arch_timer_kvm_info;
 }
+EXPORT_SYMBOL(arch_timer_get_kvm_info);
 
 static void __init arch_counter_register(unsigned type)
 {
diff --git a/drivers/irqchip/irq-gic-common.c b/drivers/irqchip/irq-gic-common.c
index 8252000..55fab0f 100644
--- a/drivers/irqchip/irq-gic-common.c
+++ b/drivers/irqchip/irq-gic-common.c
@@ -18,6 +18,7 @@ const struct gic_kvm_info *gic_get_kvm_info(void)
 {
 	return gic_kvm_info;
 }
+EXPORT_SYMBOL(gic_get_kvm_info);
 
 void gic_set_kvm_info(const struct gic_kvm_info *info)
 {
diff --git a/drivers/irqchip/irq-gic-v4.c b/drivers/irqchip/irq-gic-v4.c
index 563e87e..3b51535 100644
--- a/drivers/irqchip/irq-gic-v4.c
+++ b/drivers/irqchip/irq-gic-v4.c
@@ -125,6 +125,7 @@ int its_alloc_vcpu_irqs(struct its_vm *vm)
 
 	return -ENOMEM;
 }
+EXPORT_SYMBOL(its_alloc_vcpu_irqs);
 
 void its_free_vcpu_irqs(struct its_vm *vm)
 {
@@ -132,6 +133,7 @@ void its_free_vcpu_irqs(struct its_vm *vm)
 	irq_domain_remove(vm->domain);
 	irq_domain_free_fwnode(vm->fwnode);
 }
+EXPORT_SYMBOL(its_free_vcpu_irqs);
 
 static int its_send_vpe_cmd(struct its_vpe *vpe, struct its_cmd_info *info)
 {
@@ -148,6 +150,7 @@ int its_schedule_vpe(struct its_vpe *vpe, bool on)
 
 	return its_send_vpe_cmd(vpe, &info);
 }
+EXPORT_SYMBOL(its_schedule_vpe);
 
 int its_invall_vpe(struct its_vpe *vpe)
 {
@@ -157,6 +160,7 @@ int its_invall_vpe(struct its_vpe *vpe)
 
 	return its_send_vpe_cmd(vpe, &info);
 }
+EXPORT_SYMBOL(its_invall_vpe);
 
 int its_map_vlpi(int irq, struct its_vlpi_map *map)
 {
@@ -180,6 +184,7 @@ int its_map_vlpi(int irq, struct its_vlpi_map *map)
 
 	return ret;
 }
+EXPORT_SYMBOL(its_map_vlpi);
 
 int its_get_vlpi(int irq, struct its_vlpi_map *map)
 {
@@ -192,12 +197,14 @@ int its_get_vlpi(int irq, struct its_vlpi_map *map)
 
 	return irq_set_vcpu_affinity(irq, &info);
 }
+EXPORT_SYMBOL(its_get_vlpi);
 
 int its_unmap_vlpi(int irq)
 {
 	irq_clear_status_flags(irq, IRQ_DISABLE_UNLAZY);
 	return irq_set_vcpu_affinity(irq, NULL);
 }
+EXPORT_SYMBOL(its_unmap_vlpi);
 
 int its_prop_update_vlpi(int irq, u8 config, bool inv)
 {
@@ -210,6 +217,7 @@ int its_prop_update_vlpi(int irq, u8 config, bool inv)
 
 	return irq_set_vcpu_affinity(irq, &info);
 }
+EXPORT_SYMBOL(its_prop_update_vlpi);
 
 int its_init_v4(struct irq_domain *domain, const struct irq_domain_ops *ops)
 {
diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 89fc59d..295acd9 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -310,11 +310,7 @@ extern int __irq_set_affinity(unsigned int irq, const struct cpumask *cpumask,
  *
  * Fails if cpumask does not contain an online CPU
  */
-static inline int
-irq_set_affinity(unsigned int irq, const struct cpumask *cpumask)
-{
-	return __irq_set_affinity(irq, cpumask, false);
-}
+int irq_set_affinity(unsigned int irq, const struct cpumask *cpumask);
 
 /**
  * irq_force_affinity - Force the irq affinity of a given irq
diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index 1753486..65531465 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -306,6 +306,12 @@ int __irq_set_affinity(unsigned int irq, const struct cpumask *mask, bool force)
 	return ret;
 }
 
+int irq_set_affinity(unsigned int irq, const struct cpumask *cpumask)
+{
+	return __irq_set_affinity(irq, cpumask, false);
+}
+EXPORT_SYMBOL_GPL(irq_set_affinity);
+
 int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
 {
 	unsigned long flags;
diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
index 532c292..ff0a7a8 100644
--- a/mm/pgtable-generic.c
+++ b/mm/pgtable-generic.c
@@ -35,6 +35,7 @@ void pud_clear_bad(pud_t *pud)
 	pud_ERROR(*pud);
 	pud_clear(pud);
 }
+EXPORT_SYMBOL(pud_clear_bad);
 
 void pmd_clear_bad(pmd_t *pmd)
 {
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index feb6649..31873b5 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -45,7 +45,9 @@
 #endif
 
 DEFINE_PER_CPU(kvm_host_data_t, kvm_host_data);
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 static DEFINE_PER_CPU(unsigned long, kvm_arm_hyp_stack_page);
+#endif
 
 /* Per-CPU variable containing the currently running vcpu. */
 static DEFINE_PER_CPU(struct kvm_vcpu *, kvm_arm_running_vcpu);
@@ -766,7 +768,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 			ret = kvm_vcpu_run_vhe(vcpu);
 			kvm_arm_vhe_guest_exit();
 		} else {
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 			ret = kvm_call_hyp_ret(__kvm_vcpu_run_nvhe, vcpu);
+#endif
 		}
 
 		vcpu->mode = OUTSIDE_GUEST_MODE;
@@ -1317,6 +1321,7 @@ long kvm_arch_vm_ioctl(struct file *filp,
 
 static void cpu_init_hyp_mode(void *dummy)
 {
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	phys_addr_t pgd_ptr;
 	unsigned long hyp_stack_ptr;
 	unsigned long stack_page;
@@ -1332,12 +1337,15 @@ static void cpu_init_hyp_mode(void *dummy)
 
 	__cpu_init_hyp_mode(pgd_ptr, hyp_stack_ptr, vector_ptr);
 	__cpu_init_stage2();
+#endif
 }
 
 static void cpu_hyp_reset(void)
 {
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	if (!is_kernel_in_hyp_mode())
 		__hyp_reset_vectors();
+#endif
 }
 
 static void cpu_hyp_reinit(void)
@@ -1484,6 +1492,7 @@ static int init_subsystems(void)
 	if (err)
 		goto out;
 
+	perf_event_register_kvm_pmu_events_handler(kvm_set_pmu_events, kvm_clr_pmu_events);
 	kvm_perf_init();
 	kvm_coproc_table_init();
 
@@ -1494,6 +1503,7 @@ static int init_subsystems(void)
 	return err;
 }
 
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 static void teardown_hyp_mode(void)
 {
 	int cpu;
@@ -1600,6 +1610,7 @@ static int init_hyp_mode(void)
 	kvm_err("error initializing Hyp mode: %d\n", err);
 	return err;
 }
+#endif
 
 static void check_kvm_target_cpu(void *ret)
 {
@@ -1696,12 +1707,13 @@ int kvm_arch_init(void *opaque)
 	if (err)
 		return err;
 
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	if (!in_hyp_mode) {
 		err = init_hyp_mode();
 		if (err)
 			goto out_err;
 	}
-
+#endif
 	err = init_subsystems();
 	if (err)
 		goto out_hyp;
@@ -1714,15 +1726,18 @@ int kvm_arch_init(void *opaque)
 	return 0;
 
 out_hyp:
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 	if (!in_hyp_mode)
 		teardown_hyp_mode();
 out_err:
+#endif
 	return err;
 }
 
 /* NOP: Compiling as a module not supported */
 void kvm_arch_exit(void)
 {
+	perf_event_register_kvm_pmu_events_handler(NULL, NULL);
 	kvm_perf_teardown();
 	kvm_timer_hyp_uninit();
 	kvm_vgic_hyp_uninit();
@@ -1731,8 +1746,25 @@ void kvm_arch_exit(void)
 
 static int arm_init(void)
 {
-	int rc = kvm_init(NULL, sizeof(struct kvm_vcpu), 0, THIS_MODULE);
+	int rc;
+
+	if (IS_MODULE(CONFIG_KVM_ARM_HOST) && !is_kernel_in_hyp_mode()) {
+		kvm_err("kvm arm kernel module only supports for VHE system\n");
+		return -ENODEV;
+	}
+
+	rc = kvm_init(NULL, sizeof(struct kvm_vcpu), 0, THIS_MODULE);
+	if (!rc)
+		kvm_info("init kvm-arm successfully\n");
 	return rc;
 }
 
 module_init(arm_init);
+
+static void arm_exit(void)
+{
+       kvm_exit();
+       kvm_info("exit kvm-arm successfully\n");
+}
+
+module_exit(arm_exit);
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 38b4c91..665886f 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -28,8 +28,10 @@
 static DEFINE_MUTEX(kvm_hyp_pgd_mutex);
 
 static unsigned long hyp_idmap_start;
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 static unsigned long hyp_idmap_end;
 static phys_addr_t hyp_idmap_vector;
+#endif
 
 static unsigned long io_map_base;
 
@@ -2150,6 +2152,7 @@ phys_addr_t kvm_mmu_get_httbr(void)
 		return virt_to_phys(hyp_pgd);
 }
 
+#if !defined(CONFIG_KVM_ARM_HOST_VHE_ONLY)
 phys_addr_t kvm_get_idmap_vector(void)
 {
 	return hyp_idmap_vector;
@@ -2243,6 +2246,7 @@ int kvm_mmu_init(void)
 	free_hyp_pgds();
 	return err;
 }
+#endif
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				   const struct kvm_userspace_memory_region *mem,
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
