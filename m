Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0727D713C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvph9WcbUDYp7Qv0ZUJu8HSeXbRGYnVZvV4RHkjEg/k=; b=U56fWqG5LoPtB7
	Db2GeLU2lWKKSFVM0f1qbCkXbKLMd0bzQTijrsOE9SYbfYH4GhKp8364L/uafOXaGFMcPQzKxmRfF
	rvuAD3KEny7QGebmezl1/KZDQJprEMpgzIjF1dAIXLiFe8TWUOLPpKtWQVQujOfs0bmHNU9R7JeUC
	jqC4y4EakDItKIdo/3JXoybGuGtpc3FzJ5yn74ZxaAeZbVUJS5S/xajcxwnIVY7o/XJ2D2gU08SFq
	GGlUNZSOpBDazefajOBdesUrEFAWOA3MHdLkS83fjYlaZ1q0V+jSls26YH+InQgLre4N9tjhg1ShX
	+F4KIk1v2cg6dHNQgREQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppzK-00030c-2T; Tue, 23 Jul 2019 08:17:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hppz4-0002oi-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:17:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF7CD344;
 Tue, 23 Jul 2019 01:17:13 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F2393F71F;
 Tue, 23 Jul 2019 01:17:12 -0700 (PDT)
Subject: Re: [PATCH v2] KVM: arm/arm64: Introduce kvm_pmu_vcpu_init() to setup
 PMU counter idx
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
References: <1563437710-30756-1-git-send-email-yuzenghui@huawei.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <f3f6f9a9-9735-e253-7b5b-3ccf97619a16@arm.com>
Date: Tue, 23 Jul 2019 09:17:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1563437710-30756-1-git-send-email-yuzenghui@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_011718_266874_41A26FF1 
X-CRM114-Status: GOOD (  24.96  )
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, andrew.murray@arm.com, wanghaibin.wang@huawei.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 18/07/2019 09:15, Zenghui Yu wrote:
> We use "pmc->idx" and the "chained" bitmap to determine if the pmc is
> chained, in kvm_pmu_pmc_is_chained().  But idx might be uninitialized
> (and random) when we doing this decision, through a KVM_ARM_VCPU_INIT
> ioctl -> kvm_pmu_vcpu_reset(). And the test_bit() against this random
> idx will potentially hit a KASAN BUG [1].
> 
> In general, idx is the static property of a PMU counter that is not
> expected to be modified across resets, as suggested by Julien.  It
> looks more reasonable if we can setup the PMU counter idx for a vcpu
> in its creation time. Introduce a new function - kvm_pmu_vcpu_init()
> for this basic setup. Oh, and the KASAN BUG will get fixed this way.
> 
> [1] https://www.spinics.net/lists/kvm-arm/msg36700.html
> 
> Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
> Suggested-by: Andrew Murray <andrew.murray@arm.com>
> Suggested-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
> 
> Changes since v1:
>  - Introduce kvm_pmu_vcpu_init() in vcpu's creation time, move the
>    assignment of pmc->idx into it.
>  - Thus change the subject. The old one is "KVM: arm/arm64: Assign
>    pmc->idx before kvm_pmu_stop_counter()".
> 
> Julien, I haven't collected your Acked-by into this version. If you're
> still happy with the change, please Ack again. Thanks!
> 

Thanks for making the change. This looks good to me:

Acked-by: Julien Thierry <julien.thierry@arm.com>

Thanks,

Julien

>  include/kvm/arm_pmu.h |  2 ++
>  virt/kvm/arm/arm.c    |  2 ++
>  virt/kvm/arm/pmu.c    | 18 +++++++++++++++---
>  3 files changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
> index 16c769a..6db0304 100644
> --- a/include/kvm/arm_pmu.h
> +++ b/include/kvm/arm_pmu.h
> @@ -34,6 +34,7 @@ struct kvm_pmu {
>  u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx);
>  void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val);
>  u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu);
> +void kvm_pmu_vcpu_init(struct kvm_vcpu *vcpu);
>  void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu);
>  void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu);
>  void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val);
> @@ -71,6 +72,7 @@ static inline u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu)
>  {
>  	return 0;
>  }
> +static inline void kvm_pmu_vcpu_init(struct kvm_vcpu *vcpu) {}
>  static inline void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu) {}
>  static inline void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu) {}
>  static inline void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val) {}
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index f645c0f..c704fa6 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -340,6 +340,8 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
>  	/* Set up the timer */
>  	kvm_timer_vcpu_init(vcpu);
>  
> +	kvm_pmu_vcpu_init(vcpu);
> +
>  	kvm_arm_reset_debug_ptr(vcpu);
>  
>  	return kvm_vgic_vcpu_init(vcpu);
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index 3dd8238..362a018 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -215,6 +215,20 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
>  }
>  
>  /**
> + * kvm_pmu_vcpu_init - assign pmu counter idx for cpu
> + * @vcpu: The vcpu pointer
> + *
> + */
> +void kvm_pmu_vcpu_init(struct kvm_vcpu *vcpu)
> +{
> +	int i;
> +	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> +
> +	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
> +		pmu->pmc[i].idx = i;
> +}
> +
> +/**
>   * kvm_pmu_vcpu_reset - reset pmu state for cpu
>   * @vcpu: The vcpu pointer
>   *
> @@ -224,10 +238,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
>  	int i;
>  	struct kvm_pmu *pmu = &vcpu->arch.pmu;
>  
> -	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
> +	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
>  		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
> -		pmu->pmc[i].idx = i;
> -	}
>  
>  	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
>  }
> 

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
