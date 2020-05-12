Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F05A1CFB5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHTiJB6lp3FTJSYamKYWBgi6g0w1ctdbJX8IUUQjo1E=; b=UQdxxtOKwqJ4oz
	4DNQgWokRFKZEGgQWE2Ji4I5mcvYKSleqlKV4pkELXm4PhlVWmI7g5a36uiemWcuasEmwgLsirHK4
	UxFZsMMOhmjNCD1i3r4SZVK+bWgNt+7dkMEdoBHavEoVzdseBKcseZp/v6RXpQLZBH4v7yH/y2zvU
	MJsVKY7H4s+F0R7Z1eXO+KPaZEFgV0zyBBuL0QoFSDK9qfJ6YRb12MBD/WkQNFZ1jl8N5BfnL25V0
	SQZgEBAue7JraDtBjUK2Y+XzOsCRlL+ULJKp3uA+pnupWo93LtK+bxH3qU1crr8eEAA3UXJDNQuqu
	YriNImAv64CfJ3PpWVTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYY9x-0003oD-6H; Tue, 12 May 2020 16:53:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYY9m-0003nT-7K
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:53:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5104B1FB;
 Tue, 12 May 2020 09:53:21 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A5E93F305;
 Tue, 12 May 2020 09:53:19 -0700 (PDT)
Subject: Re: [PATCH 03/26] KVM: arm64: Factor out stage 2 page table data from
 struct kvm
To: James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-4-maz@kernel.org>
 <a7c8207c-9061-ad0e-c9f8-64c995e928b6@arm.com>
 <76d811eb-b304-c49f-1f21-fe9d95112a28@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <6518439c-65b7-1e87-a21d-a053d75c0514@arm.com>
Date: Tue, 12 May 2020 17:53:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <76d811eb-b304-c49f-1f21-fe9d95112a28@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_095326_305353_23CDCDA0 
X-CRM114-Status: GOOD (  15.64  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/12/20 12:17 PM, James Morse wrote:
> Hi Alex, Marc,
>
> (just on this last_vcpu_ran thing...)
>
> On 11/05/2020 17:38, Alexandru Elisei wrote:
>> On 4/22/20 1:00 PM, Marc Zyngier wrote:
>>> From: Christoffer Dall <christoffer.dall@arm.com>
>>>
>>> As we are about to reuse our stage 2 page table manipulation code for
>>> shadow stage 2 page tables in the context of nested virtualization, we
>>> are going to manage multiple stage 2 page tables for a single VM.
>>>
>>> This requires some pretty invasive changes to our data structures,
>>> which moves the vmid and pgd pointers into a separate structure and
>>> change pretty much all of our mmu code to operate on this structure
>>> instead.
>>>
>>> The new structure is called struct kvm_s2_mmu.
>>>
>>> There is no intended functional change by this patch alone.
>>> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
>>> index 7dd8fefa6aecd..664a5d92ae9b8 100644
>>> --- a/arch/arm64/include/asm/kvm_host.h
>>> +++ b/arch/arm64/include/asm/kvm_host.h
>>> @@ -63,19 +63,32 @@ struct kvm_vmid {
>>>  	u32    vmid;
>>>  };
>>>  
>>> -struct kvm_arch {
>>> +struct kvm_s2_mmu {
>>>  	struct kvm_vmid vmid;
>>>  
>>> -	/* stage2 entry level table */
>>> -	pgd_t *pgd;
>>> -	phys_addr_t pgd_phys;
>>> -
>>> -	/* VTCR_EL2 value for this VM */
>>> -	u64    vtcr;
>>> +	/*
>>> +	 * stage2 entry level table
>>> +	 *
>>> +	 * Two kvm_s2_mmu structures in the same VM can point to the same pgd
>>> +	 * here.  This happens when running a non-VHE guest hypervisor which
>>> +	 * uses the canonical stage 2 page table for both vEL2 and for vEL1/0
>>> +	 * with vHCR_EL2.VM == 0.
>> It makes more sense to me to say that a non-VHE guest hypervisor will use the
>> canonical stage *1* page table when running at EL2
> Can KVM say anything about stage1? Its totally under the the guests control even at vEL2...

It just occurred to me that "canonical stage 2 page table" refers to the L0
hypervisor stage 2, not to the L1 hypervisor stage 2. If you don't mind my
suggestion, perhaps the comment can be slightly improved to avoid any confusion?
Maybe something along the lines of "[..] This happens when running a non-VHE guest
hypervisor, in which case we use the canonical stage 2 page table for both vEL2
and for vEL1/0 with vHCR_EL2.VM == 0".

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
