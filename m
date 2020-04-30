Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D561BFF4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njawz/okg3+cXPyMBDCdCho3naF9Ytq2RpVdt7N7Bzo=; b=n4bNUORgF/j6nz
	Spvg4NpVBXE7b7kw4sv7V4SK4BsHpSFzQcIoT1YkWA3I71bzEOOXzuxbHCl37uC9/Fl4COhfDPQUh
	HjxG+NZjBzqVhFQPbr5dGHgsMpJI6wM4OpGRXQkQDSR0zBbHmDZvG2FAxRzHdydRsE09MGzwhjqXy
	1ySvevEIlqlfAHIEbce0aJd6T3XVUoOYsHlZq9WJ8L08msZ9xv7KXu6MSCgdYzkV0q5WwA3UpLRBj
	tbeHVeqdxoJOSpGG+wBQB0cRW21JsCEUFlT+a5A4Mlxd/fYaxUR3Ibw9yXgV+D0c64G0QxJumyouJ
	IH1DcyzbQlUKf00UBozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAa6-0001qt-Ja; Thu, 30 Apr 2020 14:54:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUp-0003xV-U9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id j1so7301705wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4Mmx811AjY+NPZkW3Un4aYjcKJ7XmshZwE7TY1RG+qs=;
 b=pcFSf1Lf/lp4sWdg5OG2SrK1DYvB+Hisicszm+YBeiclFdKC3Q4JHp3wYYQbCSWU9L
 c9k9pjgIl1scVSq32S8+n103p0PDQTyC5eevPJGthIeRPL8pBk0BZBe+SS2D0FMEITH/
 owcAkUeWKSfMbLCD79KM3rLWriF3cP8HmEghQMSZiyTRpa1Byo5qrY5sSLcYK9xSgYYr
 DE2OSY70rPgfrQWv0pZ2R3lZQe3boQzPgsv+LhGPeHj4OJ5BuhfnBhIv3cHDyoFKr1za
 m2Wt39tZ5e7xd9mpFzOrmhXd6eWyUEjC/HmN9hMfJtulAqDQazHgGobWXNjJOfMtD9cp
 j2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4Mmx811AjY+NPZkW3Un4aYjcKJ7XmshZwE7TY1RG+qs=;
 b=lRtrSpwQ1iYFQ3MdG0Lu+KNlYBDfddsnYrmCRt1c9OtGvuMKX1P0FVsckNCFoChajS
 FgwGgkU/3mXWdY72E0twut6rvzTtrgW4RAbj+WLitaThGAOBOp7tHHfPD8o6n2Xbfj4B
 HGNQveVDxxBN3R4Rh7Xz1I4IBdCokT71BHD6COhEw70Iph7PO8xkUj3ymWHnB8osuDIb
 S94r7xtPe56cGKcrF/B2+MYycfCN9fchtD+2pjxg7S0Gr7j+6VUOoVqM/qqAe6c+xaW3
 HxT3n3pSTqIF6y1bPjrY3NkB0j4wDFqpelk9mxN3+YHLN/+HePiSXQb2BJ2pbX1G1Rek
 aIvg==
X-Gm-Message-State: AGi0PuZeBaEBhNxuFddmHT34fKUKyQoMqoSXW6vSSYh+rF1N1dM/4nKb
 yeOEiGgSL5iPYJG1OPnzj+f3Ig==
X-Google-Smtp-Source: APiQypJ137VsZDK1ozlaQjm435DpNIPY3c0tGuorQE8h4GFA/pQ+ldWHyi0iA9O4mlPRcyC+SxEwVA==
X-Received: by 2002:adf:f2c5:: with SMTP id d5mr4006662wrp.285.1588258140370; 
 Thu, 30 Apr 2020 07:49:00 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id 91sm4778509wra.37.2020.04.30.07.48.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:48:59 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 08/15] arm64: kvm: Split hyp/switch.c to VHE/nVHE
Date: Thu, 30 Apr 2020 15:48:24 +0100
Message-Id: <20200430144831.59194-9-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074904_362793_F7315405 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

switch.c implements context-switching for KVM, with large parts shared between
VHE/nVHE. These common routines are moved to switch.h, VHE-specific code is
left in switch.c and nVHE-specific code is moved to nvhe/switch.c.

Previously __kvm_vcpu_run needed a different symbol name for VHE/nVHE. This
is cleaned up and the caller in arm.c simplified.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_asm.h             |   4 +-
 arch/arm64/include/asm/kvm_host_hypercalls.h |   4 +-
 arch/arm64/include/asm/kvm_hyp.h             |   5 +
 arch/arm64/kernel/image-vars.h               |  25 +-
 arch/arm64/kvm/arm.c                         |   6 +-
 arch/arm64/kvm/hyp/hyp-entry.S               |   2 +
 arch/arm64/kvm/hyp/nvhe/Makefile             |   2 +-
 arch/arm64/kvm/hyp/nvhe/switch.c             | 271 ++++++++
 arch/arm64/kvm/hyp/switch.c                  | 688 +------------------
 arch/arm64/kvm/hyp/switch.h                  | 441 ++++++++++++
 arch/arm64/kvm/hyp/sysreg-sr.c               |   4 +-
 11 files changed, 764 insertions(+), 688 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/switch.c
 create mode 100644 arch/arm64/kvm/hyp/switch.h

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index cdaf3df8085d..0cb229b9e148 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -86,9 +86,7 @@ extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
 
 extern void __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high);
 
-extern int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu);
-
-extern int __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu);
+extern int __kvm_vcpu_run(struct kvm_vcpu *vcpu);
 
 extern u64 __vgic_v3_get_ich_vtr_el2(void);
 extern u64 __vgic_v3_read_vmcr(void);
diff --git a/arch/arm64/include/asm/kvm_host_hypercalls.h b/arch/arm64/include/asm/kvm_host_hypercalls.h
index af8ad505d816..cc45930fdc76 100644
--- a/arch/arm64/include/asm/kvm_host_hypercalls.h
+++ b/arch/arm64/include/asm/kvm_host_hypercalls.h
@@ -22,8 +22,8 @@ __KVM_HOST_HCALL(__kvm_tlb_flush_local_vmid)
 #define __KVM_HOST_HCALL_TABLE_IDX___kvm_flush_vm_context	4
 __KVM_HOST_HCALL(__kvm_flush_vm_context)
 
-#define __KVM_HOST_HCALL_TABLE_IDX___kvm_vcpu_run_nvhe		5
-__KVM_HOST_HCALL(__kvm_vcpu_run_nvhe)
+#define __KVM_HOST_HCALL_TABLE_IDX___kvm_vcpu_run		5
+__KVM_HOST_HCALL(__kvm_vcpu_run)
 
 #define __KVM_HOST_HCALL_TABLE_IDX___kvm_tlb_flush_vmid		6
 __KVM_HOST_HCALL(__kvm_tlb_flush_vmid)
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..b5895040c16a 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -82,11 +82,16 @@ void __debug_switch_to_host(struct kvm_vcpu *vcpu);
 void __fpsimd_save_state(struct user_fpsimd_state *fp_regs);
 void __fpsimd_restore_state(struct user_fpsimd_state *fp_regs);
 
+#ifndef __HYPERVISOR__
 void activate_traps_vhe_load(struct kvm_vcpu *vcpu);
 void deactivate_traps_vhe_put(void);
+#endif
 
 u64 __guest_enter(struct kvm_vcpu *vcpu, struct kvm_cpu_context *host_ctxt);
+
+#ifdef __HYPERVISOR__
 void __noreturn __hyp_do_panic(unsigned long, ...);
