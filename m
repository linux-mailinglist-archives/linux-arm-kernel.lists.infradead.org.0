Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4966BEB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zG9qM1TfPQpq8JFPl1UM32avWo2VEQjYpNN5eH4QQy4=; b=QKXEkR1J8MRz62
	RyYkRVS1bbSqy6tgmbHMQuN+hHljIVY5ZUv5NfiCIhjH1xt7iliO7w7ffm9/vQEWOJ+ayt2vsG0pG
	pWhjBShloTU4Eqke57vUroJOfm+iK4oNH8AGIc+/mOQGf7hxDJIqZWf9msc4706mcDeObbXSqeCkM
	829wff8C0oDzFK/pSalCN0o8QdXNYXnRf1kaOmvNzgVr2egiWRpfCl1cQzLFqkGt1/HG0oCoqQD8Y
	5aYhJ8ZmvownDBbomXBDW6rgpBiNoMKRbF58bVJFklpmzJ+lHq0sWvgMUduQk08mWlW/BmZgDjjLY
	YtQTz8oQG9BGvfrhzKYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlRB-0000PO-VI; Wed, 17 Jul 2019 15:01:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlQ5-0000F8-2h
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:00:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B405337;
 Wed, 17 Jul 2019 08:00:34 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E0A773F71A; Wed, 17 Jul 2019 08:00:32 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm/arm64: Assign pmc->idx before
 kvm_pmu_stop_counter()
To: Julien Thierry <julien.thierry@arm.com>, Zenghui Yu
 <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
References: <1563366019-31200-1-git-send-email-yuzenghui@huawei.com>
 <01fa98c1-8274-445c-5e04-219372920ba2@arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <26b64d48-5ff9-7d62-bc44-601fdcc43223@kernel.org>
Date: Wed, 17 Jul 2019 16:00:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <01fa98c1-8274-445c-5e04-219372920ba2@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_080037_217587_CEBDBC94 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

On 17/07/2019 14:44, Julien Thierry wrote:
> Hi Zenghui,
> 
> On 17/07/2019 13:20, Zenghui Yu wrote:
>> We use "pmc->idx" and the "chained" bitmap to determine if the pmc is
>> chained, in kvm_pmu_pmc_is_chained().  But idx might be uninitialized
>> (and random) when we doing this decision, through a KVM_ARM_VCPU_INIT
>> ioctl -> kvm_pmu_vcpu_reset(). And the test_bit() against this random
>> idx will potentially hit a KASAN BUG [1].
>>
>> Fix it by moving the assignment of idx before kvm_pmu_stop_counter().
>>
>> [1] https://www.spinics.net/lists/kvm-arm/msg36700.html
>>
>> Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
>> Suggested-by: Andrew Murray <andrew.murray@arm.com>
>> Cc: Marc Zyngier <maz@kernel.org>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>> ---
>>  virt/kvm/arm/pmu.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
>> index 3dd8238..521bfdd 100644
>> --- a/virt/kvm/arm/pmu.c
>> +++ b/virt/kvm/arm/pmu.c
>> @@ -225,8 +225,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
>>  	struct kvm_pmu *pmu = &vcpu->arch.pmu;
>>  
>>  	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
>> -		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
>>  		pmu->pmc[i].idx = i;
> 
> Yes, this is kind of a static property that should really be part of a
> "kvm_pmu_vcpu_init()" or "kvm_pmu_vcpu_create()" and is not expected to
> be modified across resets...
> 
> There is no such function at the time and I'm unsure whether this
> warrants creating that separate function (I would still suggest creating
> it to make things clearer).

Yup, that's pretty bad, now that you mention it. I'd be all for the
introduction of kvm_pmu_vcpu_init(), given that we already have
kvm_pmu_vcpu_destroy().

> 
>> +		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
> 
> Whatever other opinions are on splitting pmu_vcpu_init/reset, that
> change makes sense and fixes the issue:
> 
> Acked-by: Julien Thierry <julien.thierry@arm.com>
> 
>>  	}
>>  
>>  	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
>>
> 
> Cheers,
> 

Zenghui, could you please update your patch to take the above into account?

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
