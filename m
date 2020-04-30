Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BBB1BFF55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TAeyhfC0B8g02Dx1hYVhzdU55Qs82rERHuxJverk4g=; b=f+bMf0l0Qug9so
	gkzfOeMK+PQXIAGPR2AF8FQHBvAcJemlrcN2SVItlOnIeQf3mvnLC/8ZXqnHGlVlKpG8TPvynUY2A
	Shc7z0r36pjB6Vr+Ojv6sU7FdTgs2GrW7AtVTykz2cZj8N1C/zdOV5loUbePPiN/lXnAKeo4rc69y
	xmKT+lA0mxpaf0HH+B0pI4HdbtFxMp4iDmeWWgGxIKBFSZNOJf7mH+s4XrdFv2jXDyzuNCgfPZtMn
	yJJVVwfQZjilfg4gUYUVJSHGLwUMttUCFvd9zohL/f/kg7LhcdNZ3NaQW6PhPeCeeqTqMFx8zMHFY
	2iUxIQe20+YbjRUfD0Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAb6-00052g-EA; Thu, 30 Apr 2020 14:55:32 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAV0-00046A-Jw
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:35 +0000
Received: by mail-wr1-f68.google.com with SMTP id d17so7242116wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uwyqQHz73ZYcFBTJINbq68P7BuVAdAQq+GrVMVCVjaE=;
 b=GNfjrqk4/RTCKgWo4TTku2mrbOncSlhi/lnWzFtz29htYr6TdDf5Adn+ChvUV/VPU6
 9oIClsLhkjDDhJn/cbXmpfS0bmpHHFaLM4l3hdbST8Hy/wPL1RenQ9CFCRDbvXSqhbXw
 EqfFAqIURGLtGZI+A3+JvxSMMWyq1ixM5h10rfDnTb97P6cpPm+/65dtAE9FSxAfCW2b
 AM2+3842bUEb2xpUENEyEyJc0/gZVud+xj/lBaGufcjWTOjHXt2HYEFZX++h6q/CGgFB
 pMuTq0bvxrhJw8ysO+tvSq78N5fN+ZA5oPEXfUmbc657zge+Y8rzjpA6byIqQEmjERfG
 24zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uwyqQHz73ZYcFBTJINbq68P7BuVAdAQq+GrVMVCVjaE=;
 b=TP0qDXeHbEZzXY4xeX5pG3wPUZTpdUSlfoScGkfXqFGY5wtH+vwiifwjw75RHu+q6r
 m+vdk1FbA+ET9OcqJmPC668XfFrmI0IlLYnPlKoyYZrA7v0w6kzraV58pL971BDw9zB9
 Nu4iuTKEf5U1tS13RFHGnZ8BT2qist5kZCrn0TfunU2YcqH91hlIhWBJeA9FE9DtFoAE
 aSr/zF6pVn/5cbEbEmZ5RiOwTtXip6r9w8oXb2KeouV/o11o7moZpjw5vtVuZlnh1jW3
 sacw404kLt9BnnbeWSBI4vZkgyi8/f1fOdOcNEZ5qFR/oAZfGbiVlLV51bEv9Gl+PFNT
 K8VA==
X-Gm-Message-State: AGi0Pub9EUEJQlEoFO3PrF33fdv2fM/yZz73XvzDcusGI5FhHmUWdwN9
 3R6LN76K7iYZW48SSGkMvOMsDQ==
X-Google-Smtp-Source: APiQypINOLmmEp5BKRcrAgzWh8ev/DarJhnfCQfmggg4/Ln8iqZTNXoyt8VV8o7FOUFwTcOCcYQqvg==
X-Received: by 2002:a5d:664f:: with SMTP id f15mr4382204wrw.72.1588258151295; 
 Thu, 30 Apr 2020 07:49:11 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id g6sm4354983wrw.34.2020.04.30.07.49.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:49:10 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 14/15] arm64: kvm: Remove __hyp_text macro,
 use build rules instead
Date: Thu, 30 Apr 2020 15:48:30 +0100
Message-Id: <20200430144831.59194-15-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074915_009140_96EDCB51 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

With nVHE code now fully separated from the rest of the kernel, the effects of
the __hyp_text macro (which had to be applied on all nVHE code) can be
achieved with build rules instead. The macro used to:
  (a) move code to .hyp.text ELF section, now done by renaming .text using
      `objcopy`, and
  (b) `notrace` would negate effects of CC_FLAGS_FTRACE, now those flags are
      erased from KBUILD_CFLAGS (same way as in EFI stub).

Note that by removing __hyp_text from code shared with VHE, all VHE code is now
compiled into .text and without `notrace`.

Use of '.pushsection .hyp.text' removed from assembly files as this is now also
covered by the build rules.

