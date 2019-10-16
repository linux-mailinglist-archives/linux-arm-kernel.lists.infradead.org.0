Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3085D980C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hU3RqQxS7h2TQe6/jwXbPWHwgHoceSu/sKL0R8C1qLI=; b=rog3EkqjzGsdQG
	VUHg4kH6RBOaMvE2sTkAZEVRclEc1VnhlLg9L0ItBcvAhoh8t0/vPxSOx/kkaaPlij72lsVanR6UQ
	osERDhQb2v56fU7hb3wzLG0eIZl36VvASWuCJfN395n7rMIXm0Mf/r78je2dQZlkidMnPbQn6gXC5
	dT+HNERQSqL5TwINjuslHGuEfr4WCseAR46/RtTiS/8h2Oe3wMTRVSY7HTtzmI9UFoMABgzbkuT63
	XJkldFW5SmDAhOHdOhozpiozYa0fj9Co1DAB6feBOSX3zduG+Jqb2k56Or+mjKHbMOZ77wQg+QMD6
	jignYsrQYRvmCi9/sSEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmef-0008KC-Jc; Wed, 16 Oct 2019 17:00:09 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmeU-0008Jf-Fd
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 17:00:00 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iKmeP-0001K0-AV; Wed, 16 Oct 2019 18:59:53 +0200
Date: Wed, 16 Oct 2019 18:59:53 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: KVM: Invoke compute_layout() before alternatives are
 applied
Message-ID: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_095958_668932_9A4B2610 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

compute_layout() is invoked as part of an alternative fixup under
stop_machine(). This function invokes get_random_long() which acquires a
sleeping lock on -RT which can not be acquired in this context.

Rename compute_layout() to kvm_compute_layout() and invoke it before
stop_machines() invokes the fixups. Add a __init prefix to
kvm_compute_layout() because the caller has it, too (and so the code can
be discarded after boot).

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 arch/arm64/include/asm/alternative.h |  6 ++++++
 arch/arm64/kernel/alternative.c      |  1 +
 arch/arm64/kvm/va_layout.c           | 11 ++++-------
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9f..7532f044d713b 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -35,6 +35,12 @@ void apply_alternatives_module(void *start, size_t length);
 static inline void apply_alternatives_module(void *start, size_t length) { }
 #endif
 
+#ifdef CONFIG_KVM_ARM_HOST
+void kvm_compute_layout(void);
+#else
+static inline void kvm_compute_layout(void) { }
+#endif
+
 #define ALTINSTR_ENTRY(feature,cb)					      \
 	" .word 661b - .\n"				/* label           */ \
 	" .if " __stringify(cb) " == 0\n"				      \
diff --git a/arch/arm64/kernel/alternative.c b/arch/arm64/kernel/alternative.c
index d1757ef1b1e74..c28652ee06f64 100644
--- a/arch/arm64/kernel/alternative.c
+++ b/arch/arm64/kernel/alternative.c
@@ -238,6 +238,7 @@ static int __apply_alternatives_multi_stop(void *unused)
 void __init apply_alternatives_all(void)
 {
 	/* better not try code patching on a live SMP system */
+	kvm_compute_layout();
 	stop_machine(__apply_alternatives_multi_stop, NULL, cpu_online_mask);
 }
 
diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index 2cf7d4b606c38..0b9fbdf0aaddd 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -22,12 +22,15 @@ static u8 tag_lsb;
 static u64 tag_val;
 static u64 va_mask;
 
-static void compute_layout(void)
+__init void kvm_compute_layout(void)
 {
 	phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
 	u64 hyp_va_msb;
 	int kva_msb;
 
+	if (WARN_ON(va_mask))
+		return;
+
 	/* Where is my RAM region? */
 	hyp_va_msb  = idmap_addr & BIT(vabits_actual - 1);
 	hyp_va_msb ^= BIT(vabits_actual - 1);
@@ -110,9 +113,6 @@ void __init kvm_update_va_mask(struct alt_instr *alt,
 
 	BUG_ON(nr_inst != 5);
 
-	if (!has_vhe() && !va_mask)
-		compute_layout();
-
 	for (i = 0; i < nr_inst; i++) {
 		u32 rd, rn, insn, oinsn;
 
@@ -156,9 +156,6 @@ void kvm_patch_vector_branch(struct alt_instr *alt,
 		return;
 	}
 
-	if (!va_mask)
-		compute_layout();
-
 	/*
 	 * Compute HYP VA by using the same computation as kern_hyp_va()
 	 */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
