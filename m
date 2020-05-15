Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7A01D4C08
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snwHcNlUajZmN2zxX1JDOpMw4Yhfd2ZI/fKjTUOKt3k=; b=F6k1Wsoz/X7joS
	BS4EYT0KkBdyugJnR8jtmDkzEuJUugTEjNin0oZgolqYdx994PUhoxKuyYJrEe3G5g747yjwRN3vh
	A8VFeLaXhKlictayRlbVDZq33EPVpKpFRUfL8XRh/+Ya5pRaodkb7Q/gDSi8iasDw4xbDG9FfpAvi
	Qua4S/LOV8FrzhpxIi/4uzNB+40ghCyvzGBU9gKh+3PCLYIEJhOL/3fPWaEy9f2eg87mc/qhh/HnL
	MjYxUro58e2K58mnu7hXnK93Ipj2F5BGinO+1ycc4ZTjqQXNmL40EK57aQmTzvsFzE/reV/7YQCe1
	KBvMIgCClPYfHKEVDwsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY7L-0008IR-O0; Fri, 15 May 2020 11:03:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY3d-0001zW-SC
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:59:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id y3so3064532wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hM22Oc3iaGJZQi2Hb417cMWcQUGKlvO+9NSMswcbGUU=;
 b=XU0u2YrNrhdFFOBAon4Cyyi9WgYfjngjvY7juJWSXOtI0ch3u9D9rh4aRc/LljtpLU
 KfKxvxzv24MCI3UCzsutB+tEy34bh5+zwRuFvbyIhM8R4NVBBYiC9xjekxQFBXm0F/8S
 pVocrYBESunKnoY7B5lBLhuntc1AZwmldGId7PlsIXLavv8KJC4GbQH2KWmQprZMD7l1
 67qIQwEGvK5oqNbQJ/2SwGvzt0/Ekpq+hbf7yRUfS4oHWDGBFycWJ5yCAAMH2X4nGP1b
 +/QSBrngPT7kiqLrYJHX/O0VL9YkYZFwbq/CqXoc1CddUK/iC9LGxEYYQufqDNpcs234
 fxXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hM22Oc3iaGJZQi2Hb417cMWcQUGKlvO+9NSMswcbGUU=;
 b=M6bsAVUyGjxNsjjqZ2IC7ZeUikyiJSUknGnFg2lt5v9pOgYvfqFch2CKDxCxuVt+ud
 aGWz+QgicpbOAXwKEyoKXB4a7Ml3J/a8nOQCDZVAbNgduukF3f3GJ+62gPcpo8HPnLS6
 i1BrkQN1wDqRhytosCPKSTmfj+IjPrVLYB3eaN65sKYFFRvvnH+L7j7AilXZ1/lyvbUf
 TcRU6pALhCFmSoRO62mnmf+KOBc2d0o/1iKxs7m6ngvLNP626I8Ri2R6Ewl3vFAF6U4N
 p/TOPm4Txitxe6JD3GTLN1sDD13xxqZ/UFcM1oCE22Z9TF6FXlEbdh4gdqyZ2v3yL2aa
 vFgQ==
X-Gm-Message-State: AOAM531UHASd95t/1x2qbRH1+ttEUcRAGK+8XFUoB+tGetouDa60XJlC
 z1gQBDM/jPQlL5F4aLSAMdu1tw==
X-Google-Smtp-Source: ABdhPJwpT/6+E6gj9rV8ata3rN1O8KORyqEzKF5oD+D/ynnzYJBps8FNtlkMEpeH/7wDLXQZcdFBKw==
X-Received: by 2002:adf:fe45:: with SMTP id m5mr3589774wrs.257.1589540351617; 
 Fri, 15 May 2020 03:59:11 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d11b:f847:8002:7411])
 by smtp.gmail.com with ESMTPSA id z132sm3331611wmc.29.2020.05.15.03.59.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 03:59:10 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v2 09/14] arm64: kvm: Split hyp/sysreg-sr.c to VHE/nVHE
Date: Fri, 15 May 2020 11:58:36 +0100
Message-Id: <20200515105841.73532-10-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515105841.73532-1-dbrazdil@google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035914_476130_85A16B06 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

