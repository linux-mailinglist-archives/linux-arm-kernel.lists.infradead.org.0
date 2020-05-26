Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D6F1B9634
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 06:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9/EZF5Xq1iG/wd9n/HvibKrJKsnfgdWyGcQQ4fpIHi0=; b=WAmKZVjpRmcOiinpSpNS7WW5ar
	ZR0h0h99GtyCIwCTMMbxlKerbrHPY9b8zc/QNdIZ1iGlzNuGcGzMPbarX82Jdu3ANsV2pkzUk4AKt
	WZuzql6oVhRJtp+tFUcBbnPhbTkFzTmrQGDB/gVjWPLIregmIlW8COd8vXpp57sEkL+E1LGkgcSeY
	3j8Wj1PjdlGcgb3Dto5G9dEv7bJ8l7WrTEctdNd8GHAgXuhY+kp+UqszipLEdDNS+p4ArYAwMu5Rf
	3jwhvPHJ+L6ABqclnv2RWAKwcBqRP+uEcQtjjd5hJq5CA+sCGL4Axb6ZC7SHQIu8f9vq6xSiknbRz
	wTTDfRIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvVX-0003pv-CY; Mon, 27 Apr 2020 04:36:39 +0000
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvUI-000303-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 04:35:25 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R201e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04427;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=38; SR=0;
 TI=SMTPD_---0Twjvhyr_1587962116; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0Twjvhyr_1587962116) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 27 Apr 2020 12:35:16 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: pbonzini@redhat.com, tsbogend@alpha.franken.de, paulus@ozlabs.org,
 mpe@ellerman.id.au, benh@kernel.crashing.org, borntraeger@de.ibm.com,
 frankja@linux.ibm.com, david@redhat.com, cohuck@redhat.com,
 heiko.carstens@de.ibm.com, gor@linux.ibm.com,
 sean.j.christopherson@intel.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org,
 hpa@zytor.com, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com,
 chenhuacai@gmail.com
Subject: [PATCH v4 2/7] KVM: arm64: clean up redundant 'kvm_run' parameters
Date: Mon, 27 Apr 2020 12:35:09 +0800
Message-Id: <20200427043514.16144-3-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_213522_906856_27182E8B 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.56 listed in list.dnswl.org]
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
Cc: linux-s390@vger.kernel.org, tianjia.zhang@linux.alibaba.com,
 kvm@vger.kernel.org, linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
structure. For historical reasons, many kvm-related function parameters
retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
patch does a unified cleanup of these remaining redundant parameters.

Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
---
 arch/arm64/include/asm/kvm_coproc.h | 12 +++++-----
 arch/arm64/include/asm/kvm_host.h   | 11 ++++-----
 arch/arm64/include/asm/kvm_mmu.h    |  2 +-
 arch/arm64/kvm/handle_exit.c        | 36 ++++++++++++++---------------
 arch/arm64/kvm/sys_regs.c           | 13 +++++------
 virt/kvm/arm/arm.c                  |  6 ++---
 virt/kvm/arm/mmio.c                 | 11 +++++----
 virt/kvm/arm/mmu.c                  |  5 ++--
 8 files changed, 46 insertions(+), 50 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_coproc.h b/arch/arm64/include/asm/kvm_coproc.h
