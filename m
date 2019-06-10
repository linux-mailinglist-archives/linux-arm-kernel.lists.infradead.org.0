Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484583B546
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6CqbNkt+lmD87yygI/yiMNmqdtE4CkQr5+lbg0Fl3+M=; b=Gvd2KnspvaKEoJ2omTTeKlLk/
	px1yZjn4VmizxuLqIZY7h6SQk0jMfvsU3mBt8Jtxwmxt+/35eAjXo+Y4k70bR5xvh5ga4crDJN/hK
	UJ44h48o+Xa7Nj46Wz93/UsSVbHUV0GbHubwm0hDg2dQGSkP2M47uQ1G2u6u/4PnyFmdq+eZfbapr
	LV1c+Z2EaJuA7qhiXwrlRIFr94pcpCyw99JHzwxfy/KYg5gjaYuoAoAQW/qWHaJCbDWk2BqBYogVP
	3sxEdl7bBf9JOSPEq/Flh9PB06fN7lHvZ6C9MQJan+NwRzCEOwBURqkfFQzsHr2Cvo5XH/iEzM6tF
	yUMG0TYnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJp7-0000vn-Nm; Mon, 10 Jun 2019 12:54:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haJou-0000vE-Ad
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:54:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10E03346;
 Mon, 10 Jun 2019 05:54:38 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 276823F557;
 Mon, 10 Jun 2019 05:54:37 -0700 (PDT)
Subject: Re: [PATCH v8 5/6] KVM: arm/arm64: remove pmc->bitmask
To: andrew.murray@arm.com, marc.zyngier@arm.com
References: <20190522153019.18645-1-andrew.murray@arm.com>
 <20190522153019.18645-6-andrew.murray@arm.com>
 <7f84fcac-ee73-d076-f0e3-3b214912daaf@arm.com>
 <20190522162608.GF8268@e119886-lin.cambridge.arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <036304c6-d5a8-5b36-48e1-1e919c55fc4c@arm.com>
Date: Mon, 10 Jun 2019 13:54:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522162608.GF8268@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055440_418338_084D3579 
X-CRM114-Status: GOOD (  17.51  )
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
Cc: julien.thierry@arm.com, james.morse@arm.com, christoffer.dall@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/05/2019 17:26, Andrew Murray wrote:
> On Wed, May 22, 2019 at 05:07:31PM +0100, Marc Zyngier wrote:
>> On 22/05/2019 16:30, Andrew Murray wrote:
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
>>>   virt/kvm/arm/pmu.c    | 15 +++++----------
>>>   2 files changed, 5 insertions(+), 11 deletions(-)
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


>>> -
>>> -	if (val & ARMV8_PMU_PMCR_LC) {
>>> -		pmc = &pmu->pmc[ARMV8_PMU_CYCLE_IDX];
>>> -		pmc->bitmask = 0xffffffffffffffffUL;
>>> -	}
>>>   }

...

>>>   
>>>   static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
>>> @@ -420,7 +415,7 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
>>>   
>>>   	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
>>>   	/* The initial sample period (overflow count) of an event. */
>>> -	attr.sample_period = (-counter) & pmc->bitmask;
>>> +	attr.sample_period = (-counter) & GENMASK(31, 0);
>>
>> Isn't this the one case where the bitmask actually matters? If we're
>> dealing with the cycle counter, it shouldn't be truncated, right?
> 
> Ah yes, that should be conditional on idx as well.

The mask for Cycle counter also depends on the PMCR.LC field set by the
guest, isn't it ? So unless we correlate that with the idx, we could be
passing in wrong results ?

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
