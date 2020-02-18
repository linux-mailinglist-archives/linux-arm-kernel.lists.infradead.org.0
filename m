Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E0216265E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CU7TjkfJZZ5xjWLxWTdb2+fwaW67AsTsB/oezEL8pVA=; b=f2vZe30C3aPknR
	pIZ+o1Woed3//s2NaNDK40tyLZRIColWAoEFQNO8uzrQZzgPgwakTkKwPc5Sod63ZZWfrayfdUw6h
	LNTiF2oqcrcSirLsJebQbV/Lhso40ywZk1Eda3J/yluSNdCcY0UID3hqKyTdYCIa65pO5k37qgv6F
	Bhe+mRqIQctopLLYmHgCXcE9shbIBLqfx+PmcGRaHoSkrIXsOISkfISEXDwVmqWSmooncm7o+VRdt
	JiMN+2WYdlGFLrq/UvW6TZyjuXGiDUotKE7yTYJxEihCS2mJQOEipFEp2r7HfloAG8tKJybfPwoBy
	J+VxcdkXLrV9J23FHNzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42FX-0001r3-LH; Tue, 18 Feb 2020 12:45:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42FO-0001Il-0H
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:45:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0AB71FB;
 Tue, 18 Feb 2020 04:45:04 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 74B253F6CF;
 Tue, 18 Feb 2020 04:45:04 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
Date: Tue, 18 Feb 2020 12:44:55 +0000
Message-Id: <20200218124456.10615-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_044506_148083_C55C02A3 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have recently introduced new macros for annotating assembly symbols
for things that aren't C functions, SYM_CODE_START() and SYM_CODE_END(),
in an effort to clarify and simplify our annotations of assembly files.

Using these for __bp_harden_hyp_vecs is more involved than for most symbols
as this symbol is annotated quite unusually as rather than just have the
explicit symbol we define _start and _end symbols which we then use to
compute the length. This does not play at all nicely with the new style
macros. Since the size of the vectors is a known constant which won't vary
the simplest thing to do is simply to drop the separate _start and _end
symbols and just use a #define for the size.

Ideally we would have a build time assert to make sure we got this right
but we don't have such a thing for assembly code and given how unlikely
the size is to change it seems disproportionately difficult to write one
just for this.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/kvm_mmu.h | 9 ++++-----
 arch/arm64/include/asm/mmu.h     | 5 ++++-
 arch/arm64/kernel/cpu_errata.c   | 2 +-
 arch/arm64/kvm/hyp/hyp-entry.S   | 4 ++--
 4 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 53d846f1bfe7..b5f723cf9599 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -480,7 +480,7 @@ static inline void *kvm_get_hyp_vector(void)
 	int slot = -1;
 
 	if (cpus_have_const_cap(ARM64_HARDEN_BRANCH_PREDICTOR) && data->fn) {
-		vect = kern_hyp_va(kvm_ksym_ref(__bp_harden_hyp_vecs_start));
+		vect = kern_hyp_va(kvm_ksym_ref(__bp_harden_hyp_vecs));
 		slot = data->hyp_vectors_slot;
 	}
 
@@ -509,14 +509,13 @@ static inline int kvm_map_vectors(void)
 	 *  HBP +  HEL2 -> use hardened vertors and use exec mapping
 	 */
 	if (cpus_have_const_cap(ARM64_HARDEN_BRANCH_PREDICTOR)) {
-		__kvm_bp_vect_base = kvm_ksym_ref(__bp_harden_hyp_vecs_start);
+		__kvm_bp_vect_base = kvm_ksym_ref(__bp_harden_hyp_vecs);
 		__kvm_bp_vect_base = kern_hyp_va(__kvm_bp_vect_base);
 	}
 
 	if (cpus_have_const_cap(ARM64_HARDEN_EL2_VECTORS)) {
-		phys_addr_t vect_pa = __pa_symbol(__bp_harden_hyp_vecs_start);
-		unsigned long size = (__bp_harden_hyp_vecs_end -
-				      __bp_harden_hyp_vecs_start);
+		phys_addr_t vect_pa = __pa_symbol(__bp_harden_hyp_vecs);
+		unsigned long size = __BP_HARDEN_HYP_VECS_SZ;
 
 		/*
 		 * Always allocate a spare vector slot, as we don't
diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index e4d862420bb4..c6e811767a12 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -45,7 +45,10 @@ struct bp_hardening_data {
 
 #if (defined(CONFIG_HARDEN_BRANCH_PREDICTOR) ||	\
      defined(CONFIG_HARDEN_EL2_VECTORS))
-extern char __bp_harden_hyp_vecs_start[], __bp_harden_hyp_vecs_end[];
+
+#define __BP_HARDEN_HYP_VECS_SZ (BP_HARDEN_EL2_SLOTS * SZ_2K)
+
+extern char __bp_harden_hyp_vecs[];
 extern atomic_t arm64_el2_vector_last_slot;
 #endif  /* CONFIG_HARDEN_BRANCH_PREDICTOR || CONFIG_HARDEN_EL2_VECTORS */
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 703ad0a84f99..0af2201cefda 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -119,7 +119,7 @@ extern char __smccc_workaround_1_smc_end[];
 static void __copy_hyp_vect_bpi(int slot, const char *hyp_vecs_start,
 				const char *hyp_vecs_end)
 {
-	void *dst = lm_alias(__bp_harden_hyp_vecs_start + slot * SZ_2K);
+	void *dst = lm_alias(__bp_harden_hyp_vecs + slot * SZ_2K);
 	int i;
 
 	for (i = 0; i < SZ_2K; i += 0x80)
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 0aea8f9ab23d..8976276685a1 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -312,11 +312,11 @@ alternative_cb_end
 .endm
 
 	.align	11
-ENTRY(__bp_harden_hyp_vecs_start)
+SYM_CODE_START(__bp_harden_hyp_vecs)
 	.rept BP_HARDEN_EL2_SLOTS
 	generate_vectors
 	.endr
-ENTRY(__bp_harden_hyp_vecs_end)
+SYM_CODE_END(__bp_harden_hyp_vecs)
 
 	.popsection
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
