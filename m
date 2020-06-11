Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7818E1F6477
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/+qDkFogHD+jOHNvXVVMNNw+LRrVnuhNILqynMwpyk=; b=c80CrJ3lHF0nce
	avmzdLv/ywsgpQKKWsmpTu/pgVWQzDdsXVgCz200eQcebNTig9l/9wsmPUxlvEgZaBd/SnVi1lh1r
	RNIGU3R8CnBTnzpxeeB8dkrwocxveSo7jAf0/ZOlHOp44tcEm3pWUe0L3khTS1E0QyLS5VWVbXWzq
	SpAjc6JqnL82vee3mVA/1wA+OW/4exLG6cH/Dks+n5m/gDd2gNe5+3foOwRwsDPoM3A4R+e/ASoCo
	fd0RwXNMEOA56Vhn5hfvozpV0W6SWEHzvxPzdbqGzFmCeB05wd+I9ai5MoHmyoY69tAG5GqoiiVNC
	TDR2EEsCdH2KLCyoxXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJGN-0007Xn-Ku; Thu, 11 Jun 2020 09:12:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJDy-0005b3-LK
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 09:10:16 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1798A207C3;
 Thu, 11 Jun 2020 09:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591866614;
 bh=msEjGp4qDF0WnQuD0W2AqRNSO4fEbHNst04epMYw4SU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r6y3dHfHlFSyqXl+fUZa1w7c5vU1P3oQnxhvkIPj+d/U/Gm5KEC7XkCbUswSTmlRc
 t/JX4ypc4EMazkDP/GeWami4757LK6A5h9QpUxxaDVT8mS0xSol4aKI4x32zHIm+Op
 pxZ3EMxpI+yF0EwBl7plsevHcqFCxwOj8PSSZ1TU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjJDw-0022ZT-KQ; Thu, 11 Jun 2020 10:10:12 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 08/11] KVM: arm64: Remove host_cpu_context member from vcpu
 structure
Date: Thu, 11 Jun 2020 10:09:53 +0100
Message-Id: <20200611090956.1537104-9-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611090956.1537104-1-maz@kernel.org>
References: <20200611090956.1537104-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, james.morse@arm.com, mark.rutland@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_021014_761266_34ABE323 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For very long, we have kept this pointer back to the per-cpu
host state, despite having working per-cpu accessors at EL2
for some time now.

Recent investigations have shown that this pointer is easy
to abuse in preemptible context, which is a sure sign that
it would better be gone. Not to mention that a per-cpu
pointer is faster to access at all times.

