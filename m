Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E551CFA48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxNi2AP84vj4B8fmC+uuayWOLrl6e9lSfEollGJp4Ps=; b=tzNdeFw4gO7PR6
	1gxQWQydva6hO3UccqKW+7u4sjB6YRTYO+ALqmmRKpaLrIBz3sZjrrl/u7cx5WyDif+PZgi/2I2T1
	x3fLpWfKqtTmKgiVeX7OL7nIebgD14EWbG8pbxNy3OWaKTWjMiuqgnO4d72kAlkdDZPtCwr2t286P
	BNWy/xEmA8/RVFZ2wlGQQJo85GVnWTf9CrBusRQE3FjtkPHQlP4MiJKadZesFDqS6eKDgtfK2bfiv
	hKoDLqNYLuDmhgZXsUBagu8psMd1gL1AtpIx/OYwT4a67LCegJ6rnfb8Z1+rL83vzTO92qXN6gESL
	cfzjP1433sY95C3oDr9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXXb-0003sp-Fx; Tue, 12 May 2020 16:13:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXXI-0003nX-CN
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:13:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 595BC1FB;
 Tue, 12 May 2020 09:13:39 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09D253F305;
 Tue, 12 May 2020 09:13:36 -0700 (PDT)
Subject: Re: [PATCH 03/26] KVM: arm64: Factor out stage 2 page table data from
 struct kvm
To: Alexandru Elisei <alexandru.elisei@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-4-maz@kernel.org>
 <a7c8207c-9061-ad0e-c9f8-64c995e928b6@arm.com>
 <76d811eb-b304-c49f-1f21-fe9d95112a28@arm.com>
 <5134e123-18ec-9b69-2e0a-b83798e01507@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <cc50e08b-0d7e-83b6-88ee-6f8726dcd9bb@arm.com>
Date: Tue, 12 May 2020 17:13:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5134e123-18ec-9b69-2e0a-b83798e01507@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_091340_511384_5904D2E0 
X-CRM114-Status: GOOD (  25.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Marc Zyngier <maz@kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On 12/05/2020 16:47, Alexandru Elisei wrote:
> On 5/12/20 12:17 PM, James Morse wrote:
>> On 11/05/2020 17:38, Alexandru Elisei wrote:
>>> On 4/22/20 1:00 PM, Marc Zyngier wrote:
>>>> From: Christoffer Dall <christoffer.dall@arm.com>
>>>>
>>>> As we are about to reuse our stage 2 page table manipulation code for
>>>> shadow stage 2 page tables in the context of nested virtualization, we
>>>> are going to manage multiple stage 2 page tables for a single VM.
>>>>
>>>> This requires some pretty invasive changes to our data structures,
>>>> which moves the vmid and pgd pointers into a separate structure and
>>>> change pretty much all of our mmu code to operate on this structure
>>>> instead.
>>>>
>>>> The new structure is called struct kvm_s2_mmu.
>>>>
>>>> There is no intended functional change by this patch alone.
>>>> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
>>>> index 7dd8fefa6aecd..664a5d92ae9b8 100644
>>>> --- a/arch/arm64/include/asm/kvm_host.h
>>>> +++ b/arch/arm64/include/asm/kvm_host.h
>>>> @@ -63,19 +63,32 @@ struct kvm_vmid {
>>>>  	u32    vmid;
>>>>  };
>>>>  
>>>> -struct kvm_arch {
>>>> +struct kvm_s2_mmu {
>>>>  	struct kvm_vmid vmid;
>>>>  
>>>> -	/* stage2 entry level table */
>>>> -	pgd_t *pgd;
>>>> -	phys_addr_t pgd_phys;
>>>> -
>>>> -	/* VTCR_EL2 value for this VM */
>>>> -	u64    vtcr;
>>>> +	/*
>>>> +	 * stage2 entry level table
>>>> +	 *
>>>> +	 * Two kvm_s2_mmu structures in the same VM can point to the same pgd
>>>> +	 * here.  This happens when running a non-VHE guest hypervisor which
>>>> +	 * uses the canonical stage 2 page table for both vEL2 and for vEL1/0
>>>> +	 * with vHCR_EL2.VM == 0.

>>> It makes more sense to me to say that a non-VHE guest hypervisor will use the
>>> canonical stage *1* page table when running at EL2

>> Can KVM say anything about stage1? Its totally under the the guests control even at vEL2...

> It is. My interpretation of the comment was that if the guest doesn't have virtual
> stage 2 enabled (we're not running a guest of the L1 hypervisor), then the L0 host
> can use the same L0 stage 2 tables because we're running the same guest (the L1
> VM), regardless of the actual exception level for the guest.

I think you're right, but I can't see where stage 1 comes in to it!


> If I remember
> correctly, KVM assigns different vmids for guests running at vEL1/0 and vEL2 with
> vHCR_EL2.VM == 0 because the translation regimes are different, but keeps the same
> translation tables.

Interesting. Is that because vEL2 really has ASIDs so it needs its own VMID space?



>>> (the "Non-secure EL2 translation regime" as ARM DDI 0487F.b calls it on page D5-2543).
>>> I think that's
>>> the only situation where vEL2 and vEL1&0 will use the same L0 stage 2 tables. It's
>>> been quite some time since I reviewed the initial version of the NV patches, did I
>>> get that wrong?
>>
>>>> +	 */
>>>> +	pgd_t		*pgd;
>>>> +	phys_addr_t	pgd_phys;
>>>>  
>>>>  	/* The last vcpu id that ran on each physical CPU */
>>>>  	int __percpu *last_vcpu_ran;

>>> It makes sense for the other fields to be part of kvm_s2_mmu, but I'm struggling
>>> to figure out why last_vcpu_ran is here. Would you mind sharing the rationale? I
>>> don't see this change in v1 or v2 of the NV series.

>> Marc may have a better rationale. My thinking was because kvm_vmid is in here too.
>>
>> last_vcpu_ran exists to prevent KVM accidentally emulating CNP without the opt-in. (we
>> call it defacto CNP).
>>
>> The guest may expect to be able to use asid-4 with different page tables on different

> I'm afraid I don't know what asid-4 is.

Sorry - 4 was just a random number![0]
'to use the same asid number on different vcpus'.


>> vCPUs, assuming the TLB isn't shared. But if KVM is switching between those vCPU on one
>> physical CPU, the TLB is shared, ... the VMID and ASID are the same, but the page tables
>> are not. Not fun to debug!
>>
>>
>> NV makes this problem per-stage2, because each stage2 has its own VMID, we need to track
>> the vcpu_id that last ran this stage2 on this physical CPU. If its not the same, we need
>> to blow away this VMIDs TLB entries.
>>
>> The workaround lives in virt/kvm/arm/arm.c::kvm_arch_vcpu_load()
> 
> Makes sense, thank you for explaining that.

Great,


Thanks,

James


[0] https://xkcd.com/221/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
