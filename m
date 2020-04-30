Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2161BFF3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CMUT7z5Dozy+FNhwvl7ToQxVN+84adnsoLFHatrYZ8=; b=I75+Esmg8XmBs0
	UGyrOxgQMSkZqV4phXa3W+fxcMbOkce2lXY766OuAArBsjohY1oMyfb/oo8r1CKvKqSqUuHMJWL+X
	X4fkMouQKAqGaiLIPIYse/dtT6BwJvhuEjKN7FIK9gy8CvWA4WxlNYm6aUzbUccgiQsFsLPcbMJJL
	HMmOMjHOGErIMKZTPM939nnX7SzsCSTwTxO3MPjOejUmJhGfvgWHxcI6qTA7OAkm5Mfth0RGORXVz
	uUMBYzgGSqpxJQDH86o55I+v8SOhdRBIWmLUdBRSXOsEiXo8rQxr5d0QP3hONNDlMy6tVvnOVU001
	oLcRkwgRpvydW0VLNrgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAXq-0008FB-WD; Thu, 30 Apr 2020 14:52:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUi-0003rP-D6
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id z6so2245729wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pFZrtC078tm3fF3Gkx3z+NqJzWj49dM6UPrqp/cSML8=;
 b=jAFUEnzMh7rqPJib89Siw1b4XJgVDTMzP0eFtU2ZqL3yR803ik4PeS7lsveczCOlSz
 j9Scbttch+bGCZN49PEQALcgPjD+z1kYtoS1twsUuYX6HH+OWqHjDZS0F6hMc7EYooTO
 wmWBWagwicc58suxd3u+0ezGkpB5tW3WvtGKIuVZMXtSJPGfwxhpgBvLSED2BRhY0gqr
 1ecSyg3yGVHMbGrnt351h3jZBzXeAS4rYlzLDUe5h5rmMTiQ2BqZsYWx5ad1hM1WrLqN
 BITNmC5Pda5IVcW9AHtfq8hD6cyT+A6MZEmv0iE00whlLZ/qau/eTU0LQPWLUpm4KFlW
 MFbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pFZrtC078tm3fF3Gkx3z+NqJzWj49dM6UPrqp/cSML8=;
 b=XrwJGVABplJIq5G/hM81OOR9zM06cuUYYDkq+zGZsep0jIEoKDvB1WkiqMh1oQ6KbD
 Drbk8yzjMpH4oAlO7cbV2Jjyn8df8IpHSXThFLRnKQUUwVSyQz5RuQWYKdJGTOGnfrja
 96bVATPwJsye5TVmgI8AGKbD2TYgDsn0widiAncPG886HvfPGtHrInP2wtE/AcfvLHsi
 C9LG+wgTnaC99UZOfErpfRQ/2hBQfzQ3+VNLv9kj2r7z3jQ/ez88e7SgHRymy2VPiBg/
 ZrwD673B/z0FyF4jr+k3B37ps3mHobD8AFCwmaBMwBrEU6avsx60YcdFjF2mZQwo+pUI
 B9fA==
X-Gm-Message-State: AGi0PuaXq4rOEATtT7iDQpvvZUhyS0++VG+MRxAWVGHOXTjOQfmotIJY
 snfz5brz2hVYQty7ewjUgY+HWA==
X-Google-Smtp-Source: APiQypIszJ+9R4DydmyddajAs7wvDnj8khQHNQBHnVsoPhp/aepPFGbE2tXMx0yhrO9Ukjry1jjaOA==
X-Received: by 2002:a7b:c38e:: with SMTP id s14mr3213893wmj.12.1588258134243; 
 Thu, 30 Apr 2020 07:48:54 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id n2sm4558315wrq.74.2020.04.30.07.48.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:48:53 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 05/15] arm64: kvm: Build hyp-entry.S separately for VHE/nVHE
Date: Thu, 30 Apr 2020 15:48:21 +0100
Message-Id: <20200430144831.59194-6-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074856_521852_47F86D53 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is part of a series which builds KVM's non-VHE hyp code separately
from VHE and the rest of the kernel.

