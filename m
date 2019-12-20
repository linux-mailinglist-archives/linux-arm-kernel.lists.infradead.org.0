Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7532127E88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJnSfJSKL3NIJW6xsIXuM8U+Cj7Gu5PhJg/8Zrbgw3M=; b=OdZTPW6ytzaa75
	q3eq6nzagpMvLRJOdmBh6daLN+1V+9D1lO/KLPUCChHt+z0XgjR09ittkAMpgsLKrwCvdzMiaiLy9
	McFMTUMciLMkNPaWltHL/+QAKNvlO/XcbpJvRBS84GdKxmXJCW4YXuxpInKg1vebqiCEWb4DqTJ71
	aoWm87VyarL24hJMYXsneRP/e1yHMTSMhKBI1QAB9qbR1ZFMwZJHMmK8CGyK4dYOTFZeq/wNak/eH
	gqkttLAeuOFhEXNzA1vx7iFyKUcw98XYr+CPQfOPsJkj+Ew7tFVuHm+rEdUnqN8unKpbOOGs8L2Mv
	ijMqk6mBBzcswgERW6Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJZj-0004fd-Mm; Fri, 20 Dec 2019 14:48:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJYo-00033y-5E
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Dec 2019 14:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zl7gjN/2vxrZnxyhnVqrumTCtOfbZ4WwV+vl1egsVpI=; b=q27Jp90+vDxOZ+l5HbnokZzbU9
 3tJNoOdI6qO8l1vTwX4LQUhp4K5GlalZCfWNmF3IvOu/Imqt6T6+5mQs581g/MvFdqq5OsM0Ig7UF
 lGqmx97hB2+881sT2ck2SUfKeZTSvzlG2/0PqkQ4ZUKikYaql/cNDmi6hp6tPkC+dpoqHcYj30U92
 Zide3eu7jMRwTozlBSnTZ8VqdzsTaQ3Ey/2h7jdEsHk5v+ZRDelCsrmhucXXwftR6Cs47E1mF6hzu
 NCMQlTQu7QrVwFBj/f/NEAiXV77RdqYq2zvr0a0GKBGHZqnrHsZSlCo6zBtQlaTX5mQSUTJHJED2R
 /tzmaZfA==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJJJ-0002wE-HC
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:31:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11DCF30E;
 Fri, 20 Dec 2019 06:30:52 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39ABD3F718;
 Fri, 20 Dec 2019 06:30:50 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 09/18] arm64: KVM: enable conditional save/restore full SPE
 profiling buffer controls
Date: Fri, 20 Dec 2019 14:30:16 +0000
Message-Id: <20191220143025.33853-10-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_143121_859577_C80FAD60 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

Now that we can save/restore the full SPE controls, we can enable it
if SPE is setup and ready to use in KVM. It's supported in KVM only if
all the CPUs in the system supports SPE.

However to support heterogenous systems, we need to move the check if
host supports SPE and do a partial save/restore.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/kvm/hyp/debug-sr.c | 33 ++++++++++++++++-----------------
 include/kvm/arm_spe.h         |  6 ++++++
 2 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index 12429b212a3a..d8d857067e6d 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -86,18 +86,13 @@
 	}
 
 static void __hyp_text
-__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
+__debug_save_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
 {
 	u64 reg;
 
 	/* Clear pmscr in case of early return */
 	ctxt->sys_regs[PMSCR_EL1] = 0;
 
-	/* SPE present on this CPU? */
-	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
-						  ID_AA64DFR0_PMSVER_SHIFT))
-		return;
-
 	/* Yes; is it owned by higher EL? */
 	reg = read_sysreg_s(SYS_PMBIDR_EL1);
 	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
@@ -142,7 +137,7 @@ __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
 }
 
 static void __hyp_text
-__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
+__debug_restore_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
 {
 	if (!ctxt->sys_regs[PMSCR_EL1])
 		return;
@@ -210,11 +205,14 @@ void __hyp_text __debug_restore_guest_context(struct kvm_vcpu *vcpu)
 	struct kvm_guest_debug_arch *host_dbg;
 	struct kvm_guest_debug_arch *guest_dbg;
 
+	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	guest_ctxt = &vcpu->arch.ctxt;
+
+	__debug_restore_spe_context(guest_ctxt, kvm_arm_spe_v1_ready(vcpu));
+
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
 
-	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
-	guest_ctxt = &vcpu->arch.ctxt;
 	host_dbg = &vcpu->arch.host_debug_state.regs;
 	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
 
@@ -232,8 +230,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
 	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
 	guest_ctxt = &vcpu->arch.ctxt;
 
-	if (!has_vhe())
-		__debug_restore_spe_nvhe(host_ctxt, false);
+	__debug_restore_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
 
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
@@ -249,19 +246,21 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
 
 void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
 {
-	/*
-	 * Non-VHE: Disable and flush SPE data generation
-	 * VHE: The vcpu can run, but it can't hide.
-	 */
 	struct kvm_cpu_context *host_ctxt;
 
 	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
-	if (!has_vhe())
-		__debug_save_spe_nvhe(host_ctxt, false);
+	if (cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
+						 ID_AA64DFR0_PMSVER_SHIFT))
+		__debug_save_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
 }
 
 void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
 {
+	bool kvm_spe_ready = kvm_arm_spe_v1_ready(vcpu);
+
+	/* SPE present on this vCPU? */
+	if (kvm_spe_ready)
+		__debug_save_spe_context(&vcpu->arch.ctxt, kvm_spe_ready);
 }
 
 u32 __hyp_text __kvm_get_mdcr_el2(void)
diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
index 48d118fdb174..30c40b1bc385 100644
--- a/include/kvm/arm_spe.h
+++ b/include/kvm/arm_spe.h
@@ -16,4 +16,10 @@ struct kvm_spe {
 	bool irq_level;
 };
 
+#ifdef CONFIG_KVM_ARM_SPE
+#define kvm_arm_spe_v1_ready(v)		((v)->arch.spe.ready)
+#else
+#define kvm_arm_spe_v1_ready(v)		(false)
+#endif /* CONFIG_KVM_ARM_SPE */
+
 #endif /* __ASM_ARM_KVM_SPE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
