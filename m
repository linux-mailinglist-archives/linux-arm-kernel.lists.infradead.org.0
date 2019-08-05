Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CF58215F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKl0bJrNdA81X9w30yyXU0e0IhLUwhh+HL5xIAculnc=; b=midvLSuXlsfFbi
	GKDVneCjorXmYaJ/fh0jRkKjlq4lwPln34KjEVt0FzaDqkxNwyjkJt9I+8YjbomuQMbLv2LpvS4ll
	ADAO9a2PkpWJld2Ozed40ksl8Y1a49oJ7EQW3ockV+xpcsbZPZ67Wh02hj5X291kPlWwbdnKvUouX
	dR67ZjeSNU1vCaqFxAlSgfxkXg7EclP5m2Qt0bqkOX4UKoNlFaHbtWpAl9FWA0rgjYeJM7DZy4g5+
	cn16hv/lLWCYMJUnsLxR/q3Ubg8GAP74uDzzwNQFiCHq/BbkOFI4pzPPXxYdB0b8ogniFvNthD5K+
	V7mUOpfVwLkDmKUcmUTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufZV-00025R-GT; Mon, 05 Aug 2019 16:10:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hufZG-000257-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:10:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74DFF344;
 Mon,  5 Aug 2019 09:10:37 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD0323F694;
 Mon,  5 Aug 2019 09:10:35 -0700 (PDT)
Subject: Re: [PATCH 6/9] KVM: arm64: Provide a PV_TIME device to user space
To: Marc Zyngier <maz@kernel.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-7-steven.price@arm.com> <20190803135113.6cdf500c@why>
From: Steven Price <steven.price@arm.com>
Message-ID: <1a7d5be6-184b-0c78-61a3-b01730cb5df9@arm.com>
Date: Mon, 5 Aug 2019 17:10:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190803135113.6cdf500c@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_091038_532715_7B473759 
X-CRM114-Status: GOOD (  32.91  )
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

On 03/08/2019 13:51, Marc Zyngier wrote:
> On Fri,  2 Aug 2019 15:50:14 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
>> Allow user space to inform the KVM host where in the physical memory
>> map the paravirtualized time structures should be located.
>>
>> A device is created which provides the base address of an array of
>> Stolen Time (ST) structures, one for each VCPU. There must be (64 *
>> total number of VCPUs) bytes of memory available at this location.
>>
>> The address is given in terms of the physical address visible to
>> the guest and must be 64 byte aligned. The memory should be marked as
>> reserved to the guest to stop it allocating it for other purposes.
> 
> Why? You seem to be allocating the memory from the kernel, so as far as
> the guest is concerned, this isn't generally usable memory.

I obviously didn't word it very well - that's what I meant. The "memory"
that represents the stolen time structure shouldn't be shown to the
guest as normal memory, but "reserved" for the purpose of stolen time.

