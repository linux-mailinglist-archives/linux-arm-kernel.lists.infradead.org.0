Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC13DEA51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxEjU4pHXtrA3Hr4YYol/U/RAzQmsjToBJhyRj0PQa0=; b=b6M2Eo4ZMhYx34
	HPbfpT6oE8aEhiMk2Z8DNa/uSw9swC0AK1ZY/aVK3EOFo2+RYhj6AJomJ/l6aQt0O/8TJBxX0Mw9s
	v2qwxP1jSE7N6sqaWGa06qf9Zz4879hRgenP3oop9iHXDO5gNb6e7X+/Jfa4HNAwm5NR9qSGIyFa0
	CIWgUrw+suxBW6+9IAsVwPGkH80uLWWtvyrNXmfc8ufrpPDO5SS3HGE2d5aybxZIWwT33uPD16bRL
	qAaGM951exMm/t52oku7+cW7Q2s4G/d4UzbJMYeEYXuSOtRyyaxE9AtUC1Jeh2iVTn/5ef578RRuW
	Q2jhPv70tuZRbcvUGMjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVRN-00044J-Ss; Mon, 21 Oct 2019 11:01:33 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVQu-0003ia-7H
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:01:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E950CA3;
 Mon, 21 Oct 2019 04:00:53 -0700 (PDT)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C77D3F718;
 Mon, 21 Oct 2019 04:00:51 -0700 (PDT)
Subject: Re: [PATCH v6 07/10] KVM: arm64: Provide VCPU attributes for stolen
 time
To: Marc Zyngier <maz@kernel.org>
References: <20191011125930.40834-1-steven.price@arm.com>
 <20191011125930.40834-8-steven.price@arm.com> <86d0etynxv.wl-maz@kernel.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <28b3a004-b951-72fb-35fe-1f58673e6e93@arm.com>
Date: Mon, 21 Oct 2019 12:00:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <86d0etynxv.wl-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_040104_369463_5F59AF6A 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/10/2019 12:28, Marc Zyngier wrote:
> On Fri, 11 Oct 2019 13:59:27 +0100,
> Steven Price <steven.price@arm.com> wrote:
>>
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
>> index 67c21f9bdbad..cff1ba12c768 100644
>> --- a/arch/arm64/include/uapi/asm/kvm.h
>> +++ b/arch/arm64/include/uapi/asm/kvm.h
>> @@ -323,6 +323,8 @@ struct kvm_vcpu_events {
>>  #define KVM_ARM_VCPU_TIMER_CTRL		1
>>  #define   KVM_ARM_VCPU_TIMER_IRQ_VTIMER		0
>>  #define   KVM_ARM_VCPU_TIMER_IRQ_PTIMER		1
>> +#define KVM_ARM_VCPU_PVTIME_CTRL	2
>> +#define   KVM_ARM_VCPU_PVTIME_IPA	0
>>  
>>  /* KVM_IRQ_LINE irq field index values */
>>  #define KVM_ARM_IRQ_VCPU2_SHIFT		28
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
>> index 52641d8ca9e8..a540c8357049 100644
>> --- a/include/uapi/linux/kvm.h
>> +++ b/include/uapi/linux/kvm.h
>> @@ -1227,6 +1227,8 @@ enum kvm_device_type {
>>  #define KVM_DEV_TYPE_ARM_VGIC_ITS	KVM_DEV_TYPE_ARM_VGIC_ITS
>>  	KVM_DEV_TYPE_XIVE,
>>  #define KVM_DEV_TYPE_XIVE		KVM_DEV_TYPE_XIVE
>> +	KVM_DEV_TYPE_ARM_PV_TIME,
>> +#define KVM_DEV_TYPE_ARM_PV_TIME	KVM_DEV_TYPE_ARM_PV_TIME
>>  	KVM_DEV_TYPE_MAX,
>>  };
>>  
>> diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
>> index a90f1b4ebd13..9dc466861e1e 100644
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
>> +	if (attr->attr != KVM_ARM_VCPU_PVTIME_IPA)
>> +		return -ENXIO;
>> +
>> +	if (get_user(ipa, user))
>> +		return -EFAULT;
>> +	if (!IS_ALIGNED(ipa, 64))
>> +		return -EINVAL;
>> +	if (vcpu->arch.steal.base != GPA_INVALID)
>> +		return -EEXIST;
>> +	vcpu->arch.steal.base = ipa;
> 
> And what if this IPA doesn't point to any memslot? I understand that
> everything will still work (kvm_put_user()) will handle the mishap,
> but it makes it hard for userspace to know that something is wrong.
> 
> Is there any problem in mandating that the corresponding memslot
> already has been created, and enforcing this check?

No that could be done. As you mentioned nothing bad will happen (to the
host) if this is wrong, so I didn't see the need to enforce that the
memory is setup first. And the check will be pretty weak because nothing
stop the memslot vanishing after the check. But I guess this might make
it easier to figure out what has gone wrong in user space, and we can
always remove this ordering restriction in future if necessary. So I'll
add a check for now.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
