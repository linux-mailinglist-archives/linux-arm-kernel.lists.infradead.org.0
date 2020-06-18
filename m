Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93ED1FF1AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StHCD4CjJj+Lgk27y7UbLG8pnHXj7QBafVk3+pKGTGI=; b=g7nZ91fMwu56q4
	KF+413K0NLFZHIPGstLdZMiLlp+4+wXzQ+mdCsAQPCMVxJzskbdL3D7qmDLk1U1Zmii3xa+PhB+a5
	/x7a58nWC29wlzNlk46jd1PXsYe/HCcUOw60yodyfW5IUYTi/ReB2YBArCUtCjgpGVYqc3b8BVcsH
	AicIdy/5+Q63jyTMJrt9noNTTFXqpOgJn4P9V1Ee04dSvBHRqoHv5/IvGEoTHGrJyq5B7XEPfnfen
	/rTv/pD1i415+tR358iXobzW0QUsnB0qSOugUFMDvF7DO6/Ti2z/2ivN/6i3iYPTOIJTQn6AOMLa9
	1RdrQo+TSpqvuH+hLDuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlteR-0006LY-PL; Thu, 18 Jun 2020 12:28:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcJ-0004Y6-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id p5so5822224wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=74VV+hWrAL0zCCFEfjNCgA2uQ+DitYEe58gLlSBqoCk=;
 b=E5P4NQGYzL5UaWmwY1z+kkRyF7ccG4gozbkk0/NooJZsCcZoMcebVMGxpN+qI5+JEb
 KUYsfeDWJHlGXrBd7hZ6va1sAzy+qiEtqPcXWEKyXUJEBA8wwHQhdD9D2zXjvBWEbvdL
 u8bayVSKwjOiprCOYesKXtXr5gH0PJ6PpT0G88khtJoO1YfT+xz/V4pfL54ySbhe8FJu
 X1/e6ZIds9kc7nFl9gm0lqWzc9iv8H6JWXJxGvhsQCp9ob8f/POoF9hPi1Mh7PrPwczs
 5+lJR544iurizR6YWCUfRRNMaIACJkWnTGd3MJX88UWJ/sMSZvSOgYwCIiBwwL2oHyV/
 z3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=74VV+hWrAL0zCCFEfjNCgA2uQ+DitYEe58gLlSBqoCk=;
 b=OJZsDp3kS5T5zzn0qUkQRFw+QzNEHJwCiEfBMxB/xgkZOnE4tRSR+Sa8xL1nDhEopO
 tw9GoRmZw5SsvM92t9AnJgEWnCJBl5r/eOqAFS2ADFYGa4MPA0V5Y0Kp2Rw6dSU9N78k
 04dI/XWcpxyCGP0JtyKYpfewzU3pQweXyQBicSdO6A/MlAxcVhuIr0n61tIZsphjZDlX
 7zGbQrMUcal5NqtL8K2HVVHVr9gzxgXswupNPdRySKU1bdjdCmV9zAAcB4y0yUTIA+Yl
 Dkjjjbfuep4REdc8LaO+2FtoheiktKR9z8JBVpKVbtyI5nypEGFyNHCJAKBSdwnABe6W
 DzYw==
X-Gm-Message-State: AOAM531vhbN5Hq7wj2hLr+d/GvprmGVNELJ4b6xINaQkO5Z4XBlRgXmy
 lgIqw1CvHcZyT0I9tijC7HtLdg==
X-Google-Smtp-Source: ABdhPJxMV2JEH9hNNg4EugfqAogfJSPY6ETVKExk3/LwDntYxLcTJfTvQotP7mMsU3yBGKgoEo3BPQ==
X-Received: by 2002:adf:fd81:: with SMTP id d1mr4505813wrr.96.1592483161018;
 Thu, 18 Jun 2020 05:26:01 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id o6sm3426241wrp.3.2020.06.18.05.25.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:26:00 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 07/15] arm64: kvm: Split hyp/tlb.c to VHE/nVHE
