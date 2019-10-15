Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C9CD72AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsoTGPYpUB0n50yP3DmaQUtPZVuyq+GsuwGQze0wLZ8=; b=KxZc8WPeKSOgHA
	vWiry8peAV4SSl/g/RBWcmdKyk9CJTUWTiEhtNnUz6ayEtZYPAFvA+q6ahvHxW16KsZccbt69w5Ob
	+7naomMhhtlYVFuFbV4PHb/WMeS41WTATHXfHh39p2tBmKF5XuKOUnt6/E9sjpxKGplEv4qCgt7sp
	5JhkDb7gf8vsGOm9wGRUSHC78r+6O+1Ixzb4C+e4q++fihocwyy1Gf96AooYoHw6cnNyGi8czPdL2
	DYbTd8vdUDIC2AhzCTKwIdVgxshs40hQkOwfVeLsnbpgRPoIBWfDoNxFJB5bE8CxC/rZg52UK+gFF
	sF3vb7S1pd9tbYQQxBGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJcm-0002oh-6E; Tue, 15 Oct 2019 10:00:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJcb-00023K-Sf
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 10:00:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7936D28;
 Tue, 15 Oct 2019 03:00:03 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E89133F68E;
 Tue, 15 Oct 2019 03:00:02 -0700 (PDT)
Date: Tue, 15 Oct 2019 11:00:01 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v3 4/4] KVM: arm64: pmu: Reset sample period on overflow
 handling
Message-ID: <20191015100000.GT42880@e119886-lin.cambridge.arm.com>
References: <20191011123954.31378-1-maz@kernel.org>
 <20191011123954.31378-5-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011123954.31378-5-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_030005_975990_799B8E4B 
X-CRM114-Status: GOOD (  21.84  )
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

On Fri, Oct 11, 2019 at 01:39:54PM +0100, Marc Zyngier wrote:
> The PMU emulation code uses the perf event sample period to trigger
> the overflow detection. This works fine  for the *first* overflow
> handling, but results in a huge number of interrupts on the host,
> unrelated to the number of interrupts handled in the guest (a x20
> factor is pretty common for the cycle counter). On a slow system
> (such as a SW model), this can result in the guest only making
> forward progress at a glacial pace.
> 
> It turns out that the clue is in the name. The sample period is
> exactly that: a period. And once the an overflow has occured,
> the following period should be the full width of the associated
> counter, instead of whatever the guest had initially programed.
> 
> Reset the sample period to the architected value in the overflow
> handler, which now results in a number of host interrupts that is
> much closer to the number of interrupts in the guest.
> 
> Fixes: b02386eb7dac ("arm64: KVM: Add PMU overflow interrupt routing")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  virt/kvm/arm/pmu.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index f291d4ac3519..8731dfeced8b 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -8,6 +8,7 @@
>  #include <linux/kvm.h>
>  #include <linux/kvm_host.h>
>  #include <linux/perf_event.h>
> +#include <linux/perf/arm_pmu.h>
>  #include <linux/uaccess.h>
>  #include <asm/kvm_emulate.h>
>  #include <kvm/arm_pmu.h>
> @@ -442,8 +443,25 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
>  				  struct pt_regs *regs)
>  {
>  	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
> +	struct arm_pmu *cpu_pmu = to_arm_pmu(perf_event->pmu);
>  	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
>  	int idx = pmc->idx;
> +	u64 period;
> +
> +	cpu_pmu->pmu.stop(perf_event, PERF_EF_UPDATE);
> +
> +	/*
> +	 * Reset the sample period to the architectural limit,
> +	 * i.e. the point where the counter overflows.
> +	 */
> +	period = -(local64_read(&perf_event->count));
> +
> +	if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
> +		period &= GENMASK(31, 0);
> +
> +	local64_set(&perf_event->hw.period_left, 0);
> +	perf_event->attr.sample_period = period;
> +	perf_event->hw.sample_period = period;
>  
>  	__vcpu_sys_reg(vcpu, PMOVSSET_EL0) |= BIT(idx);
>  
> @@ -451,6 +469,8 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
>  		kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
>  		kvm_vcpu_kick(vcpu);
>  	}
> +
> +	cpu_pmu->pmu.start(perf_event, PERF_EF_RELOAD);
>  }
>  
>  /**
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