Reported-by: Andrew Scull <ascull@google.com>
Acked-by: Mark Rutland <mark.rutland@arm.com
Reviewed-by: Andrew Scull <ascull@google.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_host.h | 3 ---
 arch/arm64/kvm/arm.c              | 3 ---
 arch/arm64/kvm/hyp/debug-sr.c     | 4 ++--
 arch/arm64/kvm/hyp/switch.c       | 6 +++---
 arch/arm64/kvm/hyp/sysreg-sr.c    | 6 ++++--
 arch/arm64/kvm/pmu.c              | 8 ++------
 6 files changed, 11 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 59029e90b557..ada1faa92211 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -284,9 +284,6 @@ struct kvm_vcpu_arch {
 	struct kvm_guest_debug_arch vcpu_debug_state;
 	struct kvm_guest_debug_arch external_debug_state;
 
-	/* Pointer to host CPU context */
-	struct kvm_cpu_context *host_cpu_context;
-
 	struct thread_info *host_thread_info;	/* hyp VA */
 	struct user_fpsimd_state *host_fpsimd_state;	/* hyp VA */
 
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 14b747266607..6ddaa23ef346 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -340,10 +340,8 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
 void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 {
 	int *last_ran;
-	kvm_host_data_t *cpu_data;
 
 	last_ran = this_cpu_ptr(vcpu->kvm->arch.last_vcpu_ran);
-	cpu_data = this_cpu_ptr(&kvm_host_data);
 
 	/*
 	 * We might get preempted before the vCPU actually runs, but
@@ -355,7 +353,6 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	}
 
 	vcpu->cpu = cpu;
-	vcpu->arch.host_cpu_context = &cpu_data->host_ctxt;
 
 	kvm_vgic_load(vcpu);
 	kvm_timer_vcpu_load(vcpu);
diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index 0fc9872a1467..e95af204fec7 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -185,7 +185,7 @@ void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
 
-	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
 	guest_ctxt = &vcpu->arch.ctxt;
 	host_dbg = &vcpu->arch.host_debug_state.regs;
 	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
@@ -207,7 +207,7 @@ void __hyp_text __debug_switch_to_host(struct kvm_vcpu *vcpu)
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
 
-	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
 	guest_ctxt = &vcpu->arch.ctxt;
 	host_dbg = &vcpu->arch.host_debug_state.regs;
 	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index d60c2ef0fe8c..1853c1788e0c 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -532,7 +532,7 @@ static bool __hyp_text __hyp_handle_ptrauth(struct kvm_vcpu *vcpu)
 	    !esr_is_ptrauth_trap(kvm_vcpu_get_hsr(vcpu)))
 		return false;
 
-	ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
 	__ptrauth_save_key(ctxt->sys_regs, APIA);
 	__ptrauth_save_key(ctxt->sys_regs, APIB);
 	__ptrauth_save_key(ctxt->sys_regs, APDA);
@@ -703,7 +703,7 @@ static int __kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 	struct kvm_cpu_context *guest_ctxt;
 	u64 exit_code;
 
-	host_ctxt = vcpu->arch.host_cpu_context;
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
 	host_ctxt->__hyp_running_vcpu = vcpu;
 	guest_ctxt = &vcpu->arch.ctxt;
 
@@ -808,7 +808,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 
 	vcpu = kern_hyp_va(vcpu);
 
-	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
 	host_ctxt->__hyp_running_vcpu = vcpu;
 	guest_ctxt = &vcpu->arch.ctxt;
 
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 6d2df9fe0b5d..143d7b7358f2 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -265,12 +265,13 @@ void __hyp_text __sysreg32_restore_state(struct kvm_vcpu *vcpu)
  */
 void kvm_vcpu_load_sysregs(struct kvm_vcpu *vcpu)
 {
-	struct kvm_cpu_context *host_ctxt = vcpu->arch.host_cpu_context;
 	struct kvm_cpu_context *guest_ctxt = &vcpu->arch.ctxt;
+	struct kvm_cpu_context *host_ctxt;
 
 	if (!has_vhe())
 		return;
 
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
 	__sysreg_save_user_state(host_ctxt);
 
 	/*
@@ -301,12 +302,13 @@ void kvm_vcpu_load_sysregs(struct kvm_vcpu *vcpu)
  */
 void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu)
 {
-	struct kvm_cpu_context *host_ctxt = vcpu->arch.host_cpu_context;
 	struct kvm_cpu_context *guest_ctxt = &vcpu->arch.ctxt;
+	struct kvm_cpu_context *host_ctxt;
 
 	if (!has_vhe())
 		return;
 
+	host_ctxt = &__hyp_this_cpu_ptr(kvm_host_data)->host_ctxt;
 	deactivate_traps_vhe_put();
 
 	__sysreg_save_el1_state(guest_ctxt);
diff --git a/arch/arm64/kvm/pmu.c b/arch/arm64/kvm/pmu.c
index e71d00bb5271..b5ae3a5d509e 100644
--- a/arch/arm64/kvm/pmu.c
+++ b/arch/arm64/kvm/pmu.c
@@ -163,15 +163,13 @@ static void kvm_vcpu_pmu_disable_el0(unsigned long events)
  */
 void kvm_vcpu_pmu_restore_guest(struct kvm_vcpu *vcpu)
 {
-	struct kvm_cpu_context *host_ctxt;
 	struct kvm_host_data *host;
 	u32 events_guest, events_host;
 
 	if (!has_vhe())
 		return;
 
-	host_ctxt = vcpu->arch.host_cpu_context;
-	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	host = this_cpu_ptr(&kvm_host_data);
 	events_guest = host->pmu_events.events_guest;
 	events_host = host->pmu_events.events_host;
 
@@ -184,15 +182,13 @@ void kvm_vcpu_pmu_restore_guest(struct kvm_vcpu *vcpu)
  */
 void kvm_vcpu_pmu_restore_host(struct kvm_vcpu *vcpu)
 {
-	struct kvm_cpu_context *host_ctxt;
 	struct kvm_host_data *host;
 	u32 events_guest, events_host;
 
 	if (!has_vhe())
 		return;
 
-	host_ctxt = vcpu->arch.host_cpu_context;
-	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	host = this_cpu_ptr(&kvm_host_data);
 	events_guest = host->pmu_events.events_guest;
 	events_host = host->pmu_events.events_host;
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