Date: Thu, 18 Jun 2020 13:25:29 +0100
Message-Id: <20200618122537.9625-8-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052603_203541_BBA6B576 
X-CRM114-Status: GOOD (  29.38  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

tlb.c contains code for flushing the TLB, with parts shared between VHE/nVHE.
These common routines are moved into a header file tlb.h, VHE-specific code
remains in tlb.c and nVHE-specific code is moved to nvhe/tlb.c.

The header file expects its users to implement two helper functions declared
at the top of the file.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kernel/image-vars.h   |   8 +-
 arch/arm64/kvm/hyp/nvhe/Makefile |   2 +-
 arch/arm64/kvm/hyp/nvhe/tlb.c    |  70 +++++++++++++
 arch/arm64/kvm/hyp/tlb.c         | 171 +++----------------------------
 arch/arm64/kvm/hyp/tlb.h         | 134 ++++++++++++++++++++++++
 5 files changed, 222 insertions(+), 163 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/tlb.c
 create mode 100644 arch/arm64/kvm/hyp/tlb.h

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 4dc969ccda9e..e8a8aa6bc7bd 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -63,13 +63,10 @@ __efistub__ctype		= _ctype;
 
 __kvm_nvhe___guest_exit = __guest_exit;
 __kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
+__kvm_nvhe___icache_flags = __icache_flags;
 __kvm_nvhe___kvm_enable_ssbs = __kvm_enable_ssbs;
-__kvm_nvhe___kvm_flush_vm_context = __kvm_flush_vm_context;
 __kvm_nvhe___kvm_get_mdcr_el2 = __kvm_get_mdcr_el2;
 __kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
-__kvm_nvhe___kvm_tlb_flush_local_vmid = __kvm_tlb_flush_local_vmid;
-__kvm_nvhe___kvm_tlb_flush_vmid = __kvm_tlb_flush_vmid;
-__kvm_nvhe___kvm_tlb_flush_vmid_ipa = __kvm_tlb_flush_vmid_ipa;
 __kvm_nvhe___kvm_vcpu_run_nvhe = __kvm_vcpu_run_nvhe;
 __kvm_nvhe___vgic_v3_get_ich_vtr_el2 = __vgic_v3_get_ich_vtr_el2;
 __kvm_nvhe___vgic_v3_init_lrs = __vgic_v3_init_lrs;
@@ -79,8 +76,11 @@ __kvm_nvhe___vgic_v3_save_aprs = __vgic_v3_save_aprs;
 __kvm_nvhe___vgic_v3_write_vmcr = __vgic_v3_write_vmcr;
 __kvm_nvhe_abort_guest_exit_end = abort_guest_exit_end;
 __kvm_nvhe_abort_guest_exit_start = abort_guest_exit_start;
+__kvm_nvhe_arm64_const_caps_ready = arm64_const_caps_ready;
 __kvm_nvhe_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
 __kvm_nvhe_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
+__kvm_nvhe_cpu_hwcap_keys = cpu_hwcap_keys;
+__kvm_nvhe_cpu_hwcaps = cpu_hwcaps;
 __kvm_nvhe_hyp_panic = hyp_panic;
 __kvm_nvhe_idmap_t0sz = idmap_t0sz;
 __kvm_nvhe_kimage_voffset = kimage_voffset;
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index fef6f1881765..3bfc51de1679 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -7,7 +7,7 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
 ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
 	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
 
-obj-y := hyp-init.o ../hyp-entry.o
+obj-y := tlb.o hyp-init.o ../hyp-entry.o
 
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
diff --git a/arch/arm64/kvm/hyp/nvhe/tlb.c b/arch/arm64/kvm/hyp/nvhe/tlb.c
new file mode 100644
index 000000000000..111c4b0a23d3
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/tlb.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#include <linux/irqflags.h>
+
+#include <asm/kvm_hyp.h>
+#include <asm/kvm_mmu.h>
+#include <asm/tlbflush.h>
+
+#include "../tlb.h"
+
+static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
+					     struct tlb_inv_context *cxt)
+{
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
+		u64 val;
+
+		/*
+		 * For CPUs that are affected by ARM 1319367, we need to
+		 * avoid a host Stage-1 walk while we have the guest's
+		 * VMID set in the VTTBR in order to invalidate TLBs.
+		 * We're guaranteed that the S1 MMU is enabled, so we can
+		 * simply set the EPD bits to avoid any further TLB fill.
+		 */
+		val = cxt->tcr = read_sysreg_el1(SYS_TCR);
+		val |= TCR_EPD1_MASK | TCR_EPD0_MASK;
+		write_sysreg_el1(val, SYS_TCR);
+		isb();
+	}
+
+	/* __load_guest_stage2() includes an ISB for the workaround. */
+	__load_guest_stage2(kvm);
+	asm(ALTERNATIVE("isb", "nop", ARM64_WORKAROUND_SPECULATIVE_AT));
+}
+
+static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
+					    struct tlb_inv_context *cxt)
+{
+	write_sysreg(0, vttbr_el2);
+
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
+		/* Ensure write of the host VMID */
+		isb();
+		/* Restore the host's TCR_EL1 */
+		write_sysreg_el1(cxt->tcr, SYS_TCR);
+	}
+}
+
+void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
+{
+	__tlb_flush_vmid_ipa(kvm, ipa);
+}
+
+void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
+{
+	__tlb_flush_vmid(kvm);
+}
+
+void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
+{
+	__tlb_flush_local_vmid(vcpu);
+}
+
+void __hyp_text __kvm_flush_vm_context(void)
+{
+	__tlb_flush_vm_context();
+}
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index d063a576d511..4e190f8c7e9c 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -10,14 +10,10 @@
 #include <asm/kvm_mmu.h>
 #include <asm/tlbflush.h>
 
