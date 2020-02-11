Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14434159773
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PEAHc6M2zcVDXt/M7Q3eGYfvwOPu5CcPC2WWDMUb68=; b=YCfIsPovLCPm7g
	1PonS3yXD+NeAp2kDx12bFC4Uu+q4ZzLctZecY1W/qJ07qw/qCfoZTLctqqxKfEVHmzv8a3eaXPQk
	DI8oKcZBtiIn31BdN1NV2pWw7CW/p6nUjP9axbmCNlkcPFXMgL/2fSsxIwg8jqMUJb/BlzFnHxEz+
	o4h2YPBuc+QDpggVbBEjQp+OXR+pOwm6G3VCaJtzOJJK+2y+W0n9oa6Tpedxq+OGlKZXOghh9YyFF
	HDG+UYsuXewGnesJGyCBxAUSDcW9ynXzFx00KkvJqtkI73zStepMmfZ8gWKjNXAj1h3s1HYJfj4YB
	DFDmsDiem7KVo8oWDzYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZoB-0000SJ-If; Tue, 11 Feb 2020 17:58:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zh4-0001hz-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6D7820661;
 Tue, 11 Feb 2020 17:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443490;
 bh=LX+303+Rgi1tTyC2KS98Cz+aQmALLYRZoKsrqstynaI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=v7zstlj+OCH39Yrl6ZqpW/XuDf6iza6fP3AkLbgF8CadX4EyXI5aQCWW+ZK7okVXD
 OvodWB1Gu883JiyJlotyk8DFWL47H2UUZzyvVFOwd/BYcw+Dxx/QrEDtooYgXOY65f
 RqqMCR682gj8vat8dJX7L2xMkE5CZTwLKpqHmWf8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgG-004O7k-Ns; Tue, 11 Feb 2020 17:50:40 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 80/94] KVM: arm64: Use accessors for timer ctl/cval/offset
Date: Tue, 11 Feb 2020 17:49:24 +0000
Message-Id: <20200211174938.27809-81-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095130_672417_A555E42D 
X-CRM114-Status: GOOD (  16.34  )
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

Instead of directly accessing the various fields in the timer data
structures, add accessors that provide the same service. By making the
weak, we'll be able to override them in a subsequent patch, making it
possible to move them in the VNCR page, as they will be directly
accessed by the guest.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/arch_timer.c | 104 +++++++++++++++++++++++++-------------
 1 file changed, 68 insertions(+), 36 deletions(-)

diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 3c88a4c0a296..d87e52f7e962 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -62,6 +62,36 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
 			      struct arch_timer_context *timer,
 			      enum kvm_arch_timer_regs treg);
 
