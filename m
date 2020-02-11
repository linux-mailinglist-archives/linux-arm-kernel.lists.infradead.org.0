Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5E7159778
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:59:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOu1WlMMvZS90M4R2MvPKFJQhXpLsydbhVTE36nGWOU=; b=dI+WWsqI6CSzrr
	LmKDjL5FfmPqNcWhMIYY0QYGgGiYwMR/OJVNnQXYmu39kf7M+QRMSX0NBRuSa7YDQXsJH9V3pF7r5
	VAbiOvgebsiCHafdt1gChlaNABTE7vbSos92bh4mahZwh5dCUfzfNISY7hPVM2TcPBAIcLsj14jSl
	hhI6z6nqHmmKpkWMTEFx2/elpyNgcUBxIlU/FkrAluqmB8oVJZLdnj4RtfecOzvK/JBfh9G9FSa9a
	6v53T5ghf65E8EUcCPYksNv0AjU1TfaOuRAGaH4VYVhxlPq+2lcQbcsteIriJCj8p3WJuOiOq+AFi
	4en21TUjjT2NaalXhlDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zog-0000w2-SW; Tue, 11 Feb 2020 17:59:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zh6-0001kP-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:38 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7BF5206CC;
 Tue, 11 Feb 2020 17:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443492;
 bh=oKOt586Hw/FYzzsaPStgL8cuvs/A9mi+9t8W0g5iYgY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BEBawLp+JhAhObhrmYPBy07/lO+fYckX9jZBXxsP9IqXOTc/OFHYZYKGFFEQ89/SP
 LqgkC856/akeQwBWlw+yuVXfYUocAvXhx1g5njblrg1RttWPsFUxL0xqefLKGSI/Ut
 vUjwWi8HI3l/qXKxKeVkjAg72UbnvYihXVn7tuqA=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfx-004O7k-Kb; Tue, 11 Feb 2020 17:50:21 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 48/94] KVM: arm64: nv: arch_timer: Support hyp timer
 emulation
Date: Tue, 11 Feb 2020 17:48:52 +0000
Message-Id: <20200211174938.27809-49-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095132_904748_2AE664CB 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

Emulating EL2 also means emulating the EL2 timers. To do so, we expand
our timer framework to deal with at most 4 timers. At any given time,
two timers are using the HW timers, and the two others are purely
emulated.

The role of deciding which is which at any given time is left to a
mapping function which is called every time we need to make such a
decision.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_emulate.h |   2 +
 include/kvm/arm_arch_timer.h       |   5 ++
 include/kvm/arm_vgic.h             |   1 +
 virt/kvm/arm/arch_timer.c          | 124 ++++++++++++++++++++++++++++-
 virt/kvm/arm/trace.h               |   6 +-
 virt/kvm/arm/vgic/vgic.c           |  15 ++++
 6 files changed, 149 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
