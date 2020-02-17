Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7554316163E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xfbLj0u6XMq5qpVDH3/J2xoqp4gTDIGUwZYOAXCQwzI=; b=tZk/hJTlw4XJDfaVaZRSWKPHH
	zKu/bYA/jr75WNcALkoQI1WV0ZWsmuV2l7zBQTFaRech6Is1UTvIjhCr2DvOKb1SMv9/YNwAuuwzc
	7F7IEk7KVO49kOsWV5Z41Nmy9l+i9rRithbfiQi65X3qRaMYarNTFkMn/7Q71LKHZI7nded0DZFiw
	UPyNYIhFrvis2QaK/K/Q6l6wv7h1xEC3SDMxYYkFf64X0fHE7F+hhMCSI5U4FVtImJQsh58fXA33/
	ERhxltpz1X75MOMBiYd0OPp3DV08/Naqoh/IJMdMoqMOfjO45tYtPSrj7sF1NCBRlCfzqXo2hjP1K
	topsLMhUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iOx-0006M7-Rp; Mon, 17 Feb 2020 15:33:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iOj-0006L3-M0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:33:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8BDD30E;
 Mon, 17 Feb 2020 07:33:23 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE7333F703;
 Mon, 17 Feb 2020 07:33:22 -0800 (PST)
Subject: Re: [PATCH 1/2] KVM: arm64: Add PMU event filtering infrastructure
To: Marc Zyngier <maz@kernel.org>
References: <20200214183615.25498-1-maz@kernel.org>
 <20200214183615.25498-2-maz@kernel.org>
 <ac2a8a87-3a90-1abb-30a5-00c20667cd14@arm.com> <868sl46t60.wl-maz@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5d7a2907-f12c-0add-c020-c927aad50feb@arm.com>
Date: Mon, 17 Feb 2020 15:33:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <868sl46t60.wl-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_073325_763431_BB8717AC 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/02/2020 10:28 am, Marc Zyngier wrote:
> On Fri, 14 Feb 2020 22:01:01 +0000,
> Robin Murphy <robin.murphy@arm.com> wrote:
> 
> Hi Robin,
> 
>>
>> Hi Marc,
>>
>> On 2020-02-14 6:36 pm, Marc Zyngier wrote:
>> [...]
>>> @@ -585,6 +585,14 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
>>>    	    pmc->idx != ARMV8_PMU_CYCLE_IDX)
>>>    		return;
>>>    +	/*
>>> +	 * If we have a filter in place and that the event isn't allowed, do
>>> +	 * not install a perf event either.
>>> +	 */
>>> +	if (vcpu->kvm->arch.pmu_filter &&
>>> +	    !test_bit(eventsel, vcpu->kvm->arch.pmu_filter))
>>> +		return;
>>
>> If I'm reading the derivation of eventsel right, this will end up
>> treating cycle counter events (aliased to SW_INCR) differently from
>> CPU_CYCLES, which doesn't seem desirable.
> 
> Indeed, this doesn't look quite right.
> 
> Looking at the description of event 0x11, it doesn't seem to count
> exactly like the cycle counter (there are a number of PMCR controls
> affecting it). But none of these actually apply to our PMU emulation
> (no secure mode, and the idea of dealing with virtual EL2 in the
> context of the PMU is... not appealing).
> 
> Now, given that we implement the cycle counter with event 0x11 anyway,
> I don't think there is any reason to deal with them separately.

Right, from the user's PoV they can only ask for event 0x11, and where 
it gets scheduled is more of a black-box implementation detail. Reading 
the Arm ARM doesn't leave me entirely convinced that cycles couldn't 
ever leak idle/not-idle information between closely-coupled PEs, so this 
might not be entirely academic.

>> Also, if the user did try to blacklist SW_INCR for ridiculous
>> reasons, we'd need to special-case kvm_pmu_software_increment() to
>> make it (not) work as expected, right?
> 
> I thought of that one, and couldn't see a reason to blacklist it
> (after all, the guest could also increment a variable) and send itself
> an interrupt. I'm tempted to simply document that event 0 is never
> filtered.

I'd say you're on even stronger ground simply because KVM's 
implementation of SW_INCR doesn't go near the PMU hardware at all, thus 
is well beyond the purpose of the blacklist anyway. I believe it's 
important that how the code behaves matches expectations, but there's no 
harm in changing the latter as appropriate ;)

Cheers,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