+#endif
 
 /*
  * Must be called from hyp code running at EL2 with an updated VTTBR
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index c0a0ec238854..e2282a4304c5 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,18 +61,34 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
+__hyp_text___debug_switch_to_guest = __debug_switch_to_guest;
+__hyp_text___debug_switch_to_host = __debug_switch_to_host;
+__hyp_text___fpsimd_restore_state = __fpsimd_restore_state;
+__hyp_text___fpsimd_save_state = __fpsimd_save_state;
+__hyp_text___guest_enter = __guest_enter;
 __hyp_text___guest_exit = __guest_exit;
 __hyp_text___icache_flags = __icache_flags;
 __hyp_text___kvm_enable_ssbs = __kvm_enable_ssbs;
 __hyp_text___kvm_get_mdcr_el2 = __kvm_get_mdcr_el2;
 __hyp_text___kvm_handle_stub_hvc = __kvm_handle_stub_hvc;
 __hyp_text___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
-__hyp_text___kvm_vcpu_run_nvhe = __kvm_vcpu_run_nvhe;
+__hyp_text___sysreg32_restore_state = __sysreg32_restore_state;
+__hyp_text___sysreg32_save_state = __sysreg32_save_state;
+__hyp_text___sysreg_restore_state_nvhe = __sysreg_restore_state_nvhe;
+__hyp_text___sysreg_save_state_nvhe = __sysreg_save_state_nvhe;
+__hyp_text___timer_disable_traps = __timer_disable_traps;
+__hyp_text___timer_enable_traps = __timer_enable_traps;
+__hyp_text___vgic_v2_perform_cpuif_access = __vgic_v2_perform_cpuif_access;
+__hyp_text___vgic_v3_activate_traps = __vgic_v3_activate_traps;
+__hyp_text___vgic_v3_deactivate_traps = __vgic_v3_deactivate_traps;
 __hyp_text___vgic_v3_get_ich_vtr_el2 = __vgic_v3_get_ich_vtr_el2;
 __hyp_text___vgic_v3_init_lrs = __vgic_v3_init_lrs;
+__hyp_text___vgic_v3_perform_cpuif_access = __vgic_v3_perform_cpuif_access;
 __hyp_text___vgic_v3_read_vmcr = __vgic_v3_read_vmcr;
 __hyp_text___vgic_v3_restore_aprs = __vgic_v3_restore_aprs;
+__hyp_text___vgic_v3_restore_state = __vgic_v3_restore_state;
 __hyp_text___vgic_v3_save_aprs = __vgic_v3_save_aprs;
+__hyp_text___vgic_v3_save_state = __vgic_v3_save_state;
 __hyp_text___vgic_v3_write_vmcr = __vgic_v3_write_vmcr;
 __hyp_text_abort_guest_exit_end = abort_guest_exit_end;
 __hyp_text_abort_guest_exit_start = abort_guest_exit_start;
@@ -81,13 +97,18 @@ __hyp_text_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
 __hyp_text_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
 __hyp_text_cpu_hwcap_keys = cpu_hwcap_keys;
 __hyp_text_cpu_hwcaps = cpu_hwcaps;
-__hyp_text_hyp_panic = hyp_panic;
 __hyp_text_kimage_voffset = kimage_voffset;
 __hyp_text_kvm_host_data = kvm_host_data;
 __hyp_text_kvm_patch_vector_branch = kvm_patch_vector_branch;
+__hyp_text_kvm_skip_instr32 = kvm_skip_instr32;
 __hyp_text_kvm_update_va_mask = kvm_update_va_mask;
+__hyp_text_kvm_vgic_global_state = kvm_vgic_global_state;
 __hyp_text_panic = panic;
 __hyp_text_physvirt_offset = physvirt_offset;
+__hyp_text_sve_load_state = sve_load_state;
+__hyp_text_sve_save_state = sve_save_state;
+__hyp_text_vgic_v2_cpuif_trap = vgic_v2_cpuif_trap;
+__hyp_text_vgic_v3_cpuif_trap = vgic_v3_cpuif_trap;
 
 #endif /* CONFIG_KVM */
 
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index c958bb37b769..dea249dc82b3 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -749,11 +749,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		trace_kvm_entry(*vcpu_pc(vcpu));
 		guest_enter_irqoff();
 
-		if (has_vhe()) {
-			ret = kvm_vcpu_run_vhe(vcpu);
-		} else {
-			ret = kvm_call_hyp_ret(__kvm_vcpu_run_nvhe, vcpu);
-		}
+		ret = kvm_call_hyp_ret(__kvm_vcpu_run, vcpu);
 
 		vcpu->mode = OUTSIDE_GUEST_MODE;
 		vcpu->stat.exits++;
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 7e5f386c5c2d..04ea0b83b728 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -221,6 +221,7 @@ el2_error:
 	eret
 	sb
 
+#ifdef __HYPERVISOR__
 SYM_FUNC_START(__hyp_do_panic)
 	mov	lr, #(PSR_F_BIT | PSR_I_BIT | PSR_A_BIT | PSR_D_BIT |\
 		      PSR_MODE_EL1h)
@@ -230,6 +231,7 @@ SYM_FUNC_START(__hyp_do_panic)
 	eret
 	sb
 SYM_FUNC_END(__hyp_do_panic)
+#endif
 
 SYM_CODE_START(__hyp_panic)
 	get_host_ctxt x0, x1
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 0da836cb5580..82fbd0b76501 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,7 @@ asflags-y := -D__HYPERVISOR__
 ccflags-y := -D__HYPERVISOR__ -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 	     $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := tlb.o host_hypercall.o ../hyp-entry.o
