Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DBD1FF1B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HPHDRbMzI+UsdtF3kPjaO6UGLWNDrlIJkmNWvAMYus=; b=lamwm/K982miko
	PBgQxyoVsB///4MXzESnWqQQl5c7WySJMhFXZ1Fjfd6Pn81hfPb3sXKP1HgVSGxEbP9YPFa+jhnhC
	Ji3qSbpJVTodjvxP/nTgNq4fxed/9ntYnntvKHsymPQUn/2dtG4Tvxg0TN547MYcT/U4VdtW33Wja
	GzL0Dur4OdgNNwHkOdtFcafWWnq5g7Ye0tHvq5LbK/YYrmKTJPWXmIS1zv8ABZZOH0JRQzwoNp+jx
	n2GvQ1U3euJzO0m4OYKXY99dOqN73maOium5sDZp3MOQVw2P/BM1f+rJeLlSGCceht1t/NBRK6hBF
	HvizclamXOgnIhGPrzyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltey-0006ho-Vo; Thu, 18 Jun 2020 12:28:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcM-0004bL-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id t194so5435822wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XcpRwaPArKDy0b6hHpLf47AlwwErC4+BE9dFfkHDgDI=;
 b=JpV5iOwfBr/VBwM27HRqXEOzrqdmnVYl9BSZOWjgVjFGzkl5X2+NyRLXytUGifWc03
 /RAj6gMZFBLmgySO+qG3NT4zGYgPWVE6K8rdwmL4G3ZikR5T46jz0e9mvcW6pKKW/bZi
 pbiXgacKbIrhDQgWMqQPLJ/NJbPxq/E4J9y5Aq9Q6HBYzI3D2d+cw22T71h/HsV2fLvH
 7l+SxdAxge6/ZjBsg4Sl56FHOFImlFo5y8RtaDQKbw2jqCwtikpR1V0ElPhrmnmQABhL
 puyttSlaYS/6uuPPz9VWL5FVzKk8GfkpXqEPrAhTYfVgQ4MfufWGanifO1CbqNKb/d95
 duWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XcpRwaPArKDy0b6hHpLf47AlwwErC4+BE9dFfkHDgDI=;
 b=akTTg6KBkAyLwiC3YzYqm2KVmJUPNl/IBmm0h8K0cYe5zS6aU0bqlYIiwUXXnfIs2N
 8F1iWLNsqDbdHlMNNtyuc37eYlIheRto3Q2clwGzR4IvKrlg/s2s1kMJMdFxUkAM6Kzo
 w3JGvzqO9TDjlJ5bPd75hq+aGH+KsM+6mAUiFow4cxN6f+K9ljLXPGDMlZcqaICkjkbL
 xzE77Q+sIDlNHQ3GvnGUeNiDI/2OBvxH4y+meyJq+AcFlBNLbVnTjyzY1CSURosVpHEC
 Dx3+Y41Ijxi7oNUl7Ll92Nq/UNK+vr7mfNDZp4tXBqTaeg2XDEa863W/ejhE1BuXVntH
 dxJA==
X-Gm-Message-State: AOAM531clR/yQhzOFXPMF3kD4yeTs17EcHFWb2ExRlVCSCIi9uASW342
 QkWe++a2A0J8fCA+uVhSB7U8Mg==
X-Google-Smtp-Source: ABdhPJzcv2pZsYAYYYEjlBP982+H2ZdVWYFB3qnk6XLnTWSQfW8HkJBNDaHZcA3ZIw2yjUv5TunEwQ==
X-Received: by 2002:a1c:7dd5:: with SMTP id y204mr3601055wmc.182.1592483164433; 
 Thu, 18 Jun 2020 05:26:04 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id d11sm3502535wrm.64.2020.06.18.05.26.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:26:03 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 09/15] arm64: kvm: Split hyp/debug-sr.c to VHE/nVHE
Date: Thu, 18 Jun 2020 13:25:31 +0100
Message-Id: <20200618122537.9625-10-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052606_670989_C792B9AD 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

debug-sr.c contains KVM's code for context-switching debug registers, with some
parts shared between VHE/nVHE. These common routines are moved to debug-sr.h,
VHE-specific code is left in debug-sr.c and nVHE-specific code is moved to
nvhe/debug-sr.c.

