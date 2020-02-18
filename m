Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C8F163198
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmdfK9tJxp6vuy4J5Y9N+h/sslekqb8DgM0waynbpB8=; b=VtnBWsFRfoO20b
	CWeepN9At74jAGGBlc8dEfw8ia46eKqFjFi76fafKGel7QLqGUtI3UYZ58GwWSsBPWCfVXIaVh2E3
	x1F9Zw6HPK6+jCwlzRJwngHQAJG75FhedCFPTGlFuqyQUspUmctTWYv2VJ1EzCDZlUD61OQWZRO1E
	fHPKbHrruHv+5HOTcEUUzYbpUqGkYbVO8Jurv55lbhQoCA+tYGPpW2tXkiG+Ow0zJfJBduYj5YVTk
	Sy29hRHGBa+SzSvVeK7YG01Q7Q2wAmRtq5IsP1uH+T5JYQMsawTKV6vKmcObkwPwfCUbd7foeSic0
	hTgzqupEP4QbMgehs//g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j494z-00027T-RL; Tue, 18 Feb 2020 20:02:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491i-0005pl-21
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:59:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E7DE31B;
 Tue, 18 Feb 2020 11:59:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A57833F68F;
 Tue, 18 Feb 2020 11:59:24 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 14/18] arm64: kvm: Modernize annotation for
 __bp_harden_hyp_vecs
Date: Tue, 18 Feb 2020 19:58:38 +0000
Message-Id: <20200218195842.34156-15-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115926_283336_68903CF0 
X-CRM114-Status: GOOD (  15.52  )
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
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

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/kvm_mmu.h | 9 ++++-----
 arch/arm64/include/asm/mmu.h     | 4 +++-
 arch/arm64/kernel/cpu_errata.c   | 2 +-
 arch/arm64/kvm/hyp/hyp-entry.S   | 6 ++++--
 4 files changed, 12 insertions(+), 9 deletions(-)

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
index e4d862420bb4..a3324d6ccbfe 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -13,6 +13,7 @@
 #define TTBR_ASID_MASK	(UL(0xffff) << 48)
 
 #define BP_HARDEN_EL2_SLOTS 4
+#define __BP_HARDEN_HYP_VECS_SZ (BP_HARDEN_EL2_SLOTS * SZ_2K)
 
 #ifndef __ASSEMBLY__
 
@@ -45,7 +46,8 @@ struct bp_hardening_data {
 
 #if (defined(CONFIG_HARDEN_BRANCH_PREDICTOR) ||	\
      defined(CONFIG_HARDEN_EL2_VECTORS))
-extern char __bp_harden_hyp_vecs_start[], __bp_harden_hyp_vecs_end[];
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
index 0aea8f9ab23d..1e2ab928a92f 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -312,11 +312,13 @@ alternative_cb_end
 .endm
 
 	.align	11
-ENTRY(__bp_harden_hyp_vecs_start)
+SYM_CODE_START(__bp_harden_hyp_vecs)
 	.rept BP_HARDEN_EL2_SLOTS
 	generate_vectors
 	.endr
-ENTRY(__bp_harden_hyp_vecs_end)
+1:	.org __bp_harden_hyp_vecs + __BP_HARDEN_HYP_VECS_SZ
+	.org 1b
+SYM_CODE_END(__bp_harden_hyp_vecs)
 
 	.popsection
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