+obj-y := switch.o tlb.o host_hypercall.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp/nvhe/switch.c b/arch/arm64/kvm/hyp/nvhe/switch.c
new file mode 100644
index 000000000000..4294beed3dc1
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/switch.c
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/kvm_host.h>
+#include <linux/types.h>
+#include <linux/jump_label.h>
+#include <uapi/linux/psci.h>
+
+#include <kvm/arm_psci.h>
+
+#include <asm/barrier.h>
+#include <asm/cpufeature.h>
+#include <asm/kprobes.h>
+#include <asm/kvm_asm.h>
+#include <asm/kvm_emulate.h>
+#include <asm/kvm_hyp.h>
+#include <asm/kvm_mmu.h>
+#include <asm/fpsimd.h>
+#include <asm/debug-monitors.h>
+#include <asm/processor.h>
+#include <asm/thread_info.h>
+
+#include "../switch.h"
+
+static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
+{
+	u64 val;
+
+	___activate_traps(vcpu);
+	__activate_traps_common(vcpu);
+
+	val = CPTR_EL2_DEFAULT;
+	val |= CPTR_EL2_TTA | CPTR_EL2_TZ | CPTR_EL2_TAM;
+	if (!update_fp_enabled(vcpu)) {
+		val |= CPTR_EL2_TFP;
+		__activate_traps_fpsimd32(vcpu);
+	}
+
+	write_sysreg(val, cptr_el2);
+
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
+
+		isb();
+		/*
+		 * At this stage, and thanks to the above isb(), S2 is
+		 * configured and enabled. We can now restore the guest's S1
+		 * configuration: SCTLR, and only then TCR.
+		 */
+		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		isb();
+		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+	}
+}
+
+static void __hyp_text __deactivate_traps(struct kvm_vcpu *vcpu)
+{
+	u64 mdcr_el2;
+
+	___deactivate_traps(vcpu);
+
+	mdcr_el2 = read_sysreg(mdcr_el2);
+
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+		u64 val;
+
+		/*
+		 * Set the TCR and SCTLR registers in the exact opposite
+		 * sequence as __activate_traps (first prevent walks,
+		 * then force the MMU on). A generous sprinkling of isb()
+		 * ensure that things happen in this exact order.
+		 */
+		val = read_sysreg_el1(SYS_TCR);
+		write_sysreg_el1(val | TCR_EPD1_MASK | TCR_EPD0_MASK, SYS_TCR);
+		isb();
+		val = read_sysreg_el1(SYS_SCTLR);
+		write_sysreg_el1(val | SCTLR_ELx_M, SYS_SCTLR);
+		isb();
+	}
+
+	__deactivate_traps_common();
+
+	mdcr_el2 &= MDCR_EL2_HPMN_MASK;
+	mdcr_el2 |= MDCR_EL2_E2PB_MASK << MDCR_EL2_E2PB_SHIFT;
+
+	write_sysreg(mdcr_el2, mdcr_el2);
+	write_sysreg(HCR_HOST_NVHE_FLAGS, hcr_el2);
+	write_sysreg(CPTR_EL2_DEFAULT, cptr_el2);
+}
+
+static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
+{
+	write_sysreg(0, vttbr_el2);
+}
+
+/* Save VGICv3 state on non-VHE systems */
+static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
+{
+	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
+		__vgic_v3_save_state(vcpu);
+		__vgic_v3_deactivate_traps(vcpu);
+	}
+}
+
+/* Restore VGICv3 state on non_VEH systems */
+static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
+{
+	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
+		__vgic_v3_activate_traps(vcpu);
+		__vgic_v3_restore_state(vcpu);
+	}
+}
+
+/**
+ * Disable host events, enable guest events
+ */
+static bool __hyp_text __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
+{
+	struct kvm_host_data *host;
+	struct kvm_pmu_events *pmu;
+
+	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	pmu = &host->pmu_events;
+
+	if (pmu->events_host)
+		write_sysreg(pmu->events_host, pmcntenclr_el0);
+
+	if (pmu->events_guest)
+		write_sysreg(pmu->events_guest, pmcntenset_el0);
+
+	return (pmu->events_host || pmu->events_guest);
+}
+
+/**
+ * Disable guest events, enable host events
+ */
+static void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
+{
+	struct kvm_host_data *host;
+	struct kvm_pmu_events *pmu;
+
+	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	pmu = &host->pmu_events;
+
+	if (pmu->events_guest)
+		write_sysreg(pmu->events_guest, pmcntenclr_el0);
+
+	if (pmu->events_host)
+		write_sysreg(pmu->events_host, pmcntenset_el0);
+}
+
+/* Switch to the guest for legacy non-VHE systems */
+int __hyp_text __kvm_vcpu_run(struct kvm_vcpu *vcpu)
+{
+	struct kvm_cpu_context *host_ctxt;
+	struct kvm_cpu_context *guest_ctxt;
+	bool pmu_switch_needed;
+	u64 exit_code;
+
+	/*
+	 * Having IRQs masked via PMR when entering the guest means the GIC
+	 * will not signal the CPU of interrupts of lower priority, and the
+	 * only way to get out will be via guest exceptions.
+	 * Naturally, we want to avoid this.
+	 */
+	if (system_uses_irq_prio_masking()) {
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+		pmr_sync();
+	}
+
+	vcpu = kern_hyp_va(vcpu);
+
+	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	host_ctxt->__hyp_running_vcpu = vcpu;
+	guest_ctxt = &vcpu->arch.ctxt;
+
+	pmu_switch_needed = __pmu_switch_to_guest(host_ctxt);
+
+	__sysreg_save_state_nvhe(host_ctxt);
+
+	/*
+	 * We must restore the 32-bit state before the sysregs, thanks
+	 * to erratum #852523 (Cortex-A57) or #853709 (Cortex-A72).
+	 *
+	 * Also, and in order to be able to deal with erratum #1319537 (A57)
+	 * and #1319367 (A72), we must ensure that all VM-related sysreg are
+	 * restored before we enable S2 translation.
+	 */
+	__sysreg32_restore_state(vcpu);
+	__sysreg_restore_state_nvhe(guest_ctxt);
+
+	__activate_vm(kern_hyp_va(vcpu->kvm));
+	__activate_traps(vcpu);
+
+	__hyp_vgic_restore_state(vcpu);
+	__timer_enable_traps(vcpu);
+
+	__debug_switch_to_guest(vcpu);
+
+	__set_guest_arch_workaround_state(vcpu);
+
+	do {
+		/* Jump in the fire! */
+		exit_code = __guest_enter(vcpu, host_ctxt);
+
+		/* And we're baaack! */
+	} while (fixup_guest_exit(vcpu, &exit_code));
+
+	__set_host_arch_workaround_state(vcpu);
+
+	__sysreg_save_state_nvhe(guest_ctxt);
+	__sysreg32_save_state(vcpu);
+	__timer_disable_traps(vcpu);
+	__hyp_vgic_save_state(vcpu);
+
+	__deactivate_traps(vcpu);
+	__deactivate_vm(vcpu);
+
+	__sysreg_restore_state_nvhe(host_ctxt);
+
+	if (vcpu->arch.flags & KVM_ARM64_FP_ENABLED)
+		__fpsimd_save_fpexc32(vcpu);
+
+	/*
+	 * This must come after restoring the host sysregs, since a non-VHE
+	 * system may enable SPE here and make use of the TTBRs.
+	 */
+	__debug_switch_to_host(vcpu);
+
+	if (pmu_switch_needed)
+		__pmu_switch_to_host(host_ctxt);
+
+	/* Returning to host will clear PSR.I, remask PMR if needed */
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQOFF);
+
+	return exit_code;
+}
+
+void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context *host_ctxt)
+{
+	u64 spsr = read_sysreg_el2(SYS_SPSR);
+	u64 elr = read_sysreg_el2(SYS_ELR);
+	u64 par = read_sysreg(par_el1);
+	struct kvm_vcpu *vcpu = host_ctxt->__hyp_running_vcpu;
+	unsigned long str_va;
+
+	if (read_sysreg(vttbr_el2)) {
+		__timer_disable_traps(vcpu);
+		__deactivate_traps(vcpu);
+		__deactivate_vm(vcpu);
+		__sysreg_restore_state_nvhe(host_ctxt);
+	}
+
+	/*
+	 * Force the panic string to be loaded from the literal pool,
+	 * making sure it is a kernel address and not a PC-relative
+	 * reference.
+	 */
+	asm volatile("ldr %0, =%1" : "=r" (str_va) : "S" (__hyp_panic_string));
+
+	__hyp_do_panic(str_va,
+		       spsr, elr,
+		       read_sysreg(esr_el2), read_sysreg_el2(SYS_FAR),
+		       read_sysreg(hpfar_el2), par, vcpu);
+	unreachable();
+}
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 7a7c08029d81..1d03c5bf0b18 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -24,76 +24,14 @@
 #include <asm/processor.h>
 #include <asm/thread_info.h>
 
-/* Check whether the FP regs were dirtied while in the host-side run loop: */
-static bool __hyp_text update_fp_enabled(struct kvm_vcpu *vcpu)
-{
-	/*
-	 * When the system doesn't support FP/SIMD, we cannot rely on
-	 * the _TIF_FOREIGN_FPSTATE flag. However, we always inject an
-	 * abort on the very first access to FP and thus we should never
-	 * see KVM_ARM64_FP_ENABLED. For added safety, make sure we always
-	 * trap the accesses.
-	 */
-	if (!system_supports_fpsimd() ||
-	    vcpu->arch.host_thread_info->flags & _TIF_FOREIGN_FPSTATE)
-		vcpu->arch.flags &= ~(KVM_ARM64_FP_ENABLED |
-				      KVM_ARM64_FP_HOST);
-
-	return !!(vcpu->arch.flags & KVM_ARM64_FP_ENABLED);
-}
-
-/* Save the 32-bit only FPSIMD system register state */
-static void __hyp_text __fpsimd_save_fpexc32(struct kvm_vcpu *vcpu)
-{
-	if (!vcpu_el1_is_32bit(vcpu))
-		return;
-
-	vcpu->arch.ctxt.sys_regs[FPEXC32_EL2] = read_sysreg(fpexc32_el2);
-}
-
-static void __hyp_text __activate_traps_fpsimd32(struct kvm_vcpu *vcpu)
-{
-	/*
-	 * We are about to set CPTR_EL2.TFP to trap all floating point
-	 * register accesses to EL2, however, the ARM ARM clearly states that
-	 * traps are only taken to EL2 if the operation would not otherwise
-	 * trap to EL1.  Therefore, always make sure that for 32-bit guests,
-	 * we set FPEXC.EN to prevent traps to EL1, when setting the TFP bit.
-	 * If FP/ASIMD is not implemented, FPEXC is UNDEFINED and any access to
-	 * it will cause an exception.
-	 */
-	if (vcpu_el1_is_32bit(vcpu) && system_supports_fpsimd()) {
-		write_sysreg(1 << 30, fpexc32_el2);
-		isb();
-	}
-}
-
-static void __hyp_text __activate_traps_common(struct kvm_vcpu *vcpu)
-{
-	/* Trap on AArch32 cp15 c15 (impdef sysregs) accesses (EL1 or EL0) */
-	write_sysreg(1 << 15, hstr_el2);
-
-	/*
-	 * Make sure we trap PMU access from EL0 to EL2. Also sanitize
-	 * PMSELR_EL0 to make sure it never contains the cycle
-	 * counter, which could make a PMXEVCNTR_EL0 access UNDEF at
-	 * EL1 instead of being trapped to EL2.
-	 */
-	write_sysreg(0, pmselr_el0);
-	write_sysreg(ARMV8_PMU_USERENR_MASK, pmuserenr_el0);
-	write_sysreg(vcpu->arch.mdcr_el2, mdcr_el2);
-}
-
-static void __hyp_text __deactivate_traps_common(void)
-{
-	write_sysreg(0, hstr_el2);
-	write_sysreg(0, pmuserenr_el0);
-}
+#include "switch.h"
 
