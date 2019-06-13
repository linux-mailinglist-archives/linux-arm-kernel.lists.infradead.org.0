Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A3044656
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/fTVKgKrW9oOROCeDXYDIAdQoMJVx+1kDhUxSC1Up18=; b=kT+n0kRDvZtun1dm2gn9L86w9
	oQ/owoxE5E7M2FQ4VuNgRiys+xtwmEvfYJP2x7Hm+ei6iMiUsfqZDDs+wJNLGljBPqtMifBzrlcRH
	WalxspgXVjAD+u53PfCTfEXSH6ulBzvHHRQXJLdgxoIJYvza7evArbJTyvdejer9bYAux4QD7Uu6j
	W84K3RCkkWEDOVcPpFzsKixrDyOFpRZg1oAnhy4mILVDLgqKNUj9ObBvexv9ulP2hmxCdmxNVR61L
	cdrBM2WDyXefnSn9n198yMiiOtXU7pE7r7A/gzbBjoYJzgUJwFYMaqdAQYONjy6O4+QyfoT1QpYB6
	PaWsTnxqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSwG-0003Tc-97; Thu, 13 Jun 2019 16:51:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSw2-0003RU-Oz
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:50:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D703E367;
 Thu, 13 Jun 2019 09:50:45 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDE0F3F694;
 Thu, 13 Jun 2019 09:50:44 -0700 (PDT)
Subject: Re: [PATCH v9 4/5] KVM: arm/arm64: remove pmc->bitmask
To: andrew.murray@arm.com, julien.thierry@arm.com
References: <20190612190450.7085-1-andrew.murray@arm.com>
 <20190612190450.7085-5-andrew.murray@arm.com>
 <6a8e4fdd-d8cf-f3fb-55cd-2d06805b0eb9@arm.com>
 <20190613093957.GG49779@e119886-lin.cambridge.arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <5e18d747-1d82-8eed-ef1c-de86c5b3a7e7@arm.com>
Date: Thu, 13 Jun 2019 17:50:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613093957.GG49779@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095046_877121_9ED9209C 
X-CRM114-Status: GOOD (  16.77  )
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
Cc: marc.zyngier@arm.com, james.morse@arm.com, christoffer.dall@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13/06/2019 10:39, Andrew Murray wrote:
> On Thu, Jun 13, 2019 at 08:30:51AM +0100, Julien Thierry wrote:
>> Hi Andrew,
>>
>> On 12/06/2019 20:04, Andrew Murray wrote:
>>> We currently use pmc->bitmask to determine the width of the pmc - however
>>> it's superfluous as the pmc index already describes if the pmc is a cycle
>>> counter or event counter. The architecture clearly describes the widths of
>>> these counters.
>>>
>>> Let's remove the bitmask to simplify the code.
>>>
>>> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
>>> ---
>>>   include/kvm/arm_pmu.h |  1 -
>>>   virt/kvm/arm/pmu.c    | 19 +++++++++----------
>>>   2 files changed, 9 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
>>> index b73f31baca52..2f0e28dc5a9e 100644
>>> --- a/include/kvm/arm_pmu.h
>>> +++ b/include/kvm/arm_pmu.h
>>> @@ -28,7 +28,6 @@
>>>   struct kvm_pmc {
>>>   	u8 idx;	/* index into the pmu->pmc array */
>>>   	struct perf_event *perf_event;
>>> -	u64 bitmask;
>>>   };
>>>   
>>>   struct kvm_pmu {
>>> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
>>> index ae1e886d4a1a..88ce24ae0b45 100644
>>> --- a/virt/kvm/arm/pmu.c
>>> +++ b/virt/kvm/arm/pmu.c
>>> @@ -47,7 +47,10 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
>>>   		counter += perf_event_read_value(pmc->perf_event, &enabled,
>>>   						 &running);
>>>   
>>> -	return counter & pmc->bitmask;
>>> +	if (select_idx != ARMV8_PMU_CYCLE_IDX)
>>> +		counter = lower_32_bits(counter);
>>
>> Shouldn't this depend on PMCR.LC as well? If PMCR.LC is clear we only
>> want the lower 32bits of the cycle counter.
> 
> Yes that's correct. The hunk should look like this:
> 
> -       return counter & pmc->bitmask;
> +       if (!(select_idx == ARMV8_PMU_CYCLE_IDX &&
> +             __vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC))
> +               counter = lower_32_bits(counter);
> +
> +       return counter;

May be you could add a macro :

#define vcpu_pmu_counter_is_64bit(vcpu, idx) ?

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
