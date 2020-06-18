Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96AA1FF1D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVXozjY5DUTXBf6OgNqGyglBQR8Oee79vfVbi4GZQzY=; b=mo33UIGzVGm8Ra
	igy6qLlkpJPshEAjgrIBBQX9lGJA6Fji6tOGoSBMiZeJG1hE2BL2ctobuJENnVffUwo0WfmW8kQtF
	m2FNZoyWI8urMa9xPJOcRvAdle8bI/k5TVlugWxmUduj/9UQdnD1Dz0Vvh5YvW4GK5Tbn+45lYVUM
	zbZDG6Rg5p3cM+NMLO8GVgVcUO2zPARZy6am/JpEFVQuPolIvkUB/WXroLlwGTyphC6F90Wqm2Vd7
	8y9s02F3z3+tI8tuDPGAe40RPBFroolgRt4tcVh/rfJRMwLiCZ/y7EjgoPDxznpgJPfQPXjY2h+A2
	bG3EqfJND0CByS9T2EWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlthE-0002aJ-DO; Thu, 18 Jun 2020 12:31:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcP-0004dN-1f
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id t18so5855496wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=US2jDZSS0E14B7YxEAcJj2jZB1b+kDg78rl8vqlDScA=;
 b=XWKEcKWmgqAzQJJWmfT+N3sLhoJqTVAgfNwRVaUqeCCl7RGbRyqMIIDPsGLy1W9cBp
 40ZjJaK+sgBYKjmlKByCoI5c+i26IeB+sGf5gvw5Vy7YMkFc2Q95DK77EFlTUjb/Ue5I
 ydaIlWHD8P2k73NQUIPuVoz8F3oLApP42racDxy5VeikJagK6wRheDx22jkltKh8Ev0u
 yXxUGHCs7a8ATU8FFVMR92st/30vhkvntvNxEUs9HhjhmB6e4pP3xzoPOpktkoWSr22P
 KICAu1PnAlAN1EQGzacqy/YwKF2gKOCt1Ml9/KJNk4kH2nAHyD5+c4KN3qOzbcUawJFc
 RvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=US2jDZSS0E14B7YxEAcJj2jZB1b+kDg78rl8vqlDScA=;
 b=mcVTszw3Tid7BeQBOQldsMiN8bXq73oJdgMBcXKNf2Zef784YbupYcN160fwUvhLHn
 i5ViLxKWHg7o7VTPr/49Ey5pZAHRif+cea7yXCc4NaOhmUZpmTUaNMnvNgobz7ejQDoa
 2lBVRKyCC4XXLEdhX35n9xVQCvIhczUS3BdgmnKD7dEoCnJmw4Q0LVM+ZB59R/YSoe64
 pGQwvb479YbKHc/YqkShacjlz4T+AmJ21mzR9KKnMA7qYQGgYBxCbJCmclZzfB6o22Lu
 QVaE5SSOGJ99T79fgBuCHlVS6wzF6MVzbkBJtD6tGAbZWoUZbYwVI847ObVSMUTa6UsX
 HZMA==
X-Gm-Message-State: AOAM530ZgRhkIHQIuqLmFxzWBpp4XE+vmtexx/Aleilry8kbihM8KniZ
 wpXLJ5lK52Oo+q4gr4dtE2yFGQ==
X-Google-Smtp-Source: ABdhPJyCh9J3MV6MAIMA2i9n2gIcCx1yiswyMUAc9kLLr3n/qEAWTe1ynIVgCAbaH53xEvJ0FTDgqA==
X-Received: by 2002:adf:b697:: with SMTP id j23mr4683977wre.201.1592483166534; 
 Thu, 18 Jun 2020 05:26:06 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id x205sm3514091wmx.21.2020.06.18.05.26.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:26:05 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 10/15] arm64: kvm: Split hyp/sysreg-sr.c to VHE/nVHE