-static void activate_traps_vhe(struct kvm_vcpu *vcpu)
+static void __activate_traps(struct kvm_vcpu *vcpu)
 {
 	u64 val;
 
+	___activate_traps(vcpu);
+
 	val = read_sysreg(cpacr_el1);
 	val |= CPACR_EL1_TTA;
 	val &= ~CPACR_EL1_ZEN;
@@ -121,59 +59,14 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
 
 	write_sysreg(kvm_get_hyp_vector(), vbar_el1);
 }
-NOKPROBE_SYMBOL(activate_traps_vhe);
-
-static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
-{
-	u64 val;
-
-	__activate_traps_common(vcpu);
-
-	val = CPTR_EL2_DEFAULT;
-	val |= CPTR_EL2_TTA | CPTR_EL2_TZ | CPTR_EL2_TAM;
-	if (!update_fp_enabled(vcpu)) {
-		val |= CPTR_EL2_TFP;
-		__activate_traps_fpsimd32(vcpu);
-	}
-
-	write_sysreg(val, cptr_el2);
-
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
-		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
-
-		isb();
-		/*
-		 * At this stage, and thanks to the above isb(), S2 is
-		 * configured and enabled. We can now restore the guest's S1
-		 * configuration: SCTLR, and only then TCR.
-		 */
-		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
-		isb();
-		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
-	}
-}
+NOKPROBE_SYMBOL(__activate_traps);
 
-static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
+static void __deactivate_traps(struct kvm_vcpu *vcpu)
 {
-	u64 hcr = vcpu->arch.hcr_el2;
-
-	if (cpus_have_final_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM))
-		hcr |= HCR_TVM;
-
-	write_sysreg(hcr, hcr_el2);
-
-	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN) && (hcr & HCR_VSE))
-		write_sysreg_s(vcpu->arch.vsesr_el2, SYS_VSESR_EL2);
+	extern char vectors[];	/* kernel exception vectors */
 
-	if (has_vhe())
-		activate_traps_vhe(vcpu);
-	else
-		__activate_traps_nvhe(vcpu);
-}
+	___deactivate_traps(vcpu);
 
-static void deactivate_traps_vhe(void)
-{
-	extern char vectors[];	/* kernel exception vectors */
 	write_sysreg(HCR_HOST_VHE_FLAGS, hcr_el2);
 
 	/*
@@ -186,57 +79,7 @@ static void deactivate_traps_vhe(void)
 	write_sysreg(CPACR_EL1_DEFAULT, cpacr_el1);
 	write_sysreg(vectors, vbar_el1);
 }
-NOKPROBE_SYMBOL(deactivate_traps_vhe);
-
-static void __hyp_text __deactivate_traps_nvhe(void)
-{
-	u64 mdcr_el2 = read_sysreg(mdcr_el2);
-
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
-		u64 val;
-
-		/*
-		 * Set the TCR and SCTLR registers in the exact opposite
-		 * sequence as __activate_traps_nvhe (first prevent walks,
-		 * then force the MMU on). A generous sprinkling of isb()
-		 * ensure that things happen in this exact order.
-		 */
-		val = read_sysreg_el1(SYS_TCR);
-		write_sysreg_el1(val | TCR_EPD1_MASK | TCR_EPD0_MASK, SYS_TCR);
-		isb();
-		val = read_sysreg_el1(SYS_SCTLR);
-		write_sysreg_el1(val | SCTLR_ELx_M, SYS_SCTLR);
-		isb();
-	}
-
-	__deactivate_traps_common();
-
-	mdcr_el2 &= MDCR_EL2_HPMN_MASK;
-	mdcr_el2 |= MDCR_EL2_E2PB_MASK << MDCR_EL2_E2PB_SHIFT;
-
-	write_sysreg(mdcr_el2, mdcr_el2);
-	write_sysreg(HCR_HOST_NVHE_FLAGS, hcr_el2);
-	write_sysreg(CPTR_EL2_DEFAULT, cptr_el2);
-}
-
-static void __hyp_text __deactivate_traps(struct kvm_vcpu *vcpu)
-{
-	/*
-	 * If we pended a virtual abort, preserve it until it gets
-	 * cleared. See D1.14.3 (Virtual Interrupts) for details, but
-	 * the crucial bit is "On taking a vSError interrupt,
-	 * HCR_EL2.VSE is cleared to 0."
-	 */
-	if (vcpu->arch.hcr_el2 & HCR_VSE) {
-		vcpu->arch.hcr_el2 &= ~HCR_VSE;
-		vcpu->arch.hcr_el2 |= read_sysreg(hcr_el2) & HCR_VSE;
-	}
-
-	if (has_vhe())
-		deactivate_traps_vhe();
-	else
-		__deactivate_traps_nvhe();
-}
+NOKPROBE_SYMBOL(__deactivate_traps);
 
 void activate_traps_vhe_load(struct kvm_vcpu *vcpu)
 {
@@ -256,385 +99,6 @@ void deactivate_traps_vhe_put(void)
 	__deactivate_traps_common();
 }
 