sysreg-sr.c contains KVM's code for saving/restoring system registers, with
some parts shared between VHE/nVHE. These common routines are moved to
sysreg-sr.h, VHE-specific code is left in sysreg-sr.c and nVHE-specific code is
moved to nvhe/sysreg-sr.c.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_asm.h    |   2 +
 arch/arm64/include/asm/kvm_host.h   |   2 -
 arch/arm64/include/asm/kvm_hyp.h    |   4 +
 arch/arm64/kernel/image-vars.h      |   5 -
 arch/arm64/kvm/hyp/nvhe/Makefile    |   2 +-
 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c |  56 +++++++
 arch/arm64/kvm/hyp/sysreg-sr.c      | 233 ++--------------------------
 arch/arm64/kvm/hyp/sysreg-sr.h      | 223 ++++++++++++++++++++++++++
 8 files changed, 299 insertions(+), 228 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
 create mode 100644 arch/arm64/kvm/hyp/sysreg-sr.h

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index c0ba15c9b190..1f3a65f1b354 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -91,6 +91,8 @@ extern void __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high);
 
 extern int __kvm_vcpu_run(struct kvm_vcpu *vcpu);
 
+extern void __kvm_enable_ssbs(void);
+
 extern u64 __vgic_v3_get_ich_vtr_el2(void);
 extern u64 __vgic_v3_read_vmcr(void);
 extern void __vgic_v3_write_vmcr(u32 vmcr);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 132233b6d853..ef48866214f8 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -532,8 +532,6 @@ static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt)
 	cpu_ctxt->sys_regs[MPIDR_EL1] = read_cpuid_mpidr();
 }
 
-void __kvm_enable_ssbs(void);
-
 static inline void __cpu_init_hyp_mode(phys_addr_t pgd_ptr,
 				       unsigned long hyp_stack_ptr,
 				       unsigned long vector_ptr)
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 0f535692d1d8..2084fd3186a7 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -67,12 +67,16 @@ int __vgic_v3_perform_cpuif_access(struct kvm_vcpu *vcpu);
 void __timer_enable_traps(struct kvm_vcpu *vcpu);
 void __timer_disable_traps(struct kvm_vcpu *vcpu);
 
+#ifdef __KVM_NVHE_HYPERVISOR__
 void __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt);
 void __sysreg_restore_state_nvhe(struct kvm_cpu_context *ctxt);
+#else
 void sysreg_save_host_state_vhe(struct kvm_cpu_context *ctxt);
 void sysreg_restore_host_state_vhe(struct kvm_cpu_context *ctxt);
 void sysreg_save_guest_state_vhe(struct kvm_cpu_context *ctxt);
 void sysreg_restore_guest_state_vhe(struct kvm_cpu_context *ctxt);
+#endif
+
 void __sysreg32_save_state(struct kvm_vcpu *vcpu);
 void __sysreg32_restore_state(struct kvm_vcpu *vcpu);
 
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 5de3a5998bcd..bf9053d65ad7 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -66,13 +66,8 @@ __kvm_nvhe___fpsimd_save_state = __fpsimd_save_state;
 __kvm_nvhe___guest_enter = __guest_enter;
 __kvm_nvhe___guest_exit = __guest_exit;
 __kvm_nvhe___icache_flags = __icache_flags;
-__kvm_nvhe___kvm_enable_ssbs = __kvm_enable_ssbs;
 __kvm_nvhe___kvm_handle_stub_hvc = __kvm_handle_stub_hvc;
 __kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
-__kvm_nvhe___sysreg32_restore_state = __sysreg32_restore_state;
-__kvm_nvhe___sysreg32_save_state = __sysreg32_save_state;
-__kvm_nvhe___sysreg_restore_state_nvhe = __sysreg_restore_state_nvhe;
-__kvm_nvhe___sysreg_save_state_nvhe = __sysreg_save_state_nvhe;
 __kvm_nvhe___timer_disable_traps = __timer_disable_traps;
 __kvm_nvhe___timer_enable_traps = __timer_enable_traps;
 __kvm_nvhe___vgic_v2_perform_cpuif_access = __vgic_v2_perform_cpuif_access;
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 33a80da34154..8157f6fa4c99 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,7 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
 	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := debug-sr.o switch.o tlb.o ../hyp-entry.o
