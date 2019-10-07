Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A433ACDDA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGdhL7VPDkwyDC8BVE0TeSojVfOGl2ZgcjlojSKhrXU=; b=J92PygsOSOlQvY
	+skn6pxYnpcbF0QVU0bx9xm8jfBGZvSJgiPFM7kdRZIY4tM1qElVZ3eE1VgiuzexdY9vMaupm80ca
	GodrOEd2m3Hcr+il4bUVHke1y/KDUaelFc0PjW7krNvMCWRD188M1SyJex4hEzKyv9mGhd3quEoo1
	qWjf+JudN9GVSimq7emW4opmWaHJ9KumngoA/VM940Na5NuvQzN6eavJFl+dReT4YBDp5BR0rCglQ
	Y2RtHKgKOngr+YAE6EhfhjZSnmEX0IHATBQ2TcxyNWhODjDav0Fjwo+e3cyzAph46zUhgGWRbi8lp
	ej28QlaTU9aigXuZ1FcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOgd-0001FJ-9A; Mon, 07 Oct 2019 08:48:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOgX-0001El-17
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 08:48:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A681A1570;
 Mon,  7 Oct 2019 01:48:02 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 29A753F68E;
 Mon,  7 Oct 2019 01:48:02 -0700 (PDT)
Date: Mon, 7 Oct 2019 09:48:00 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: maz@kernel.org
Subject: Re: [PATCH 1/3] KVM: arm64: pmu: Fix cycle counter truncation
Message-ID: <20191007084800.GW42880@e119886-lin.cambridge.arm.com>
References: <20191006104636.11194-1-maz@kernel.org>
 <20191006104636.11194-2-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006104636.11194-2-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_014805_121154_83F631F8 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 11:46:34AM +0100, maz@kernel.org wrote:
> From: Marc Zyngier <maz@kernel.org>
> 
> When a counter is disabled, its value is sampled before the event
> is being disabled, and the value written back in the shadow register.
> 
> In that process, the value gets truncated to 32bit, which is adequate
> for any counter but the cycle counter (defined as a 64bit counter).
> 
> This obviously results in a corrupted counter, and things like
> "perf record -e cycles" not working at all when run in a guest...
> A similar, but less critical bug exists in kvm_pmu_get_counter_value.
> 
> Make the truncation conditional on the counter not being the cycle
> counter, which results in a minor code reorganisation.
> 
> Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
> Cc: Andrew Murray <andrew.murray@arm.com>
> Reported-by: Julien Thierry <julien.thierry.kdev@gmail.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  virt/kvm/arm/pmu.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index 362a01886bab..c30c3a74fc7f 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -146,8 +146,7 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
>  	if (kvm_pmu_pmc_is_chained(pmc) &&
>  	    kvm_pmu_idx_is_high_counter(select_idx))
>  		counter = upper_32_bits(counter);
> -
> -	else if (!kvm_pmu_idx_is_64bit(vcpu, select_idx))
> +	else if (select_idx != ARMV8_PMU_CYCLE_IDX)
>  		counter = lower_32_bits(counter);
>  
>  	return counter;
> @@ -193,7 +192,7 @@ static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
>   */
>  static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
>  {
> -	u64 counter, reg;
> +	u64 counter, reg, val;
>  
>  	pmc = kvm_pmu_get_canonical_pmc(pmc);
>  	if (!pmc->perf_event)
> @@ -201,16 +200,19 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
>  
>  	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
>  
> -	if (kvm_pmu_pmc_is_chained(pmc)) {
> -		reg = PMEVCNTR0_EL0 + pmc->idx;
> -		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
> -		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
> +	if (pmc->idx == ARMV8_PMU_CYCLE_IDX) {
> +		reg = PMCCNTR_EL0;
> +		val = counter;
>  	} else {
> -		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
> -		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
> -		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
> +		reg = PMEVCNTR0_EL0 + pmc->idx;
> +		val = lower_32_bits(counter);
>  	}
>  
> +	__vcpu_sys_reg(vcpu, reg) = val;
> +
> +	if (kvm_pmu_pmc_is_chained(pmc))
> +		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
> +
>  	kvm_pmu_release_perf_event(pmc);
>  }
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