hyp-entry.S contains implementation of KVM hyp vectors. This code is mostly
shared between VHE/nVHE, therefore compile it under both VHE and nVHE build
rules, with small differences hidden behind '#ifdef __HYPERVISOR__'. These are:
  * only nVHE should handle host HVCs, VHE will now panic,
  * only nVHE needs kvm_hcall_table, so move host_hypcall.c to nvhe/,
  * __smccc_workaround_1_smc is not needed by nVHE, only cpu_errata.c in
    kernel proper.

Adjust code which selects which KVM hyp vecs to install to choose the correct
VHE/nVHE symbol.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_asm.h              |  7 +++++
 arch/arm64/include/asm/kvm_mmu.h              | 13 +++++----
 arch/arm64/include/asm/mmu.h                  |  7 -----
 arch/arm64/kernel/cpu_errata.c                |  2 +-
 arch/arm64/kernel/image-vars.h                | 28 +++++++++++++++++++
 arch/arm64/kvm/hyp/Makefile                   |  2 +-
 arch/arm64/kvm/hyp/hyp-entry.S                | 27 ++++++++++++------
 arch/arm64/kvm/hyp/nvhe/Makefile              |  2 +-
 .../arm64/kvm/hyp/{ => nvhe}/host_hypercall.c |  0
 arch/arm64/kvm/va_layout.c                    |  2 +-
 10 files changed, 65 insertions(+), 25 deletions(-)
 rename arch/arm64/kvm/hyp/{ => nvhe}/host_hypercall.c (100%)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 99ab204519ca..cdaf3df8085d 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -71,6 +71,13 @@ extern char __kvm_hyp_init[];
 extern char __kvm_hyp_init_end[];
 
 extern char __kvm_hyp_vector[];