-struct tlb_inv_context {
-	unsigned long	flags;
-	u64		tcr;
-	u64		sctlr;
-};
+#include "tlb.h"
 
-static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
-						 struct tlb_inv_context *cxt)
+static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
+					     struct tlb_inv_context *cxt)
 {
 	u64 val;
 
@@ -60,41 +56,8 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 	isb();
 }
 
-static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
-						  struct tlb_inv_context *cxt)
-{
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
-		u64 val;
-
-		/*
-		 * For CPUs that are affected by ARM 1319367, we need to
-		 * avoid a host Stage-1 walk while we have the guest's
-		 * VMID set in the VTTBR in order to invalidate TLBs.
-		 * We're guaranteed that the S1 MMU is enabled, so we can
-		 * simply set the EPD bits to avoid any further TLB fill.
-		 */
-		val = cxt->tcr = read_sysreg_el1(SYS_TCR);
-		val |= TCR_EPD1_MASK | TCR_EPD0_MASK;
-		write_sysreg_el1(val, SYS_TCR);
-		isb();
-	}
-
-	/* __load_guest_stage2() includes an ISB for the workaround. */
-	__load_guest_stage2(kvm);
-	asm(ALTERNATIVE("isb", "nop", ARM64_WORKAROUND_SPECULATIVE_AT));
-}
-
-static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
-					     struct tlb_inv_context *cxt)
-{
-	if (has_vhe())
-		__tlb_switch_to_guest_vhe(kvm, cxt);
-	else
-		__tlb_switch_to_guest_nvhe(kvm, cxt);
-}
-
-static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
-						struct tlb_inv_context *cxt)
+static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
+					    struct tlb_inv_context *cxt)
 {
 	/*
 	 * We're done with the TLB operation, let's restore the host's
@@ -113,130 +76,22 @@ static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
 	local_irq_restore(cxt->flags);
 }
 
-static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
-						 struct tlb_inv_context *cxt)
-{
-	write_sysreg(0, vttbr_el2);
-
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
-		/* Ensure write of the host VMID */
-		isb();
-		/* Restore the host's TCR_EL1 */
-		write_sysreg_el1(cxt->tcr, SYS_TCR);
-	}
-}
-
-static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
-					    struct tlb_inv_context *cxt)
-{
-	if (has_vhe())
-		__tlb_switch_to_host_vhe(kvm, cxt);
-	else
-		__tlb_switch_to_host_nvhe(kvm, cxt);
-}
-
-void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
+void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
 {
-	struct tlb_inv_context cxt;
-
-	dsb(ishst);
-
-	/* Switch to requested VMID */
-	kvm = kern_hyp_va(kvm);
-	__tlb_switch_to_guest(kvm, &cxt);
-
-	/*
-	 * We could do so much better if we had the VA as well.
-	 * Instead, we invalidate Stage-2 for this IPA, and the
-	 * whole of Stage-1. Weep...
-	 */
-	ipa >>= 12;
-	__tlbi(ipas2e1is, ipa);
-
-	/*
-	 * We have to ensure completion of the invalidation at Stage-2,
-	 * since a table walk on another CPU could refill a TLB with a
-	 * complete (S1 + S2) walk based on the old Stage-2 mapping if
-	 * the Stage-1 invalidation happened first.
-	 */
-	dsb(ish);
-	__tlbi(vmalle1is);
-	dsb(ish);
-	isb();
-
-	/*
-	 * If the host is running at EL1 and we have a VPIPT I-cache,
-	 * then we must perform I-cache maintenance at EL2 in order for
-	 * it to have an effect on the guest. Since the guest cannot hit
-	 * I-cache lines allocated with a different VMID, we don't need
-	 * to worry about junk out of guest reset (we nuke the I-cache on
-	 * VMID rollover), but we do need to be careful when remapping
-	 * executable pages for the same guest. This can happen when KSM
-	 * takes a CoW fault on an executable page, copies the page into
-	 * a page that was previously mapped in the guest and then needs
-	 * to invalidate the guest view of the I-cache for that page
-	 * from EL1. To solve this, we invalidate the entire I-cache when
-	 * unmapping a page from a guest if we have a VPIPT I-cache but
-	 * the host is running at EL1. As above, we could do better if
-	 * we had the VA.
-	 *
-	 * The moral of this story is: if you have a VPIPT I-cache, then
-	 * you should be running with VHE enabled.
-	 */
-	if (!has_vhe() && icache_is_vpipt())
-		__flush_icache_all();
-
-	__tlb_switch_to_host(kvm, &cxt);
+	__tlb_flush_vmid_ipa(kvm, ipa);
 }
 
