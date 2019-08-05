Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C9582288
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SipW1dc9WWIE0m/Z8wC9NU45Jw+RSk3OP+/TD9HoL2I=; b=oJOIYfzSR9Igff
	Z+TmdpfQPDernYJ9GbWzoImlEwfo+V/QhHA4S5vQDYHmeZUkp9sZE3pUeBsHw5JxH8huBwiPKP4yA
	ACM+SiBQ3xFRCa2IllPRQOdvp1doF2vTd/ZZH39QzbknBLBlyDDXLaCFgrrh1jpKEnMIH+4ebAqND
	ETte2rgvm7dn4/cw9BxADhbZFNNtuXxmqkxVnMGArTPUhKx0vzDf3JM0+7XAN//X56r7+0+tGUbbe
	8dEClXJgf7IYz5V0PLqKrqBkGl5+/kD8AProChr5iGm0f97XBNi6SGEintehTf7V2B1vow168eJ6w
	94jhOrNxrz6vHAbRBYKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufyG-00089X-AZ; Mon, 05 Aug 2019 16:36:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hufr4-0000HR-1e
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:29:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5058A344;
 Mon,  5 Aug 2019 09:29:00 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 96E5D3F694; Mon,  5 Aug 2019 09:28:58 -0700 (PDT)
Subject: Re: [PATCH 6/9] KVM: arm64: Provide a PV_TIME device to user space
To: Steven Price <steven.price@arm.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-7-steven.price@arm.com> <20190803135113.6cdf500c@why>
 <1a7d5be6-184b-0c78-61a3-b01730cb5df9@arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <c18f9d74-48eb-3e03-dca8-ad44e6d6b682@kernel.org>
Date: Mon, 5 Aug 2019 17:28:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1a7d5be6-184b-0c78-61a3-b01730cb5df9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_092904_871045_AE2319F6 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/08/2019 17:10, Steven Price wrote:
> On 03/08/2019 13:51, Marc Zyngier wrote:
>> On Fri,  2 Aug 2019 15:50:14 +0100
>> Steven Price <steven.price@arm.com> wrote:
>>
>>> Allow user space to inform the KVM host where in the physical memory
>>> map the paravirtualized time structures should be located.
>>>
>>> A device is created which provides the base address of an array of
>>> Stolen Time (ST) structures, one for each VCPU. There must be (64 *
>>> total number of VCPUs) bytes of memory available at this location.
>>>
>>> The address is given in terms of the physical address visible to
>>> the guest and must be 64 byte aligned. The memory should be marked as
>>> reserved to the guest to stop it allocating it for other purposes.
>>
>> Why? You seem to be allocating the memory from the kernel, so as far as
>> the guest is concerned, this isn't generally usable memory.
> 
> I obviously didn't word it very well - that's what I meant. The "memory"
> that represents the stolen time structure shouldn't be shown to the
> guest as normal memory, but "reserved" for the purpose of stolen time.
> 
> To be honest it looks like I forgot to rewrite this commit message -
> which 64 byte alignment is all that the guest can rely on (because each
> vCPU has it's own structure), the actual array of structures needs to be
> page aligned to ensure we can safely map it into the guest.
> 
>>>
>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>> ---
>>>  arch/arm64/include/asm/kvm_mmu.h  |   2 +
>>>  arch/arm64/include/uapi/asm/kvm.h |   6 +
>>>  arch/arm64/kvm/Makefile           |   1 +
>>>  include/uapi/linux/kvm.h          |   2 +
>>>  virt/kvm/arm/mmu.c                |  44 +++++++
>>>  virt/kvm/arm/pvtime.c             | 190 ++++++++++++++++++++++++++++++
>>>  6 files changed, 245 insertions(+)
>>>  create mode 100644 virt/kvm/arm/pvtime.c

[...]

>>> +static int kvm_arm_pvtime_set_attr(struct kvm_device *dev,
>>> +				   struct kvm_device_attr *attr)
>>> +{
>>> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
>>> +	u64 __user *user = (u64 __user *)attr->addr;
>>> +	u64 paddr;
>>> +	int ret;
>>> +
>>> +	switch (attr->group) {
>>> +	case KVM_DEV_ARM_PV_TIME_PADDR:
>>> +		if (get_user(paddr, user))
>>> +			return -EFAULT;
>>> +		if (paddr & 63)
>>> +			return -EINVAL;
>>
>> You should check whether the device fits into the IPA space for this
>> guest, and whether it overlaps with anything else.
> 
> pvtime_map_pages() should fail in the case of overlap. That seems
> sufficient to me - do you think we need something stronger?

Definitely. stage2_set_pte() won't fail for a non-IO overlapping
mapping, and will just treat it as guest memory. If this overlaps with a
memslot, we'll never be able to fault that page in, ending up with
interesting memory corruption... :-/

That's one of the reasons why I think option (2) in your earlier email
is an interesting one, as it sidesteps a whole lot of ugly and hard to
test corner cases.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