+__weak u32 timer_get_ctl(struct arch_timer_context *ctxt)
+{
+	return ctxt->cnt_ctl;
+}
+
+__weak u64 timer_get_cval(struct arch_timer_context *ctxt)
+{
+	return ctxt->cnt_cval;
+}
+
+__weak u64 timer_get_offset(struct arch_timer_context *ctxt)
+{
+	return ctxt->cntvoff;
+}
+
+__weak void timer_set_ctl(struct arch_timer_context *ctxt, u32 ctl)
+{
+	ctxt->cnt_ctl = ctl;
+}
+
+__weak void timer_set_cval(struct arch_timer_context *ctxt, u64 cval)
+{
+	ctxt->cnt_cval = cval;
+}
+
+__weak void timer_set_offset(struct arch_timer_context *ctxt, u64 offset)
+{
+	ctxt->cntvoff = offset;
+}
+
 u64 kvm_phys_timer_read(void)
 {
 	return timecounter->cc->read(timecounter->cc);
@@ -149,8 +179,8 @@ static u64 kvm_timer_compute_delta(struct arch_timer_context *timer_ctx)
 {
 	u64 cval, now;
 
-	cval = timer_ctx->cnt_cval;
-	now = kvm_phys_timer_read() - timer_ctx->cntvoff;
+	cval = timer_get_cval(timer_ctx);
+	now = kvm_phys_timer_read() - timer_get_offset(timer_ctx);
 
 	if (now < cval) {
 		u64 ns;
@@ -169,8 +199,8 @@ static bool kvm_timer_irq_can_fire(struct arch_timer_context *timer_ctx)
 {
 	WARN_ON(timer_ctx && timer_ctx->loaded);
 	return timer_ctx &&
-	       !(timer_ctx->cnt_ctl & ARCH_TIMER_CTRL_IT_MASK) &&
-		(timer_ctx->cnt_ctl & ARCH_TIMER_CTRL_ENABLE);
+		((timer_get_ctl(timer_ctx) &
+		  (ARCH_TIMER_CTRL_IT_MASK | ARCH_TIMER_CTRL_ENABLE)) == ARCH_TIMER_CTRL_ENABLE);
 }
 
 /*
@@ -283,8 +313,8 @@ static bool kvm_timer_should_fire(struct arch_timer_context *timer_ctx)
 	if (!kvm_timer_irq_can_fire(timer_ctx))
 		return false;
 
-	cval = timer_ctx->cnt_cval;
-	now = kvm_phys_timer_read() - timer_ctx->cntvoff;
+	cval = timer_get_cval(timer_ctx);
+	now = kvm_phys_timer_read() - timer_get_offset(timer_ctx);
 
 	return cval <= now;
 }
@@ -379,8 +409,8 @@ static void timer_save_state(struct arch_timer_context *ctx)
 	switch (index) {
 	case TIMER_VTIMER:
 	case TIMER_HVTIMER:
-		ctx->cnt_ctl = read_sysreg_el0(SYS_CNTV_CTL);
-		ctx->cnt_cval = read_sysreg_el0(SYS_CNTV_CVAL);
+		timer_set_ctl(ctx, read_sysreg_el0(SYS_CNTV_CTL));
+		timer_set_cval(ctx, read_sysreg_el0(SYS_CNTV_CVAL));
 
 		/* Disable the timer */
 		write_sysreg_el0(0, SYS_CNTV_CTL);
@@ -389,8 +419,8 @@ static void timer_save_state(struct arch_timer_context *ctx)
 		break;
 	case TIMER_PTIMER:
 	case TIMER_HPTIMER:
-		ctx->cnt_ctl = read_sysreg_el0(SYS_CNTP_CTL);
-		ctx->cnt_cval = read_sysreg_el0(SYS_CNTP_CVAL);
+		timer_set_ctl(ctx, read_sysreg_el0(SYS_CNTP_CTL));
+		timer_set_cval(ctx, read_sysreg_el0(SYS_CNTP_CVAL));
 
 		/* Disable the timer */
 		write_sysreg_el0(0, SYS_CNTP_CTL);
@@ -461,15 +491,15 @@ static void timer_restore_state(struct arch_timer_context *ctx)
 	switch (index) {
 	case TIMER_VTIMER:
 	case TIMER_HVTIMER:
-		write_sysreg_el0(ctx->cnt_cval, SYS_CNTV_CVAL);
+		write_sysreg_el0(timer_get_cval(ctx), SYS_CNTV_CVAL);
 		isb();
-		write_sysreg_el0(ctx->cnt_ctl, SYS_CNTV_CTL);
+		write_sysreg_el0(timer_get_ctl(ctx), SYS_CNTV_CTL);
 		break;
 	case TIMER_PTIMER:
 	case TIMER_HPTIMER:
-		write_sysreg_el0(ctx->cnt_cval, SYS_CNTP_CVAL);
+		write_sysreg_el0(timer_get_cval(ctx), SYS_CNTP_CVAL);
 		isb();
-		write_sysreg_el0(ctx->cnt_ctl, SYS_CNTP_CTL);
+		write_sysreg_el0(timer_get_ctl(ctx), SYS_CNTP_CTL);
 		break;
 	case NR_KVM_TIMERS:
 		BUG();
@@ -608,7 +638,7 @@ void kvm_timer_vcpu_load(struct kvm_vcpu *vcpu)
 		kvm_timer_vcpu_load_nogic(vcpu);
 	}
 
-	set_cntvoff(map.direct_vtimer->cntvoff);
+	set_cntvoff(timer_get_offset(map.direct_vtimer));
 
 	kvm_timer_unblocking(vcpu);
 
@@ -722,10 +752,10 @@ int kvm_timer_vcpu_reset(struct kvm_vcpu *vcpu)
 	 * resets the timer to be disabled and unmasked and is compliant with
 	 * the ARMv7 architecture.
 	 */
-	vcpu_vtimer(vcpu)->cnt_ctl = 0;
-	vcpu_ptimer(vcpu)->cnt_ctl = 0;
-	vcpu_hvtimer(vcpu)->cnt_ctl = 0;
-	vcpu_hptimer(vcpu)->cnt_ctl = 0;
+	timer_set_ctl(vcpu_vtimer(vcpu), 0);
+	timer_set_ctl(vcpu_ptimer(vcpu), 0);
+	timer_set_ctl(vcpu_hvtimer(vcpu), 0);
+	timer_set_ctl(vcpu_hptimer(vcpu), 0);
 
 	if (timer->enabled) {
 		kvm_timer_update_irq(vcpu, false, vcpu_vtimer(vcpu));
@@ -757,13 +787,13 @@ static void update_vtimer_cntvoff(struct kvm_vcpu *vcpu, u64 cntvoff)
 
 	mutex_lock(&kvm->lock);
 	kvm_for_each_vcpu(i, tmp, kvm)
-		vcpu_vtimer(tmp)->cntvoff = cntvoff;
+		timer_set_offset(vcpu_vtimer(tmp), cntvoff);
 
 	/*
 	 * When called from the vcpu create path, the CPU being created is not
 	 * included in the loop above, so we just set it here as well.
 	 */
-	vcpu_vtimer(vcpu)->cntvoff = cntvoff;
+	timer_set_offset(vcpu_vtimer(vcpu), cntvoff);
 	mutex_unlock(&kvm->lock);
 }
 
@@ -777,9 +807,9 @@ void kvm_timer_vcpu_init(struct kvm_vcpu *vcpu)
 
 	/* Synchronize cntvoff across all vtimers of a VM. */
 	update_vtimer_cntvoff(vcpu, kvm_phys_timer_read());
-	ptimer->cntvoff = 0;
-	hvtimer->cntvoff = 0;
-	hptimer->cntvoff = 0;
+	timer_set_offset(ptimer, 0);
+	timer_set_offset(hvtimer, 0);
+	timer_set_offset(hptimer, 0);
 
 	hrtimer_init(&timer->bg_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HARD);
 	timer->bg_timer.function = kvm_bg_timer_expire;
@@ -862,10 +892,12 @@ static u64 read_timer_ctl(struct arch_timer_context *timer)
 	 * UNKNOWN when ENABLE bit is 0, so we chose to set ISTATUS bit
 	 * regardless of ENABLE bit for our implementation convenience.
 	 */
+	u32 ctl = timer_get_ctl(timer);
+
 	if (!kvm_timer_compute_delta(timer))
-		return timer->cnt_ctl | ARCH_TIMER_CTRL_IT_STAT;
-	else
-		return timer->cnt_ctl;
+		ctl |= ARCH_TIMER_CTRL_IT_STAT;
+
+	return ctl;
 }
 
 u64 kvm_arm_timer_get_reg(struct kvm_vcpu *vcpu, u64 regid)
@@ -901,8 +933,8 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
 
 	switch (treg) {
 	case TIMER_REG_TVAL:
-		val = timer->cnt_cval - kvm_phys_timer_read() + timer->cntvoff;
-		val &= lower_32_bits(val);
+		val = timer_get_cval(timer) - kvm_phys_timer_read() + timer_get_offset(timer);
+		val = lower_32_bits(val);
 		break;
 
 	case TIMER_REG_CTL:
@@ -910,15 +942,15 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
 		break;
 
 	case TIMER_REG_CVAL:
-		val = timer->cnt_cval;
+		val = timer_get_cval(timer);
 		break;
 
 	case TIMER_REG_CNT:
-		val = kvm_phys_timer_read() - timer->cntvoff;
+		val = kvm_phys_timer_read() - timer_get_offset(timer);
 		break;
 
 	case TIMER_REG_VOFF:
-		val = timer->cntvoff;
+		val = timer_get_offset(timer);
 		break;
 
 	default:
@@ -952,19 +984,19 @@ static void kvm_arm_timer_write(struct kvm_vcpu *vcpu,
 {
 	switch (treg) {
 	case TIMER_REG_TVAL:
-		timer->cnt_cval = kvm_phys_timer_read() - timer->cntvoff + (s32)val;
+		timer_set_cval(timer, kvm_phys_timer_read() - timer_get_offset(timer) + (s32)val);
 		break;
 
 	case TIMER_REG_CTL:
-		timer->cnt_ctl = val & ~ARCH_TIMER_CTRL_IT_STAT;
+		timer_set_ctl(timer, val & ~ARCH_TIMER_CTRL_IT_STAT);
 		break;
 
 	case TIMER_REG_CVAL:
-		timer->cnt_cval = val;
+		timer_set_cval(timer, val);
 		break;
 
 	case TIMER_REG_VOFF:
-		timer->cntvoff = val;
+		timer_set_offset(timer, val);
 		break;
 
 	default:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