Functions are slightly refactored to move code hidden behind `has_vhe()` checks
to the corresponding .c files.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kernel/image-vars.h     |   3 -
 arch/arm64/kvm/hyp/debug-sr.c      | 210 +----------------------------
 arch/arm64/kvm/hyp/debug-sr.h      | 172 +++++++++++++++++++++++
 arch/arm64/kvm/hyp/nvhe/Makefile   |   2 +-
 arch/arm64/kvm/hyp/nvhe/debug-sr.c |  77 +++++++++++
 5 files changed, 256 insertions(+), 208 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/debug-sr.h
 create mode 100644 arch/arm64/kvm/hyp/nvhe/debug-sr.c

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 855f9718d6d9..8096e6f1f2bf 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,8 +61,6 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
-__kvm_nvhe___debug_switch_to_guest = __debug_switch_to_guest;
-__kvm_nvhe___debug_switch_to_host = __debug_switch_to_host;
 __kvm_nvhe___fpsimd_restore_state = __fpsimd_restore_state;
 __kvm_nvhe___fpsimd_save_state = __fpsimd_save_state;
 __kvm_nvhe___guest_enter = __guest_enter;
@@ -71,7 +69,6 @@ __kvm_nvhe___hyp_panic_string = __hyp_panic_string;
 __kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
 __kvm_nvhe___icache_flags = __icache_flags;
 __kvm_nvhe___kvm_enable_ssbs = __kvm_enable_ssbs;
-__kvm_nvhe___kvm_get_mdcr_el2 = __kvm_get_mdcr_el2;
 __kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
 __kvm_nvhe___sysreg32_restore_state = __sysreg32_restore_state;
 __kvm_nvhe___sysreg32_save_state = __sysreg32_save_state;
diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index e95af204fec7..28c0a54cda2a 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -4,221 +4,23 @@
  * Author: Marc Zyngier <marc.zyngier@arm.com>
  */
 
-#include <linux/compiler.h>
 #include <linux/kvm_host.h>
 
-#include <asm/debug-monitors.h>
-#include <asm/kvm_asm.h>
 #include <asm/kvm_hyp.h>
-#include <asm/kvm_mmu.h>
 
-#define read_debug(r,n)		read_sysreg(r##n##_el1)
-#define write_debug(v,r,n)	write_sysreg(v, r##n##_el1)
+#include "debug-sr.h"
 