To be honest it looks like I forgot to rewrite this commit message -
which 64 byte alignment is all that the guest can rely on (because each
vCPU has it's own structure), the actual array of structures needs to be
page aligned to ensure we can safely map it into the guest.

>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  arch/arm64/include/asm/kvm_mmu.h  |   2 +
>>  arch/arm64/include/uapi/asm/kvm.h |   6 +
>>  arch/arm64/kvm/Makefile           |   1 +
>>  include/uapi/linux/kvm.h          |   2 +
>>  virt/kvm/arm/mmu.c                |  44 +++++++
>>  virt/kvm/arm/pvtime.c             | 190 ++++++++++++++++++++++++++++++
>>  6 files changed, 245 insertions(+)
>>  create mode 100644 virt/kvm/arm/pvtime.c
>>
>> diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
>> index befe37d4bc0e..88c8a4b2836f 100644
>> --- a/arch/arm64/include/asm/kvm_mmu.h
>> +++ b/arch/arm64/include/asm/kvm_mmu.h
>> @@ -157,6 +157,8 @@ int kvm_alloc_stage2_pgd(struct kvm *kvm);
>>  void kvm_free_stage2_pgd(struct kvm *kvm);
>>  int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
>>  			  phys_addr_t pa, unsigned long size, bool writable);
>> +int kvm_phys_addr_memremap(struct kvm *kvm, phys_addr_t guest_ipa,
>> +			  phys_addr_t pa, unsigned long size, bool writable);
>>  
>>  int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run);
>>  
>> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
>> index 9a507716ae2f..95516a4198ea 100644
>> --- a/arch/arm64/include/uapi/asm/kvm.h
>> +++ b/arch/arm64/include/uapi/asm/kvm.h
>> @@ -367,6 +367,12 @@ struct kvm_vcpu_events {
>>  #define KVM_PSCI_RET_INVAL		PSCI_RET_INVALID_PARAMS
>>  #define KVM_PSCI_RET_DENIED		PSCI_RET_DENIED
>>  
>> +/* Device Control API: PV_TIME */
>> +#define KVM_DEV_ARM_PV_TIME_PADDR	0
>> +#define  KVM_DEV_ARM_PV_TIME_ST		0
>> +#define KVM_DEV_ARM_PV_TIME_STATE_SIZE	1
>> +#define KVM_DEV_ARM_PV_TIME_STATE	2
>> +
>>  #endif
>>  
>>  #endif /* __ARM_KVM_H__ */
>> diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
>> index 73dce4d47d47..5ffbdc39e780 100644
>> --- a/arch/arm64/kvm/Makefile
>> +++ b/arch/arm64/kvm/Makefile
>> @@ -14,6 +14,7 @@ kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/e
>>  kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.o
>>  kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
>>  kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hypercalls.o
>> +kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/pvtime.o
>>  
>>  kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
>>  kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
>> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
>> index a7c19540ce21..04bffafa0708 100644
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
>> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
>> index 38b4c910b6c3..be28a4aee451 100644
>> --- a/virt/kvm/arm/mmu.c
>> +++ b/virt/kvm/arm/mmu.c
>> @@ -1368,6 +1368,50 @@ int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
>>  	return ret;
>>  }
>>  
>> +/**
>> + * kvm_phys_addr_memremap - map a memory range to guest IPA
>> + *
>> + * @kvm:	The KVM pointer
>> + * @guest_ipa:	The IPA at which to insert the mapping
>> + * @pa:		The physical address of the memory
>> + * @size:	The size of the mapping
>> + */
>> +int kvm_phys_addr_memremap(struct kvm *kvm, phys_addr_t guest_ipa,
>> +			  phys_addr_t pa, unsigned long size, bool writable)
>> +{
>> +	phys_addr_t addr, end;
>> +	int ret = 0;
>> +	unsigned long pfn;
>> +	struct kvm_mmu_memory_cache cache = { 0, };
>> +
>> +	end = (guest_ipa + size + PAGE_SIZE - 1) & PAGE_MASK;
>> +	pfn = __phys_to_pfn(pa);
>> +
>> +	for (addr = guest_ipa; addr < end; addr += PAGE_SIZE) {
>> +		pte_t pte = pfn_pte(pfn, PAGE_S2);
>> +
>> +		if (writable)
>> +			pte = kvm_s2pte_mkwrite(pte);
>> +
>> +		ret = mmu_topup_memory_cache(&cache,
>> +					     kvm_mmu_cache_min_pages(kvm),
>> +					     KVM_NR_MEM_OBJS);
>> +		if (ret)
>> +			goto out;
>> +		spin_lock(&kvm->mmu_lock);
>> +		ret = stage2_set_pte(kvm, &cache, addr, &pte, 0);
>> +		spin_unlock(&kvm->mmu_lock);
>> +		if (ret)
>> +			goto out;
>> +
>> +		pfn++;
>> +	}
>> +
>> +out:
>> +	mmu_free_memory_cache(&cache);
>> +	return ret;
>> +}
> 
> This is an exact copy of kvm_phys_addr_ioremap(), with only the memory
> attributes changing. Surely we can have a shared implementation that
> takes the memory attribute as a parameter.

Good point - although due to below I'm going to need something which can
deal with non-contiguous memory...