index 0185ee8b8b5e..454373704b8a 100644
--- a/arch/arm64/include/asm/kvm_coproc.h
+++ b/arch/arm64/include/asm/kvm_coproc.h
@@ -27,12 +27,12 @@ struct kvm_sys_reg_target_table {
 void kvm_register_target_sys_reg_table(unsigned int target,
 				       struct kvm_sys_reg_target_table *table);
 
-int kvm_handle_cp14_load_store(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int kvm_handle_cp14_64(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int kvm_handle_cp15_32(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int kvm_handle_cp15_64(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int kvm_handle_sys_reg(struct kvm_vcpu *vcpu, struct kvm_run *run);
+int kvm_handle_cp14_load_store(struct kvm_vcpu *vcpu);
+int kvm_handle_cp14_32(struct kvm_vcpu *vcpu);
+int kvm_handle_cp14_64(struct kvm_vcpu *vcpu);
+int kvm_handle_cp15_32(struct kvm_vcpu *vcpu);
+int kvm_handle_cp15_64(struct kvm_vcpu *vcpu);
+int kvm_handle_sys_reg(struct kvm_vcpu *vcpu);
 
 #define kvm_coproc_table_init kvm_sys_reg_table_init
 void kvm_sys_reg_table_init(void);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 32c8a675e5a4..3fab32e4948c 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -481,18 +481,15 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 void force_vm_exit(const cpumask_t *mask);
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 
-int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		int exception_index);
-void handle_exit_early(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		       int exception_index);
+int handle_exit(struct kvm_vcpu *vcpu, int exception_index);
+void handle_exit_early(struct kvm_vcpu *vcpu, int exception_index);
 
 /* MMIO helpers */
 void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data);
 unsigned long kvm_mmio_read_buf(const void *buf, unsigned int len);
 
-int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		 phys_addr_t fault_ipa);
+int kvm_handle_mmio_return(struct kvm_vcpu *vcpu);
+int io_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa);
 
 int kvm_perf_init(void);
 int kvm_perf_teardown(void);
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 30b0e8d6b895..2ec7b9bb25d3 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -159,7 +159,7 @@ void kvm_free_stage2_pgd(struct kvm *kvm);
 int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
 			  phys_addr_t pa, unsigned long size, bool writable);
 
-int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run);
+int kvm_handle_guest_abort(struct kvm_vcpu *vcpu);
 
 void kvm_mmu_free_memory_caches(struct kvm_vcpu *vcpu);
 
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index aacfc55de44c..ec3a66642ea5 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -25,7 +25,7 @@
 #define CREATE_TRACE_POINTS
 #include "trace.h"
 
-typedef int (*exit_handle_fn)(struct kvm_vcpu *, struct kvm_run *);
+typedef int (*exit_handle_fn)(struct kvm_vcpu *);
 
 static void kvm_handle_guest_serror(struct kvm_vcpu *vcpu, u32 esr)
 {
@@ -33,7 +33,7 @@ static void kvm_handle_guest_serror(struct kvm_vcpu *vcpu, u32 esr)
 		kvm_inject_vabt(vcpu);
 }
 