+obj-y := sysreg-sr.o debug-sr.o switch.o tlb.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp/nvhe/sysreg-sr.c b/arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
new file mode 100644
index 000000000000..55ab924d841a
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2012-2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#include <linux/compiler.h>
+#include <linux/kvm_host.h>
+
+#include <asm/kprobes.h>
+#include <asm/kvm_asm.h>
+#include <asm/kvm_emulate.h>
+#include <asm/kvm_hyp.h>
+
+#include "../sysreg-sr.h"
+
+/*
+ * Non-VHE: Both host and guest must save everything.
+ */
+
+void __hyp_text __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt)
+{
+	__sysreg_save_el1_state(ctxt);
+	__sysreg_save_common_state(ctxt);
+	__sysreg_save_user_state(ctxt);
+	__sysreg_save_el2_return_state(ctxt);
+}
+
+void __hyp_text __sysreg_restore_state_nvhe(struct kvm_cpu_context *ctxt)
+{
+	__sysreg_restore_el1_state(ctxt);
+	__sysreg_restore_common_state(ctxt);
+	__sysreg_restore_user_state(ctxt);
+	__sysreg_restore_el2_return_state(ctxt);
+}
+
+void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
+{
+	___sysreg32_save_state(vcpu);
+}
+
+void __hyp_text __sysreg32_restore_state(struct kvm_vcpu *vcpu)
+{
+	___sysreg32_restore_state(vcpu);
+}
+
+void __hyp_text __kvm_enable_ssbs(void)
+{
+	u64 tmp;
+
+	asm volatile(
+	"mrs	%0, sctlr_el2\n"
+	"orr	%0, %0, %1\n"
+	"msr	sctlr_el2, %0"
+	: "=&r" (tmp) : "L" (SCTLR_ELx_DSSBS));
+}
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 7a261ace2405..b373dc320f5c 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -12,9 +12,9 @@
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_hyp.h>
 
+#include "sysreg-sr.h"
+
 /*
- * Non-VHE: Both host and guest must save everything.
- *
  * VHE: Host and guest must save mdscr_el1 and sp_el0 (and the PC and pstate,
  * which are handled as part of the el2 return state) on every switch.
  * tpidr_el0 and tpidrro_el0 only need to be switched when going
@@ -23,66 +23,6 @@
  * classes are handled as part of kvm_arch_vcpu_load and kvm_arch_vcpu_put.
  */
 