Date: Thu, 18 Jun 2020 13:25:32 +0100
Message-Id: <20200618122537.9625-11-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052609_839968_61CC7C4D 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: android-kvm@google.com, linux-kernel@vger.kernel.org,
 David Brazdil <dbrazdil@google.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
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
 arch/arm64/include/asm/kvm_hyp.h    |   4 +
 arch/arm64/kernel/image-vars.h      |   5 -
 arch/arm64/kvm/arm.c                |   2 +-
 arch/arm64/kvm/hyp/nvhe/Makefile    |   2 +-
 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c |  56 ++++++++
 arch/arm64/kvm/hyp/sysreg-sr.c      | 215 +---------------------------
 arch/arm64/kvm/hyp/sysreg-sr.h      | 211 +++++++++++++++++++++++++++
 7 files changed, 279 insertions(+), 216 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
 create mode 100644 arch/arm64/kvm/hyp/sysreg-sr.h

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 1cb5903a2693..c8bbd221aac0 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -66,12 +66,16 @@ int __vgic_v3_perform_cpuif_access(struct kvm_vcpu *vcpu);
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
index 8096e6f1f2bf..ddaae7267ab1 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -68,12 +68,7 @@ __kvm_nvhe___guest_exit = __guest_exit;
 __kvm_nvhe___hyp_panic_string = __hyp_panic_string;
 __kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
 __kvm_nvhe___icache_flags = __icache_flags;
-__kvm_nvhe___kvm_enable_ssbs = __kvm_enable_ssbs;
 __kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
-__kvm_nvhe___sysreg32_restore_state = __sysreg32_restore_state;
-__kvm_nvhe___sysreg32_save_state = __sysreg32_save_state;
-__kvm_nvhe___sysreg_restore_state_nvhe = __sysreg_restore_state_nvhe;
-__kvm_nvhe___sysreg_save_state_nvhe = __sysreg_save_state_nvhe;
 __kvm_nvhe___timer_disable_traps = __timer_disable_traps;
 __kvm_nvhe___timer_enable_traps = __timer_enable_traps;
 __kvm_nvhe___vgic_v2_perform_cpuif_access = __vgic_v2_perform_cpuif_access;
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 59bbe6ce2d54..62ceb546393e 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1302,7 +1302,7 @@ static void cpu_init_hyp_mode(void)
 	 */
 	if (this_cpu_has_cap(ARM64_SSBS) &&
 	    arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE) {
-		kvm_call_hyp(__kvm_enable_ssbs);
+		kvm_call_hyp_nvhe(__kvm_enable_ssbs);
 	}
 }
 
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 95a06786bf26..d242e437cf89 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,7 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
 	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := debug-sr.o switch.o tlb.o hyp-init.o ../hyp-entry.o
+obj-y := sysreg-sr.o debug-sr.o switch.o tlb.o hyp-init.o ../hyp-entry.o
 
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
index 2493439a5c54..5b559b00e9e5 100644
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
  * VHE: Host and guest must save mdscr_el1 and sp_el0 (and the PC and
  * pstate, which are handled as part of the el2 return state) on every
  * switch (sp_el0 is being dealt with in the assembly code).
@@ -24,59 +24,6 @@
  * classes are handled as part of kvm_arch_vcpu_load and kvm_arch_vcpu_put.
  */
 
-static void __hyp_text __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
-{
-	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
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
@@ -90,111 +37,6 @@ void sysreg_save_guest_state_vhe(struct kvm_cpu_context *ctxt)
 }
 NOKPROBE_SYMBOL(sysreg_save_guest_state_vhe);
 
-static void __hyp_text __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
-{
-	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
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
-	if (has_vhe() ||
-	    !cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
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
-	if (!has_vhe() &&
-	    cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT) &&
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
@@ -208,48 +50,14 @@ void sysreg_restore_guest_state_vhe(struct kvm_cpu_context *ctxt)
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
-
-	if (has_vhe() || vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY)
-		write_sysreg(sysreg[DBGVCR32_EL2], dbgvcr32_el2);
+	___sysreg32_restore_state(vcpu);
 }
 
 /**
@@ -320,14 +128,3 @@ void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu)
 
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
index 000000000000..7bc102c60294
--- /dev/null
+++ b/arch/arm64/kvm/hyp/sysreg-sr.h
@@ -0,0 +1,211 @@
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
+	if (has_vhe() ||
+	    !cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
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
+	if (!has_vhe() &&
+	    cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT) &&
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
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