-static int handle_hvc(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int handle_hvc(struct kvm_vcpu *vcpu)
 {
 	int ret;
 
@@ -50,7 +50,7 @@ static int handle_hvc(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return ret;
 }
 
-static int handle_smc(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int handle_smc(struct kvm_vcpu *vcpu)
 {
 	/*
 	 * "If an SMC instruction executed at Non-secure EL1 is
@@ -69,7 +69,7 @@ static int handle_smc(struct kvm_vcpu *vcpu, struct kvm_run *run)
  * Guest access to FP/ASIMD registers are routed to this handler only
  * when the system doesn't support FP/ASIMD.
  */
-static int handle_no_fpsimd(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int handle_no_fpsimd(struct kvm_vcpu *vcpu)
 {
 	kvm_inject_undefined(vcpu);
 	return 1;
@@ -87,7 +87,7 @@ static int handle_no_fpsimd(struct kvm_vcpu *vcpu, struct kvm_run *run)
  * world-switches and schedule other host processes until there is an
  * incoming IRQ or FIQ to the VM.
  */
-static int kvm_handle_wfx(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int kvm_handle_wfx(struct kvm_vcpu *vcpu)
 {
 	if (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_WFx_ISS_WFE) {
 		trace_kvm_wfx_arm64(*vcpu_pc(vcpu), true);
@@ -109,16 +109,16 @@ static int kvm_handle_wfx(struct kvm_vcpu *vcpu, struct kvm_run *run)
  * kvm_handle_guest_debug - handle a debug exception instruction
  *
  * @vcpu:	the vcpu pointer
- * @run:	access to the kvm_run structure for results
  *
  * We route all debug exceptions through the same handler. If both the
  * guest and host are using the same debug facilities it will be up to
  * userspace to re-inject the correct exception for guest delivery.
  *
- * @return: 0 (while setting run->exit_reason), -1 for error
+ * @return: 0 (while setting vcpu->run->exit_reason), -1 for error
  */
-static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu)
 {
+	struct kvm_run *run = vcpu->run;
 	u32 hsr = kvm_vcpu_get_hsr(vcpu);
 	int ret = 0;
 
@@ -144,7 +144,7 @@ static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return ret;
 }
 
-static int kvm_handle_unknown_ec(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int kvm_handle_unknown_ec(struct kvm_vcpu *vcpu)
 {
 	u32 hsr = kvm_vcpu_get_hsr(vcpu);
 
@@ -155,7 +155,7 @@ static int kvm_handle_unknown_ec(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return 1;
 }
 
-static int handle_sve(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int handle_sve(struct kvm_vcpu *vcpu)
 {
 	/* Until SVE is supported for guests: */
 	kvm_inject_undefined(vcpu);
@@ -193,7 +193,7 @@ void kvm_arm_vcpu_ptrauth_trap(struct kvm_vcpu *vcpu)
  * Guest usage of a ptrauth instruction (which the guest EL1 did not turn into
  * a NOP).
  */
-static int kvm_handle_ptrauth(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int kvm_handle_ptrauth(struct kvm_vcpu *vcpu)
 {
 	kvm_arm_vcpu_ptrauth_trap(vcpu);
 	return 1;
@@ -238,7 +238,7 @@ static exit_handle_fn kvm_get_exit_handler(struct kvm_vcpu *vcpu)
  * KVM_EXIT_DEBUG, otherwise userspace needs to complete its
  * emulation first.
  */
-static int handle_trap_exceptions(struct kvm_vcpu *vcpu, struct kvm_run *run)
+static int handle_trap_exceptions(struct kvm_vcpu *vcpu)
 {
 	int handled;
 
@@ -253,7 +253,7 @@ static int handle_trap_exceptions(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		exit_handle_fn exit_handler;
 
 		exit_handler = kvm_get_exit_handler(vcpu);
-		handled = exit_handler(vcpu, run);
+		handled = exit_handler(vcpu);
 	}
 
 	return handled;
@@ -263,9 +263,10 @@ static int handle_trap_exceptions(struct kvm_vcpu *vcpu, struct kvm_run *run)
  * Return > 0 to return to guest, < 0 on error, 0 (and set exit_reason) on
  * proper exit to userspace.
  */
-int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		       int exception_index)
+int handle_exit(struct kvm_vcpu *vcpu, int exception_index)
 {
+	struct kvm_run *run = vcpu->run;
+
 	if (ARM_SERROR_PENDING(exception_index)) {
 		u8 hsr_ec = ESR_ELx_EC(kvm_vcpu_get_hsr(vcpu));
 
@@ -291,7 +292,7 @@ int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 	case ARM_EXCEPTION_EL1_SERROR:
 		return 1;
 	case ARM_EXCEPTION_TRAP:
-		return handle_trap_exceptions(vcpu, run);
+		return handle_trap_exceptions(vcpu);
 	case ARM_EXCEPTION_HYP_GONE:
 		/*
 		 * EL2 has been reset to the hyp-stub. This happens when a guest
@@ -315,8 +316,7 @@ int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 }
 
 /* For exit types that need handling before we can be preempted */
-void handle_exit_early(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		       int exception_index)
+void handle_exit_early(struct kvm_vcpu *vcpu, int exception_index)
 {
 	if (ARM_SERROR_PENDING(exception_index)) {
 		if (this_cpu_has_cap(ARM64_HAS_RAS_EXTN)) {
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 51db934702b6..e5a0d0d676c8 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2116,7 +2116,7 @@ static const struct sys_reg_desc *find_reg(const struct sys_reg_params *params,
 	return bsearch((void *)pval, table, num, sizeof(table[0]), match_sys_reg);
 }
 
-int kvm_handle_cp14_load_store(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_cp14_load_store(struct kvm_vcpu *vcpu)
 {
 	kvm_inject_undefined(vcpu);
 	return 1;
@@ -2295,7 +2295,7 @@ static int kvm_handle_cp_32(struct kvm_vcpu *vcpu,
 	return 1;
 }
 
-int kvm_handle_cp15_64(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_cp15_64(struct kvm_vcpu *vcpu)
 {
 	const struct sys_reg_desc *target_specific;
 	size_t num;
@@ -2306,7 +2306,7 @@ int kvm_handle_cp15_64(struct kvm_vcpu *vcpu, struct kvm_run *run)
 				target_specific, num);
 }
 
-int kvm_handle_cp15_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_cp15_32(struct kvm_vcpu *vcpu)
 {
 	const struct sys_reg_desc *target_specific;
 	size_t num;
@@ -2317,14 +2317,14 @@ int kvm_handle_cp15_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
 				target_specific, num);
 }
 
-int kvm_handle_cp14_64(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_cp14_64(struct kvm_vcpu *vcpu)
 {
 	return kvm_handle_cp_64(vcpu,
 				cp14_64_regs, ARRAY_SIZE(cp14_64_regs),
 				NULL, 0);
 }
 
-int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_cp14_32(struct kvm_vcpu *vcpu)
 {
 	return kvm_handle_cp_32(vcpu,
 				cp14_regs, ARRAY_SIZE(cp14_regs),
@@ -2382,9 +2382,8 @@ static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
 /**
  * kvm_handle_sys_reg -- handles a mrs/msr trap on a guest sys_reg access
  * @vcpu: The VCPU pointer
- * @run:  The kvm_run struct
  */
-int kvm_handle_sys_reg(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_sys_reg(struct kvm_vcpu *vcpu)
 {
 	struct sys_reg_params params;
 	unsigned long esr = kvm_vcpu_get_hsr(vcpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index f5390ac2165b..dbeb20804a75 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -659,7 +659,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
 		return ret;
 
 	if (run->exit_reason == KVM_EXIT_MMIO) {
-		ret = kvm_handle_mmio_return(vcpu, run);
+		ret = kvm_handle_mmio_return(vcpu);
 		if (ret)
 			return ret;
 	}
@@ -811,11 +811,11 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
 		trace_kvm_exit(ret, kvm_vcpu_trap_get_class(vcpu), *vcpu_pc(vcpu));
 
 		/* Exit types that need handling before we can be preempted */
-		handle_exit_early(vcpu, run, ret);
+		handle_exit_early(vcpu, ret);
 
 		preempt_enable();
 
-		ret = handle_exit(vcpu, run, ret);
+		ret = handle_exit(vcpu, ret);
 	}
 
 	/* Tell userspace about in-kernel device output levels */
diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
index aedfcff99ac5..41ef5c5dbc62 100644
--- a/virt/kvm/arm/mmio.c
+++ b/virt/kvm/arm/mmio.c
@@ -77,9 +77,8 @@ unsigned long kvm_mmio_read_buf(const void *buf, unsigned int len)
  *			     or in-kernel IO emulation
  *
  * @vcpu: The VCPU pointer
- * @run:  The VCPU run struct containing the mmio data
  */
-int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_mmio_return(struct kvm_vcpu *vcpu)
 {
 	unsigned long data;
 	unsigned int len;
@@ -92,6 +91,8 @@ int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	vcpu->mmio_needed = 0;
 
 	if (!kvm_vcpu_dabt_iswrite(vcpu)) {
+		struct kvm_run *run = vcpu->run;
+
 		len = kvm_vcpu_dabt_get_as(vcpu);
 		data = kvm_mmio_read_buf(run->mmio.data, len);
 
@@ -119,9 +120,9 @@ int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return 0;
 }
 
-int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		 phys_addr_t fault_ipa)
+int io_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
 {
+	struct kvm_run *run = vcpu->run;
 	unsigned long data;
 	unsigned long rt;
 	int ret;
@@ -188,7 +189,7 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		if (!is_write)
 			memcpy(run->mmio.data, data_buf, len);
 		vcpu->stat.mmio_exit_kernel++;
-		kvm_handle_mmio_return(vcpu, run);
+		kvm_handle_mmio_return(vcpu);
 		return 1;
 	}
 
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e3b9ee268823..c5dc58226b5b 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1892,7 +1892,6 @@ static void handle_access_fault(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
 /**
  * kvm_handle_guest_abort - handles all 2nd stage aborts
  * @vcpu:	the VCPU pointer
- * @run:	the kvm_run structure
  *
  * Any abort that gets to the host is almost guaranteed to be caused by a
  * missing second stage translation table entry, which can mean that either the
@@ -1901,7 +1900,7 @@ static void handle_access_fault(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
  * space. The distinction is based on the IPA causing the fault and whether this
  * memory region has been registered as standard RAM by user space.
  */
-int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_guest_abort(struct kvm_vcpu *vcpu)
 {
 	unsigned long fault_status;
 	phys_addr_t fault_ipa;
@@ -1980,7 +1979,7 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		 * of the page size.
 		 */
 		fault_ipa |= kvm_vcpu_get_hfar(vcpu) & ((1 << 12) - 1);
-		ret = io_mem_abort(vcpu, run, fault_ipa);
+		ret = io_mem_abort(vcpu, fault_ipa);
 		goto out_unlock;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