-static void __hyp_text __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
-{
-	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
-
-	/*
-	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
-	 * therefore be saved/restored on every entry/exit to/from the guest.
-	 */
-	ctxt->gp_regs.regs.sp		= read_sysreg(sp_el0);
-}
-
-static void __hyp_text __sysreg_save_user_state(struct kvm_cpu_context *ctxt)
-{
-	ctxt->sys_regs[TPIDR_EL0]	= read_sysreg(tpidr_el0);
-	ctxt->sys_regs[TPIDRRO_EL0]	= read_sysreg(tpidrro_el0);
-}
-
-static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
-{
-	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
-	ctxt->sys_regs[SCTLR_EL1]	= read_sysreg_el1(SYS_SCTLR);
-	ctxt->sys_regs[ACTLR_EL1]	= read_sysreg(actlr_el1);
-	ctxt->sys_regs[CPACR_EL1]	= read_sysreg_el1(SYS_CPACR);
-	ctxt->sys_regs[TTBR0_EL1]	= read_sysreg_el1(SYS_TTBR0);
-	ctxt->sys_regs[TTBR1_EL1]	= read_sysreg_el1(SYS_TTBR1);
-	ctxt->sys_regs[TCR_EL1]		= read_sysreg_el1(SYS_TCR);
-	ctxt->sys_regs[ESR_EL1]		= read_sysreg_el1(SYS_ESR);
-	ctxt->sys_regs[AFSR0_EL1]	= read_sysreg_el1(SYS_AFSR0);
-	ctxt->sys_regs[AFSR1_EL1]	= read_sysreg_el1(SYS_AFSR1);
-	ctxt->sys_regs[FAR_EL1]		= read_sysreg_el1(SYS_FAR);
-	ctxt->sys_regs[MAIR_EL1]	= read_sysreg_el1(SYS_MAIR);
-	ctxt->sys_regs[VBAR_EL1]	= read_sysreg_el1(SYS_VBAR);
-	ctxt->sys_regs[CONTEXTIDR_EL1]	= read_sysreg_el1(SYS_CONTEXTIDR);
-	ctxt->sys_regs[AMAIR_EL1]	= read_sysreg_el1(SYS_AMAIR);
-	ctxt->sys_regs[CNTKCTL_EL1]	= read_sysreg_el1(SYS_CNTKCTL);
-	ctxt->sys_regs[PAR_EL1]		= read_sysreg(par_el1);
-	ctxt->sys_regs[TPIDR_EL1]	= read_sysreg(tpidr_el1);
-
-	ctxt->gp_regs.sp_el1		= read_sysreg(sp_el1);
-	ctxt->gp_regs.elr_el1		= read_sysreg_el1(SYS_ELR);
-	ctxt->gp_regs.spsr[KVM_SPSR_EL1]= read_sysreg_el1(SYS_SPSR);
-}
-
-static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
-{
-	ctxt->gp_regs.regs.pc		= read_sysreg_el2(SYS_ELR);
-	ctxt->gp_regs.regs.pstate	= read_sysreg_el2(SYS_SPSR);
-
-	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
-		ctxt->sys_regs[DISR_EL1] = read_sysreg_s(SYS_VDISR_EL2);
-}
-
-void __hyp_text __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt)
-{
-	__sysreg_save_el1_state(ctxt);
-	__sysreg_save_common_state(ctxt);
-	__sysreg_save_user_state(ctxt);
-	__sysreg_save_el2_return_state(ctxt);
-}
-
 void sysreg_save_host_state_vhe(struct kvm_cpu_context *ctxt)
 {
 	__sysreg_save_common_state(ctxt);
@@ -96,116 +36,6 @@ void sysreg_save_guest_state_vhe(struct kvm_cpu_context *ctxt)
 }
 NOKPROBE_SYMBOL(sysreg_save_guest_state_vhe);
 
