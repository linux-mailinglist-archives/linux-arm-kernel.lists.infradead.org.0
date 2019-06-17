Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA9748908
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=23mJ7eOA/aPAb+ATP7BEuin4BGqM6M9EAuCsS2bB1lE=; b=TytBfvArNw3G1N/stIyi2r6zr
	enWWkxd+7Zw03cynKmO1DOibD+sqSgrly24JOkGLJbDCxtKkrbs6DeR6ewLYc+znsQc8wMXRMjRkV
	nOCw/OydAsQnL4SLBs2W3nJY7wePMMKrQ5icVqDGIL5ug1kQlulmXoAjoQjv8OxQeCjkKt2n+wOXU
	AHWBhZAP6VHcj2FHEkavAiRuulotoRjXu8rrpgHRfMyDd8VpTg3QUK6CrZD04GcdPks6hmmQGDw+F
	cSCWMJs5ePn2IL6t1JogUJhCiBZhzkc+Geb+RwmrtYo4AESYgRryv2yWBmYS5EgH8dVAQo11kUooI
	qAtMP7nrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcua1-0005y4-H2; Mon, 17 Jun 2019 16:34:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuZl-0005xV-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:33:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BDF328;
 Mon, 17 Jun 2019 09:33:44 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 528A83F718;
 Mon, 17 Jun 2019 09:33:43 -0700 (PDT)
Subject: Re: [PATCH v9 4/5] KVM: arm/arm64: remove pmc->bitmask
To: andrew.murray@arm.com
References: <20190612190450.7085-1-andrew.murray@arm.com>
 <20190612190450.7085-5-andrew.murray@arm.com>
 <6a8e4fdd-d8cf-f3fb-55cd-2d06805b0eb9@arm.com>
 <20190613093957.GG49779@e119886-lin.cambridge.arm.com>
 <5e18d747-1d82-8eed-ef1c-de86c5b3a7e7@arm.com>
 <20190617154311.GM20984@e119886-lin.cambridge.arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f3ea8075-b395-9fa4-afba-771011f62b59@arm.com>
Date: Mon, 17 Jun 2019 17:33:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190617154311.GM20984@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_093345_443339_C97A1811 
X-CRM114-Status: GOOD (  15.39  )
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, christoffer.dall@arm.com,
 james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17/06/2019 16:43, Andrew Murray wrote:
> On Thu, Jun 13, 2019 at 05:50:43PM +0100, Suzuki K Poulose wrote:
>>
>>
>> On 13/06/2019 10:39, Andrew Murray wrote:
>>> On Thu, Jun 13, 2019 at 08:30:51AM +0100, Julien Thierry wrote:

>>>>> index ae1e886d4a1a..88ce24ae0b45 100644
>>>>> --- a/virt/kvm/arm/pmu.c
>>>>> +++ b/virt/kvm/arm/pmu.c
>>>>> @@ -47,7 +47,10 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
>>>>>    		counter += perf_event_read_value(pmc->perf_event, &enabled,
>>>>>    						 &running);
>>>>> -	return counter & pmc->bitmask;
>>>>> +	if (select_idx != ARMV8_PMU_CYCLE_IDX)
>>>>> +		counter = lower_32_bits(counter);
>>>>
>>>> Shouldn't this depend on PMCR.LC as well? If PMCR.LC is clear we only
>>>> want the lower 32bits of the cycle counter.
>>>
>>> Yes that's correct. The hunk should look like this:
>>>
>>> -       return counter & pmc->bitmask;
>>> +       if (!(select_idx == ARMV8_PMU_CYCLE_IDX &&
>>> +             __vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC))
>>> +               counter = lower_32_bits(counter);
>>> +
>>> +       return counter;
>>
>> May be you could add a macro :
>>
>> #define vcpu_pmu_counter_is_64bit(vcpu, idx) ?
> 
> Yes I think a helper would be useful - though I'd prefer the name
> 'kvm_pmu_idx_is_long_cycle_counter'. This seems a little clearer as
> you could otherwise argue that a chained counter is also 64 bits.

When you get to add 64bit PMU counter (v8.5), this would be handy. So
having it de-coupled from the cycle counter may be a good idea. Anyways,
I leave that to you.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
