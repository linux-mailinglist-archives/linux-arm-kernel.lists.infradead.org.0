Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9129A39D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3x20Lgvv1dPPux7BTnJF8IFlkAN6gDbiI0AtZ7ke6dM=; b=srAfN+Y/5mkDr4
	tzFyLgpCAzr88HwgjDJRk5GymI+EY7LLgqo4/X4FvLqkC5feFvo4Zjj78LNwHkp+pJzMtGWfy0RJx
	qbHBAymeBusDqUNiqTAIdOr9n/GYN9qhnQAHXEkSt5+KLsAFjV0z3CvLk+tyB5sitwRQ8BR62nP3b
	kFxNjkT+9JtMLfmmHheqZyz7mO7sCvNhjtp0pgAHGMC5TvmNtBeMPLpcxpm6TPnsQpEVsFiGvozjw
	E6Yro3BNCuxh9vIoXntneODtO2oiijuTSuVeryV/uzd2/yelyqdUeXlp+PxDbWPFxtVHb5xkyc9M6
	CM8yCKbSxJMBo/zyivKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iSi-0004of-Di; Fri, 30 Aug 2019 15:05:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iSO-0004nq-VX
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:04:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5D0F344;
 Fri, 30 Aug 2019 08:04:55 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E47243F703;
 Fri, 30 Aug 2019 08:04:53 -0700 (PDT)
Subject: Re: [PATCH v4 07/10] KVM: arm64: Provide VCPU attributes for stolen
 time
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
References: <20190830084255.55113-1-steven.price@arm.com>
 <20190830084255.55113-8-steven.price@arm.com>
 <36104ec0-2237-fb0e-376f-ab50c23c6101@kernel.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <31f2bb01-7376-ec4d-9885-e4ca7135eb4f@arm.com>