-static void __hyp_text __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
-{
-	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
-
-	/*
-	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
-	 * therefore be saved/restored on every entry/exit to/from the guest.
-	 */
-	write_sysreg(ctxt->gp_regs.regs.sp,	  sp_el0);
-}
-
-static void __hyp_text __sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
-{
-	write_sysreg(ctxt->sys_regs[TPIDR_EL0],		tpidr_el0);
-	write_sysreg(ctxt->sys_regs[TPIDRRO_EL0],	tpidrro_el0);
-}
-
-static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
-{
-	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
-	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
-
-	if (!cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
-		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
-		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
-	} else	if (!ctxt->__hyp_running_vcpu) {
-		/*
-		 * Must only be done for guest registers, hence the context
-		 * test. We're coming from the host, so SCTLR.M is already
-		 * set. Pairs with nVHE's __activate_traps().
-		 */
-		write_sysreg_el1((ctxt->sys_regs[TCR_EL1] |
-				  TCR_EPD1_MASK | TCR_EPD0_MASK),
-				 SYS_TCR);
-		isb();
-	}
-
-	write_sysreg(ctxt->sys_regs[ACTLR_EL1],		actlr_el1);
-	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1],	SYS_CPACR);
-	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
-	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
-	write_sysreg_el1(ctxt->sys_regs[ESR_EL1],	SYS_ESR);
-	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL1],	SYS_AFSR0);
-	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL1],	SYS_AFSR1);
-	write_sysreg_el1(ctxt->sys_regs[FAR_EL1],	SYS_FAR);
-	write_sysreg_el1(ctxt->sys_regs[MAIR_EL1],	SYS_MAIR);
-	write_sysreg_el1(ctxt->sys_regs[VBAR_EL1],	SYS_VBAR);
-	write_sysreg_el1(ctxt->sys_regs[CONTEXTIDR_EL1],SYS_CONTEXTIDR);
-	write_sysreg_el1(ctxt->sys_regs[AMAIR_EL1],	SYS_AMAIR);
-	write_sysreg_el1(ctxt->sys_regs[CNTKCTL_EL1],	SYS_CNTKCTL);
-	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
-	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
-
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
-	    ctxt->__hyp_running_vcpu) {
-		/*
-		 * Must only be done for host registers, hence the context
-		 * test. Pairs with nVHE's __deactivate_traps().
-		 */
-		isb();
-		/*
-		 * At this stage, and thanks to the above isb(), S2 is
-		 * deconfigured and disabled. We can now restore the host's
-		 * S1 configuration: SCTLR, and only then TCR.
-		 */
-		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
-		isb();
-		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
-	}
-
-	write_sysreg(ctxt->gp_regs.sp_el1,		sp_el1);
-	write_sysreg_el1(ctxt->gp_regs.elr_el1,		SYS_ELR);
-	write_sysreg_el1(ctxt->gp_regs.spsr[KVM_SPSR_EL1],SYS_SPSR);
-}
-
-static void __hyp_text
-__sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
-{
-	u64 pstate = ctxt->gp_regs.regs.pstate;
-	u64 mode = pstate & PSR_AA32_MODE_MASK;
-
-	/*
-	 * Safety check to ensure we're setting the CPU up to enter the guest
-	 * in a less privileged mode.
-	 *
-	 * If we are attempting a return to EL2 or higher in AArch64 state,
-	 * program SPSR_EL2 with M=EL2h and the IL bit set which ensures that
-	 * we'll take an illegal exception state exception immediately after
-	 * the ERET to the guest.  Attempts to return to AArch32 Hyp will
-	 * result in an illegal exception return because EL2's execution state
-	 * is determined by SCR_EL3.RW.
-	 */
-	if (!(mode & PSR_MODE32_BIT) && mode >= PSR_MODE_EL2t)
-		pstate = PSR_MODE_EL2h | PSR_IL_BIT;
-
-	write_sysreg_el2(ctxt->gp_regs.regs.pc,		SYS_ELR);
-	write_sysreg_el2(pstate,			SYS_SPSR);
-
-	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
-		write_sysreg_s(ctxt->sys_regs[DISR_EL1], SYS_VDISR_EL2);
-}
-
-void __hyp_text __sysreg_restore_state_nvhe(struct kvm_cpu_context *ctxt)
-{
-	__sysreg_restore_el1_state(ctxt);
-	__sysreg_restore_common_state(ctxt);
-	__sysreg_restore_user_state(ctxt);
-	__sysreg_restore_el2_return_state(ctxt);
-}
-
 void sysreg_restore_host_state_vhe(struct kvm_cpu_context *ctxt)
 {
 	__sysreg_restore_common_state(ctxt);
@@ -219,48 +49,22 @@ void sysreg_restore_guest_state_vhe(struct kvm_cpu_context *ctxt)
 }
 NOKPROBE_SYMBOL(sysreg_restore_guest_state_vhe);
 
-void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
+void __sysreg32_save_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr, *sysreg;
-
-	if (!vcpu_el1_is_32bit(vcpu))
-		return;
-
-	spsr = vcpu->arch.ctxt.gp_regs.spsr;
-	sysreg = vcpu->arch.ctxt.sys_regs;
-
-	spsr[KVM_SPSR_ABT] = read_sysreg(spsr_abt);
-	spsr[KVM_SPSR_UND] = read_sysreg(spsr_und);
-	spsr[KVM_SPSR_IRQ] = read_sysreg(spsr_irq);
-	spsr[KVM_SPSR_FIQ] = read_sysreg(spsr_fiq);
-
-	sysreg[DACR32_EL2] = read_sysreg(dacr32_el2);
-	sysreg[IFSR32_EL2] = read_sysreg(ifsr32_el2);
-
-	if (has_vhe() || vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY)
-		sysreg[DBGVCR32_EL2] = read_sysreg(dbgvcr32_el2);
+	___sysreg32_save_state(vcpu);
 }
 