index 3944305e81df..bc94dcc83ffa 100644
--- a/arch/arm/include/asm/kvm_emulate.h
+++ b/arch/arm/include/asm/kvm_emulate.h
@@ -369,4 +369,6 @@ static inline unsigned long vcpu_data_host_to_guest(struct kvm_vcpu *vcpu,
 
 static inline void vcpu_ptrauth_setup_lazy(struct kvm_vcpu *vcpu) {}
 
+static inline bool is_hyp_ctxt(struct kvm_vcpu *vcpu) { return false; }
+
 #endif /* __ARM_KVM_EMULATE_H__ */
diff --git a/include/kvm/arm_arch_timer.h b/include/kvm/arm_arch_timer.h
index d120e6c323e7..3a5d9255120e 100644
--- a/include/kvm/arm_arch_timer.h
+++ b/include/kvm/arm_arch_timer.h
@@ -13,6 +13,8 @@
 enum kvm_arch_timers {
 	TIMER_PTIMER,
 	TIMER_VTIMER,
+	TIMER_HVTIMER,
+	TIMER_HPTIMER,
 	NR_KVM_TIMERS
 };
 
@@ -54,6 +56,7 @@ struct arch_timer_context {
 struct timer_map {
 	struct arch_timer_context *direct_vtimer;
 	struct arch_timer_context *direct_ptimer;
+	struct arch_timer_context *emul_vtimer;
 	struct arch_timer_context *emul_ptimer;
 };
 
@@ -98,6 +101,8 @@ bool kvm_arch_timer_get_input_level(int vintid);
 #define vcpu_get_timer(v,t)	(&vcpu_timer(v)->timers[(t)])
 #define vcpu_vtimer(v)	(&(v)->arch.timer_cpu.timers[TIMER_VTIMER])
 #define vcpu_ptimer(v)	(&(v)->arch.timer_cpu.timers[TIMER_PTIMER])
+#define vcpu_hvtimer(v)	(&(v)->arch.timer_cpu.timers[TIMER_HVTIMER])
+#define vcpu_hptimer(v)	(&(v)->arch.timer_cpu.timers[TIMER_HPTIMER])
 
 #define arch_timer_ctx_index(ctx)	((ctx) - vcpu_timer((ctx)->vcpu)->timers)
 
diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 9d53f545a3d5..1b477c662608 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -346,6 +346,7 @@ int kvm_vgic_inject_irq(struct kvm *kvm, int cpuid, unsigned int intid,
 int kvm_vgic_map_phys_irq(struct kvm_vcpu *vcpu, unsigned int host_irq,
 			  u32 vintid, bool (*get_input_level)(int vindid));
 int kvm_vgic_unmap_phys_irq(struct kvm_vcpu *vcpu, unsigned int vintid);
+int kvm_vgic_get_map(struct kvm_vcpu *vcpu, unsigned int vintid);
 bool kvm_vgic_map_is_active(struct kvm_vcpu *vcpu, unsigned int vintid);
 
 int kvm_vgic_vcpu_pending_irq(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 0d9438e9de2a..c7edefced838 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -15,6 +15,7 @@
 #include <asm/arch_timer.h>
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_hyp.h>
+#include <asm/kvm_nested.h>
 
 #include <kvm/arm_vgic.h>
 #include <kvm/arm_arch_timer.h>
@@ -39,6 +40,16 @@ static const struct kvm_irq_level default_vtimer_irq = {
 	.level	= 1,
 };
 
+static const struct kvm_irq_level default_hptimer_irq = {
+	.irq	= 26,
+	.level	= 1,
+};
+
+static const struct kvm_irq_level default_hvtimer_irq = {
+	.irq	= 28,
+	.level	= 1,
+};
+
 static bool kvm_timer_irq_can_fire(struct arch_timer_context *timer_ctx);
 static void kvm_timer_update_irq(struct kvm_vcpu *vcpu, bool new_level,
 				 struct arch_timer_context *timer_ctx);
@@ -58,13 +69,27 @@ u64 kvm_phys_timer_read(void)
 
 static void get_timer_map(struct kvm_vcpu *vcpu, struct timer_map *map)
 {
-	if (has_vhe()) {
+	if (nested_virt_in_use(vcpu)) {
+		if (is_hyp_ctxt(vcpu)) {
+			map->direct_vtimer = vcpu_hvtimer(vcpu);
+			map->direct_ptimer = vcpu_hptimer(vcpu);
+			map->emul_vtimer = vcpu_vtimer(vcpu);
+			map->emul_ptimer = vcpu_ptimer(vcpu);
+		} else {
+			map->direct_vtimer = vcpu_vtimer(vcpu);
+			map->direct_ptimer = vcpu_ptimer(vcpu);
+			map->emul_vtimer = vcpu_hvtimer(vcpu);
+			map->emul_ptimer = vcpu_hptimer(vcpu);
+		}
+	} else if (has_vhe()) {
 		map->direct_vtimer = vcpu_vtimer(vcpu);
 		map->direct_ptimer = vcpu_ptimer(vcpu);
+		map->emul_vtimer = NULL;
 		map->emul_ptimer = NULL;
 	} else {
 		map->direct_vtimer = vcpu_vtimer(vcpu);
 		map->direct_ptimer = NULL;
+		map->emul_vtimer = NULL;
 		map->emul_ptimer = vcpu_ptimer(vcpu);
 	}
 
@@ -237,9 +262,11 @@ static bool kvm_timer_should_fire(struct arch_timer_context *timer_ctx)
 
 		switch (index) {
 		case TIMER_VTIMER:
+		case TIMER_HVTIMER:
 			cnt_ctl = read_sysreg_el0(SYS_CNTV_CTL);
 			break;
 		case TIMER_PTIMER:
+		case TIMER_HPTIMER:
 			cnt_ctl = read_sysreg_el0(SYS_CNTP_CTL);
 			break;
 		case NR_KVM_TIMERS:
@@ -270,6 +297,7 @@ bool kvm_timer_is_pending(struct kvm_vcpu *vcpu)
 
 	return kvm_timer_should_fire(map.direct_vtimer) ||
 	       kvm_timer_should_fire(map.direct_ptimer) ||
+	       kvm_timer_should_fire(map.emul_vtimer) ||
 	       kvm_timer_should_fire(map.emul_ptimer);
 }
 
@@ -350,6 +378,7 @@ static void timer_save_state(struct arch_timer_context *ctx)
 
 	switch (index) {
 	case TIMER_VTIMER:
+	case TIMER_HVTIMER:
 		ctx->cnt_ctl = read_sysreg_el0(SYS_CNTV_CTL);
 		ctx->cnt_cval = read_sysreg_el0(SYS_CNTV_CVAL);
 
@@ -359,6 +388,7 @@ static void timer_save_state(struct arch_timer_context *ctx)
 
 		break;
 	case TIMER_PTIMER:
+	case TIMER_HPTIMER:
 		ctx->cnt_ctl = read_sysreg_el0(SYS_CNTP_CTL);
 		ctx->cnt_cval = read_sysreg_el0(SYS_CNTP_CVAL);
 
@@ -396,6 +426,7 @@ static void kvm_timer_blocking(struct kvm_vcpu *vcpu)
 	 */
 	if (!kvm_timer_irq_can_fire(map.direct_vtimer) &&
 	    !kvm_timer_irq_can_fire(map.direct_ptimer) &&
+	    !kvm_timer_irq_can_fire(map.emul_vtimer) &&
 	    !kvm_timer_irq_can_fire(map.emul_ptimer))
 		return;
 
@@ -429,11 +460,13 @@ static void timer_restore_state(struct arch_timer_context *ctx)
 
 	switch (index) {
 	case TIMER_VTIMER:
+	case TIMER_HVTIMER:
 		write_sysreg_el0(ctx->cnt_cval, SYS_CNTV_CVAL);
 		isb();
 		write_sysreg_el0(ctx->cnt_ctl, SYS_CNTV_CTL);
 		break;
 	case TIMER_PTIMER:
+	case TIMER_HPTIMER:
 		write_sysreg_el0(ctx->cnt_cval, SYS_CNTP_CVAL);
 		isb();
 		write_sysreg_el0(ctx->cnt_ctl, SYS_CNTP_CTL);
@@ -520,6 +553,40 @@ static void kvm_timer_vcpu_load_nogic(struct kvm_vcpu *vcpu)
 		enable_percpu_irq(host_vtimer_irq, host_vtimer_irq_flags);
 }
 
+static void kvm_timer_vcpu_load_nested_switch(struct kvm_vcpu *vcpu,
+					      struct timer_map *map)
+{
+	int hw, ret;
+
+	if (!irqchip_in_kernel(vcpu->kvm))
+		return;
+
+	/*
+	 * We only ever unmap the vtimer irq on a VHE system that runs nested
+	 * virtualization, in which case we have both a valid emul_vtimer,
+	 * emul_ptimer, direct_vtimer, and direct_ptimer.
+	 *
+	 * Since this is called from kvm_timer_vcpu_load(), a change between
+	 * vEL2 and vEL1/0 will have just happened, and the timer_map will
+	 * represent this, and therefore we switch the emul/direct mappings
+	 * below.
+	 */
+	hw = kvm_vgic_get_map(vcpu, map->direct_vtimer->irq.irq);
+	if (hw < 0) {
+		kvm_vgic_unmap_phys_irq(vcpu, map->emul_vtimer->irq.irq);
+		kvm_vgic_unmap_phys_irq(vcpu, map->emul_ptimer->irq.irq);
+
+		ret = kvm_vgic_map_phys_irq(vcpu,
+					    map->direct_vtimer->host_timer_irq,
+					    map->direct_vtimer->irq.irq,
+					    kvm_arch_timer_get_input_level);
+		ret = kvm_vgic_map_phys_irq(vcpu,
+					    map->direct_ptimer->host_timer_irq,
+					    map->direct_ptimer->irq.irq,
+					    kvm_arch_timer_get_input_level);
+	}
+}
+
 void kvm_timer_vcpu_load(struct kvm_vcpu *vcpu)
 {
 	struct arch_timer_cpu *timer = vcpu_timer(vcpu);
@@ -531,6 +598,9 @@ void kvm_timer_vcpu_load(struct kvm_vcpu *vcpu)
 	get_timer_map(vcpu, &map);
 
 	if (static_branch_likely(&has_gic_active_state)) {
+		if (nested_virt_in_use(vcpu))
+			kvm_timer_vcpu_load_nested_switch(vcpu, &map);
+
 		kvm_timer_vcpu_load_gic(map.direct_vtimer);
 		if (map.direct_ptimer)
 			kvm_timer_vcpu_load_gic(map.direct_ptimer);
@@ -546,6 +616,8 @@ void kvm_timer_vcpu_load(struct kvm_vcpu *vcpu)
 	if (map.direct_ptimer)
 		timer_restore_state(map.direct_ptimer);
 
+	if (map.emul_vtimer)
+		timer_emulate(map.emul_vtimer);
 	if (map.emul_ptimer)
 		timer_emulate(map.emul_ptimer);
 }
@@ -590,6 +662,8 @@ void kvm_timer_vcpu_put(struct kvm_vcpu *vcpu)
 	 * In any case, we re-schedule the hrtimer for the physical timer when
 	 * coming back to the VCPU thread in kvm_timer_vcpu_load().
 	 */
+	if (map.emul_vtimer)
+		soft_timer_cancel(&map.emul_vtimer->hrtimer);
 	if (map.emul_ptimer)
 		soft_timer_cancel(&map.emul_ptimer->hrtimer);
 
@@ -650,10 +724,14 @@ int kvm_timer_vcpu_reset(struct kvm_vcpu *vcpu)
 	 */
 	vcpu_vtimer(vcpu)->cnt_ctl = 0;
 	vcpu_ptimer(vcpu)->cnt_ctl = 0;
+	vcpu_hvtimer(vcpu)->cnt_ctl = 0;
+	vcpu_hptimer(vcpu)->cnt_ctl = 0;
 
 	if (timer->enabled) {
 		kvm_timer_update_irq(vcpu, false, vcpu_vtimer(vcpu));
 		kvm_timer_update_irq(vcpu, false, vcpu_ptimer(vcpu));
+		kvm_timer_update_irq(vcpu, false, vcpu_hvtimer(vcpu));
+		kvm_timer_update_irq(vcpu, false, vcpu_hptimer(vcpu));
 
 		if (irqchip_in_kernel(vcpu->kvm)) {
 			kvm_vgic_reset_mapped_irq(vcpu, map.direct_vtimer->irq.irq);
@@ -662,6 +740,8 @@ int kvm_timer_vcpu_reset(struct kvm_vcpu *vcpu)
 		}
 	}
 
+	if (map.emul_vtimer)
+		soft_timer_cancel(&map.emul_vtimer->hrtimer);
 	if (map.emul_ptimer)
 		soft_timer_cancel(&map.emul_ptimer->hrtimer);
 
@@ -692,30 +772,47 @@ void kvm_timer_vcpu_init(struct kvm_vcpu *vcpu)
 	struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 	struct arch_timer_context *vtimer = vcpu_vtimer(vcpu);
 	struct arch_timer_context *ptimer = vcpu_ptimer(vcpu);
+	struct arch_timer_context *hvtimer = vcpu_hvtimer(vcpu);
+	struct arch_timer_context *hptimer = vcpu_hptimer(vcpu);
 
 	/* Synchronize cntvoff across all vtimers of a VM. */
 	update_vtimer_cntvoff(vcpu, kvm_phys_timer_read());
 	ptimer->cntvoff = 0;
+	hvtimer->cntvoff = 0;
+	hptimer->cntvoff = 0;
 
 	hrtimer_init(&timer->bg_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HARD);
 	timer->bg_timer.function = kvm_bg_timer_expire;
 
 	hrtimer_init(&vtimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HARD);
 	hrtimer_init(&ptimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HARD);
+	hrtimer_init(&hvtimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HARD);
+	hrtimer_init(&hptimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HARD);
+
 	vtimer->hrtimer.function = kvm_hrtimer_expire;
 	ptimer->hrtimer.function = kvm_hrtimer_expire;
+	hvtimer->hrtimer.function = kvm_hrtimer_expire;
+	hptimer->hrtimer.function = kvm_hrtimer_expire;
 
 	vtimer->irq.irq = default_vtimer_irq.irq;
 	ptimer->irq.irq = default_ptimer_irq.irq;
+	hvtimer->irq.irq = default_hvtimer_irq.irq;
+	hptimer->irq.irq = default_hptimer_irq.irq;
 
 	vtimer->host_timer_irq = host_vtimer_irq;
 	ptimer->host_timer_irq = host_ptimer_irq;
+	hvtimer->host_timer_irq = host_vtimer_irq;
+	hptimer->host_timer_irq = host_ptimer_irq;
 
 	vtimer->host_timer_irq_flags = host_vtimer_irq_flags;
 	ptimer->host_timer_irq_flags = host_ptimer_irq_flags;
+	hvtimer->host_timer_irq_flags = host_vtimer_irq_flags;
+	hptimer->host_timer_irq_flags = host_ptimer_irq_flags;
 
 	vtimer->vcpu = vcpu;
 	ptimer->vcpu = vcpu;
+	hvtimer->vcpu = vcpu;
+	hptimer->vcpu = vcpu;
 }
 
 static void kvm_timer_init_interrupt(void *info)
@@ -999,7 +1096,7 @@ void kvm_timer_vcpu_terminate(struct kvm_vcpu *vcpu)
 
 static bool timer_irqs_are_valid(struct kvm_vcpu *vcpu)
 {
-	int vtimer_irq, ptimer_irq;
+	int vtimer_irq, ptimer_irq, hvtimer_irq, hptimer_irq;
 	int i, ret;
 
 	vtimer_irq = vcpu_vtimer(vcpu)->irq.irq;
@@ -1012,9 +1109,21 @@ static bool timer_irqs_are_valid(struct kvm_vcpu *vcpu)
 	if (ret)
 		return false;
 
+	hvtimer_irq = vcpu_hvtimer(vcpu)->irq.irq;
+	ret = kvm_vgic_set_owner(vcpu, hvtimer_irq, vcpu_hvtimer(vcpu));
+	if (ret)
+		return false;
+
+	hptimer_irq = vcpu_hptimer(vcpu)->irq.irq;
+	ret = kvm_vgic_set_owner(vcpu, hptimer_irq, vcpu_hptimer(vcpu));
+	if (ret)
+		return false;
+
 	kvm_for_each_vcpu(i, vcpu, vcpu->kvm) {
 		if (vcpu_vtimer(vcpu)->irq.irq != vtimer_irq ||
-		    vcpu_ptimer(vcpu)->irq.irq != ptimer_irq)
+		    vcpu_ptimer(vcpu)->irq.irq != ptimer_irq ||
+		    vcpu_hvtimer(vcpu)->irq.irq != hvtimer_irq ||
+		    vcpu_hptimer(vcpu)->irq.irq != hptimer_irq)
 			return false;
 	}
 
@@ -1030,6 +1139,10 @@ bool kvm_arch_timer_get_input_level(int vintid)
 		timer = vcpu_vtimer(vcpu);
 	else if (vintid == vcpu_ptimer(vcpu)->irq.irq)
 		timer = vcpu_ptimer(vcpu);
+	else if (vintid == vcpu_hvtimer(vcpu)->irq.irq)
+		timer = vcpu_hvtimer(vcpu);
+	else if (vintid == vcpu_hptimer(vcpu)->irq.irq)
+		timer = vcpu_hptimer(vcpu);
 	else
 		BUG();
 
@@ -1111,6 +1224,7 @@ static void set_timer_irqs(struct kvm *kvm, int vtimer_irq, int ptimer_irq)
 	kvm_for_each_vcpu(i, vcpu, kvm) {
 		vcpu_vtimer(vcpu)->irq.irq = vtimer_irq;
 		vcpu_ptimer(vcpu)->irq.irq = ptimer_irq;
+		/* TODO: Add support for hv/hp timers */
 	}
 }
 
@@ -1121,6 +1235,8 @@ int kvm_arm_timer_set_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
 	struct arch_timer_context *ptimer = vcpu_ptimer(vcpu);
 	int irq;
 
+	/* TODO: Add support for hv/hp timers */
+
 	if (!irqchip_in_kernel(vcpu->kvm))
 		return -EINVAL;
 
@@ -1153,6 +1269,8 @@ int kvm_arm_timer_get_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
 	struct arch_timer_context *timer;
 	int irq;
 
+	/* TODO: Add support for hv/hp timers */
+
 	switch (attr->attr) {
 	case KVM_ARM_VCPU_TIMER_IRQ_VTIMER:
 		timer = vcpu_vtimer(vcpu);
diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
index 204d210d01c2..3b08cc0376f4 100644
--- a/virt/kvm/arm/trace.h
+++ b/virt/kvm/arm/trace.h
@@ -271,6 +271,7 @@ TRACE_EVENT(kvm_get_timer_map,
 		__field(	unsigned long,		vcpu_id	)
 		__field(	int,			direct_vtimer	)
 		__field(	int,			direct_ptimer	)
+		__field(	int,			emul_vtimer	)
 		__field(	int,			emul_ptimer	)
 	),
 
@@ -279,14 +280,17 @@ TRACE_EVENT(kvm_get_timer_map,
 		__entry->direct_vtimer		= arch_timer_ctx_index(map->direct_vtimer);
 		__entry->direct_ptimer =
 			(map->direct_ptimer) ? arch_timer_ctx_index(map->direct_ptimer) : -1;
+		__entry->emul_vtimer =
+			(map->emul_vtimer) ? arch_timer_ctx_index(map->emul_vtimer) : -1;
 		__entry->emul_ptimer =
 			(map->emul_ptimer) ? arch_timer_ctx_index(map->emul_ptimer) : -1;
 	),
 
-	TP_printk("VCPU: %ld, dv: %d, dp: %d, ep: %d",
+	TP_printk("VCPU: %ld, dv: %d, dp: %d, ev: %d, ep: %d",
 		  __entry->vcpu_id,
 		  __entry->direct_vtimer,
 		  __entry->direct_ptimer,
+		  __entry->emul_vtimer,
 		  __entry->emul_ptimer)
 );
 
diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 99b02ca730a8..4cbaf0020277 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -573,6 +573,21 @@ int kvm_vgic_unmap_phys_irq(struct kvm_vcpu *vcpu, unsigned int vintid)
 	return 0;
 }
 
+int kvm_vgic_get_map(struct kvm_vcpu *vcpu, unsigned int vintid)
+{
+	struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, vintid);
+	unsigned long flags;
+	int ret = -1;
+
+	raw_spin_lock_irqsave(&irq->irq_lock, flags);
+	if (irq->hw)
+		ret = irq->hwintid;
+	raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+
+	vgic_put_irq(vcpu->kvm, irq);
+	return ret;
+}
+
 /**
  * kvm_vgic_set_owner - Set the owner of an interrupt for a VM
  *
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
