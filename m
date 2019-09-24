Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA70BC492
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=INsR8GHjHBaX/J7w2pEOr6gOTG9hsEhDOzbodi6aHlw=; b=dTnAaix5ovzm67BpQp2dh5hda
	tVeuDVFjYM7WeWJLVdQG6At+wloan01TRxb9xC67DqX8/MixT4rF+8wlIor9POYbbHWDMeZp6Sl+S
	m0rV/PejAjO5THxlF+fbrkqn3fIUItp5g3T79yL+00IaRFWISZeLGNHQQg1cT+le0KCpEDkbhvWec
	JuOWOWsmEO81EZHGpztFcW6Vvc++o86pX2bQ64in0n0N12oIFYtV7Cl6jRTjyNE4iF55QrKnWf682
	n5XYRCT7/hByWrFMqp1tI3u5lFDcChws0Lflxj+V+6+bXp+B6z1vRuvwPI5Q7L3aREOxpHwrMS9s5
	wso4tpClA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgtC-0006Bg-3z; Tue, 24 Sep 2019 09:13:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgsw-0006BN-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:13:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0A00142F;
 Tue, 24 Sep 2019 02:13:24 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB1733F67D;
 Tue, 24 Sep 2019 02:13:20 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
To: Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
 <20190816102424.GA28874@arrakis.emea.arm.com>
 <20190816121005.GB4039@sirena.co.uk>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <6834da7b-553c-2ad3-9b05-25ca982252e9@arm.com>
Date: Tue, 24 Sep 2019 10:13:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190816121005.GB4039@sirena.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_021326_687958_8EAA5460 
X-CRM114-Status: GOOD (  29.22  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 16/08/2019 13:10, Mark Brown wrote:
> On Fri, Aug 16, 2019 at 11:24:24AM +0100, Catalin Marinas wrote:
>> On Thu, Aug 15, 2019 at 05:35:42PM +0100, Will Deacon wrote:
> 
>>>> +	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
>>>> +		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
>>>> +		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
>>>> +			return false;
>>>> +	}
> 
>> What I don't particularly like here is that on big.LITTLE this hunk may
>> have a different behaviour depending on which CPU you run it on. In
>> general, such CPUID access should only be done in a non-preemptible
>> context.
> 
>> We probably get away with this during early boot (before CPU caps have
>> been set up) when arm64_kernel_unmapped_at_el0() is false since we only
>> have a single CPU running. Later on at run-time, we either have
>> arm64_kernel_unmapped_at_el0() true, meaning that some CPU is missing
>> E0PD with kaslr_offset() > 0, or the kernel is mapped at EL0 with all
>> CPUs having E0PD. But I find it hard to reason about.
> 
> Yes, all this stuff is unfortunately hard to reason about since there's
> several environment changes during boot which have a material effect and
> also multiple different things that might trigger KPTI.  IIRC my thinking
> here was that if we turned on KPTI we're turning it on for all CPUs so
> by the time we could be prempted we'd be returning true from the earlier
> check for arm64_kernel_unmapped_at_el0() but it's possible I missed some
> case there.  I was trying to avoid disturbing the existing code too much
> unless I had a strong reason to on the basis that I might be missing
> something about the way it was done.
> 
>> Could we move the above hunk in this block:
> 
>> 	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
>> 		...
>> 	}
> 
>> and reshuffle the rest of the function to only rely on
>> arm64_kernel_unmapped_at_el0() when the caps are ready (at run-time)?
> 
> I've added the check, will look at the reshuffle.
> 
>>> Thinking about this further, I think we can simply move all of the
>>> 'kaslr_offset() > 0' checks used by the kpti code (i.e. in
>>> arm64_kernel_unmapped_at_el0(), kpti_install_ng_mappings() and
>>> unmap_kernel_at_el0()) into a helper function which does the check for
>>> E0PD as well. Perhaps 'kaslr_requires_kpti()' ?
> 
>> I agree, this needs some refactoring as we have this decision in three
>> separate places.
> 
>> Trying to put my thoughts together. At run-time, with capabilities fully
>> enabled, we want:
> 
>>    arm64_kernel_use_ng_mappings() == arm64_kernel_unmapped_at_el0()
> 
>>    KPTI is equivalent to arm64_kernel_unmapped_at_el0()
> 
> Yes, this bit is simple - once we're up and running everything is clear.
> 
>> I think kaslr_requires_kpti() should access the raw CPUID registers (for
>> E0PD, TX1 bug) and be called only by unmap_kernel_at_el0() and
>> arm64_kernel_use_ng_mappings(), the latter if !arm64_const_caps_ready.
>> The boot CPU should store kaslr_requires_kpti() value somewhere and
>> kpti_install_ng_mappings() should check this variable before deciding to
>> skip the page table rewrite.
> 
> We definitely need some variable I think, and I think you're right that
> making the decision on the boot CPU would simplify things a lot.  The
> systems with very large memories that are most affected by the cost of
> moving from global to non-global mappings are most likely symmetric
> anyway so only looking at the boot CPU should be fine for that.
> 

With KASLR, we already rewrite the page table from __primary_switch() after
relocating the kernel. So, we may be able to perform "raw cpuid check" on
the boot CPU with MMU turned on, before we re-write the pagetables for KASLR
displacement and nG if that is needed (by maybe updating SWWAPPER_MMU_FLAGS) for
the boot CPU and store this information somewhere. Thus we may be able to
avoid another re-write of the pagetables after we have booted the secondaries.

We could continue to do the per-CPU check to see if we need nG mappings
and perform the transition later if needed, like we do now.

Discussing this with Catalin, he suggests to use a variable for the status
of "nG" flag for PTE/PMD_MAYBE_NG, to avoid calling the helper function
all the time. By using the per-CPU check we can make sure the flag is uptodate.

Also, we can continue to fail the hotplugged CPUs if we detect that the 
pagetables are Global and the new CPU requires nG (for heterogeneous systems).

Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