-void __hyp_text __sysreg32_restore_state(struct kvm_vcpu *vcpu)
+void __sysreg32_restore_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr, *sysreg;
-
-	if (!vcpu_el1_is_32bit(vcpu))
-		return;
-
-	spsr = vcpu->arch.ctxt.gp_regs.spsr;
-	sysreg = vcpu->arch.ctxt.sys_regs;
-
-	write_sysreg(spsr[KVM_SPSR_ABT], spsr_abt);
-	write_sysreg(spsr[KVM_SPSR_UND], spsr_und);
-	write_sysreg(spsr[KVM_SPSR_IRQ], spsr_irq);
-	write_sysreg(spsr[KVM_SPSR_FIQ], spsr_fiq);
-
-	write_sysreg(sysreg[DACR32_EL2], dacr32_el2);
-	write_sysreg(sysreg[IFSR32_EL2], ifsr32_el2);
+	___sysreg32_restore_state(vcpu);
+}
 
-	if (has_vhe() || vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY)
-		write_sysreg(sysreg[DBGVCR32_EL2], dbgvcr32_el2);
+void __kvm_enable_ssbs(void)
+{
+	/*
+	 * Nothing to do on VHE. Needed because VHE and nVHE hyp code
+	 * must expose the same interface.
+	 */
 }
 
 /**
@@ -329,14 +133,3 @@ void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu)
 
 	vcpu->arch.sysregs_loaded_on_cpu = false;
 }
-
-void __hyp_text __kvm_enable_ssbs(void)
-{
-	u64 tmp;
-
-	asm volatile(
-	"mrs	%0, sctlr_el2\n"
-	"orr	%0, %0, %1\n"
-	"msr	sctlr_el2, %0"
-	: "=&r" (tmp) : "L" (SCTLR_ELx_DSSBS));
-}
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.h b/arch/arm64/kvm/hyp/sysreg-sr.h
new file mode 100644
index 000000000000..2e22cf23dbd5
--- /dev/null
+++ b/arch/arm64/kvm/hyp/sysreg-sr.h
@@ -0,0 +1,223 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2012-2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#ifndef __ARM64_KVM_HYP_SYSREG_SR_H__
+#define __ARM64_KVM_HYP_SYSREG_SR_H__
+
+#include <linux/compiler.h>
+#include <linux/kvm_host.h>
+
+#include <asm/kprobes.h>
+#include <asm/kvm_asm.h>
+#include <asm/kvm_emulate.h>
+#include <asm/kvm_hyp.h>
+
+static inline void __hyp_text
+__sysreg_save_common_state(struct kvm_cpu_context *ctxt)
+{
+	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
+
+	/*
+	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
+	 * therefore be saved/restored on every entry/exit to/from the guest.
+	 */
+	ctxt->gp_regs.regs.sp		= read_sysreg(sp_el0);
+}
+
+static inline void __hyp_text
+__sysreg_save_user_state(struct kvm_cpu_context *ctxt)
+{
+	ctxt->sys_regs[TPIDR_EL0]	= read_sysreg(tpidr_el0);
+	ctxt->sys_regs[TPIDRRO_EL0]	= read_sysreg(tpidrro_el0);
+}
+
+static inline void __hyp_text
+__sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
+{
+	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
+	ctxt->sys_regs[SCTLR_EL1]	= read_sysreg_el1(SYS_SCTLR);
+	ctxt->sys_regs[ACTLR_EL1]	= read_sysreg(actlr_el1);
+	ctxt->sys_regs[CPACR_EL1]	= read_sysreg_el1(SYS_CPACR);
+	ctxt->sys_regs[TTBR0_EL1]	= read_sysreg_el1(SYS_TTBR0);
+	ctxt->sys_regs[TTBR1_EL1]	= read_sysreg_el1(SYS_TTBR1);
+	ctxt->sys_regs[TCR_EL1]		= read_sysreg_el1(SYS_TCR);
+	ctxt->sys_regs[ESR_EL1]		= read_sysreg_el1(SYS_ESR);
+	ctxt->sys_regs[AFSR0_EL1]	= read_sysreg_el1(SYS_AFSR0);
+	ctxt->sys_regs[AFSR1_EL1]	= read_sysreg_el1(SYS_AFSR1);
+	ctxt->sys_regs[FAR_EL1]		= read_sysreg_el1(SYS_FAR);
+	ctxt->sys_regs[MAIR_EL1]	= read_sysreg_el1(SYS_MAIR);
+	ctxt->sys_regs[VBAR_EL1]	= read_sysreg_el1(SYS_VBAR);
+	ctxt->sys_regs[CONTEXTIDR_EL1]	= read_sysreg_el1(SYS_CONTEXTIDR);
+	ctxt->sys_regs[AMAIR_EL1]	= read_sysreg_el1(SYS_AMAIR);
+	ctxt->sys_regs[CNTKCTL_EL1]	= read_sysreg_el1(SYS_CNTKCTL);
+	ctxt->sys_regs[PAR_EL1]		= read_sysreg(par_el1);
+	ctxt->sys_regs[TPIDR_EL1]	= read_sysreg(tpidr_el1);
+
+	ctxt->gp_regs.sp_el1		= read_sysreg(sp_el1);
+	ctxt->gp_regs.elr_el1		= read_sysreg_el1(SYS_ELR);
+	ctxt->gp_regs.spsr[KVM_SPSR_EL1]= read_sysreg_el1(SYS_SPSR);
+}
+
+static inline void __hyp_text
+__sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
+{
+	ctxt->gp_regs.regs.pc		= read_sysreg_el2(SYS_ELR);
+	ctxt->gp_regs.regs.pstate	= read_sysreg_el2(SYS_SPSR);
+
+	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
+		ctxt->sys_regs[DISR_EL1] = read_sysreg_s(SYS_VDISR_EL2);
+}
+
+static inline void __hyp_text
+__sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
+{
+	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
+
+	/*
+	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
+	 * therefore be saved/restored on every entry/exit to/from the guest.
+	 */
+	write_sysreg(ctxt->gp_regs.regs.sp,	  sp_el0);
+}
+
+static inline void __hyp_text
+__sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
+{
+	write_sysreg(ctxt->sys_regs[TPIDR_EL0],		tpidr_el0);
+	write_sysreg(ctxt->sys_regs[TPIDRRO_EL0],	tpidrro_el0);
+}
+
+static inline void __hyp_text
+__sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
+{
+	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
+	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
+
+	if (!cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+	} else	if (!ctxt->__hyp_running_vcpu) {
+		/*
+		 * Must only be done for guest registers, hence the context
+		 * test. We're coming from the host, so SCTLR.M is already
+		 * set. Pairs with nVHE's __activate_traps().
+		 */
+		write_sysreg_el1((ctxt->sys_regs[TCR_EL1] |
+				  TCR_EPD1_MASK | TCR_EPD0_MASK),
+				 SYS_TCR);
+		isb();
+	}
+
+	write_sysreg(ctxt->sys_regs[ACTLR_EL1],		actlr_el1);
+	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1],	SYS_CPACR);
+	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
+	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
+	write_sysreg_el1(ctxt->sys_regs[ESR_EL1],	SYS_ESR);
+	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL1],	SYS_AFSR0);
+	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL1],	SYS_AFSR1);
+	write_sysreg_el1(ctxt->sys_regs[FAR_EL1],	SYS_FAR);
+	write_sysreg_el1(ctxt->sys_regs[MAIR_EL1],	SYS_MAIR);
+	write_sysreg_el1(ctxt->sys_regs[VBAR_EL1],	SYS_VBAR);
+	write_sysreg_el1(ctxt->sys_regs[CONTEXTIDR_EL1],SYS_CONTEXTIDR);
+	write_sysreg_el1(ctxt->sys_regs[AMAIR_EL1],	SYS_AMAIR);
+	write_sysreg_el1(ctxt->sys_regs[CNTKCTL_EL1],	SYS_CNTKCTL);
+	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
+	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
+
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
+	    ctxt->__hyp_running_vcpu) {
+		/*
+		 * Must only be done for host registers, hence the context
+		 * test. Pairs with nVHE's __deactivate_traps().
+		 */
+		isb();
+		/*
+		 * At this stage, and thanks to the above isb(), S2 is
+		 * deconfigured and disabled. We can now restore the host's
+		 * S1 configuration: SCTLR, and only then TCR.
+		 */
+		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		isb();
+		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+	}
+
+	write_sysreg(ctxt->gp_regs.sp_el1,		sp_el1);
+	write_sysreg_el1(ctxt->gp_regs.elr_el1,		SYS_ELR);
+	write_sysreg_el1(ctxt->gp_regs.spsr[KVM_SPSR_EL1],SYS_SPSR);
+}
+
+static inline void __hyp_text
+__sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
+{
+	u64 pstate = ctxt->gp_regs.regs.pstate;
+	u64 mode = pstate & PSR_AA32_MODE_MASK;
+
+	/*
+	 * Safety check to ensure we're setting the CPU up to enter the guest
+	 * in a less privileged mode.
+	 *
+	 * If we are attempting a return to EL2 or higher in AArch64 state,
+	 * program SPSR_EL2 with M=EL2h and the IL bit set which ensures that
+	 * we'll take an illegal exception state exception immediately after
+	 * the ERET to the guest.  Attempts to return to AArch32 Hyp will
+	 * result in an illegal exception return because EL2's execution state
+	 * is determined by SCR_EL3.RW.
+	 */
+	if (!(mode & PSR_MODE32_BIT) && mode >= PSR_MODE_EL2t)
+		pstate = PSR_MODE_EL2h | PSR_IL_BIT;
+
+	write_sysreg_el2(ctxt->gp_regs.regs.pc,		SYS_ELR);
+	write_sysreg_el2(pstate,			SYS_SPSR);
+
+	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
+		write_sysreg_s(ctxt->sys_regs[DISR_EL1], SYS_VDISR_EL2);
+}
+
+static inline void __hyp_text ___sysreg32_save_state(struct kvm_vcpu *vcpu)
+{
+	u64 *spsr, *sysreg;
+
+	if (!vcpu_el1_is_32bit(vcpu))
+		return;
+
+	spsr = vcpu->arch.ctxt.gp_regs.spsr;
+	sysreg = vcpu->arch.ctxt.sys_regs;
+
+	spsr[KVM_SPSR_ABT] = read_sysreg(spsr_abt);
+	spsr[KVM_SPSR_UND] = read_sysreg(spsr_und);
+	spsr[KVM_SPSR_IRQ] = read_sysreg(spsr_irq);
+	spsr[KVM_SPSR_FIQ] = read_sysreg(spsr_fiq);
+
+	sysreg[DACR32_EL2] = read_sysreg(dacr32_el2);
+	sysreg[IFSR32_EL2] = read_sysreg(ifsr32_el2);
+
+	if (has_vhe() || vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY)
+		sysreg[DBGVCR32_EL2] = read_sysreg(dbgvcr32_el2);
+}
+
+static inline void __hyp_text ___sysreg32_restore_state(struct kvm_vcpu *vcpu)
+{
+	u64 *spsr, *sysreg;
+
+	if (!vcpu_el1_is_32bit(vcpu))
+		return;
+
+	spsr = vcpu->arch.ctxt.gp_regs.spsr;
+	sysreg = vcpu->arch.ctxt.sys_regs;
+
+	write_sysreg(spsr[KVM_SPSR_ABT], spsr_abt);
+	write_sysreg(spsr[KVM_SPSR_UND], spsr_und);
+	write_sysreg(spsr[KVM_SPSR_IRQ], spsr_irq);
+	write_sysreg(spsr[KVM_SPSR_FIQ], spsr_fiq);
+
+	write_sysreg(sysreg[DACR32_EL2], dacr32_el2);
+	write_sysreg(sysreg[IFSR32_EL2], ifsr32_el2);
+
+	if (has_vhe() || vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY)
+		write_sysreg(sysreg[DBGVCR32_EL2], dbgvcr32_el2);
+}
+
+#endif /* __ARM64_KVM_HYP_SYSREG_SR_H__ */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
