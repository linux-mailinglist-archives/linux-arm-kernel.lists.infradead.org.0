Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5D16C4C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 04:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jm896STBa/vB0bwQa5UMVMPD4/UY52lt4TWQQZ2XosY=; b=l7tuvEOBEthBBeJ9hG6n8keYm
	2Cj3gz8JOPuyMI31U1pDykdX1Kv51+VXhtLirOLmFPDqv5SvPMfR1koNO2WFXBFe11q4cy88xed2I
	7luw/ApGUucx48OGse1SB0sD+tVdUAKTHIzsLuxjdc0HtgL5o3RDnIfQ4Mo4OUCpv9YCY/tdqZ8+W
	iSNN+4R2BjtQGP90p2ldsH7mucA0fd6wk4hP9UfDBG1riIuVMV0IU2v9TSWRRofCFQdEQkiD7nB//
	oFR2UjN3qioaMfVpSV7hMr8Awb8vOX6B4ayuFmJ2HmxuBO0q1W2V6t65eVh3MqKfWz6cgBzpUyJDi
	T6ewfJT6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvkJ-00078N-P9; Thu, 18 Jul 2019 02:02:11 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvk7-00077c-OJ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 02:02:01 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B923175E6D083B2475B5;
 Thu, 18 Jul 2019 10:01:52 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Thu, 18 Jul 2019
 10:01:46 +0800
Subject: Re: [PATCH] KVM: arm/arm64: Assign pmc->idx before
 kvm_pmu_stop_counter()
To: Marc Zyngier <maz@kernel.org>, Julien Thierry <julien.thierry@arm.com>,
 <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>
References: <1563366019-31200-1-git-send-email-yuzenghui@huawei.com>
 <01fa98c1-8274-445c-5e04-219372920ba2@arm.com>
 <26b64d48-5ff9-7d62-bc44-601fdcc43223@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <ae65afd1-fd9a-280f-285f-543b1fa246f3@huawei.com>
Date: Thu, 18 Jul 2019 09:59:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <26b64d48-5ff9-7d62-bc44-601fdcc43223@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_190159_957498_FEC20684 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien, Marc,

On 2019/7/17 23:00, Marc Zyngier wrote:
> On 17/07/2019 14:44, Julien Thierry wrote:
>> Hi Zenghui,
>>
>> On 17/07/2019 13:20, Zenghui Yu wrote:
>>> We use "pmc->idx" and the "chained" bitmap to determine if the pmc is
>>> chained, in kvm_pmu_pmc_is_chained().  But idx might be uninitialized
>>> (and random) when we doing this decision, through a KVM_ARM_VCPU_INIT
>>> ioctl -> kvm_pmu_vcpu_reset(). And the test_bit() against this random
>>> idx will potentially hit a KASAN BUG [1].
>>>
>>> Fix it by moving the assignment of idx before kvm_pmu_stop_counter().
>>>
>>> [1] https://www.spinics.net/lists/kvm-arm/msg36700.html
>>>
>>> Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
>>> Suggested-by: Andrew Murray <andrew.murray@arm.com>
>>> Cc: Marc Zyngier <maz@kernel.org>
>>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>> ---
>>>   virt/kvm/arm/pmu.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
>>> index 3dd8238..521bfdd 100644
>>> --- a/virt/kvm/arm/pmu.c
>>> +++ b/virt/kvm/arm/pmu.c
>>> @@ -225,8 +225,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
>>>   	struct kvm_pmu *pmu = &vcpu->arch.pmu;
>>>   
>>>   	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
>>> -		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
>>>   		pmu->pmc[i].idx = i;
>>
>> Yes, this is kind of a static property that should really be part of a
>> "kvm_pmu_vcpu_init()" or "kvm_pmu_vcpu_create()" and is not expected to
>> be modified across resets...
>>
>> There is no such function at the time and I'm unsure whether this
>> warrants creating that separate function (I would still suggest creating
>> it to make things clearer).
> 
> Yup, that's pretty bad, now that you mention it. I'd be all for the
> introduction of kvm_pmu_vcpu_init(), given that we already have
> kvm_pmu_vcpu_destroy().
> 
>>
>>> +		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
>>
>> Whatever other opinions are on splitting pmu_vcpu_init/reset, that
>> change makes sense and fixes the issue:
>>
>> Acked-by: Julien Thierry <julien.thierry@arm.com>
>>
>>>   	}
>>>   
>>>   	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
>>>
>>
>> Cheers,
>>
> 
> Zenghui, could you please update your patch to take the above into account?

Sure. I will send a v2 with the new subject (may be "KVM: arm/arm64:
Introduce kvm_pmu_vcpu_init() to ...").

Thanks for your suggestions!


zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
