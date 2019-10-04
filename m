Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B94CB7ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RutM7Y4qOAaO+i0yQD8LzIcGmm49dpUF3tJ6SN+2wBU=; b=YiFU/Zme4JU/wk
	MfmwmGkyKYQm54ashjN078rCV+Mmkj71nvIJcAW2kf8t7xJn+M1IutK5nCC7ouJE8wBbRw50hRTTU
	T4VvF6f8FHDKO5sGE9rGuF44wS7RpDDYFlVDn1Y2CXZYplrnXNH37zOA1dXq+8TnX2OBbkWRSPdkO
	dVu2UL1/fjUKoriSnV9pdIx7F3lVzDQVjotltlKm08s8soKK76NoW65kQUxErgvLkVaKY6Ez5hv2j
	otPFYrWYNp2FMIhHH3fMGeJH1ZLC/RGlSlpCSFTAgZuerS+TZXLxoizloBSd53+hqh0+eqVo1/THB
	h8yTH98OhTpkNsO5lyfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKVv-0004Kc-1D; Fri, 04 Oct 2019 10:08:43 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKVm-0004Ja-M5
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:08:36 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iGKVj-0007Rq-CG; Fri, 04 Oct 2019 12:08:31 +0200
Date: Fri, 4 Oct 2019 11:08:29 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH] KVM: arm64: pmu: Fix cycle counter truncation on
 counter stop
Message-ID: <20191004110829.63f397de@why>
In-Reply-To: <20191004085554.GQ42880@e119886-lin.cambridge.arm.com>
References: <20191003172400.21157-1-maz@kernel.org>
 <20191004085554.GQ42880@e119886-lin.cambridge.arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_030834_870303_F239CE92 
X-CRM114-Status: GOOD (  28.87  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu,
 Julien Thierry Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 4 Oct 2019 09:55:55 +0100
Andrew Murray <andrew.murray@arm.com> wrote:

> On Thu, Oct 03, 2019 at 06:24:00PM +0100, Marc Zyngier wrote:
> > When a counter is disabled, its value is sampled before the event
> > is being disabled, and the value written back in the shadow register.
> > 
> > In that process, the value gets truncated to 32bit, which is adequate  
> 
> Doh, that shouldn't have happened.
> 
> > for any counter but the cycle counter, which can be configured to
> > hold a 64bit value. This obviously results in a corrupted counter,
> > and things like "perf record -e cycles" not working at all when
> > run in a guest...
> > 
> > Make the truncation conditional on the counter not being 64bit.
> > 
> > Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
> > Cc: Andrew Murray <andrew.murray@arm.com>
> > Reported-by: Julien Thierry Julien Thierry <julien.thierry.kdev@gmail.com>
> > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > ---
> >  virt/kvm/arm/pmu.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> > index 362a01886bab..d716aef2bae9 100644
> > --- a/virt/kvm/arm/pmu.c
> > +++ b/virt/kvm/arm/pmu.c
> > @@ -206,9 +206,11 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
> >  		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
> >  		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
> >  	} else {
> > +		if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
> > +			counter = lower_32_bits(counter);
> >  		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
> >  		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
> > -		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
> > +		__vcpu_sys_reg(vcpu, reg) = counter;  
> 
> The other uses of lower_32_bits look OK to me.
> 
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> 
> As a side note, I'm not convinced that the implementation (or perhaps the
> use of) kvm_pmu_idx_is_64bit is correct:
> 
> static bool kvm_pmu_idx_is_64bit(struct kvm_vcpu *vcpu, u64 select_idx)
> {
>         return (select_idx == ARMV8_PMU_CYCLE_IDX &&
>                 __vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC);
> }
> 
> We shouldn't truncate the value of a cycle counter to 32 bits just because
> _PMCR_LC is unset. We should only be interested in _PMCR_LC when setting
> the sample_period.

That's a good point. The ARMv8 ARM says:

"Long cycle counter enable. Determines when unsigned overflow is
recorded by the cycle counter overflow bit."

which doesn't say anything about the counter being truncated one way or
another.

> If you agree this is wrong, I'll spin a change.

I still think kvm_pmu_idx_is_64bit() correct, and would be easily
extended to supporting the ARMv8.5-PMU extension. However, it'd be
better to just detect the cycle counter in the current patch rather
than relying on the above helper:

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index d716aef2bae9..90a90d8f7280 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -206,7 +206,7 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
 		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
 	} else {
-		if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
+		if (pmc->idx != ARMV8_PMU_CYCLE_IDX)
 			counter = lower_32_bits(counter);
 		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
 		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;


As for revamping the rest of the code, that's 5.5 material.

> Though unsetting _PMCR_LC is deprecated so I can't imagine this causes any
> issue.

Deprecated, yes. Disallowed, no. We'll have to support this as long as
we have 32bit capable stuff in the wild. But we could at least start
with correctly emulating the setting of the LC bit, see below.

Thanks,

	M.

From c421c17ae1e9c90db4b73bd25485580833321f4b Mon Sep 17 00:00:00 2001
From: Marc Zyngier <maz@kernel.org>
Date: Fri, 4 Oct 2019 11:03:09 +0100
Subject: [PATCH] arm64: KVM: Handle PMCR_EL0.LC as RES1 on pure AArch64
 systems

Of PMCR_EL0.LC, the ARMv8 ARM says:

	"In an AArch64 only implementation, this field is RES 1."

So be it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/sys_regs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 2071260a275b..46822afc57e0 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -632,6 +632,8 @@ static void reset_pmcr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
 	 */
 	val = ((pmcr & ~ARMV8_PMU_PMCR_MASK)
 	       | (ARMV8_PMU_PMCR_MASK & 0xdecafbad)) & (~ARMV8_PMU_PMCR_E);
+	if (!system_supports_32bit_el0())
+		val |= ARMV8_PMU_PMCR_LC;
 	__vcpu_sys_reg(vcpu, r->reg) = val;
 }
 
@@ -682,6 +684,8 @@ static bool access_pmcr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 		val = __vcpu_sys_reg(vcpu, PMCR_EL0);
 		val &= ~ARMV8_PMU_PMCR_MASK;
 		val |= p->regval & ARMV8_PMU_PMCR_MASK;
+		if (!system_supports_32bit_el0())
+			val |= ARMV8_PMU_PMCR_LC;
 		__vcpu_sys_reg(vcpu, PMCR_EL0) = val;
 		kvm_pmu_handle_pmcr(vcpu, val);
 		kvm_vcpu_pmu_restore_guest(vcpu);
-- 
2.20.1


-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