-#define save_debug(ptr,reg,nr)						\
-	switch (nr) {							\
-	case 15:	ptr[15] = read_debug(reg, 15);			\
-			/* Fall through */				\
-	case 14:	ptr[14] = read_debug(reg, 14);			\
-			/* Fall through */				\
-	case 13:	ptr[13] = read_debug(reg, 13);			\
-			/* Fall through */				\
-	case 12:	ptr[12] = read_debug(reg, 12);			\
-			/* Fall through */				\
-	case 11:	ptr[11] = read_debug(reg, 11);			\
-			/* Fall through */				\
-	case 10:	ptr[10] = read_debug(reg, 10);			\
-			/* Fall through */				\
-	case 9:		ptr[9] = read_debug(reg, 9);			\
-			/* Fall through */				\
-	case 8:		ptr[8] = read_debug(reg, 8);			\
-			/* Fall through */				\
-	case 7:		ptr[7] = read_debug(reg, 7);			\
-			/* Fall through */				\
-	case 6:		ptr[6] = read_debug(reg, 6);			\
-			/* Fall through */				\
-	case 5:		ptr[5] = read_debug(reg, 5);			\
-			/* Fall through */				\
-	case 4:		ptr[4] = read_debug(reg, 4);			\
-			/* Fall through */				\
-	case 3:		ptr[3] = read_debug(reg, 3);			\
-			/* Fall through */				\
-	case 2:		ptr[2] = read_debug(reg, 2);			\
-			/* Fall through */				\
-	case 1:		ptr[1] = read_debug(reg, 1);			\
-			/* Fall through */				\
-	default:	ptr[0] = read_debug(reg, 0);			\
-	}
-
-#define restore_debug(ptr,reg,nr)					\
-	switch (nr) {							\
-	case 15:	write_debug(ptr[15], reg, 15);			\
-			/* Fall through */				\
-	case 14:	write_debug(ptr[14], reg, 14);			\
-			/* Fall through */				\
-	case 13:	write_debug(ptr[13], reg, 13);			\
-			/* Fall through */				\
-	case 12:	write_debug(ptr[12], reg, 12);			\
-			/* Fall through */				\
-	case 11:	write_debug(ptr[11], reg, 11);			\
-			/* Fall through */				\
-	case 10:	write_debug(ptr[10], reg, 10);			\
-			/* Fall through */				\
-	case 9:		write_debug(ptr[9], reg, 9);			\
-			/* Fall through */				\
-	case 8:		write_debug(ptr[8], reg, 8);			\
-			/* Fall through */				\
-	case 7:		write_debug(ptr[7], reg, 7);			\
-			/* Fall through */				\
-	case 6:		write_debug(ptr[6], reg, 6);			\
-			/* Fall through */				\
-	case 5:		write_debug(ptr[5], reg, 5);			\
-			/* Fall through */				\
-	case 4:		write_debug(ptr[4], reg, 4);			\
-			/* Fall through */				\
-	case 3:		write_debug(ptr[3], reg, 3);			\
-			/* Fall through */				\
-	case 2:		write_debug(ptr[2], reg, 2);			\
-			/* Fall through */				\
-	case 1:		write_debug(ptr[1], reg, 1);			\
-			/* Fall through */				\
-	default:	write_debug(ptr[0], reg, 0);			\
-	}
-
-static void __hyp_text __debug_save_spe_nvhe(u64 *pmscr_el1)
-{
-	u64 reg;
-
-	/* Clear pmscr in case of early return */
-	*pmscr_el1 = 0;
-
-	/* SPE present on this CPU? */
-	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
-						  ID_AA64DFR0_PMSVER_SHIFT))
-		return;
-
-	/* Yes; is it owned by EL3? */
-	reg = read_sysreg_s(SYS_PMBIDR_EL1);
-	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
-		return;
-
-	/* No; is the host actually using the thing? */
-	reg = read_sysreg_s(SYS_PMBLIMITR_EL1);
-	if (!(reg & BIT(SYS_PMBLIMITR_EL1_E_SHIFT)))
-		return;
-
-	/* Yes; save the control register and disable data generation */
-	*pmscr_el1 = read_sysreg_s(SYS_PMSCR_EL1);
-	write_sysreg_s(0, SYS_PMSCR_EL1);
-	isb();
-
-	/* Now drain all buffered data to memory */
-	psb_csync();
-	dsb(nsh);
-}
-
-static void __hyp_text __debug_restore_spe_nvhe(u64 pmscr_el1)
-{
-	if (!pmscr_el1)
-		return;
-
-	/* The host page table is installed, but not yet synchronised */
-	isb();
-
-	/* Re-enable data generation */
-	write_sysreg_s(pmscr_el1, SYS_PMSCR_EL1);
-}
-
-static void __hyp_text __debug_save_state(struct kvm_vcpu *vcpu,
-					  struct kvm_guest_debug_arch *dbg,
-					  struct kvm_cpu_context *ctxt)
-{
-	u64 aa64dfr0;
-	int brps, wrps;
-
-	aa64dfr0 = read_sysreg(id_aa64dfr0_el1);
-	brps = (aa64dfr0 >> 12) & 0xf;
-	wrps = (aa64dfr0 >> 20) & 0xf;
-
-	save_debug(dbg->dbg_bcr, dbgbcr, brps);
-	save_debug(dbg->dbg_bvr, dbgbvr, brps);
-	save_debug(dbg->dbg_wcr, dbgwcr, wrps);
-	save_debug(dbg->dbg_wvr, dbgwvr, wrps);
-
-	ctxt->sys_regs[MDCCINT_EL1] = read_sysreg(mdccint_el1);
-}
-
-static void __hyp_text __debug_restore_state(struct kvm_vcpu *vcpu,
-					     struct kvm_guest_debug_arch *dbg,
-					     struct kvm_cpu_context *ctxt)
+void __debug_switch_to_guest(struct kvm_vcpu *vcpu)
 {
-	u64 aa64dfr0;
-	int brps, wrps;
-
-	aa64dfr0 = read_sysreg(id_aa64dfr0_el1);
-
-	brps = (aa64dfr0 >> 12) & 0xf;
-	wrps = (aa64dfr0 >> 20) & 0xf;
-
-	restore_debug(dbg->dbg_bcr, dbgbcr, brps);
-	restore_debug(dbg->dbg_bvr, dbgbvr, brps);
-	restore_debug(dbg->dbg_wcr, dbgwcr, wrps);
-	restore_debug(dbg->dbg_wvr, dbgwvr, wrps);
-
-	write_sysreg(ctxt->sys_regs[MDCCINT_EL1], mdccint_el1);
+	__debug_switch_to_guest_common(vcpu);
 }
 