-static void __hyp_text __activate_vm(struct kvm *kvm)
-{
-	__load_guest_stage2(kvm);
-}
-
-static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
-{
-	write_sysreg(0, vttbr_el2);
-}
-
-/* Save VGICv3 state on non-VHE systems */
-static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
-{
-	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_save_state(vcpu);
-		__vgic_v3_deactivate_traps(vcpu);
-	}
-}
-
-/* Restore VGICv3 state on non_VEH systems */
-static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
-{
-	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
-		__vgic_v3_activate_traps(vcpu);
-		__vgic_v3_restore_state(vcpu);
-	}
-}
-
-static bool __hyp_text __translate_far_to_hpfar(u64 far, u64 *hpfar)
-{
-	u64 par, tmp;
-
-	/*
-	 * Resolve the IPA the hard way using the guest VA.
-	 *
-	 * Stage-1 translation already validated the memory access
-	 * rights. As such, we can use the EL1 translation regime, and
-	 * don't have to distinguish between EL0 and EL1 access.
-	 *
-	 * We do need to save/restore PAR_EL1 though, as we haven't
-	 * saved the guest context yet, and we may return early...
-	 */
-	par = read_sysreg(par_el1);
-	asm volatile("at s1e1r, %0" : : "r" (far));
-	isb();
-
-	tmp = read_sysreg(par_el1);
-	write_sysreg(par, par_el1);
-
-	if (unlikely(tmp & SYS_PAR_EL1_F))
-		return false; /* Translation failed, back to guest */
-
-	/* Convert PAR to HPFAR format */
-	*hpfar = PAR_TO_HPFAR(tmp);
-	return true;
-}
-
-static bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
-{
-	u8 ec;
-	u64 esr;
-	u64 hpfar, far;
-
-	esr = vcpu->arch.fault.esr_el2;
-	ec = ESR_ELx_EC(esr);
-
-	if (ec != ESR_ELx_EC_DABT_LOW && ec != ESR_ELx_EC_IABT_LOW)
-		return true;
-
-	far = read_sysreg_el2(SYS_FAR);
-
-	/*
-	 * The HPFAR can be invalid if the stage 2 fault did not
-	 * happen during a stage 1 page table walk (the ESR_EL2.S1PTW
-	 * bit is clear) and one of the two following cases are true:
-	 *   1. The fault was due to a permission fault
-	 *   2. The processor carries errata 834220
-	 *
-	 * Therefore, for all non S1PTW faults where we either have a
-	 * permission fault or the errata workaround is enabled, we
-	 * resolve the IPA using the AT instruction.
-	 */
-	if (!(esr & ESR_ELx_S1PTW) &&
-	    (cpus_have_final_cap(ARM64_WORKAROUND_834220) ||
-	     (esr & ESR_ELx_FSC_TYPE) == FSC_PERM)) {
-		if (!__translate_far_to_hpfar(far, &hpfar))
-			return false;
-	} else {
-		hpfar = read_sysreg(hpfar_el2);
-	}
-
-	vcpu->arch.fault.far_el2 = far;
-	vcpu->arch.fault.hpfar_el2 = hpfar;
-	return true;
-}
-
-/* Check for an FPSIMD/SVE trap and handle as appropriate */
-static bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
-{
-	bool vhe, sve_guest, sve_host;
-	u8 hsr_ec;
-
-	if (!system_supports_fpsimd())
-		return false;
-
-	if (system_supports_sve()) {
-		sve_guest = vcpu_has_sve(vcpu);
-		sve_host = vcpu->arch.flags & KVM_ARM64_HOST_SVE_IN_USE;
-		vhe = true;
-	} else {
-		sve_guest = false;
-		sve_host = false;
-		vhe = has_vhe();
-	}
-
-	hsr_ec = kvm_vcpu_trap_get_class(vcpu);
-	if (hsr_ec != ESR_ELx_EC_FP_ASIMD &&
-	    hsr_ec != ESR_ELx_EC_SVE)
-		return false;
-
-	/* Don't handle SVE traps for non-SVE vcpus here: */
-	if (!sve_guest)
-		if (hsr_ec != ESR_ELx_EC_FP_ASIMD)
-			return false;
-
-	/* Valid trap.  Switch the context: */
-
-	if (vhe) {
-		u64 reg = read_sysreg(cpacr_el1) | CPACR_EL1_FPEN;
-
-		if (sve_guest)
-			reg |= CPACR_EL1_ZEN;
-
-		write_sysreg(reg, cpacr_el1);
-	} else {
-		write_sysreg(read_sysreg(cptr_el2) & ~(u64)CPTR_EL2_TFP,
-			     cptr_el2);
-	}
-
-	isb();
-
-	if (vcpu->arch.flags & KVM_ARM64_FP_HOST) {
-		/*
-		 * In the SVE case, VHE is assumed: it is enforced by
-		 * Kconfig and kvm_arch_init().
-		 */
-		if (sve_host) {
-			struct thread_struct *thread = container_of(
-				vcpu->arch.host_fpsimd_state,
-				struct thread_struct, uw.fpsimd_state);
-
-			sve_save_state(sve_pffr(thread),
-				       &vcpu->arch.host_fpsimd_state->fpsr);
-		} else {
-			__fpsimd_save_state(vcpu->arch.host_fpsimd_state);
-		}
-
-		vcpu->arch.flags &= ~KVM_ARM64_FP_HOST;
-	}
-
-	if (sve_guest) {
-		sve_load_state(vcpu_sve_pffr(vcpu),
-			       &vcpu->arch.ctxt.gp_regs.fp_regs.fpsr,
-			       sve_vq_from_vl(vcpu->arch.sve_max_vl) - 1);
-		write_sysreg_s(vcpu->arch.ctxt.sys_regs[ZCR_EL1], SYS_ZCR_EL12);
-	} else {
-		__fpsimd_restore_state(&vcpu->arch.ctxt.gp_regs.fp_regs);
-	}
-
-	/* Skip restoring fpexc32 for AArch64 guests */
-	if (!(read_sysreg(hcr_el2) & HCR_RW))
-		write_sysreg(vcpu->arch.ctxt.sys_regs[FPEXC32_EL2],
-			     fpexc32_el2);
-
-	vcpu->arch.flags |= KVM_ARM64_FP_ENABLED;
-
-	return true;
-}
-
-static bool __hyp_text handle_tx2_tvm(struct kvm_vcpu *vcpu)
-{
-	u32 sysreg = esr_sys64_to_sysreg(kvm_vcpu_get_hsr(vcpu));
-	int rt = kvm_vcpu_sys_get_rt(vcpu);
-	u64 val = vcpu_get_reg(vcpu, rt);
-
-	/*
-	 * The normal sysreg handling code expects to see the traps,
-	 * let's not do anything here.
-	 */
-	if (vcpu->arch.hcr_el2 & HCR_TVM)
-		return false;
-
-	switch (sysreg) {
-	case SYS_SCTLR_EL1:
-		write_sysreg_el1(val, SYS_SCTLR);
-		break;
-	case SYS_TTBR0_EL1:
-		write_sysreg_el1(val, SYS_TTBR0);
-		break;
-	case SYS_TTBR1_EL1:
-		write_sysreg_el1(val, SYS_TTBR1);
-		break;
-	case SYS_TCR_EL1:
-		write_sysreg_el1(val, SYS_TCR);
-		break;
-	case SYS_ESR_EL1:
-		write_sysreg_el1(val, SYS_ESR);
-		break;
-	case SYS_FAR_EL1:
-		write_sysreg_el1(val, SYS_FAR);
-		break;
-	case SYS_AFSR0_EL1:
-		write_sysreg_el1(val, SYS_AFSR0);
-		break;
-	case SYS_AFSR1_EL1:
-		write_sysreg_el1(val, SYS_AFSR1);
-		break;
-	case SYS_MAIR_EL1:
-		write_sysreg_el1(val, SYS_MAIR);
-		break;
-	case SYS_AMAIR_EL1:
-		write_sysreg_el1(val, SYS_AMAIR);
-		break;
-	case SYS_CONTEXTIDR_EL1:
-		write_sysreg_el1(val, SYS_CONTEXTIDR);
-		break;
-	default:
-		return false;
-	}
-
-	__kvm_skip_instr(vcpu);
-	return true;
-}
-
-/*
- * Return true when we were able to fixup the guest exit and should return to
- * the guest, false when we should restore the host state and return to the
- * main run loop.
- */
-static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
-{
-	if (ARM_EXCEPTION_CODE(*exit_code) != ARM_EXCEPTION_IRQ)
-		vcpu->arch.fault.esr_el2 = read_sysreg_el2(SYS_ESR);
-
-	/*
-	 * We're using the raw exception code in order to only process
-	 * the trap if no SError is pending. We will come back to the
-	 * same PC once the SError has been injected, and replay the
-	 * trapping instruction.
-	 */
-	if (*exit_code != ARM_EXCEPTION_TRAP)
-		goto exit;
-
-	if (cpus_have_final_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM) &&
-	    kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_SYS64 &&
-	    handle_tx2_tvm(vcpu))
-		return true;
-
-	/*
-	 * We trap the first access to the FP/SIMD to save the host context
-	 * and restore the guest context lazily.
-	 * If FP/SIMD is not implemented, handle the trap and inject an
-	 * undefined instruction exception to the guest.
-	 * Similarly for trapped SVE accesses.
-	 */
-	if (__hyp_handle_fpsimd(vcpu))
-		return true;
-
-	if (!__populate_fault_info(vcpu))
-		return true;
-
-	if (static_branch_unlikely(&vgic_v2_cpuif_trap)) {
-		bool valid;
-
-		valid = kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_DABT_LOW &&
-			kvm_vcpu_trap_get_fault_type(vcpu) == FSC_FAULT &&
-			kvm_vcpu_dabt_isvalid(vcpu) &&
-			!kvm_vcpu_dabt_isextabt(vcpu) &&
-			!kvm_vcpu_dabt_iss1tw(vcpu);
-
-		if (valid) {
-			int ret = __vgic_v2_perform_cpuif_access(vcpu);
-
-			if (ret == 1)
-				return true;
-
-			/* Promote an illegal access to an SError.*/
-			if (ret == -1)
-				*exit_code = ARM_EXCEPTION_EL1_SERROR;
-
-			goto exit;
-		}
-	}
-
-	if (static_branch_unlikely(&vgic_v3_cpuif_trap) &&
-	    (kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_SYS64 ||
-	     kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_CP15_32)) {
-		int ret = __vgic_v3_perform_cpuif_access(vcpu);
-
-		if (ret == 1)
-			return true;
-	}
-
-exit:
-	/* Return to the host kernel and handle the exit */
-	return false;
-}
-
-static inline bool __hyp_text __needs_ssbd_off(struct kvm_vcpu *vcpu)
-{
-	if (!cpus_have_final_cap(ARM64_SSBD))
-		return false;
-
-	return !(vcpu->arch.workaround_flags & VCPU_WORKAROUND_2_FLAG);
-}
-
-static void __hyp_text __set_guest_arch_workaround_state(struct kvm_vcpu *vcpu)
-{
-#ifdef CONFIG_ARM64_SSBD
-	/*
-	 * The host runs with the workaround always present. If the
-	 * guest wants it disabled, so be it...
-	 */
-	if (__needs_ssbd_off(vcpu) &&
-	    __hyp_this_cpu_read(arm64_ssbd_callback_required))
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 0, NULL);
-#endif
-}
-
-static void __hyp_text __set_host_arch_workaround_state(struct kvm_vcpu *vcpu)
-{
-#ifdef CONFIG_ARM64_SSBD
-	/*
-	 * If the guest has disabled the workaround, bring it back on.
-	 */
-	if (__needs_ssbd_off(vcpu) &&
-	    __hyp_this_cpu_read(arm64_ssbd_callback_required))
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 1, NULL);
-#endif
-}
-
-/**
- * Disable host events, enable guest events
- */
-static bool __hyp_text __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
-{
-	struct kvm_host_data *host;
-	struct kvm_pmu_events *pmu;
-
-	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
-	pmu = &host->pmu_events;
-
-	if (pmu->events_host)
-		write_sysreg(pmu->events_host, pmcntenclr_el0);
-
-	if (pmu->events_guest)
-		write_sysreg(pmu->events_guest, pmcntenset_el0);
-
-	return (pmu->events_host || pmu->events_guest);
-}
-
-/**
- * Disable guest events, enable host events
- */
-static void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
-{
-	struct kvm_host_data *host;
-	struct kvm_pmu_events *pmu;
-
-	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
-	pmu = &host->pmu_events;
-
-	if (pmu->events_guest)
-		write_sysreg(pmu->events_guest, pmcntenclr_el0);
-
-	if (pmu->events_host)
-		write_sysreg(pmu->events_host, pmcntenset_el0);
-}
-
 /* Switch to the guest for VHE systems running in EL2 */
 static int __kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 {
@@ -691,7 +155,7 @@ static int __kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 }
 NOKPROBE_SYMBOL(__kvm_vcpu_run_vhe);
 