For MAINTAINERS: if needed to re-run, uses of macro were removed with the
following command. Formatting was fixed up manually.

  find arch/arm64/kvm/hyp -type f -name '*.c' -o -name '*.h' \
       -exec sed -i 's/ __hyp_text//g' {} +

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_emulate.h     |   2 +-
 arch/arm64/include/asm/kvm_hyp.h         |   4 +-
 arch/arm64/kvm/hyp/aarch32.c             |   6 +-
 arch/arm64/kvm/hyp/debug-sr.h            |  18 ++--
 arch/arm64/kvm/hyp/entry.S               |   1 -
 arch/arm64/kvm/hyp/fpsimd.S              |   1 -
 arch/arm64/kvm/hyp/hyp-entry.S           |   3 -
 arch/arm64/kvm/hyp/nvhe/Makefile         |   7 +-
 arch/arm64/kvm/hyp/nvhe/debug-sr.c       |  10 +-
 arch/arm64/kvm/hyp/nvhe/host_hypercall.c |   2 +-
 arch/arm64/kvm/hyp/nvhe/switch.c         |  18 ++--
 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c      |  10 +-
 arch/arm64/kvm/hyp/nvhe/timer-sr.c       |   4 +-
 arch/arm64/kvm/hyp/nvhe/tlb.c            |  14 ++-
 arch/arm64/kvm/hyp/switch.h              |  35 +++---
 arch/arm64/kvm/hyp/sysreg-sr.h           |  27 ++---
 arch/arm64/kvm/hyp/timer-sr.c            |   2 +-
 arch/arm64/kvm/hyp/tlb.c                 |   6 +-
 arch/arm64/kvm/hyp/tlb.h                 |  15 ++-
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |   4 +-
 arch/arm64/kvm/hyp/vgic-v3-sr.c          | 130 ++++++++++-------------
 21 files changed, 142 insertions(+), 177 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index a30b4eec7cb4..1666ecbfaac7 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -520,7 +520,7 @@ static __always_inline void kvm_skip_instr(struct kvm_vcpu *vcpu, bool is_wide_i
  * Skip an instruction which has been emulated at hyp while most guest sysregs
  * are live.
  */
-static __always_inline void __hyp_text __kvm_skip_instr(struct kvm_vcpu *vcpu)
+static __always_inline void __kvm_skip_instr(struct kvm_vcpu *vcpu)
 {
 	*vcpu_pc(vcpu) = read_sysreg_el2(SYS_ELR);
 	vcpu->arch.ctxt.gp_regs.regs.pstate = read_sysreg_el2(SYS_SPSR);
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 3320a22a5fb1..ab0bc4fd5f47 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,8 +13,6 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
-
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
 		u64 reg;						\
@@ -103,7 +101,7 @@ void __noreturn __hyp_do_panic(unsigned long, ...);
  * Must be called from hyp code running at EL2 with an updated VTTBR
  * and interrupts disabled.
  */
-static __always_inline void __hyp_text __load_guest_stage2(struct kvm *kvm)
+static __always_inline void __load_guest_stage2(struct kvm *kvm)
 {
 	write_sysreg(kvm->arch.vtcr, vtcr_el2);
 	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
diff --git a/arch/arm64/kvm/hyp/aarch32.c b/arch/arm64/kvm/hyp/aarch32.c
index d31f267961e7..44fecab99bbe 100644
--- a/arch/arm64/kvm/hyp/aarch32.c
+++ b/arch/arm64/kvm/hyp/aarch32.c
@@ -44,7 +44,7 @@ static const unsigned short cc_map[16] = {
 /*
  * Check if a trapped instruction should have been executed or not.
  */
-bool __hyp_text kvm_condition_valid32(const struct kvm_vcpu *vcpu)
+bool kvm_condition_valid32(const struct kvm_vcpu *vcpu)
 {
 	unsigned long cpsr;
 	u32 cpsr_cond;
@@ -93,7 +93,7 @@ bool __hyp_text kvm_condition_valid32(const struct kvm_vcpu *vcpu)
  *
  * IT[7:0] -> CPSR[26:25],CPSR[15:10]
  */
-static void __hyp_text kvm_adjust_itstate(struct kvm_vcpu *vcpu)
+static void kvm_adjust_itstate(struct kvm_vcpu *vcpu)
 {
 	unsigned long itbits, cond;
 	unsigned long cpsr = *vcpu_cpsr(vcpu);
@@ -123,7 +123,7 @@ static void __hyp_text kvm_adjust_itstate(struct kvm_vcpu *vcpu)
  * kvm_skip_instr - skip a trapped instruction and proceed to the next
  * @vcpu: The vcpu pointer
  */
-void __hyp_text kvm_skip_instr32(struct kvm_vcpu *vcpu, bool is_wide_instr)
+void kvm_skip_instr32(struct kvm_vcpu *vcpu, bool is_wide_instr)
 {
 	bool is_thumb;
 
diff --git a/arch/arm64/kvm/hyp/debug-sr.h b/arch/arm64/kvm/hyp/debug-sr.h
index 1e849f31cb74..be2651bffc1a 100644
--- a/arch/arm64/kvm/hyp/debug-sr.h
+++ b/arch/arm64/kvm/hyp/debug-sr.h
@@ -85,9 +85,9 @@
 	default:	write_debug(ptr[0], reg, 0);			\
 	}
 
-static inline void __hyp_text
-__debug_save_state(struct kvm_vcpu *vcpu, struct kvm_guest_debug_arch *dbg,
-		   struct kvm_cpu_context *ctxt)
+static inline void __debug_save_state(struct kvm_vcpu *vcpu,
+				      struct kvm_guest_debug_arch *dbg,
+				      struct kvm_cpu_context *ctxt)
 {
 	u64 aa64dfr0;
 	int brps, wrps;
@@ -104,9 +104,9 @@ __debug_save_state(struct kvm_vcpu *vcpu, struct kvm_guest_debug_arch *dbg,
 	ctxt->sys_regs[MDCCINT_EL1] = read_sysreg(mdccint_el1);
 }
 
-static inline void __hyp_text
-__debug_restore_state(struct kvm_vcpu *vcpu, struct kvm_guest_debug_arch *dbg,
-		      struct kvm_cpu_context *ctxt)
+static inline void __debug_restore_state(struct kvm_vcpu *vcpu,
+					 struct kvm_guest_debug_arch *dbg,
+					 struct kvm_cpu_context *ctxt)
 {
 	u64 aa64dfr0;
 	int brps, wrps;
@@ -124,8 +124,7 @@ __debug_restore_state(struct kvm_vcpu *vcpu, struct kvm_guest_debug_arch *dbg,
 	write_sysreg(ctxt->sys_regs[MDCCINT_EL1], mdccint_el1);
 }
 
-static inline void __hyp_text
-__debug_switch_to_guest_common(struct kvm_vcpu *vcpu)
+static inline void __debug_switch_to_guest_common(struct kvm_vcpu *vcpu)
 {
 	struct kvm_cpu_context *host_ctxt;
 	struct kvm_cpu_context *guest_ctxt;
@@ -144,8 +143,7 @@ __debug_switch_to_guest_common(struct kvm_vcpu *vcpu)
 	__debug_restore_state(vcpu, guest_dbg, guest_ctxt);
 }
 
-static inline void __hyp_text
-__debug_switch_to_host_common(struct kvm_vcpu *vcpu)
+static inline void __debug_switch_to_host_common(struct kvm_vcpu *vcpu)
 {
 	struct kvm_cpu_context *host_ctxt;
 	struct kvm_cpu_context *guest_ctxt;
diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index d22d0534dd60..01b946af75b9 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -20,7 +20,6 @@
 #define CPU_XREG_OFFSET(x)	CPU_GP_REG_OFFSET(CPU_USER_PT_REGS + 8*x)
 
 	.text
-	.pushsection	.hyp.text, "ax"
 
 /*
  * We treat x18 as callee-saved as the host may use it as a platform
diff --git a/arch/arm64/kvm/hyp/fpsimd.S b/arch/arm64/kvm/hyp/fpsimd.S
index 5b8ff517ff10..01f114aa47b0 100644
--- a/arch/arm64/kvm/hyp/fpsimd.S
+++ b/arch/arm64/kvm/hyp/fpsimd.S
@@ -9,7 +9,6 @@
 #include <asm/fpsimdmacros.h>
 
 	.text
-	.pushsection	.hyp.text, "ax"
 
 SYM_FUNC_START(__fpsimd_save_state)
 	fpsimd_save	x0, 1
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 04ea0b83b728..e535db6e19e9 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -17,7 +17,6 @@
 #include <asm/mmu.h>
 
 	.text
-	.pushsection	.hyp.text, "ax"
 
 .macro do_el2_call
 	/*
@@ -363,8 +362,6 @@ SYM_CODE_START(__bp_harden_hyp_vecs)
 	.org 1b
 SYM_CODE_END(__bp_harden_hyp_vecs)
 
-	.popsection
-
 #ifndef __HYPERVISOR__
 	/*
 	 * This is not executed directly and is instead copied into the vectors
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 41018d25118c..68c0d844369f 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -22,7 +22,12 @@ $(obj)/%.hyp.o: $(obj)/%.hyp.tmp.o FORCE
 	$(call if_changed,hypcopy)
 
 quiet_cmd_hypcopy = HYPCOPY $@
-      cmd_hypcopy = $(OBJCOPY) --prefix-symbols=__hyp_text_ $< $@
+      cmd_hypcopy = $(OBJCOPY)	--prefix-symbols=__hyp_text_		\
+				--rename-section=.text=.hyp.text	\
+				$< $@
+
+# Remove ftrace CFLAGS, this is equivalent to the 'notrace' annotation.
+KBUILD_CFLAGS := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
diff --git a/arch/arm64/kvm/hyp/nvhe/debug-sr.c b/arch/arm64/kvm/hyp/nvhe/debug-sr.c
index b3752cfdcf3d..bb5c529da394 100644
--- a/arch/arm64/kvm/hyp/nvhe/debug-sr.c
+++ b/arch/arm64/kvm/hyp/nvhe/debug-sr.c
@@ -14,7 +14,7 @@
 
 #include "../debug-sr.h"
 
-static void __hyp_text __debug_save_spe(u64 *pmscr_el1)
+static void __debug_save_spe(u64 *pmscr_el1)
 {
 	u64 reg;
 
@@ -46,7 +46,7 @@ static void __hyp_text __debug_save_spe(u64 *pmscr_el1)
 	dsb(nsh);
 }
 
-static void __hyp_text __debug_restore_spe(u64 pmscr_el1)
+static void __debug_restore_spe(u64 pmscr_el1)
 {
 	if (!pmscr_el1)
 		return;
@@ -58,20 +58,20 @@ static void __hyp_text __debug_restore_spe(u64 pmscr_el1)
 	write_sysreg_s(pmscr_el1, SYS_PMSCR_EL1);
 }
 
-void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
+void __debug_switch_to_guest(struct kvm_vcpu *vcpu)
 {
 	/* Disable and flush SPE data generation */
 	__debug_save_spe(&vcpu->arch.host_debug_state.pmscr_el1);
 	__debug_switch_to_guest_common(vcpu);
 }
 
-void __hyp_text __debug_switch_to_host(struct kvm_vcpu *vcpu)
+void __debug_switch_to_host(struct kvm_vcpu *vcpu)
 {
 	__debug_restore_spe(vcpu->arch.host_debug_state.pmscr_el1);
 	__debug_switch_to_host_common(vcpu);
 }
 
-u32 __hyp_text __kvm_get_mdcr_el2(void)
+u32 __kvm_get_mdcr_el2(void)
 {
 	return read_sysreg(mdcr_el2);
 }
diff --git a/arch/arm64/kvm/hyp/nvhe/host_hypercall.c b/arch/arm64/kvm/hyp/nvhe/host_hypercall.c
index 6b31310f36a8..43926ca79e6d 100644
--- a/arch/arm64/kvm/hyp/nvhe/host_hypercall.c
+++ b/arch/arm64/kvm/hyp/nvhe/host_hypercall.c
@@ -7,7 +7,7 @@
 
 typedef long (*kvm_hcall_fn_t)(void);
 
-static long __hyp_text kvm_hc_ni(void)
+static long kvm_hc_ni(void)
 {
        return -ENOSYS;
 }
diff --git a/arch/arm64/kvm/hyp/nvhe/switch.c b/arch/arm64/kvm/hyp/nvhe/switch.c
index 4294beed3dc1..ffea4efe8d92 100644
--- a/arch/arm64/kvm/hyp/nvhe/switch.c
+++ b/arch/arm64/kvm/hyp/nvhe/switch.c
@@ -26,7 +26,7 @@
 
 #include "../switch.h"
 
-static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
+static void __activate_traps(struct kvm_vcpu *vcpu)
 {
 	u64 val;
 
@@ -57,7 +57,7 @@ static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
 	}
 }
 
-static void __hyp_text __deactivate_traps(struct kvm_vcpu *vcpu)
+static void __deactivate_traps(struct kvm_vcpu *vcpu)
 {
 	u64 mdcr_el2;
 
@@ -92,13 +92,13 @@ static void __hyp_text __deactivate_traps(struct kvm_vcpu *vcpu)
 	write_sysreg(CPTR_EL2_DEFAULT, cptr_el2);
 }
 
-static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
+static void __deactivate_vm(struct kvm_vcpu *vcpu)
 {
 	write_sysreg(0, vttbr_el2);
 }
 
 /* Save VGICv3 state on non-VHE systems */
-static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
+static void __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
 		__vgic_v3_save_state(vcpu);
@@ -107,7 +107,7 @@ static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
 }
 
 /* Restore VGICv3 state on non_VEH systems */
-static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
+static void __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
 {
 	if (static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif)) {
 		__vgic_v3_activate_traps(vcpu);
@@ -118,7 +118,7 @@ static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
 /**
  * Disable host events, enable guest events
  */
-static bool __hyp_text __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
+static bool __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
 {
 	struct kvm_host_data *host;
 	struct kvm_pmu_events *pmu;
@@ -138,7 +138,7 @@ static bool __hyp_text __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
 /**
  * Disable guest events, enable host events
  */
-static void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
+static void __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
 {
 	struct kvm_host_data *host;
 	struct kvm_pmu_events *pmu;
@@ -154,7 +154,7 @@ static void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
 }
 
 /* Switch to the guest for legacy non-VHE systems */
-int __hyp_text __kvm_vcpu_run(struct kvm_vcpu *vcpu)
+int __kvm_vcpu_run(struct kvm_vcpu *vcpu)
 {
 	struct kvm_cpu_context *host_ctxt;
 	struct kvm_cpu_context *guest_ctxt;
@@ -241,7 +241,7 @@ int __hyp_text __kvm_vcpu_run(struct kvm_vcpu *vcpu)
 	return exit_code;
 }
 
-void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context *host_ctxt)
+void __noreturn hyp_panic(struct kvm_cpu_context *host_ctxt)
 {
 	u64 spsr = read_sysreg_el2(SYS_SPSR);
 	u64 elr = read_sysreg_el2(SYS_ELR);
diff --git a/arch/arm64/kvm/hyp/nvhe/sysreg-sr.c b/arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
index 55ab924d841a..b1da891bf307 100644
--- a/arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
@@ -18,7 +18,7 @@
  * Non-VHE: Both host and guest must save everything.
  */
 
-void __hyp_text __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt)
+void __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt)
 {
 	__sysreg_save_el1_state(ctxt);
 	__sysreg_save_common_state(ctxt);
@@ -26,7 +26,7 @@ void __hyp_text __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt)
 	__sysreg_save_el2_return_state(ctxt);
 }
 
-void __hyp_text __sysreg_restore_state_nvhe(struct kvm_cpu_context *ctxt)
+void __sysreg_restore_state_nvhe(struct kvm_cpu_context *ctxt)
 {
 	__sysreg_restore_el1_state(ctxt);
 	__sysreg_restore_common_state(ctxt);
@@ -34,17 +34,17 @@ void __hyp_text __sysreg_restore_state_nvhe(struct kvm_cpu_context *ctxt)
 	__sysreg_restore_el2_return_state(ctxt);
 }
 
-void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
+void __sysreg32_save_state(struct kvm_vcpu *vcpu)
 {
 	___sysreg32_save_state(vcpu);
 }
 
-void __hyp_text __sysreg32_restore_state(struct kvm_vcpu *vcpu)
+void __sysreg32_restore_state(struct kvm_vcpu *vcpu)
 {
 	___sysreg32_restore_state(vcpu);
 }
 
-void __hyp_text __kvm_enable_ssbs(void)
+void __kvm_enable_ssbs(void)
 {
 	u64 tmp;
 
diff --git a/arch/arm64/kvm/hyp/nvhe/timer-sr.c b/arch/arm64/kvm/hyp/nvhe/timer-sr.c
index f0e694743883..8b80a4c4c4c6 100644
--- a/arch/arm64/kvm/hyp/nvhe/timer-sr.c
+++ b/arch/arm64/kvm/hyp/nvhe/timer-sr.c
@@ -14,7 +14,7 @@
  * Should only be called on non-VHE systems.
  * VHE systems use EL2 timers and configure EL1 timers in kvm_timer_init_vhe().
  */
-void __hyp_text __timer_disable_traps(struct kvm_vcpu *vcpu)
+void __timer_disable_traps(struct kvm_vcpu *vcpu)
 {
 	u64 val;
 
@@ -28,7 +28,7 @@ void __hyp_text __timer_disable_traps(struct kvm_vcpu *vcpu)
  * Should only be called on non-VHE systems.
  * VHE systems use EL2 timers and configure EL1 timers in kvm_timer_init_vhe().
  */
-void __hyp_text __timer_enable_traps(struct kvm_vcpu *vcpu)
+void __timer_enable_traps(struct kvm_vcpu *vcpu)
 {
 	u64 val;
 
diff --git a/arch/arm64/kvm/hyp/nvhe/tlb.c b/arch/arm64/kvm/hyp/nvhe/tlb.c
index 1b8f4000f98c..151fc9cc2553 100644
--- a/arch/arm64/kvm/hyp/nvhe/tlb.c
+++ b/arch/arm64/kvm/hyp/nvhe/tlb.c
@@ -12,8 +12,7 @@
 
 #include "../tlb.h"
 
-static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
-					     struct tlb_inv_context *cxt)
+static void __tlb_switch_to_guest(struct kvm *kvm, struct tlb_inv_context *cxt)
 {
 	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		u64 val;
@@ -35,8 +34,7 @@ static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
 	isb();
 }
 
-static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
-					    struct tlb_inv_context *cxt)
+static void __tlb_switch_to_host(struct kvm *kvm, struct tlb_inv_context *cxt)
 {
 	write_sysreg(0, vttbr_el2);
 
@@ -48,22 +46,22 @@ static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
 	}
 }
 
-void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
+void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
 {
 	__tlb_flush_vmid_ipa(kvm, ipa);
 }
 
-void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
+void __kvm_tlb_flush_vmid(struct kvm *kvm)
 {
 	__tlb_flush_vmid(kvm);
 }
 
-void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
+void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 {
 	__tlb_flush_local_vmid(vcpu);
 }
 
-void __hyp_text __kvm_flush_vm_context(void)
+void __kvm_flush_vm_context(void)
 {
 	__tlb_flush_vm_context();
 }
diff --git a/arch/arm64/kvm/hyp/switch.h b/arch/arm64/kvm/hyp/switch.h
index 00ecb0111e79..12fb838324bc 100644
--- a/arch/arm64/kvm/hyp/switch.h
+++ b/arch/arm64/kvm/hyp/switch.h
@@ -27,7 +27,7 @@
 static const char __hyp_panic_string[] = "HYP panic:\nPS:%08llx PC:%016llx ESR:%08llx\nFAR:%016llx HPFAR:%016llx PAR:%016llx\nVCPU:%p\n";
 
 /* Check whether the FP regs were dirtied while in the host-side run loop: */
-static inline bool __hyp_text update_fp_enabled(struct kvm_vcpu *vcpu)
+static inline bool update_fp_enabled(struct kvm_vcpu *vcpu)
 {
 	/*
 	 * When the system doesn't support FP/SIMD, we cannot rely on
@@ -45,7 +45,7 @@ static inline bool __hyp_text update_fp_enabled(struct kvm_vcpu *vcpu)
 }
 
 /* Save the 32-bit only FPSIMD system register state */
-static inline void __hyp_text __fpsimd_save_fpexc32(struct kvm_vcpu *vcpu)
+static inline void __fpsimd_save_fpexc32(struct kvm_vcpu *vcpu)
 {
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
@@ -53,7 +53,7 @@ static inline void __hyp_text __fpsimd_save_fpexc32(struct kvm_vcpu *vcpu)
 	vcpu->arch.ctxt.sys_regs[FPEXC32_EL2] = read_sysreg(fpexc32_el2);
 }
 
-static inline void __hyp_text __activate_traps_fpsimd32(struct kvm_vcpu *vcpu)
+static inline void __activate_traps_fpsimd32(struct kvm_vcpu *vcpu)
 {
 	/*
 	 * We are about to set CPTR_EL2.TFP to trap all floating point
@@ -70,7 +70,7 @@ static inline void __hyp_text __activate_traps_fpsimd32(struct kvm_vcpu *vcpu)
 	}
 }
 
-static inline void __hyp_text __activate_traps_common(struct kvm_vcpu *vcpu)
+static inline void __activate_traps_common(struct kvm_vcpu *vcpu)
 {
 	/* Trap on AArch32 cp15 c15 (impdef sysregs) accesses (EL1 or EL0) */
 	write_sysreg(1 << 15, hstr_el2);
@@ -86,13 +86,13 @@ static inline void __hyp_text __activate_traps_common(struct kvm_vcpu *vcpu)
 	write_sysreg(vcpu->arch.mdcr_el2, mdcr_el2);
 }
 
-static inline void __hyp_text __deactivate_traps_common(void)
+static inline void __deactivate_traps_common(void)
 {
 	write_sysreg(0, hstr_el2);
 	write_sysreg(0, pmuserenr_el0);
 }
 
-static inline void __hyp_text ___activate_traps(struct kvm_vcpu *vcpu)
+static inline void ___activate_traps(struct kvm_vcpu *vcpu)
 {
 	u64 hcr = vcpu->arch.hcr_el2;
 
@@ -105,7 +105,7 @@ static inline void __hyp_text ___activate_traps(struct kvm_vcpu *vcpu)
 		write_sysreg_s(vcpu->arch.vsesr_el2, SYS_VSESR_EL2);
 }
 
-static inline void __hyp_text ___deactivate_traps(struct kvm_vcpu *vcpu)
+static inline void ___deactivate_traps(struct kvm_vcpu *vcpu)
 {
 	/*
 	 * If we pended a virtual abort, preserve it until it gets
@@ -119,12 +119,12 @@ static inline void __hyp_text ___deactivate_traps(struct kvm_vcpu *vcpu)
 	}
 }
 
-static inline void __hyp_text __activate_vm(struct kvm *kvm)
+static inline void __activate_vm(struct kvm *kvm)
 {
 	__load_guest_stage2(kvm);
 }
 
-static inline bool __hyp_text __translate_far_to_hpfar(u64 far, u64 *hpfar)
+static inline bool __translate_far_to_hpfar(u64 far, u64 *hpfar)
 {
 	u64 par, tmp;
 
@@ -153,7 +153,7 @@ static inline bool __hyp_text __translate_far_to_hpfar(u64 far, u64 *hpfar)
 	return true;
 }
 
-static inline bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
+static inline bool __populate_fault_info(struct kvm_vcpu *vcpu)
 {
 	u8 ec;
 	u64 esr;
@@ -193,7 +193,7 @@ static inline bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
 }
 
 /* Check for an FPSIMD/SVE trap and handle as appropriate */
-static inline bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
+static inline bool __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
 {
 	bool vhe, sve_guest, sve_host;
 	u8 hsr_ec;
@@ -275,7 +275,7 @@ static inline bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
 	return true;
 }
 
-static inline bool __hyp_text handle_tx2_tvm(struct kvm_vcpu *vcpu)
+static inline bool handle_tx2_tvm(struct kvm_vcpu *vcpu)
 {
 	u32 sysreg = esr_sys64_to_sysreg(kvm_vcpu_get_hsr(vcpu));
 	int rt = kvm_vcpu_sys_get_rt(vcpu);
@@ -335,8 +335,7 @@ static inline bool __hyp_text handle_tx2_tvm(struct kvm_vcpu *vcpu)
  * the guest, false when we should restore the host state and return to the
  * main run loop.
  */
-static inline bool __hyp_text
-fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
+static inline bool fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
 {
 	if (ARM_EXCEPTION_CODE(*exit_code) != ARM_EXCEPTION_IRQ)
 		vcpu->arch.fault.esr_el2 = read_sysreg_el2(SYS_ESR);
@@ -405,7 +404,7 @@ fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
 	return false;
 }
 
-static inline bool __hyp_text __needs_ssbd_off(struct kvm_vcpu *vcpu)
+static inline bool __needs_ssbd_off(struct kvm_vcpu *vcpu)
 {
 	if (!cpus_have_final_cap(ARM64_SSBD))
 		return false;
@@ -413,8 +412,7 @@ static inline bool __hyp_text __needs_ssbd_off(struct kvm_vcpu *vcpu)
 	return !(vcpu->arch.workaround_flags & VCPU_WORKAROUND_2_FLAG);
 }
 
-static inline void __hyp_text
-__set_guest_arch_workaround_state(struct kvm_vcpu *vcpu)
+static inline void __set_guest_arch_workaround_state(struct kvm_vcpu *vcpu)
 {
 #ifdef CONFIG_ARM64_SSBD
 	/*
@@ -427,8 +425,7 @@ __set_guest_arch_workaround_state(struct kvm_vcpu *vcpu)
 #endif
 }
 
-static inline void __hyp_text
-__set_host_arch_workaround_state(struct kvm_vcpu *vcpu)
+static inline void __set_host_arch_workaround_state(struct kvm_vcpu *vcpu)
 {
 #ifdef CONFIG_ARM64_SSBD
 	/*
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.h b/arch/arm64/kvm/hyp/sysreg-sr.h
index f667d3fb680f..d57e077bd03c 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.h
+++ b/arch/arm64/kvm/hyp/sysreg-sr.h
@@ -12,8 +12,7 @@
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_hyp.h>
 
-static inline void __hyp_text
-__sysreg_save_common_state(struct kvm_cpu_context *ctxt)
+static inline void __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
 
@@ -24,15 +23,13 @@ __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
 	ctxt->gp_regs.regs.sp		= read_sysreg(sp_el0);
 }
 
-static inline void __hyp_text
-__sysreg_save_user_state(struct kvm_cpu_context *ctxt)
+static inline void __sysreg_save_user_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->sys_regs[TPIDR_EL0]	= read_sysreg(tpidr_el0);
 	ctxt->sys_regs[TPIDRRO_EL0]	= read_sysreg(tpidrro_el0);
 }
 
-static inline void __hyp_text
-__sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
+static inline void __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
 	ctxt->sys_regs[SCTLR_EL1]	= read_sysreg_el1(SYS_SCTLR);
@@ -58,8 +55,7 @@ __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 	ctxt->gp_regs.spsr[KVM_SPSR_EL1]= read_sysreg_el1(SYS_SPSR);
 }
 
-static inline void __hyp_text
-__sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
+static inline void __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->gp_regs.regs.pc		= read_sysreg_el2(SYS_ELR);
 	ctxt->gp_regs.regs.pstate	= read_sysreg_el2(SYS_SPSR);
@@ -68,8 +64,7 @@ __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
 		ctxt->sys_regs[DISR_EL1] = read_sysreg_s(SYS_VDISR_EL2);
 }
 
-static inline void __hyp_text
-__sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
+static inline void __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
 {
 	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
 
@@ -80,15 +75,13 @@ __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->gp_regs.regs.sp,	  sp_el0);
 }
 
-static inline void __hyp_text
-__sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
+static inline void __sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
 {
 	write_sysreg(ctxt->sys_regs[TPIDR_EL0],		tpidr_el0);
 	write_sysreg(ctxt->sys_regs[TPIDRRO_EL0],	tpidrro_el0);
 }
 
-static inline void __hyp_text
-__sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
+static inline void __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 {
 	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
 	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
@@ -146,7 +139,7 @@ __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg_el1(ctxt->gp_regs.spsr[KVM_SPSR_EL1],SYS_SPSR);
 }
 
-static inline void __hyp_text
+static inline void
 __sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
 {
 	u64 pstate = ctxt->gp_regs.regs.pstate;
@@ -173,7 +166,7 @@ __sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
 		write_sysreg_s(ctxt->sys_regs[DISR_EL1], SYS_VDISR_EL2);
 }
 
-static inline void __hyp_text ___sysreg32_save_state(struct kvm_vcpu *vcpu)
+static inline void ___sysreg32_save_state(struct kvm_vcpu *vcpu)
 {
 	u64 *spsr, *sysreg;
 
@@ -195,7 +188,7 @@ static inline void __hyp_text ___sysreg32_save_state(struct kvm_vcpu *vcpu)
 		sysreg[DBGVCR32_EL2] = read_sysreg(dbgvcr32_el2);
 }
 
-static inline void __hyp_text ___sysreg32_restore_state(struct kvm_vcpu *vcpu)
+static inline void ___sysreg32_restore_state(struct kvm_vcpu *vcpu)
 {
 	u64 *spsr, *sysreg;
 
diff --git a/arch/arm64/kvm/hyp/timer-sr.c b/arch/arm64/kvm/hyp/timer-sr.c
index 46e303281a2c..ab4b2a214309 100644
--- a/arch/arm64/kvm/hyp/timer-sr.c
+++ b/arch/arm64/kvm/hyp/timer-sr.c
@@ -6,7 +6,7 @@
 
 #include <asm/kvm_hyp.h>
 
-void __hyp_text __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high)
+void __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high)
 {
 	u64 cntvoff = (u64)cntvoff_high << 32 | cntvoff_low;
 	write_sysreg(cntvoff, cntvoff_el2);
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index ab55b0c4a80c..d39fa06fdfe8 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -12,8 +12,7 @@
 
 #include "tlb.h"
 
-static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
-					     struct tlb_inv_context *cxt)
+static void __tlb_switch_to_guest(struct kvm *kvm, struct tlb_inv_context *cxt)
 {
 	u64 val;
 
@@ -56,8 +55,7 @@ static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
 	isb();
 }
 
-static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
-					    struct tlb_inv_context *cxt)
+static void __tlb_switch_to_host(struct kvm *kvm, struct tlb_inv_context *cxt)
 {
 	/*
 	 * We're done with the TLB operation, let's restore the host's
diff --git a/arch/arm64/kvm/hyp/tlb.h b/arch/arm64/kvm/hyp/tlb.h
index f62ed96cb896..c90f1c32cb29 100644
--- a/arch/arm64/kvm/hyp/tlb.h
+++ b/arch/arm64/kvm/hyp/tlb.h
@@ -16,13 +16,10 @@ struct tlb_inv_context {
 	u64		sctlr;
 };
 
-static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
-					     struct tlb_inv_context *cxt);
-static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
-					    struct tlb_inv_context *cxt);
+static void __tlb_switch_to_guest(struct kvm *kvm, struct tlb_inv_context *cxt);
+static void __tlb_switch_to_host(struct kvm *kvm, struct tlb_inv_context *cxt);
 
-static inline void __hyp_text
-__tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
+static inline void __tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
 {
 	struct tlb_inv_context cxt;
 
@@ -76,7 +73,7 @@ __tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
 	__tlb_switch_to_host(kvm, &cxt);
 }
 
-static inline void __hyp_text __tlb_flush_vmid(struct kvm *kvm)
+static inline void __tlb_flush_vmid(struct kvm *kvm)
 {
 	struct tlb_inv_context cxt;
 
@@ -93,7 +90,7 @@ static inline void __hyp_text __tlb_flush_vmid(struct kvm *kvm)
 	__tlb_switch_to_host(kvm, &cxt);
 }
 
-static inline void __hyp_text __tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
+static inline void __tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = kern_hyp_va(kern_hyp_va(vcpu)->kvm);
 	struct tlb_inv_context cxt;
@@ -108,7 +105,7 @@ static inline void __hyp_text __tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 	__tlb_switch_to_host(kvm, &cxt);
 }
 
-static inline void __hyp_text __tlb_flush_vm_context(void)
+static inline void __tlb_flush_vm_context(void)
 {
 	dsb(ishst);
 	__tlbi(alle1is);
diff --git a/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c b/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c
index 4f3a087e36d5..bd1bab551d48 100644
--- a/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c
+++ b/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c
@@ -13,7 +13,7 @@
 #include <asm/kvm_hyp.h>
 #include <asm/kvm_mmu.h>
 
-static bool __hyp_text __is_be(struct kvm_vcpu *vcpu)
+static bool __is_be(struct kvm_vcpu *vcpu)
 {
 	if (vcpu_mode_is_32bit(vcpu))
 		return !!(read_sysreg_el2(SYS_SPSR) & PSR_AA32_E_BIT);
@@ -32,7 +32,7 @@ static bool __hyp_text __is_be(struct kvm_vcpu *vcpu)
  *  0: Not a GICV access
  * -1: Illegal GICV access successfully performed
  */
-int __hyp_text __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu)
+int __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu)
 {
 	struct kvm *kvm = kern_hyp_va(vcpu->kvm);
 	struct vgic_dist *vgic = &kvm->arch.vgic;
diff --git a/arch/arm64/kvm/hyp/vgic-v3-sr.c b/arch/arm64/kvm/hyp/vgic-v3-sr.c
index 49fedf6710f9..d6628573b855 100644
--- a/arch/arm64/kvm/hyp/vgic-v3-sr.c
+++ b/arch/arm64/kvm/hyp/vgic-v3-sr.c
@@ -16,7 +16,7 @@
 #define vtr_to_nr_pre_bits(v)		((((u32)(v) >> 26) & 7) + 1)
 #define vtr_to_nr_apr_regs(v)		(1 << (vtr_to_nr_pre_bits(v) - 5))
 
-static u64 __hyp_text __gic_v3_get_lr(unsigned int lr)
+static u64 __gic_v3_get_lr(unsigned int lr)
 {
 	switch (lr & 0xf) {
 	case 0:
@@ -56,7 +56,7 @@ static u64 __hyp_text __gic_v3_get_lr(unsigned int lr)
 	unreachable();
 }
 
-static void __hyp_text __gic_v3_set_lr(u64 val, int lr)
+static void __gic_v3_set_lr(u64 val, int lr)
 {
 	switch (lr & 0xf) {
 	case 0:
@@ -110,7 +110,7 @@ static void __hyp_text __gic_v3_set_lr(u64 val, int lr)
 	}
 }
 
-static void __hyp_text __vgic_v3_write_ap0rn(u32 val, int n)
+static void __vgic_v3_write_ap0rn(u32 val, int n)
 {
 	switch (n) {
 	case 0:
@@ -128,7 +128,7 @@ static void __hyp_text __vgic_v3_write_ap0rn(u32 val, int n)
 	}
 }
 
-static void __hyp_text __vgic_v3_write_ap1rn(u32 val, int n)
+static void __vgic_v3_write_ap1rn(u32 val, int n)
 {
 	switch (n) {
 	case 0:
@@ -146,7 +146,7 @@ static void __hyp_text __vgic_v3_write_ap1rn(u32 val, int n)
 	}
 }
 
-static u32 __hyp_text __vgic_v3_read_ap0rn(int n)
+static u32 __vgic_v3_read_ap0rn(int n)
 {
 	u32 val;
 
@@ -170,7 +170,7 @@ static u32 __hyp_text __vgic_v3_read_ap0rn(int n)
 	return val;
 }
 
-static u32 __hyp_text __vgic_v3_read_ap1rn(int n)
+static u32 __vgic_v3_read_ap1rn(int n)
 {
 	u32 val;
 
@@ -194,7 +194,7 @@ static u32 __hyp_text __vgic_v3_read_ap1rn(int n)
 	return val;
 }
 
-void __hyp_text __vgic_v3_save_state(struct kvm_vcpu *vcpu)
+void __vgic_v3_save_state(struct kvm_vcpu *vcpu)
 {
 	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
 	u64 used_lrs = vcpu->arch.vgic_cpu.used_lrs;
@@ -230,7 +230,7 @@ void __hyp_text __vgic_v3_save_state(struct kvm_vcpu *vcpu)
 	}
 }
 
-void __hyp_text __vgic_v3_restore_state(struct kvm_vcpu *vcpu)
+void __vgic_v3_restore_state(struct kvm_vcpu *vcpu)
 {
 	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
 	u64 used_lrs = vcpu->arch.vgic_cpu.used_lrs;
@@ -257,7 +257,7 @@ void __hyp_text __vgic_v3_restore_state(struct kvm_vcpu *vcpu)
 	}
 }
 
-void __hyp_text __vgic_v3_activate_traps(struct kvm_vcpu *vcpu)
+void __vgic_v3_activate_traps(struct kvm_vcpu *vcpu)
 {
 	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
 
@@ -306,7 +306,7 @@ void __hyp_text __vgic_v3_activate_traps(struct kvm_vcpu *vcpu)
 		write_gicreg(cpu_if->vgic_hcr, ICH_HCR_EL2);
 }
 
-void __hyp_text __vgic_v3_deactivate_traps(struct kvm_vcpu *vcpu)
+void __vgic_v3_deactivate_traps(struct kvm_vcpu *vcpu)
 {
 	struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;
 	u64 val;
@@ -333,7 +333,7 @@ void __hyp_text __vgic_v3_deactivate_traps(struct kvm_vcpu *vcpu)
 		write_gicreg(0, ICH_HCR_EL2);
 }
 
-void __hyp_text __vgic_v3_save_aprs(struct kvm_vcpu *vcpu)
+void __vgic_v3_save_aprs(struct kvm_vcpu *vcpu)
 {
 	struct vgic_v3_cpu_if *cpu_if;
 	u64 val;
@@ -370,7 +370,7 @@ void __hyp_text __vgic_v3_save_aprs(struct kvm_vcpu *vcpu)
 	}
 }
 
-void __hyp_text __vgic_v3_restore_aprs(struct kvm_vcpu *vcpu)
+void __vgic_v3_restore_aprs(struct kvm_vcpu *vcpu)
 {
 	struct vgic_v3_cpu_if *cpu_if;
 	u64 val;
@@ -407,7 +407,7 @@ void __hyp_text __vgic_v3_restore_aprs(struct kvm_vcpu *vcpu)
 	}
 }
 
-void __hyp_text __vgic_v3_init_lrs(void)
+void __vgic_v3_init_lrs(void)
 {
 	int max_lr_idx = vtr_to_max_lr_idx(read_gicreg(ICH_VTR_EL2));
 	int i;
@@ -416,28 +416,28 @@ void __hyp_text __vgic_v3_init_lrs(void)
 		__gic_v3_set_lr(0, i);
 }
 
-u64 __hyp_text __vgic_v3_get_ich_vtr_el2(void)
+u64 __vgic_v3_get_ich_vtr_el2(void)
 {
 	return read_gicreg(ICH_VTR_EL2);
 }
 
-u64 __hyp_text __vgic_v3_read_vmcr(void)
+u64 __vgic_v3_read_vmcr(void)
 {
 	return read_gicreg(ICH_VMCR_EL2);
 }
 
-void __hyp_text __vgic_v3_write_vmcr(u32 vmcr)
+void __vgic_v3_write_vmcr(u32 vmcr)
 {
 	write_gicreg(vmcr, ICH_VMCR_EL2);
 }
 
-static int __hyp_text __vgic_v3_bpr_min(void)
+static int __vgic_v3_bpr_min(void)
 {
 	/* See Pseudocode for VPriorityGroup */
 	return 8 - vtr_to_nr_pre_bits(read_gicreg(ICH_VTR_EL2));
 }
 
-static int __hyp_text __vgic_v3_get_group(struct kvm_vcpu *vcpu)
+static int __vgic_v3_get_group(struct kvm_vcpu *vcpu)
 {
 	u32 esr = kvm_vcpu_get_hsr(vcpu);
 	u8 crm = (esr & ESR_ELx_SYS64_ISS_CRM_MASK) >> ESR_ELx_SYS64_ISS_CRM_SHIFT;
@@ -447,9 +447,8 @@ static int __hyp_text __vgic_v3_get_group(struct kvm_vcpu *vcpu)
 
 #define GICv3_IDLE_PRIORITY	0xff
 
-static int __hyp_text __vgic_v3_highest_priority_lr(struct kvm_vcpu *vcpu,
-						    u32 vmcr,
-						    u64 *lr_val)
+static int __vgic_v3_highest_priority_lr(struct kvm_vcpu *vcpu, u32 vmcr,
+					 u64 *lr_val)
 {
 	unsigned int used_lrs = vcpu->arch.vgic_cpu.used_lrs;
 	u8 priority = GICv3_IDLE_PRIORITY;
@@ -487,8 +486,8 @@ static int __hyp_text __vgic_v3_highest_priority_lr(struct kvm_vcpu *vcpu,
 	return lr;
 }
 
-static int __hyp_text __vgic_v3_find_active_lr(struct kvm_vcpu *vcpu,
-					       int intid, u64 *lr_val)
+static int __vgic_v3_find_active_lr(struct kvm_vcpu *vcpu, int intid,
+				    u64 *lr_val)
 {
 	unsigned int used_lrs = vcpu->arch.vgic_cpu.used_lrs;
 	int i;
@@ -507,7 +506,7 @@ static int __hyp_text __vgic_v3_find_active_lr(struct kvm_vcpu *vcpu,
 	return -1;
 }
 
-static int __hyp_text __vgic_v3_get_highest_active_priority(void)
+static int __vgic_v3_get_highest_active_priority(void)
 {
 	u8 nr_apr_regs = vtr_to_nr_apr_regs(read_gicreg(ICH_VTR_EL2));
 	u32 hap = 0;
@@ -539,12 +538,12 @@ static int __hyp_text __vgic_v3_get_highest_active_priority(void)
 	return GICv3_IDLE_PRIORITY;
 }
 
-static unsigned int __hyp_text __vgic_v3_get_bpr0(u32 vmcr)
+static unsigned int __vgic_v3_get_bpr0(u32 vmcr)
 {
 	return (vmcr & ICH_VMCR_BPR0_MASK) >> ICH_VMCR_BPR0_SHIFT;
 }
 
-static unsigned int __hyp_text __vgic_v3_get_bpr1(u32 vmcr)
+static unsigned int __vgic_v3_get_bpr1(u32 vmcr)
 {
 	unsigned int bpr;
 
@@ -563,7 +562,7 @@ static unsigned int __hyp_text __vgic_v3_get_bpr1(u32 vmcr)
  * Convert a priority to a preemption level, taking the relevant BPR
  * into account by zeroing the sub-priority bits.
  */
-static u8 __hyp_text __vgic_v3_pri_to_pre(u8 pri, u32 vmcr, int grp)
+static u8 __vgic_v3_pri_to_pre(u8 pri, u32 vmcr, int grp)
 {
 	unsigned int bpr;
 
@@ -581,7 +580,7 @@ static u8 __hyp_text __vgic_v3_pri_to_pre(u8 pri, u32 vmcr, int grp)
  * matter what the guest does with its BPR, we can always set/get the
  * same value of a priority.
  */
-static void __hyp_text __vgic_v3_set_active_priority(u8 pri, u32 vmcr, int grp)
+static void __vgic_v3_set_active_priority(u8 pri, u32 vmcr, int grp)
 {
 	u8 pre, ap;
 	u32 val;
@@ -600,7 +599,7 @@ static void __hyp_text __vgic_v3_set_active_priority(u8 pri, u32 vmcr, int grp)
 	}
 }
 
-static int __hyp_text __vgic_v3_clear_highest_active_priority(void)
+static int __vgic_v3_clear_highest_active_priority(void)
 {
 	u8 nr_apr_regs = vtr_to_nr_apr_regs(read_gicreg(ICH_VTR_EL2));
 	u32 hap = 0;
@@ -638,7 +637,7 @@ static int __hyp_text __vgic_v3_clear_highest_active_priority(void)
 	return GICv3_IDLE_PRIORITY;
 }
 
-static void __hyp_text __vgic_v3_read_iar(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_read_iar(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u64 lr_val;
 	u8 lr_prio, pmr;
@@ -674,7 +673,7 @@ static void __hyp_text __vgic_v3_read_iar(struct kvm_vcpu *vcpu, u32 vmcr, int r
 	vcpu_set_reg(vcpu, rt, ICC_IAR1_EL1_SPURIOUS);
 }
 
-static void __hyp_text __vgic_v3_clear_active_lr(int lr, u64 lr_val)
+static void __vgic_v3_clear_active_lr(int lr, u64 lr_val)
 {
 	lr_val &= ~ICH_LR_ACTIVE_BIT;
 	if (lr_val & ICH_LR_HW) {
@@ -687,7 +686,7 @@ static void __hyp_text __vgic_v3_clear_active_lr(int lr, u64 lr_val)
 	__gic_v3_set_lr(lr_val, lr);
 }
 
-static void __hyp_text __vgic_v3_bump_eoicount(void)
+static void __vgic_v3_bump_eoicount(void)
 {
 	u32 hcr;
 
@@ -696,8 +695,7 @@ static void __hyp_text __vgic_v3_bump_eoicount(void)
 	write_gicreg(hcr, ICH_HCR_EL2);
 }
 
-static void __hyp_text __vgic_v3_write_dir(struct kvm_vcpu *vcpu,
-					   u32 vmcr, int rt)
+static void __vgic_v3_write_dir(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u32 vid = vcpu_get_reg(vcpu, rt);
 	u64 lr_val;
@@ -720,7 +718,7 @@ static void __hyp_text __vgic_v3_write_dir(struct kvm_vcpu *vcpu,
 	__vgic_v3_clear_active_lr(lr, lr_val);
 }
 
-static void __hyp_text __vgic_v3_write_eoir(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_write_eoir(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u32 vid = vcpu_get_reg(vcpu, rt);
 	u64 lr_val;
@@ -757,17 +755,17 @@ static void __hyp_text __vgic_v3_write_eoir(struct kvm_vcpu *vcpu, u32 vmcr, int
 	__vgic_v3_clear_active_lr(lr, lr_val);
 }
 
-static void __hyp_text __vgic_v3_read_igrpen0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_read_igrpen0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	vcpu_set_reg(vcpu, rt, !!(vmcr & ICH_VMCR_ENG0_MASK));
 }
 
-static void __hyp_text __vgic_v3_read_igrpen1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_read_igrpen1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	vcpu_set_reg(vcpu, rt, !!(vmcr & ICH_VMCR_ENG1_MASK));
 }
 
-static void __hyp_text __vgic_v3_write_igrpen0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_write_igrpen0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u64 val = vcpu_get_reg(vcpu, rt);
 
@@ -779,7 +777,7 @@ static void __hyp_text __vgic_v3_write_igrpen0(struct kvm_vcpu *vcpu, u32 vmcr,
 	__vgic_v3_write_vmcr(vmcr);
 }
 
-static void __hyp_text __vgic_v3_write_igrpen1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_write_igrpen1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u64 val = vcpu_get_reg(vcpu, rt);
 
@@ -791,17 +789,17 @@ static void __hyp_text __vgic_v3_write_igrpen1(struct kvm_vcpu *vcpu, u32 vmcr,
 	__vgic_v3_write_vmcr(vmcr);
 }
 
-static void __hyp_text __vgic_v3_read_bpr0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_read_bpr0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	vcpu_set_reg(vcpu, rt, __vgic_v3_get_bpr0(vmcr));
 }
 
-static void __hyp_text __vgic_v3_read_bpr1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_read_bpr1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	vcpu_set_reg(vcpu, rt, __vgic_v3_get_bpr1(vmcr));
 }
 
-static void __hyp_text __vgic_v3_write_bpr0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_write_bpr0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u64 val = vcpu_get_reg(vcpu, rt);
 	u8 bpr_min = __vgic_v3_bpr_min() - 1;
@@ -818,7 +816,7 @@ static void __hyp_text __vgic_v3_write_bpr0(struct kvm_vcpu *vcpu, u32 vmcr, int
 	__vgic_v3_write_vmcr(vmcr);
 }
 
-static void __hyp_text __vgic_v3_write_bpr1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
+static void __vgic_v3_write_bpr1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u64 val = vcpu_get_reg(vcpu, rt);
 	u8 bpr_min = __vgic_v3_bpr_min();
@@ -838,7 +836,7 @@ static void __hyp_text __vgic_v3_write_bpr1(struct kvm_vcpu *vcpu, u32 vmcr, int
 	__vgic_v3_write_vmcr(vmcr);
 }
 
-static void __hyp_text __vgic_v3_read_apxrn(struct kvm_vcpu *vcpu, int rt, int n)
+static void __vgic_v3_read_apxrn(struct kvm_vcpu *vcpu, int rt, int n)
 {
 	u32 val;
 
@@ -850,7 +848,7 @@ static void __hyp_text __vgic_v3_read_apxrn(struct kvm_vcpu *vcpu, int rt, int n
 	vcpu_set_reg(vcpu, rt, val);
 }
 
-static void __hyp_text __vgic_v3_write_apxrn(struct kvm_vcpu *vcpu, int rt, int n)
+static void __vgic_v3_write_apxrn(struct kvm_vcpu *vcpu, int rt, int n)
 {
 	u32 val = vcpu_get_reg(vcpu, rt);
 
@@ -860,56 +858,49 @@ static void __hyp_text __vgic_v3_write_apxrn(struct kvm_vcpu *vcpu, int rt, int
 		__vgic_v3_write_ap1rn(val, n);
 }
 
-static void __hyp_text __vgic_v3_read_apxr0(struct kvm_vcpu *vcpu,
+static void __vgic_v3_read_apxr0(struct kvm_vcpu *vcpu,
 					    u32 vmcr, int rt)
 {
 	__vgic_v3_read_apxrn(vcpu, rt, 0);
 }
 
-static void __hyp_text __vgic_v3_read_apxr1(struct kvm_vcpu *vcpu,
+static void __vgic_v3_read_apxr1(struct kvm_vcpu *vcpu,
 					    u32 vmcr, int rt)
 {
 	__vgic_v3_read_apxrn(vcpu, rt, 1);
 }
 
-static void __hyp_text __vgic_v3_read_apxr2(struct kvm_vcpu *vcpu,
-					    u32 vmcr, int rt)
+static void __vgic_v3_read_apxr2(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	__vgic_v3_read_apxrn(vcpu, rt, 2);
 }
 
-static void __hyp_text __vgic_v3_read_apxr3(struct kvm_vcpu *vcpu,
-					    u32 vmcr, int rt)
+static void __vgic_v3_read_apxr3(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	__vgic_v3_read_apxrn(vcpu, rt, 3);
 }
 
-static void __hyp_text __vgic_v3_write_apxr0(struct kvm_vcpu *vcpu,
-					     u32 vmcr, int rt)
+static void __vgic_v3_write_apxr0(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	__vgic_v3_write_apxrn(vcpu, rt, 0);
 }
 
-static void __hyp_text __vgic_v3_write_apxr1(struct kvm_vcpu *vcpu,
-					     u32 vmcr, int rt)
+static void __vgic_v3_write_apxr1(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	__vgic_v3_write_apxrn(vcpu, rt, 1);
 }
 
-static void __hyp_text __vgic_v3_write_apxr2(struct kvm_vcpu *vcpu,
-					     u32 vmcr, int rt)
+static void __vgic_v3_write_apxr2(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	__vgic_v3_write_apxrn(vcpu, rt, 2);
 }
 
-static void __hyp_text __vgic_v3_write_apxr3(struct kvm_vcpu *vcpu,
-					     u32 vmcr, int rt)
+static void __vgic_v3_write_apxr3(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	__vgic_v3_write_apxrn(vcpu, rt, 3);
 }
 
-static void __hyp_text __vgic_v3_read_hppir(struct kvm_vcpu *vcpu,
-					    u32 vmcr, int rt)
+static void __vgic_v3_read_hppir(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u64 lr_val;
 	int lr, lr_grp, grp;
@@ -928,16 +919,14 @@ static void __hyp_text __vgic_v3_read_hppir(struct kvm_vcpu *vcpu,
 	vcpu_set_reg(vcpu, rt, lr_val & ICH_LR_VIRTUAL_ID_MASK);
 }
 
-static void __hyp_text __vgic_v3_read_pmr(struct kvm_vcpu *vcpu,
-					  u32 vmcr, int rt)
+static void __vgic_v3_read_pmr(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	vmcr &= ICH_VMCR_PMR_MASK;
 	vmcr >>= ICH_VMCR_PMR_SHIFT;
 	vcpu_set_reg(vcpu, rt, vmcr);
 }
 
-static void __hyp_text __vgic_v3_write_pmr(struct kvm_vcpu *vcpu,
-					   u32 vmcr, int rt)
+static void __vgic_v3_write_pmr(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u32 val = vcpu_get_reg(vcpu, rt);
 
@@ -949,15 +938,13 @@ static void __hyp_text __vgic_v3_write_pmr(struct kvm_vcpu *vcpu,
 	write_gicreg(vmcr, ICH_VMCR_EL2);
 }
 
-static void __hyp_text __vgic_v3_read_rpr(struct kvm_vcpu *vcpu,
-					  u32 vmcr, int rt)
+static void __vgic_v3_read_rpr(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u32 val = __vgic_v3_get_highest_active_priority();
 	vcpu_set_reg(vcpu, rt, val);
 }
 
-static void __hyp_text __vgic_v3_read_ctlr(struct kvm_vcpu *vcpu,
-					   u32 vmcr, int rt)
+static void __vgic_v3_read_ctlr(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u32 vtr, val;
 
@@ -978,8 +965,7 @@ static void __hyp_text __vgic_v3_read_ctlr(struct kvm_vcpu *vcpu,
 	vcpu_set_reg(vcpu, rt, val);
 }
 
-static void __hyp_text __vgic_v3_write_ctlr(struct kvm_vcpu *vcpu,
-					    u32 vmcr, int rt)
+static void __vgic_v3_write_ctlr(struct kvm_vcpu *vcpu, u32 vmcr, int rt)
 {
 	u32 val = vcpu_get_reg(vcpu, rt);
 
@@ -996,7 +982,7 @@ static void __hyp_text __vgic_v3_write_ctlr(struct kvm_vcpu *vcpu,
 	write_gicreg(vmcr, ICH_VMCR_EL2);
 }
 
-int __hyp_text __vgic_v3_perform_cpuif_access(struct kvm_vcpu *vcpu)
+int __vgic_v3_perform_cpuif_access(struct kvm_vcpu *vcpu)
 {
 	int rt;
 	u32 esr;
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