-void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
+void __debug_switch_to_host(struct kvm_vcpu *vcpu)
 {
-	struct kvm_cpu_context *host_ctxt;
-	struct kvm_cpu_context *guest_ctxt;
-	struct kvm_guest_debug_arch *host_dbg;
-	struct kvm_guest_debug_arch *guest_dbg;
-
-	/*
-	 * Non-VHE: Disable and flush SPE data generation
-	 * VHE: The vcpu can run, but it can't hide.
-	 */
-	if (!has_vhe())
-		__debug_save_spe_nvhe(&vcpu->arch.host_debug_state.pmscr_el1);
-
-	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
-		return;
-
-	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
-	guest_ctxt = &vcpu->arch.ctxt;
-	host_dbg = &vcpu->arch.host_debug_state.regs;
-	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
-
-	__debug_save_state(vcpu, host_dbg, host_ctxt);
-	__debug_restore_state(vcpu, guest_dbg, guest_ctxt);
-}
-
-void __hyp_text __debug_switch_to_host(struct kvm_vcpu *vcpu)
-{
-	struct kvm_cpu_context *host_ctxt;
-	struct kvm_cpu_context *guest_ctxt;
-	struct kvm_guest_debug_arch *host_dbg;
-	struct kvm_guest_debug_arch *guest_dbg;
-
-	if (!has_vhe())
-		__debug_restore_spe_nvhe(vcpu->arch.host_debug_state.pmscr_el1);
-
-	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
-		return;
-
-	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
-	guest_ctxt = &vcpu->arch.ctxt;
-	host_dbg = &vcpu->arch.host_debug_state.regs;
-	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
-
-	__debug_save_state(vcpu, guest_dbg, guest_ctxt);
-	__debug_restore_state(vcpu, host_dbg, host_ctxt);
-
-	vcpu->arch.flags &= ~KVM_ARM64_DEBUG_DIRTY;
+	__debug_switch_to_host_common(vcpu);
 }
 
-u32 __hyp_text __kvm_get_mdcr_el2(void)
+u32 __kvm_get_mdcr_el2(void)
 {
 	return read_sysreg(mdcr_el2);
 }