Date: Fri, 30 Aug 2019 16:04:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <36104ec0-2237-fb0e-376f-ab50c23c6101@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_080457_106053_5D7007DF 
X-CRM114-Status: GOOD (  24.73  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 11:02, Marc Zyngier wrote:
> On 30/08/2019 09:42, Steven Price wrote:
>> Allow user space to inform the KVM host where in the physical memory
>> map the paravirtualized time structures should be located.
>>
>> User space can set an attribute on the VCPU providing the IPA base
>> address of the stolen time structure for that VCPU. This must be
>> repeated for every VCPU in the VM.
>>
>> The address is given in terms of the physical address visible to
>> the guest and must be 64 byte aligned. The guest will discover the
>> address via a hypercall.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  arch/arm64/include/asm/kvm_host.h |  7 +++++
>>  arch/arm64/include/uapi/asm/kvm.h |  2 ++
>>  arch/arm64/kvm/guest.c            |  9 ++++++
>>  include/uapi/linux/kvm.h          |  2 ++
>>  virt/kvm/arm/pvtime.c             | 47 +++++++++++++++++++++++++++++++
>>  5 files changed, 67 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
>> index 1697e63f6dd8..6af16b29a41f 100644
>> --- a/arch/arm64/include/asm/kvm_host.h
>> +++ b/arch/arm64/include/asm/kvm_host.h
>> @@ -489,6 +489,13 @@ long kvm_hypercall_pv_features(struct kvm_vcpu *vcpu);
>>  long kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu);
>>  int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init);
>>  
>> +int kvm_arm_pvtime_set_attr(struct kvm_vcpu *vcpu,
>> +			    struct kvm_device_attr *attr);
>> +int kvm_arm_pvtime_get_attr(struct kvm_vcpu *vcpu,
>> +			    struct kvm_device_attr *attr);
>> +int kvm_arm_pvtime_has_attr(struct kvm_vcpu *vcpu,
>> +			    struct kvm_device_attr *attr);
>> +
>>  static inline void kvm_arm_pvtime_vcpu_init(struct kvm_vcpu_arch *vcpu_arch)
>>  {
>>  	vcpu_arch->steal.base = GPA_INVALID;
>> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
>> index 9a507716ae2f..bde9f165ad3a 100644
>> --- a/arch/arm64/include/uapi/asm/kvm.h
>> +++ b/arch/arm64/include/uapi/asm/kvm.h
>> @@ -323,6 +323,8 @@ struct kvm_vcpu_events {
>>  #define KVM_ARM_VCPU_TIMER_CTRL		1
>>  #define   KVM_ARM_VCPU_TIMER_IRQ_VTIMER		0
>>  #define   KVM_ARM_VCPU_TIMER_IRQ_PTIMER		1
>> +#define KVM_ARM_VCPU_PVTIME_CTRL	2
>> +#define   KVM_ARM_VCPU_PVTIME_SET_IPA	0
>>  
>>  /* KVM_IRQ_LINE irq field index values */
>>  #define KVM_ARM_IRQ_TYPE_SHIFT		24
>> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
>> index dfd626447482..d3ac9d2fd405 100644
>> --- a/arch/arm64/kvm/guest.c
>> +++ b/arch/arm64/kvm/guest.c
>> @@ -858,6 +858,9 @@ int kvm_arm_vcpu_arch_set_attr(struct kvm_vcpu *vcpu,
>>  	case KVM_ARM_VCPU_TIMER_CTRL:
>>  		ret = kvm_arm_timer_set_attr(vcpu, attr);
>>  		break;
>> +	case KVM_ARM_VCPU_PVTIME_CTRL:
>> +		ret = kvm_arm_pvtime_set_attr(vcpu, attr);
>> +		break;
>>  	default:
>>  		ret = -ENXIO;
>>  		break;
>> @@ -878,6 +881,9 @@ int kvm_arm_vcpu_arch_get_attr(struct kvm_vcpu *vcpu,
>>  	case KVM_ARM_VCPU_TIMER_CTRL:
>>  		ret = kvm_arm_timer_get_attr(vcpu, attr);
>>  		break;
>> +	case KVM_ARM_VCPU_PVTIME_CTRL:
>> +		ret = kvm_arm_pvtime_get_attr(vcpu, attr);
>> +		break;
>>  	default:
>>  		ret = -ENXIO;
>>  		break;
>> @@ -898,6 +904,9 @@ int kvm_arm_vcpu_arch_has_attr(struct kvm_vcpu *vcpu,
>>  	case KVM_ARM_VCPU_TIMER_CTRL:
>>  		ret = kvm_arm_timer_has_attr(vcpu, attr);
>>  		break;
>> +	case KVM_ARM_VCPU_PVTIME_CTRL:
>> +		ret = kvm_arm_pvtime_has_attr(vcpu, attr);
>> +		break;
>>  	default:
>>  		ret = -ENXIO;
>>  		break;
>> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
>> index 5e3f12d5359e..265156a984f2 100644
>> --- a/include/uapi/linux/kvm.h
>> +++ b/include/uapi/linux/kvm.h
>> @@ -1222,6 +1222,8 @@ enum kvm_device_type {
>>  #define KVM_DEV_TYPE_ARM_VGIC_ITS	KVM_DEV_TYPE_ARM_VGIC_ITS
>>  	KVM_DEV_TYPE_XIVE,
>>  #define KVM_DEV_TYPE_XIVE		KVM_DEV_TYPE_XIVE
>> +	KVM_DEV_TYPE_ARM_PV_TIME,
>> +#define KVM_DEV_TYPE_ARM_PV_TIME	KVM_DEV_TYPE_ARM_PV_TIME
>>  	KVM_DEV_TYPE_MAX,
>>  };
>>  
>> diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
>> index d9d0dbc6994b..7b1834b98a68 100644
>> --- a/virt/kvm/arm/pvtime.c
>> +++ b/virt/kvm/arm/pvtime.c
>> @@ -2,7 +2,9 @@
>>  // Copyright (C) 2019 Arm Ltd.
>>  
>>  #include <linux/arm-smccc.h>
>> +#include <linux/kvm_host.h>
>>  
>> +#include <asm/kvm_mmu.h>
>>  #include <asm/pvclock-abi.h>
>>  
>>  #include <kvm/arm_hypercalls.h>
>> @@ -75,3 +77,48 @@ long kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
>>  
>>  	return vcpu->arch.steal.base;
>>  }
>> +
>> +int kvm_arm_pvtime_set_attr(struct kvm_vcpu *vcpu,
>> +			    struct kvm_device_attr *attr)
>> +{
>> +	u64 __user *user = (u64 __user *)attr->addr;
>> +	u64 ipa;
>> +
>> +	if (attr->attr != KVM_ARM_VCPU_PVTIME_SET_IPA)
>> +		return -ENXIO;
>> +
>> +	if (get_user(ipa, user))
>> +		return -EFAULT;
>> +	if (ipa & 63)
> 
> nit: Please express this as !IS_ALIGNED(ipa, 64) instead.

Sure

>> +		return -EINVAL;
>> +	if (vcpu->arch.steal.base != GPA_INVALID)
>> +		return -EEXIST;
>> +	vcpu->arch.steal.base = ipa;
> 
> I'm still worried that you end-up not knowing whether the IPA is valid
> or not at this stage, nor that we check about overlapping vcpus. How do
> we validate that?

Considering we really can't reasonably validate IPA overlapping with
guest memory (how is the host to know what is 'guest memory'), I'm not
convinced it's worth the code to detect overlapping vcpus. Nothing bad
will happen to the host in this case (the kvm_put_guest() calls will
just clobber each other).

In terms of checking the IPA is valid - again this is something that can
change in the lifetime of the VM, so the check at setup time isn't
particularly useful. Currently it's also possible to create the vcpus
(including setting up the stolen time) before the memory is assigned to
the guest as long as the vcpus are not started. This seems like a useful
level of flexibility.

> I also share Christoffer's concern that the memslot parsing may be
> expensive on a system with multiple memslots. But maybe that can be
> solved by adding some caching capabilities to your kvm_put_guest(),
> should this become a problem.

Yes it should be possible to add it - I'd like to wait to see whether
user actually want to use multiple memslots though - it's quite possible
to use a single memslot for both guest memory and stolen time structures.

>> +	return 0;
>> +}
>> +
>> +int kvm_arm_pvtime_get_attr(struct kvm_vcpu *vcpu,
>> +			    struct kvm_device_attr *attr)
>> +{
>> +	u64 __user *user = (u64 __user *)attr->addr;
>> +	u64 ipa;
>> +
>> +	if (attr->attr != KVM_ARM_VCPU_PVTIME_SET_IPA)
> 
> It is a bit odd that this is using "SET_IPA" as a way to GET it.

Yes that does look weird. I'll drop the "SET_" part from the symbol. I'm
not sure what I was thinking when I named that.

Thanks,

Steve

>> +		return -ENXIO;
>> +
>> +	ipa = vcpu->arch.steal.base;
>> +
>> +	if (put_user(ipa, user))
>> +		return -EFAULT;
>> +	return 0;
>> +}
>> +
>> +int kvm_arm_pvtime_has_attr(struct kvm_vcpu *vcpu,
>> +			    struct kvm_device_attr *attr)
>> +{
>> +	switch (attr->attr) {
>> +	case KVM_ARM_VCPU_PVTIME_SET_IPA:
>> +		return 0;
>> +	}
>> +	return -ENXIO;
>> +}
>>
> 
> Thanks,
> 
> 	M.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