>> +
>>  static bool transparent_hugepage_adjust(kvm_pfn_t *pfnp, phys_addr_t *ipap)
>>  {
>>  	kvm_pfn_t pfn = *pfnp;
>> diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
>> new file mode 100644
>> index 000000000000..9051bc07eae1
>> --- /dev/null
>> +++ b/virt/kvm/arm/pvtime.c
>> @@ -0,0 +1,190 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +// Copyright (C) 2019 Arm Ltd.
>> +
>> +#include <linux/kvm_host.h>
>> +#include <asm/kvm_mmu.h>
>> +
>> +/* We currently only support PV time on ARM64 */
>> +#ifdef CONFIG_ARM64
> 
> And we're only compiling it on arm64, so why the #ifdef?

Another good point - will remove.

>> +
>> +#include <asm/pvclock-abi.h>
>> +
>> +static int max_stolen_size(void)
>> +{
>> +	int size = KVM_MAX_VCPUS * sizeof(struct pvclock_vcpu_stolen_time_info);
> 
> So we're always allocating enough memory for 512 CPUs? That's an
> additional 32kB of contiguous memory...
> 
>> +
>> +	return ALIGN(size, PAGE_SIZE);
>> +}
>> +
>> +static int kvm_arm_pvtime_create(struct kvm_device *dev, u32 type)
>> +{
>> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
>> +
>> +	pvtime->st = alloc_pages_exact(max_stolen_size(),
>> +				       GFP_KERNEL | __GFP_ZERO);
>> +	if (!pvtime->st)
>> +		return -ENOMEM;
> 
> Is there any chance we could use a vmalloc allocation instead? This
> would lift the requirement on having physically contiguous memory.

Yes I think it should be possible to use non-contiguous memory and vmalloc.

>> +
>> +	return 0;
>> +}
>> +
>> +static void kvm_arm_pvtime_destroy(struct kvm_device *dev)
>> +{
>> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
>> +
>> +	pvtime->st_base = GPA_INVALID;
>> +	free_pages_exact(pvtime->st, max_stolen_size());
>> +	kfree(dev);
>> +}
>> +
>> +static int pvtime_map_pages(struct kvm *kvm, gpa_t guest_paddr,
>> +			    void *kaddr, int size)
>> +{
>> +	return kvm_phys_addr_memremap(kvm, guest_paddr,
>> +			virt_to_phys(kaddr),
>> +			size, false);
>> +}
>> +
>> +static int pvtime_save_state(struct kvm *kvm, u64 type, void __user *user)
>> +{
>> +	void *source;
>> +	size_t size;
>> +
>> +	switch (type) {
>> +	case KVM_DEV_ARM_PV_TIME_ST:
>> +		source = kvm->arch.pvtime.st;
>> +		size = sizeof(struct pvclock_vcpu_stolen_time_info) *
>> +			atomic_read(&kvm->online_vcpus);
>> +		break;
>> +	default:
>> +		return -ENXIO;
>> +	}
>> +
>> +	if (copy_to_user(user, source, size))
>> +		return -EFAULT;
>> +	return 0;
>> +}
>> +
>> +static int pvtime_restore_state(struct kvm *kvm, u64 type, void __user *user)
>> +{
>> +	void *dest;
>> +	size_t size;
>> +
>> +	switch (type) {
>> +	case KVM_DEV_ARM_PV_TIME_ST:
>> +		dest = kvm->arch.pvtime.st;
>> +		size = sizeof(struct pvclock_vcpu_stolen_time_info) *
>> +			atomic_read(&kvm->online_vcpus);
>> +		break;
>> +	default:
>> +		return -ENXIO;
>> +	}
>> +
>> +	if (copy_from_user(dest, user, size))
>> +		return -EFAULT;
>> +
>> +	return 0;
>> +}
>> +
>> +static int kvm_arm_pvtime_set_attr(struct kvm_device *dev,
>> +				   struct kvm_device_attr *attr)
>> +{
>> +	struct kvm_arch_pvtime *pvtime = &dev->kvm->arch.pvtime;
>> +	u64 __user *user = (u64 __user *)attr->addr;
>> +	u64 paddr;
>> +	int ret;
>> +
>> +	switch (attr->group) {
>> +	case KVM_DEV_ARM_PV_TIME_PADDR:
>> +		if (get_user(paddr, user))
>> +			return -EFAULT;
>> +		if (paddr & 63)
>> +			return -EINVAL;
> 
> You should check whether the device fits into the IPA space for this
> guest, and whether it overlaps with anything else.

pvtime_map_pages() should fail in the case of overlap. That seems
sufficient to me - do you think we need something stronger?

>> +		switch (attr->attr) {
>> +		case KVM_DEV_ARM_PV_TIME_ST:
>> +			if (pvtime->st_base != GPA_INVALID)
>> +				return -EEXIST;
>> +			ret = pvtime_map_pages(dev->kvm, paddr, pvtime->st,
>> +					max_stolen_size());
> 
> Consider moving the size directly into pvtime_map_pages(), and dropping
> the pvtime->st parameter. All you need is kvm and paddr.

Will do.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