diff --git a/arch/arm64/kvm/hyp/debug-sr.h b/arch/arm64/kvm/hyp/debug-sr.h
new file mode 100644
index 000000000000..62b5deeb301d
--- /dev/null
+++ b/arch/arm64/kvm/hyp/debug-sr.h
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#ifndef __ARM64_KVM_HYP_DEBUG_SR_H__
+#define __ARM64_KVM_HYP_DEBUG_SR_H__
+
+#include <linux/compiler.h>
+#include <linux/kvm_host.h>
+
+#include <asm/debug-monitors.h>
+#include <asm/kvm_asm.h>
+#include <asm/kvm_hyp.h>
+#include <asm/kvm_mmu.h>
+
+#define read_debug(r,n)		read_sysreg(r##n##_el1)
+#define write_debug(v,r,n)	write_sysreg(v, r##n##_el1)
+
+#define save_debug(ptr,reg,nr)						\
+	switch (nr) {							\
+	case 15:	ptr[15] = read_debug(reg, 15);			\
+			/* Fall through */				\
+	case 14:	ptr[14] = read_debug(reg, 14);			\
+			/* Fall through */				\
+	case 13:	ptr[13] = read_debug(reg, 13);			\
+			/* Fall through */				\
+	case 12:	ptr[12] = read_debug(reg, 12);			\
+			/* Fall through */				\
+	case 11:	ptr[11] = read_debug(reg, 11);			\
+			/* Fall through */				\
+	case 10:	ptr[10] = read_debug(reg, 10);			\
+			/* Fall through */				\
+	case 9:		ptr[9] = read_debug(reg, 9);			\
+			/* Fall through */				\
+	case 8:		ptr[8] = read_debug(reg, 8);			\
+			/* Fall through */				\
+	case 7:		ptr[7] = read_debug(reg, 7);			\
+			/* Fall through */				\
+	case 6:		ptr[6] = read_debug(reg, 6);			\
+			/* Fall through */				\
+	case 5:		ptr[5] = read_debug(reg, 5);			\
+			/* Fall through */				\
+	case 4:		ptr[4] = read_debug(reg, 4);			\
+			/* Fall through */				\
+	case 3:		ptr[3] = read_debug(reg, 3);			\
+			/* Fall through */				\
+	case 2:		ptr[2] = read_debug(reg, 2);			\
+			/* Fall through */				\
+	case 1:		ptr[1] = read_debug(reg, 1);			\
+			/* Fall through */				\
+	default:	ptr[0] = read_debug(reg, 0);			\
+	}
+
+#define restore_debug(ptr,reg,nr)					\
+	switch (nr) {							\
+	case 15:	write_debug(ptr[15], reg, 15);			\
+			/* Fall through */				\
+	case 14:	write_debug(ptr[14], reg, 14);			\
+			/* Fall through */				\
+	case 13:	write_debug(ptr[13], reg, 13);			\
+			/* Fall through */				\
+	case 12:	write_debug(ptr[12], reg, 12);			\
+			/* Fall through */				\
+	case 11:	write_debug(ptr[11], reg, 11);			\
+			/* Fall through */				\
+	case 10:	write_debug(ptr[10], reg, 10);			\
+			/* Fall through */				\
+	case 9:		write_debug(ptr[9], reg, 9);			\
+			/* Fall through */				\
+	case 8:		write_debug(ptr[8], reg, 8);			\
+			/* Fall through */				\
+	case 7:		write_debug(ptr[7], reg, 7);			\
+			/* Fall through */				\
+	case 6:		write_debug(ptr[6], reg, 6);			\
+			/* Fall through */				\
+	case 5:		write_debug(ptr[5], reg, 5);			\
+			/* Fall through */				\
+	case 4:		write_debug(ptr[4], reg, 4);			\
+			/* Fall through */				\
+	case 3:		write_debug(ptr[3], reg, 3);			\
+			/* Fall through */				\
+	case 2:		write_debug(ptr[2], reg, 2);			\
+			/* Fall through */				\
+	case 1:		write_debug(ptr[1], reg, 1);			\
+			/* Fall through */				\
+	default:	write_debug(ptr[0], reg, 0);			\
+	}
+
+static inline void __hyp_text
+__debug_save_state(struct kvm_vcpu *vcpu, struct kvm_guest_debug_arch *dbg,
+		   struct kvm_cpu_context *ctxt)
+{
+	u64 aa64dfr0;
+	int brps, wrps;
+
+	aa64dfr0 = read_sysreg(id_aa64dfr0_el1);
+	brps = (aa64dfr0 >> 12) & 0xf;
+	wrps = (aa64dfr0 >> 20) & 0xf;
+
+	save_debug(dbg->dbg_bcr, dbgbcr, brps);
+	save_debug(dbg->dbg_bvr, dbgbvr, brps);
+	save_debug(dbg->dbg_wcr, dbgwcr, wrps);
+	save_debug(dbg->dbg_wvr, dbgwvr, wrps);
+
+	ctxt->sys_regs[MDCCINT_EL1] = read_sysreg(mdccint_el1);
+}
+
+static inline void __hyp_text
+__debug_restore_state(struct kvm_vcpu *vcpu, struct kvm_guest_debug_arch *dbg,
+		      struct kvm_cpu_context *ctxt)
+{
+	u64 aa64dfr0;
+	int brps, wrps;
+
+	aa64dfr0 = read_sysreg(id_aa64dfr0_el1);
+
+	brps = (aa64dfr0 >> 12) & 0xf;
+	wrps = (aa64dfr0 >> 20) & 0xf;
+
+	restore_debug(dbg->dbg_bcr, dbgbcr, brps);
+	restore_debug(dbg->dbg_bvr, dbgbvr, brps);
+	restore_debug(dbg->dbg_wcr, dbgwcr, wrps);
+	restore_debug(dbg->dbg_wvr, dbgwvr, wrps);
+
+	write_sysreg(ctxt->sys_regs[MDCCINT_EL1], mdccint_el1);
+}
+
+static inline void __hyp_text
+__debug_switch_to_guest_common(struct kvm_vcpu *vcpu)
+{
+	struct kvm_cpu_context *host_ctxt;
+	struct kvm_cpu_context *guest_ctxt;
+	struct kvm_guest_debug_arch *host_dbg;
+	struct kvm_guest_debug_arch *guest_dbg;
+
+	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
+		return;
+
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
+	guest_ctxt = &vcpu->arch.ctxt;
+	host_dbg = &vcpu->arch.host_debug_state.regs;
+	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
+
+	__debug_save_state(vcpu, host_dbg, host_ctxt);
+	__debug_restore_state(vcpu, guest_dbg, guest_ctxt);
+}
+
+static inline void __hyp_text
+__debug_switch_to_host_common(struct kvm_vcpu *vcpu)
+{
+	struct kvm_cpu_context *host_ctxt;
+	struct kvm_cpu_context *guest_ctxt;
+	struct kvm_guest_debug_arch *host_dbg;
+	struct kvm_guest_debug_arch *guest_dbg;
+
+	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
+		return;
+
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
+	guest_ctxt = &vcpu->arch.ctxt;
+	host_dbg = &vcpu->arch.host_debug_state.regs;
+	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
+
+	__debug_save_state(vcpu, guest_dbg, guest_ctxt);
+	__debug_restore_state(vcpu, host_dbg, host_ctxt);
+
+	vcpu->arch.flags &= ~KVM_ARM64_DEBUG_DIRTY;
+}
+
+#endif /* __ARM64_KVM_HYP_DEBUG_SR_H__ */
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index 336b1bf64ceb..95a06786bf26 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,7 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
 	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := switch.o tlb.o hyp-init.o ../hyp-entry.o