-int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
+int __kvm_vcpu_run(struct kvm_vcpu *vcpu)
 {
 	int ret;
 
@@ -726,126 +190,8 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 	return ret;
 }
 
-/* Switch to the guest for legacy non-VHE systems */
-int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
-{
-	struct kvm_cpu_context *host_ctxt;
-	struct kvm_cpu_context *guest_ctxt;
-	bool pmu_switch_needed;
-	u64 exit_code;
-
-	/*
-	 * Having IRQs masked via PMR when entering the guest means the GIC
-	 * will not signal the CPU of interrupts of lower priority, and the
-	 * only way to get out will be via guest exceptions.
-	 * Naturally, we want to avoid this.
-	 */
-	if (system_uses_irq_prio_masking()) {
-		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
-		pmr_sync();
-	}
-
-	vcpu = kern_hyp_va(vcpu);
-
-	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
-	host_ctxt->__hyp_running_vcpu = vcpu;
-	guest_ctxt = &vcpu->arch.ctxt;
-
-	pmu_switch_needed = __pmu_switch_to_guest(host_ctxt);
-
-	__sysreg_save_state_nvhe(host_ctxt);
-
-	/*
-	 * We must restore the 32-bit state before the sysregs, thanks
-	 * to erratum #852523 (Cortex-A57) or #853709 (Cortex-A72).
-	 *
-	 * Also, and in order to be able to deal with erratum #1319537 (A57)
-	 * and #1319367 (A72), we must ensure that all VM-related sysreg are
-	 * restored before we enable S2 translation.
-	 */
-	__sysreg32_restore_state(vcpu);
-	__sysreg_restore_state_nvhe(guest_ctxt);
-
-	__activate_vm(kern_hyp_va(vcpu->kvm));
-	__activate_traps(vcpu);
-
-	__hyp_vgic_restore_state(vcpu);
-	__timer_enable_traps(vcpu);
-
-	__debug_switch_to_guest(vcpu);
-
-	__set_guest_arch_workaround_state(vcpu);
-
-	do {
-		/* Jump in the fire! */
-		exit_code = __guest_enter(vcpu, host_ctxt);
-
-		/* And we're baaack! */
-	} while (fixup_guest_exit(vcpu, &exit_code));
-
-	__set_host_arch_workaround_state(vcpu);
-
-	__sysreg_save_state_nvhe(guest_ctxt);
-	__sysreg32_save_state(vcpu);
-	__timer_disable_traps(vcpu);
-	__hyp_vgic_save_state(vcpu);
-
-	__deactivate_traps(vcpu);
-	__deactivate_vm(vcpu);
-
-	__sysreg_restore_state_nvhe(host_ctxt);
-
-	if (vcpu->arch.flags & KVM_ARM64_FP_ENABLED)
-		__fpsimd_save_fpexc32(vcpu);
-
-	/*
-	 * This must come after restoring the host sysregs, since a non-VHE
-	 * system may enable SPE here and make use of the TTBRs.
-	 */
-	__debug_switch_to_host(vcpu);
-
-	if (pmu_switch_needed)
-		__pmu_switch_to_host(host_ctxt);
-
-	/* Returning to host will clear PSR.I, remask PMR if needed */
-	if (system_uses_irq_prio_masking())
-		gic_write_pmr(GIC_PRIO_IRQOFF);
-
-	return exit_code;
-}
-
-static const char __hyp_panic_string[] = "HYP panic:\nPS:%08llx PC:%016llx ESR:%08llx\nFAR:%016llx HPFAR:%016llx PAR:%016llx\nVCPU:%p\n";
-
-static void __hyp_text __hyp_call_panic_nvhe(u64 spsr, u64 elr, u64 par,
-					     struct kvm_cpu_context *__host_ctxt)
-{
-	struct kvm_vcpu *vcpu;
-	unsigned long str_va;
-
-	vcpu = __host_ctxt->__hyp_running_vcpu;
-
-	if (read_sysreg(vttbr_el2)) {
-		__timer_disable_traps(vcpu);
-		__deactivate_traps(vcpu);
-		__deactivate_vm(vcpu);
-		__sysreg_restore_state_nvhe(__host_ctxt);
-	}
-
-	/*
-	 * Force the panic string to be loaded from the literal pool,
-	 * making sure it is a kernel address and not a PC-relative
-	 * reference.
-	 */
-	asm volatile("ldr %0, =%1" : "=r" (str_va) : "S" (__hyp_panic_string));
-
-	__hyp_do_panic(str_va,
-		       spsr, elr,
-		       read_sysreg(esr_el2), read_sysreg_el2(SYS_FAR),
-		       read_sysreg(hpfar_el2), par, vcpu);
-}
-
-static void __hyp_call_panic_vhe(u64 spsr, u64 elr, u64 par,
-				 struct kvm_cpu_context *host_ctxt)
+static void __hyp_call_panic(u64 spsr, u64 elr, u64 par,
+			     struct kvm_cpu_context *host_ctxt)
 {
 	struct kvm_vcpu *vcpu;
 	vcpu = host_ctxt->__hyp_running_vcpu;
@@ -858,18 +204,14 @@ static void __hyp_call_panic_vhe(u64 spsr, u64 elr, u64 par,
 	      read_sysreg_el2(SYS_ESR),   read_sysreg_el2(SYS_FAR),
 	      read_sysreg(hpfar_el2), par, vcpu);
 }
-NOKPROBE_SYMBOL(__hyp_call_panic_vhe);
+NOKPROBE_SYMBOL(__hyp_call_panic);
 
-void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context *host_ctxt)
+void __noreturn hyp_panic(struct kvm_cpu_context *host_ctxt)
 {
 	u64 spsr = read_sysreg_el2(SYS_SPSR);
 	u64 elr = read_sysreg_el2(SYS_ELR);
 	u64 par = read_sysreg(par_el1);
 
-	if (!has_vhe())
-		__hyp_call_panic_nvhe(spsr, elr, par, host_ctxt);
-	else
-		__hyp_call_panic_vhe(spsr, elr, par, host_ctxt);
-
+	__hyp_call_panic(spsr, elr, par, host_ctxt);
 	unreachable();
 }
