Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF23CB6B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 10:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xk+U3QfqqoBAzv4BX7WPRSJnCQzijgFS8mHno6i5xoc=; b=YY6f6BUROLDJn6
	KqE3oazcu7ZXeqBWivGvbXxgG6KPPN5LUmh5tEsK8FFpyaiO25ZtCFnnukbCQqjCJoNoaPX2tx7s5
	oerl9/PV+r7KL4686QAWRuuicSNqsL+luOo0+YpUMH42YGJT5o+awKG+VC/PfUDWL7oixySDwx24f
	dFRHDgx3Zq4LtpZoGobN2+Zp0k6WViuUAboz/fB8JxxqPOX3ovdogSMBhYE7U0gpjFZh35sI0EaMQ
	DWqe229QFhgBA9bA0+ufXjQbaMoyK+Gp6idTUHvQ9cEdvFdQofdE+dN7uqWARWBPoKahiXQ8INASB
	q67rYoUfotazXlQlwRvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJNk-0006eB-FM; Fri, 04 Oct 2019 08:56:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJNY-0006bL-8Z
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 08:56:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F5621597;
 Fri,  4 Oct 2019 01:55:57 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 046B13F739;
 Fri,  4 Oct 2019 01:55:56 -0700 (PDT)
Date: Fri, 4 Oct 2019 09:55:55 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: pmu: Fix cycle counter truncation on counter
 stop
Message-ID: <20191004085554.GQ42880@e119886-lin.cambridge.arm.com>
References: <20191003172400.21157-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003172400.21157-1-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_015600_347947_029F9868 
X-CRM114-Status: GOOD (  21.31  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu,
 Julien Thierry Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 06:24:00PM +0100, Marc Zyngier wrote:
> When a counter is disabled, its value is sampled before the event
> is being disabled, and the value written back in the shadow register.
> 
> In that process, the value gets truncated to 32bit, which is adequate

Doh, that shouldn't have happened.

> for any counter but the cycle counter, which can be configured to
> hold a 64bit value. This obviously results in a corrupted counter,
> and things like "perf record -e cycles" not working at all when
> run in a guest...
> 
> Make the truncation conditional on the counter not being 64bit.
> 
> Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
> Cc: Andrew Murray <andrew.murray@arm.com>
> Reported-by: Julien Thierry Julien Thierry <julien.thierry.kdev@gmail.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/pmu.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index 362a01886bab..d716aef2bae9 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -206,9 +206,11 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
>  		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
>  		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
>  	} else {
> +		if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
> +			counter = lower_32_bits(counter);
>  		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
>  		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
> -		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
> +		__vcpu_sys_reg(vcpu, reg) = counter;

The other uses of lower_32_bits look OK to me.

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

As a side note, I'm not convinced that the implementation (or perhaps the
use of) kvm_pmu_idx_is_64bit is correct:

static bool kvm_pmu_idx_is_64bit(struct kvm_vcpu *vcpu, u64 select_idx)
{
        return (select_idx == ARMV8_PMU_CYCLE_IDX &&
                __vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC);
}

We shouldn't truncate the value of a cycle counter to 32 bits just because
_PMCR_LC is unset. We should only be interested in _PMCR_LC when setting
the sample_period.

If you agree this is wrong, I'll spin a change.

Though unsetting _PMCR_LC is deprecated so I can't imagine this causes any
issue.

Thanks,

Andrew Murray

>  	}
>  
>  	kvm_pmu_release_perf_event(pmc);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