+obj-y := debug-sr.o switch.o tlb.o hyp-init.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp/nvhe/debug-sr.c b/arch/arm64/kvm/hyp/nvhe/debug-sr.c
new file mode 100644
index 000000000000..b3752cfdcf3d
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/debug-sr.c
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#include <linux/compiler.h>
+#include <linux/kvm_host.h>
+
+#include <asm/debug-monitors.h>
+#include <asm/kvm_asm.h>
+#include <asm/kvm_hyp.h>
+#include <asm/kvm_mmu.h>
+
+#include "../debug-sr.h"
+
+static void __hyp_text __debug_save_spe(u64 *pmscr_el1)
+{
+	u64 reg;
+
+	/* Clear pmscr in case of early return */
+	*pmscr_el1 = 0;
+
+	/* SPE present on this CPU? */
+	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
+						  ID_AA64DFR0_PMSVER_SHIFT))
+		return;
+
+	/* Yes; is it owned by EL3? */
+	reg = read_sysreg_s(SYS_PMBIDR_EL1);
+	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
+		return;
+
+	/* No; is the host actually using the thing? */
+	reg = read_sysreg_s(SYS_PMBLIMITR_EL1);
+	if (!(reg & BIT(SYS_PMBLIMITR_EL1_E_SHIFT)))
+		return;
+
+	/* Yes; save the control register and disable data generation */
+	*pmscr_el1 = read_sysreg_s(SYS_PMSCR_EL1);
+	write_sysreg_s(0, SYS_PMSCR_EL1);
+	isb();
+
+	/* Now drain all buffered data to memory */
+	psb_csync();
+	dsb(nsh);
+}
+
+static void __hyp_text __debug_restore_spe(u64 pmscr_el1)
+{
+	if (!pmscr_el1)
+		return;
+
+	/* The host page table is installed, but not yet synchronised */
+	isb();
+
+	/* Re-enable data generation */
+	write_sysreg_s(pmscr_el1, SYS_PMSCR_EL1);
+}
+
+void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
+{
+	/* Disable and flush SPE data generation */
+	__debug_save_spe(&vcpu->arch.host_debug_state.pmscr_el1);
+	__debug_switch_to_guest_common(vcpu);
+}
+
+void __hyp_text __debug_switch_to_host(struct kvm_vcpu *vcpu)
+{
+	__debug_restore_spe(vcpu->arch.host_debug_state.pmscr_el1);
+	__debug_switch_to_host_common(vcpu);
+}
+
+u32 __hyp_text __kvm_get_mdcr_el2(void)
+{
+	return read_sysreg(mdcr_el2);
+}
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
