Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CDED0181
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 21:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtZkcWR0xaZnmSNDa0H3Q4UkSI+tCtAdNnQhwdX0OB0=; b=G4NzrxFSyJrH+o
	O1wWt4cvU4K5io6BJbBXOK1o2QBD4Hj+o1gn0aAG4Aq4nViX8VOoZ1//K/CvV2j4rwI6fav+ZCiG3
	sPoCLcNFHYegg1dgj5DdfjjqPQCg/kW/i9UeslbbjhqV1HxwGZGeZ/+6K3IIjKvTDhLBzJJmyRixT
	sBPdFEoTXUEcBmTFBAgYCMIfmICLuJKlI1tHx0y1VgqEAHKr6XLTAo9ObeUmnyczH2y63ZDnBVAHH
	/oGemud+aEh777VU9mdDbf31v7fnI7fd7PvOor+a8+p7+Z/uQ6DnxEPabW4ANSJwVrB8sEcJ/h7GB
	P2eNi4xqD1qS4VN7CS+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvXm-0002nA-Be; Tue, 08 Oct 2019 19:53:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvXQ-0002fN-LT
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 19:52:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8D1515BE;
 Tue,  8 Oct 2019 12:52:51 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C7243F68E;
 Tue,  8 Oct 2019 12:52:51 -0700 (PDT)
Date: Tue, 8 Oct 2019 20:52:49 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 4/5] arm64: perf: Add reload-on-overflow capability
Message-ID: <20191008195248.GJ42880@e119886-lin.cambridge.arm.com>
References: <20191008160128.8872-1-maz@kernel.org>
 <20191008160128.8872-5-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008160128.8872-5-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_125252_812363_CF62AF5E 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 05:01:27PM +0100, Marc Zyngier wrote:
> As KVM uses perf as a way to emulate an ARMv8 PMU, it needs to
> be able to change the sample period as part of the overflow
> handling (once an overflow has taken place, the following
> overflow point is the overflow of the virtual counter).
> 
> Deleting and recreating the in-kernel event is difficult, as
> we're in interrupt context. Instead, we can teach the PMU driver
> a new trick, which is to stop the event before the overflow handling,
> and reprogram it once it has been handled. This would give KVM
> the opportunity to adjust the next sample period. This feature
> is gated on a new flag that can get set by KVM in a subsequent
> patch.
> 
> Whilst we're at it, move the CHAINED flag from the KVM emulation
> to the perf_event.h file and adjust the PMU code accordingly.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/perf_event.h | 4 ++++
>  arch/arm64/kernel/perf_event.c      | 8 +++++++-
>  virt/kvm/arm/pmu.c                  | 4 +---
>  3 files changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
> index 2bdbc79bbd01..8b6b38f2db8e 100644
> --- a/arch/arm64/include/asm/perf_event.h
> +++ b/arch/arm64/include/asm/perf_event.h
> @@ -223,4 +223,8 @@ extern unsigned long perf_misc_flags(struct pt_regs *regs);
>  	(regs)->pstate = PSR_MODE_EL1h;	\
>  }
>  
> +/* Flags used by KVM, among others */
> +#define PERF_ATTR_CFG1_CHAINED_EVENT	(1U << 0)
> +#define PERF_ATTR_CFG1_RELOAD_EVENT	(1U << 1)
> +
>  #endif
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index a0b4f1bca491..98907c9e5508 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -322,7 +322,7 @@ PMU_FORMAT_ATTR(long, "config1:0");
>  
>  static inline bool armv8pmu_event_is_64bit(struct perf_event *event)
>  {
> -	return event->attr.config1 & 0x1;
> +	return event->attr.config1 & PERF_ATTR_CFG1_CHAINED_EVENT;

I'm pleased to see this be replaced with a define, it helps readers see the
link between this and the KVM driver.

>  }
>  
>  static struct attribute *armv8_pmuv3_format_attrs[] = {
> @@ -736,8 +736,14 @@ static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
>  		if (!armpmu_event_set_period(event))
>  			continue;
>  
> +		if (event->attr.config1 & PERF_ATTR_CFG1_RELOAD_EVENT)
> +			cpu_pmu->pmu.stop(event, PERF_EF_RELOAD);

I believe PERF_EF_RELOAD is only intended to be used in the stop calls. I'd
suggest that you replace it with PERF_EF_UPDATE instead, this tells the PMU
to update the counter with the latest value from the hardware. (Though the
ARM PMU driver always does this regardless to the flag anyway).

Thanks,

Andrew Murray

> +
>  		if (perf_event_overflow(event, &data, regs))
>  			cpu_pmu->disable(event);
> +
> +		if (event->attr.config1 & PERF_ATTR_CFG1_RELOAD_EVENT)
> +			cpu_pmu->pmu.start(event, PERF_EF_RELOAD);
>  	}
>  	armv8pmu_start(cpu_pmu);
>  
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index f291d4ac3519..25a483a04beb 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -15,8 +15,6 @@
>  
>  static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx);
>  
> -#define PERF_ATTR_CFG1_KVM_PMU_CHAINED 0x1
> -
>  /**
>   * kvm_pmu_idx_is_64bit - determine if select_idx is a 64bit counter
>   * @vcpu: The vcpu pointer
> @@ -570,7 +568,7 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
>  		 */
>  		attr.sample_period = (-counter) & GENMASK(63, 0);
>  		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
> -			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
> +			attr.config1 |= PERF_ATTR_CFG1_CHAINED_EVENT;
>  
>  		event = perf_event_create_kernel_counter(&attr, -1, current,
>  							 kvm_pmu_perf_overflow,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