diff --git a/arch/arm64/kvm/hyp/switch.h b/arch/arm64/kvm/hyp/switch.h
new file mode 100644
index 000000000000..00ecb0111e79
--- /dev/null
+++ b/arch/arm64/kvm/hyp/switch.h
@@ -0,0 +1,441 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/kvm_host.h>
+#include <linux/types.h>
+#include <linux/jump_label.h>
+#include <uapi/linux/psci.h>
+
+#include <kvm/arm_psci.h>
+
+#include <asm/barrier.h>
+#include <asm/cpufeature.h>
+#include <asm/kprobes.h>
+#include <asm/kvm_asm.h>
+#include <asm/kvm_emulate.h>
+#include <asm/kvm_hyp.h>
+#include <asm/kvm_mmu.h>
+#include <asm/fpsimd.h>
+#include <asm/debug-monitors.h>
+#include <asm/processor.h>
+#include <asm/thread_info.h>
+
+static const char __hyp_panic_string[] = "HYP panic:\nPS:%08llx PC:%016llx ESR:%08llx\nFAR:%016llx HPFAR:%016llx PAR:%016llx\nVCPU:%p\n";
+
+/* Check whether the FP regs were dirtied while in the host-side run loop: */
+static inline bool __hyp_text update_fp_enabled(struct kvm_vcpu *vcpu)
+{
+	/*
+	 * When the system doesn't support FP/SIMD, we cannot rely on
+	 * the _TIF_FOREIGN_FPSTATE flag. However, we always inject an
+	 * abort on the very first access to FP and thus we should never
+	 * see KVM_ARM64_FP_ENABLED. For added safety, make sure we always
+	 * trap the accesses.
+	 */
+	if (!system_supports_fpsimd() ||
+	    vcpu->arch.host_thread_info->flags & _TIF_FOREIGN_FPSTATE)
+		vcpu->arch.flags &= ~(KVM_ARM64_FP_ENABLED |
+				      KVM_ARM64_FP_HOST);
+
+	return !!(vcpu->arch.flags & KVM_ARM64_FP_ENABLED);
+}
+
+/* Save the 32-bit only FPSIMD system register state */
+static inline void __hyp_text __fpsimd_save_fpexc32(struct kvm_vcpu *vcpu)
+{
+	if (!vcpu_el1_is_32bit(vcpu))
+		return;
+
+	vcpu->arch.ctxt.sys_regs[FPEXC32_EL2] = read_sysreg(fpexc32_el2);
+}
+
+static inline void __hyp_text __activate_traps_fpsimd32(struct kvm_vcpu *vcpu)
+{
+	/*
+	 * We are about to set CPTR_EL2.TFP to trap all floating point
+	 * register accesses to EL2, however, the ARM ARM clearly states that
+	 * traps are only taken to EL2 if the operation would not otherwise
+	 * trap to EL1.  Therefore, always make sure that for 32-bit guests,
+	 * we set FPEXC.EN to prevent traps to EL1, when setting the TFP bit.
+	 * If FP/ASIMD is not implemented, FPEXC is UNDEFINED and any access to
+	 * it will cause an exception.
+	 */
+	if (vcpu_el1_is_32bit(vcpu) && system_supports_fpsimd()) {
+		write_sysreg(1 << 30, fpexc32_el2);
+		isb();
+	}
+}
+
+static inline void __hyp_text __activate_traps_common(struct kvm_vcpu *vcpu)
+{
+	/* Trap on AArch32 cp15 c15 (impdef sysregs) accesses (EL1 or EL0) */
+	write_sysreg(1 << 15, hstr_el2);
+
+	/*
+	 * Make sure we trap PMU access from EL0 to EL2. Also sanitize
+	 * PMSELR_EL0 to make sure it never contains the cycle
+	 * counter, which could make a PMXEVCNTR_EL0 access UNDEF at
+	 * EL1 instead of being trapped to EL2.
+	 */
+	write_sysreg(0, pmselr_el0);
+	write_sysreg(ARMV8_PMU_USERENR_MASK, pmuserenr_el0);
+	write_sysreg(vcpu->arch.mdcr_el2, mdcr_el2);
+}
+
+static inline void __hyp_text __deactivate_traps_common(void)
+{
+	write_sysreg(0, hstr_el2);
+	write_sysreg(0, pmuserenr_el0);
+}
+
+static inline void __hyp_text ___activate_traps(struct kvm_vcpu *vcpu)
+{
+	u64 hcr = vcpu->arch.hcr_el2;
+
+	if (cpus_have_final_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM))
+		hcr |= HCR_TVM;
+
+	write_sysreg(hcr, hcr_el2);
+
+	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN) && (hcr & HCR_VSE))
+		write_sysreg_s(vcpu->arch.vsesr_el2, SYS_VSESR_EL2);
+}
+
+static inline void __hyp_text ___deactivate_traps(struct kvm_vcpu *vcpu)
+{
+	/*
+	 * If we pended a virtual abort, preserve it until it gets
+	 * cleared. See D1.14.3 (Virtual Interrupts) for details, but
+	 * the crucial bit is "On taking a vSError interrupt,
+	 * HCR_EL2.VSE is cleared to 0."
+	 */
+	if (vcpu->arch.hcr_el2 & HCR_VSE) {
+		vcpu->arch.hcr_el2 &= ~HCR_VSE;
+		vcpu->arch.hcr_el2 |= read_sysreg(hcr_el2) & HCR_VSE;
+	}
+}
+
+static inline void __hyp_text __activate_vm(struct kvm *kvm)
+{
+	__load_guest_stage2(kvm);
+}
+
+static inline bool __hyp_text __translate_far_to_hpfar(u64 far, u64 *hpfar)
+{
+	u64 par, tmp;
+
+	/*
+	 * Resolve the IPA the hard way using the guest VA.
+	 *
+	 * Stage-1 translation already validated the memory access
+	 * rights. As such, we can use the EL1 translation regime, and
+	 * don't have to distinguish between EL0 and EL1 access.
+	 *
+	 * We do need to save/restore PAR_EL1 though, as we haven't
+	 * saved the guest context yet, and we may return early...
+	 */
+	par = read_sysreg(par_el1);
+	asm volatile("at s1e1r, %0" : : "r" (far));
+	isb();
+
+	tmp = read_sysreg(par_el1);
+	write_sysreg(par, par_el1);
+
+	if (unlikely(tmp & SYS_PAR_EL1_F))
+		return false; /* Translation failed, back to guest */
+
+	/* Convert PAR to HPFAR format */
+	*hpfar = PAR_TO_HPFAR(tmp);
+	return true;
+}
+
+static inline bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
+{
+	u8 ec;
+	u64 esr;
+	u64 hpfar, far;
+
+	esr = vcpu->arch.fault.esr_el2;
+	ec = ESR_ELx_EC(esr);
+
+	if (ec != ESR_ELx_EC_DABT_LOW && ec != ESR_ELx_EC_IABT_LOW)
+		return true;
+
+	far = read_sysreg_el2(SYS_FAR);
+
+	/*
+	 * The HPFAR can be invalid if the stage 2 fault did not
+	 * happen during a stage 1 page table walk (the ESR_EL2.S1PTW
+	 * bit is clear) and one of the two following cases are true:
+	 *   1. The fault was due to a permission fault
+	 *   2. The processor carries errata 834220
+	 *
+	 * Therefore, for all non S1PTW faults where we either have a
+	 * permission fault or the errata workaround is enabled, we
+	 * resolve the IPA using the AT instruction.
+	 */
+	if (!(esr & ESR_ELx_S1PTW) &&
+	    (cpus_have_final_cap(ARM64_WORKAROUND_834220) ||
+	     (esr & ESR_ELx_FSC_TYPE) == FSC_PERM)) {
+		if (!__translate_far_to_hpfar(far, &hpfar))
+			return false;
+	} else {
+		hpfar = read_sysreg(hpfar_el2);
+	}
+
+	vcpu->arch.fault.far_el2 = far;
+	vcpu->arch.fault.hpfar_el2 = hpfar;
+	return true;
+}
+
+/* Check for an FPSIMD/SVE trap and handle as appropriate */
+static inline bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
+{
+	bool vhe, sve_guest, sve_host;
+	u8 hsr_ec;
+
+	if (!system_supports_fpsimd())
+		return false;
+
+	if (system_supports_sve()) {
+		sve_guest = vcpu_has_sve(vcpu);
+		sve_host = vcpu->arch.flags & KVM_ARM64_HOST_SVE_IN_USE;
+		vhe = true;
+	} else {
+		sve_guest = false;
+		sve_host = false;
+		vhe = has_vhe();
+	}
+
+	hsr_ec = kvm_vcpu_trap_get_class(vcpu);
+	if (hsr_ec != ESR_ELx_EC_FP_ASIMD &&
+	    hsr_ec != ESR_ELx_EC_SVE)
+		return false;
+
+	/* Don't handle SVE traps for non-SVE vcpus here: */
+	if (!sve_guest)
+		if (hsr_ec != ESR_ELx_EC_FP_ASIMD)
+			return false;
+
+	/* Valid trap.  Switch the context: */
+
+	if (vhe) {
+		u64 reg = read_sysreg(cpacr_el1) | CPACR_EL1_FPEN;
+
+		if (sve_guest)
+			reg |= CPACR_EL1_ZEN;
+
+		write_sysreg(reg, cpacr_el1);
+	} else {
+		write_sysreg(read_sysreg(cptr_el2) & ~(u64)CPTR_EL2_TFP,
+			     cptr_el2);
+	}
+
+	isb();
+
+	if (vcpu->arch.flags & KVM_ARM64_FP_HOST) {
+		/*
+		 * In the SVE case, VHE is assumed: it is enforced by
+		 * Kconfig and kvm_arch_init().
+		 */
+		if (sve_host) {
+			struct thread_struct *thread = container_of(
+				vcpu->arch.host_fpsimd_state,
+				struct thread_struct, uw.fpsimd_state);
+
+			sve_save_state(sve_pffr(thread),
+				       &vcpu->arch.host_fpsimd_state->fpsr);
+		} else {
+			__fpsimd_save_state(vcpu->arch.host_fpsimd_state);
+		}
+
+		vcpu->arch.flags &= ~KVM_ARM64_FP_HOST;
+	}
+
+	if (sve_guest) {
+		sve_load_state(vcpu_sve_pffr(vcpu),
+			       &vcpu->arch.ctxt.gp_regs.fp_regs.fpsr,
+			       sve_vq_from_vl(vcpu->arch.sve_max_vl) - 1);
+		write_sysreg_s(vcpu->arch.ctxt.sys_regs[ZCR_EL1], SYS_ZCR_EL12);
+	} else {
+		__fpsimd_restore_state(&vcpu->arch.ctxt.gp_regs.fp_regs);
+	}
+
+	/* Skip restoring fpexc32 for AArch64 guests */
+	if (!(read_sysreg(hcr_el2) & HCR_RW))
+		write_sysreg(vcpu->arch.ctxt.sys_regs[FPEXC32_EL2],
+			     fpexc32_el2);
+
+	vcpu->arch.flags |= KVM_ARM64_FP_ENABLED;
+
+	return true;
+}
+
+static inline bool __hyp_text handle_tx2_tvm(struct kvm_vcpu *vcpu)
+{
+	u32 sysreg = esr_sys64_to_sysreg(kvm_vcpu_get_hsr(vcpu));
+	int rt = kvm_vcpu_sys_get_rt(vcpu);
+	u64 val = vcpu_get_reg(vcpu, rt);
+
+	/*
+	 * The normal sysreg handling code expects to see the traps,
+	 * let's not do anything here.
+	 */
+	if (vcpu->arch.hcr_el2 & HCR_TVM)
+		return false;
+
+	switch (sysreg) {
+	case SYS_SCTLR_EL1:
+		write_sysreg_el1(val, SYS_SCTLR);
+		break;
+	case SYS_TTBR0_EL1:
+		write_sysreg_el1(val, SYS_TTBR0);
+		break;
+	case SYS_TTBR1_EL1:
+		write_sysreg_el1(val, SYS_TTBR1);
+		break;
+	case SYS_TCR_EL1:
+		write_sysreg_el1(val, SYS_TCR);
+		break;
+	case SYS_ESR_EL1:
+		write_sysreg_el1(val, SYS_ESR);
+		break;
+	case SYS_FAR_EL1:
+		write_sysreg_el1(val, SYS_FAR);
+		break;
+	case SYS_AFSR0_EL1:
+		write_sysreg_el1(val, SYS_AFSR0);
+		break;
+	case SYS_AFSR1_EL1:
+		write_sysreg_el1(val, SYS_AFSR1);
+		break;
+	case SYS_MAIR_EL1:
+		write_sysreg_el1(val, SYS_MAIR);
+		break;
+	case SYS_AMAIR_EL1:
+		write_sysreg_el1(val, SYS_AMAIR);
+		break;
+	case SYS_CONTEXTIDR_EL1:
+		write_sysreg_el1(val, SYS_CONTEXTIDR);
+		break;
+	default:
+		return false;
+	}
+
+	__kvm_skip_instr(vcpu);
+	return true;
+}
+
+/*
+ * Return true when we were able to fixup the guest exit and should return to
+ * the guest, false when we should restore the host state and return to the
+ * main run loop.
+ */
+static inline bool __hyp_text
+fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
+{
+	if (ARM_EXCEPTION_CODE(*exit_code) != ARM_EXCEPTION_IRQ)
+		vcpu->arch.fault.esr_el2 = read_sysreg_el2(SYS_ESR);
+
+	/*
+	 * We're using the raw exception code in order to only process
+	 * the trap if no SError is pending. We will come back to the
+	 * same PC once the SError has been injected, and replay the
+	 * trapping instruction.
+	 */
+	if (*exit_code != ARM_EXCEPTION_TRAP)
+		goto exit;
+
+	if (cpus_have_final_cap(ARM64_WORKAROUND_CAVIUM_TX2_219_TVM) &&
+	    kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_SYS64 &&
+	    handle_tx2_tvm(vcpu))
+		return true;
+
+	/*
+	 * We trap the first access to the FP/SIMD to save the host context
+	 * and restore the guest context lazily.
+	 * If FP/SIMD is not implemented, handle the trap and inject an
+	 * undefined instruction exception to the guest.
+	 * Similarly for trapped SVE accesses.
+	 */
+	if (__hyp_handle_fpsimd(vcpu))
+		return true;
+
+	if (!__populate_fault_info(vcpu))
+		return true;
+
+	if (static_branch_unlikely(&vgic_v2_cpuif_trap)) {
+		bool valid;
+
+		valid = kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_DABT_LOW &&
+			kvm_vcpu_trap_get_fault_type(vcpu) == FSC_FAULT &&
+			kvm_vcpu_dabt_isvalid(vcpu) &&
+			!kvm_vcpu_dabt_isextabt(vcpu) &&
+			!kvm_vcpu_dabt_iss1tw(vcpu);
+
+		if (valid) {
+			int ret = __vgic_v2_perform_cpuif_access(vcpu);
+
+			if (ret == 1)
+				return true;
+
+			/* Promote an illegal access to an SError.*/
+			if (ret == -1)
+				*exit_code = ARM_EXCEPTION_EL1_SERROR;
+
+			goto exit;
+		}
+	}
+
+	if (static_branch_unlikely(&vgic_v3_cpuif_trap) &&
+	    (kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_SYS64 ||
+	     kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_CP15_32)) {
+		int ret = __vgic_v3_perform_cpuif_access(vcpu);
+
+		if (ret == 1)
+			return true;
+	}
+
+exit:
+	/* Return to the host kernel and handle the exit */
+	return false;
+}
+
+static inline bool __hyp_text __needs_ssbd_off(struct kvm_vcpu *vcpu)
+{
+	if (!cpus_have_final_cap(ARM64_SSBD))
+		return false;
+
+	return !(vcpu->arch.workaround_flags & VCPU_WORKAROUND_2_FLAG);
+}
+
+static inline void __hyp_text
+__set_guest_arch_workaround_state(struct kvm_vcpu *vcpu)
+{
+#ifdef CONFIG_ARM64_SSBD
+	/*
+	 * The host runs with the workaround always present. If the
+	 * guest wants it disabled, so be it...
+	 */
+	if (__needs_ssbd_off(vcpu) &&
+	    __hyp_this_cpu_read(arm64_ssbd_callback_required))
+		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 0, NULL);
+#endif
+}
+
+static inline void __hyp_text
+__set_host_arch_workaround_state(struct kvm_vcpu *vcpu)
+{
+#ifdef CONFIG_ARM64_SSBD
+	/*
+	 * If the guest has disabled the workaround, bring it back on.
+	 */
+	if (__needs_ssbd_off(vcpu) &&
+	    __hyp_this_cpu_read(arm64_ssbd_callback_required))
+		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, 1, NULL);
+#endif
+}
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 75b1925763f1..7a261ace2405 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -125,7 +125,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 		/*
 		 * Must only be done for guest registers, hence the context
 		 * test. We're coming from the host, so SCTLR.M is already
-		 * set. Pairs with __activate_traps_nvhe().
+		 * set. Pairs with nVHE's __activate_traps().
 		 */
 		write_sysreg_el1((ctxt->sys_regs[TCR_EL1] |
 				  TCR_EPD1_MASK | TCR_EPD0_MASK),
@@ -153,7 +153,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	    ctxt->__hyp_running_vcpu) {
 		/*
 		 * Must only be done for host registers, hence the context
-		 * test. Pairs with __deactivate_traps_nvhe().
+		 * test. Pairs with nVHE's __deactivate_traps().
 		 */
 		isb();
 		/*
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