-void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
+void __kvm_tlb_flush_vmid(struct kvm *kvm)
 {
-	struct tlb_inv_context cxt;
-
-	dsb(ishst);
-
-	/* Switch to requested VMID */
-	kvm = kern_hyp_va(kvm);
-	__tlb_switch_to_guest(kvm, &cxt);
-
-	__tlbi(vmalls12e1is);
-	dsb(ish);
-	isb();
-
-	__tlb_switch_to_host(kvm, &cxt);
+	__tlb_flush_vmid(kvm);
 }
 
-void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
+void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 {
-	struct kvm *kvm = kern_hyp_va(kern_hyp_va(vcpu)->kvm);
-	struct tlb_inv_context cxt;
-
-	/* Switch to requested VMID */
-	__tlb_switch_to_guest(kvm, &cxt);
-
-	__tlbi(vmalle1);
-	dsb(nsh);
-	isb();
-
-	__tlb_switch_to_host(kvm, &cxt);
+	__tlb_flush_local_vmid(vcpu);
 }
 
-void __hyp_text __kvm_flush_vm_context(void)
+void __kvm_flush_vm_context(void)
 {
-	dsb(ishst);
-	__tlbi(alle1is);
-
-	/*
-	 * VIPT and PIPT caches are not affected by VMID, so no maintenance
-	 * is necessary across a VMID rollover.
-	 *
-	 * VPIPT caches constrain lookup and maintenance to the active VMID,
-	 * so we need to invalidate lines with a stale VMID to avoid an ABA
-	 * race after multiple rollovers.
-	 *
-	 */
-	if (icache_is_vpipt())
-		asm volatile("ic ialluis");
-
-	dsb(ish);
+	__tlb_flush_vm_context();
 }