+extern char kvm_nvhe_sym(__kvm_hyp_vector)[];
+
+#ifdef CONFIG_KVM_INDIRECT_VECTORS
+extern char __bp_harden_hyp_vecs[];
+extern char kvm_nvhe_sym(__bp_harden_hyp_vecs)[];
+extern atomic_t arm64_el2_vector_last_slot;
+#endif
 
 extern void __kvm_flush_vm_context(void);
 extern void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa);
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 30b0e8d6b895..0a5fa033422c 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -468,7 +468,7 @@ static inline int kvm_write_guest_lock(struct kvm *kvm, gpa_t gpa,
  * VHE, as we don't have hypervisor-specific mappings. If the system
  * is VHE and yet selects this capability, it will be ignored.
  */
-#include <asm/mmu.h>
+#include <asm/kvm_asm.h>
 
 extern void *__kvm_bp_vect_base;
 extern int __kvm_harden_el2_vector_slot;
@@ -477,11 +477,11 @@ extern int __kvm_harden_el2_vector_slot;
 static inline void *kvm_get_hyp_vector(void)
 {
 	struct bp_hardening_data *data = arm64_get_bp_hardening_data();
-	void *vect = kern_hyp_va(kvm_ksym_ref(__kvm_hyp_vector));
+	void *vect = kern_hyp_va(kvm_hyp_ref(__kvm_hyp_vector));
 	int slot = -1;
 
 	if (cpus_have_const_cap(ARM64_HARDEN_BRANCH_PREDICTOR) && data->fn) {
-		vect = kern_hyp_va(kvm_ksym_ref(__bp_harden_hyp_vecs));
+		vect = kern_hyp_va(kvm_hyp_ref(__bp_harden_hyp_vecs));
 		slot = data->hyp_vectors_slot;
 	}
 
@@ -510,12 +510,13 @@ static inline int kvm_map_vectors(void)
 	 *  HBP +  HEL2 -> use hardened vertors and use exec mapping
 	 */
 	if (cpus_have_const_cap(ARM64_HARDEN_BRANCH_PREDICTOR)) {
-		__kvm_bp_vect_base = kvm_ksym_ref(__bp_harden_hyp_vecs);
+		__kvm_bp_vect_base = kvm_hyp_ref(__bp_harden_hyp_vecs);
 		__kvm_bp_vect_base = kern_hyp_va(__kvm_bp_vect_base);
 	}
 
 	if (cpus_have_const_cap(ARM64_HARDEN_EL2_VECTORS)) {
-		phys_addr_t vect_pa = __pa_symbol(__bp_harden_hyp_vecs);
+		phys_addr_t vect_pa =
+			__pa_symbol(kvm_nvhe_sym(__bp_harden_hyp_vecs));
 		unsigned long size = __BP_HARDEN_HYP_VECS_SZ;
 
 		/*
@@ -534,7 +535,7 @@ static inline int kvm_map_vectors(void)
 #else
 static inline void *kvm_get_hyp_vector(void)
 {
-	return kern_hyp_va(kvm_ksym_ref(__kvm_hyp_vector));
+	return kern_hyp_va(kvm_hyp_ref(__kvm_hyp_vector));
 }
 
 static inline int kvm_map_vectors(void)
diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 68140fdd89d6..4d913f6dd366 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -42,13 +42,6 @@ struct bp_hardening_data {
 	bp_hardening_cb_t	fn;
 };
 
-#if (defined(CONFIG_HARDEN_BRANCH_PREDICTOR) ||	\
-     defined(CONFIG_HARDEN_EL2_VECTORS))
-
-extern char __bp_harden_hyp_vecs[];
-extern atomic_t arm64_el2_vector_last_slot;
-#endif  /* CONFIG_HARDEN_BRANCH_PREDICTOR || CONFIG_HARDEN_EL2_VECTORS */
-
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 DECLARE_PER_CPU_READ_MOSTLY(struct bp_hardening_data, bp_hardening_data);
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index a102321fc8a2..b4b41552c6df 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -117,7 +117,7 @@ DEFINE_PER_CPU_READ_MOSTLY(struct bp_hardening_data, bp_hardening_data);
 static void __copy_hyp_vect_bpi(int slot, const char *hyp_vecs_start,
 				const char *hyp_vecs_end)
 {
-	void *dst = lm_alias(__bp_harden_hyp_vecs + slot * SZ_2K);
+	void *dst = lm_alias(kvm_hyp_sym(__bp_harden_hyp_vecs) + slot * SZ_2K);
 	int i;
 
 	for (i = 0; i < SZ_2K; i += 0x80)
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 13850134fc28..59c53566eceb 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,6 +61,34 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
+__hyp_text___guest_exit = __guest_exit;
+__hyp_text___kvm_enable_ssbs = __kvm_enable_ssbs;
+__hyp_text___kvm_flush_vm_context = __kvm_flush_vm_context;
+__hyp_text___kvm_get_mdcr_el2 = __kvm_get_mdcr_el2;
+__hyp_text___kvm_handle_stub_hvc = __kvm_handle_stub_hvc;
+__hyp_text___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
+__hyp_text___kvm_tlb_flush_local_vmid = __kvm_tlb_flush_local_vmid;
+__hyp_text___kvm_tlb_flush_vmid = __kvm_tlb_flush_vmid;
+__hyp_text___kvm_tlb_flush_vmid_ipa = __kvm_tlb_flush_vmid_ipa;
+__hyp_text___kvm_vcpu_run_nvhe = __kvm_vcpu_run_nvhe;
+__hyp_text___vgic_v3_get_ich_vtr_el2 = __vgic_v3_get_ich_vtr_el2;
+__hyp_text___vgic_v3_init_lrs = __vgic_v3_init_lrs;
+__hyp_text___vgic_v3_read_vmcr = __vgic_v3_read_vmcr;
+__hyp_text___vgic_v3_restore_aprs = __vgic_v3_restore_aprs;
+__hyp_text___vgic_v3_save_aprs = __vgic_v3_save_aprs;
+__hyp_text___vgic_v3_write_vmcr = __vgic_v3_write_vmcr;
+__hyp_text_abort_guest_exit_end = abort_guest_exit_end;
+__hyp_text_abort_guest_exit_start = abort_guest_exit_start;
+__hyp_text_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
+__hyp_text_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
+__hyp_text_hyp_panic = hyp_panic;
+__hyp_text_kimage_voffset = kimage_voffset;
+__hyp_text_kvm_host_data = kvm_host_data;
+__hyp_text_kvm_patch_vector_branch = kvm_patch_vector_branch;
+__hyp_text_kvm_update_va_mask = kvm_update_va_mask;
+__hyp_text_panic = panic;
+__hyp_text_physvirt_offset = physvirt_offset;
+
 #endif /* CONFIG_KVM */
 
 #endif /* __ARM64_KERNEL_IMAGE_VARS_H */
diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index 79bf822a484b..a6883f4fed9e 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -9,7 +9,7 @@ ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 obj-$(CONFIG_KVM) += vhe.o nvhe/
 
 vhe-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
-	 debug-sr.o entry.o switch.o fpsimd.o tlb.o host_hypercall.o hyp-entry.o
+	 debug-sr.o entry.o switch.o fpsimd.o tlb.o hyp-entry.o
 
 # KVM code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 1a51a0958504..5986e1d78d3f 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -36,12 +36,6 @@
 	ldr	lr, [sp], #16
 .endm
 
-/* kern_hyp_va(lm_alias(ksym)) */
-.macro ksym_hyp_va ksym, lm_offset
-	sub	\ksym, \ksym, \lm_offset
-	kern_hyp_va	\ksym
-.endm
-
 el1_sync:				// Guest trapped into EL2
 
 	mrs	x0, esr_el2
@@ -53,7 +47,15 @@ el1_sync:				// Guest trapped into EL2
 	mrs	x1, vttbr_el2		// If vttbr is valid, the guest
 	cbnz	x1, el1_hvc_guest	// called HVC
 
-	/* Here, we're pretty sure the host called HVC. */
+#ifdef __HYPERVISOR__
+
+/* kern_hyp_va(lm_alias(ksym)) */
+.macro ksym_hyp_va ksym, lm_offset
+	sub	\ksym, \ksym, \lm_offset
+	kern_hyp_va	\ksym
+.endm
+
+	/* nVHE: Here, we're pretty sure the host called HVC. */
 	ldp	x0, x1, [sp], #16
 
 	/* Check for a stub HVC call */
@@ -107,6 +109,13 @@ el1_sync:				// Guest trapped into EL2
 	eret
 	sb
 
+#else /* __HYPERVISOR__ */
+
+	/* VHE: Guest called HVC but vttbr is not valid. */
+	b	__hyp_panic
+
+#endif /* __HYPERVISOR__ */
+
 el1_hvc_guest:
 	/*
 	 * Fastest possible path for ARM_SMCCC_ARCH_WORKAROUND_1.
@@ -354,6 +363,7 @@ SYM_CODE_END(__bp_harden_hyp_vecs)
 
 	.popsection
 
+#ifndef __HYPERVISOR__
 SYM_CODE_START(__smccc_workaround_1_smc)
 	esb
 	sub	sp, sp, #(8 * 4)
@@ -367,4 +377,5 @@ SYM_CODE_START(__smccc_workaround_1_smc)
 1:	.org __smccc_workaround_1_smc + __SMCCC_WORKAROUND_1_SMC_SZ
 	.org 1b
 SYM_CODE_END(__smccc_workaround_1_smc)
-#endif
+#endif /* __HYPERVISOR__ */
+#endif /* CONFIG_KVM_INDIRECT_VECTORS */
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 873d3ab0fd68..fa20b2723652 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,7 @@ asflags-y := -D__HYPERVISOR__
 ccflags-y := -D__HYPERVISOR__ -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 	     $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y :=
+obj-y := host_hypercall.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp/host_hypercall.c b/arch/arm64/kvm/hyp/nvhe/host_hypercall.c
similarity index 100%
rename from arch/arm64/kvm/hyp/host_hypercall.c
rename to arch/arm64/kvm/hyp/nvhe/host_hypercall.c
diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index a4f48c1ac28c..8d941d19085d 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -150,7 +150,7 @@ void kvm_patch_vector_branch(struct alt_instr *alt,
 	/*
 	 * Compute HYP VA by using the same computation as kern_hyp_va()
 	 */
-	addr = (uintptr_t)kvm_ksym_ref(__kvm_hyp_vector);
+	addr = (uintptr_t)kvm_hyp_ref(__kvm_hyp_vector);
 	addr &= va_mask;
 	addr |= tag_val << tag_lsb;
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