diff --git a/arch/arm64/kvm/hyp/tlb.h b/arch/arm64/kvm/hyp/tlb.h
new file mode 100644
index 000000000000..841ef400c8ec
--- /dev/null
+++ b/arch/arm64/kvm/hyp/tlb.h
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ */
+
+#ifndef __ARM64_KVM_HYP_TLB_H__
+#define __ARM64_KVM_HYP_TLB_H__
+
+#include <linux/irqflags.h>
+
+#include <asm/kvm_hyp.h>
+#include <asm/kvm_mmu.h>
+#include <asm/tlbflush.h>
+
+struct tlb_inv_context {
+	unsigned long	flags;
+	u64		tcr;
+	u64		sctlr;
+};
+
+static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
+					     struct tlb_inv_context *cxt);
+static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
+					    struct tlb_inv_context *cxt);
+
+static inline void __hyp_text
+__tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
+{
+	struct tlb_inv_context cxt;
+
+	dsb(ishst);
+
+	/* Switch to requested VMID */
+	kvm = kern_hyp_va(kvm);
+	__tlb_switch_to_guest(kvm, &cxt);
+
+	/*
+	 * We could do so much better if we had the VA as well.
+	 * Instead, we invalidate Stage-2 for this IPA, and the
+	 * whole of Stage-1. Weep...
+	 */
+	ipa >>= 12;
+	__tlbi(ipas2e1is, ipa);
+
+	/*
+	 * We have to ensure completion of the invalidation at Stage-2,
+	 * since a table walk on another CPU could refill a TLB with a
+	 * complete (S1 + S2) walk based on the old Stage-2 mapping if
+	 * the Stage-1 invalidation happened first.
+	 */
+	dsb(ish);
+	__tlbi(vmalle1is);
+	dsb(ish);
+	isb();
+
+	/*
+	 * If the host is running at EL1 and we have a VPIPT I-cache,
+	 * then we must perform I-cache maintenance at EL2 in order for
+	 * it to have an effect on the guest. Since the guest cannot hit
+	 * I-cache lines allocated with a different VMID, we don't need
+	 * to worry about junk out of guest reset (we nuke the I-cache on
+	 * VMID rollover), but we do need to be careful when remapping
+	 * executable pages for the same guest. This can happen when KSM
+	 * takes a CoW fault on an executable page, copies the page into
+	 * a page that was previously mapped in the guest and then needs
+	 * to invalidate the guest view of the I-cache for that page
+	 * from EL1. To solve this, we invalidate the entire I-cache when
+	 * unmapping a page from a guest if we have a VPIPT I-cache but
+	 * the host is running at EL1. As above, we could do better if
+	 * we had the VA.
+	 *
+	 * The moral of this story is: if you have a VPIPT I-cache, then
+	 * you should be running with VHE enabled.
+	 */
+	if (!has_vhe() && icache_is_vpipt())
+		__flush_icache_all();
+
+	__tlb_switch_to_host(kvm, &cxt);
+}
+
+static inline void __hyp_text __tlb_flush_vmid(struct kvm *kvm)
+{
+	struct tlb_inv_context cxt;
+
+	dsb(ishst);
+
+	/* Switch to requested VMID */
+	kvm = kern_hyp_va(kvm);
+	__tlb_switch_to_guest(kvm, &cxt);
+
+	__tlbi(vmalls12e1is);
+	dsb(ish);
+	isb();
+
+	__tlb_switch_to_host(kvm, &cxt);
+}
+
+static inline void __hyp_text __tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
+{
+	struct kvm *kvm = kern_hyp_va(kern_hyp_va(vcpu)->kvm);
+	struct tlb_inv_context cxt;
+
+	/* Switch to requested VMID */
+	__tlb_switch_to_guest(kvm, &cxt);
+
+	__tlbi(vmalle1);
+	dsb(nsh);
+	isb();
+
+	__tlb_switch_to_host(kvm, &cxt);
+}
+
+static inline void __hyp_text __tlb_flush_vm_context(void)
+{
+	dsb(ishst);
+	__tlbi(alle1is);
+
+	/*
+	 * VIPT and PIPT caches are not affected by VMID, so no maintenance
+	 * is necessary across a VMID rollover.
+	 *
+	 * VPIPT caches constrain lookup and maintenance to the active VMID,
+	 * so we need to invalidate lines with a stale VMID to avoid an ABA
+	 * race after multiple rollovers.
+	 *
+	 */
+	if (icache_is_vpipt())
+		asm volatile("ic ialluis");
+
+	dsb(ish);
+}
+
+#endif /* __ARM64_KVM_HYP_TLB_H__ */
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
