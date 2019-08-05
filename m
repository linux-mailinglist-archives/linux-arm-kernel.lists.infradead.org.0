Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6E481EB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 16:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2r8OIWPyW88+ujRPbO0uLYRNeULbcOqFZNrYbjMuMo=; b=Ml7fUcoh6Pq1g7
	CuP/mr5sCynHqzoFbZ87V+Hoqk8ybLZ0OviboLmckQJxWLVe8EWNOFwQbGhsd2x+d/A3hfLqSwvas
	uf1pkRbHL5DeE35pMja4mh43UBhLpEvVlC1JfDeso6pKiol9edNEFrXIR/DSGCWEfYEAhSOtweOeB
	aans7vKbiezHjmxA8gkckAVAfsn2nyyJALVDhbnMaSoJ4/Ua6MpGdXSpU5wagS92mrgBTt/KFySa1
	sgnmkuiOJEpXfiZXc8786DnfnwehFjFLqC1fmbjn2mAxcm2rSZPmJX4eRuqCE1WNr6WvMovdiNwse
	5807Aia+WONPx8RvHrTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudfw-00063s-5p; Mon, 05 Aug 2019 14:09:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hudfl-00063X-72
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 14:09:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FD48337;
 Mon,  5 Aug 2019 07:09:11 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BADD43F706;
 Mon,  5 Aug 2019 07:09:09 -0700 (PDT)
Subject: Re: [PATCH 4/9] KVM: arm64: Support stolen time reporting via shared
 structure
To: Marc Zyngier <maz@kernel.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-5-steven.price@arm.com> <20190803125515.6aa50084@why>
From: Steven Price <steven.price@arm.com>
Message-ID: <1c03f188-d32b-569c-676f-23a955fc40d6@arm.com>
Date: Mon, 5 Aug 2019 15:09:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190803125515.6aa50084@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_070913_359197_C4D42C56 
X-CRM114-Status: GOOD (  28.90  )
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

On 03/08/2019 12:55, Marc Zyngier wrote:
> On Fri,  2 Aug 2019 15:50:12 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
>> Implement the service call for configuring a shared structre between a
> 
> structure
> 
>> VCPU and the hypervisor in which the hypervisor can write the time
>> stolen from the VCPU's execution time by other tasks on the host.
>>
>> The hypervisor allocates memory which is placed at an IPA chosen by user
>> space. The hypervisor then uses WRITE_ONCE() to update the shared
>> structre ensuring single copy atomicity of the 64-bit unsigned value
> 
> structure

Twice in one commit message... thanks for spotting! :)

>> that reports stolen time in nanoseconds.
>>
>> Whenever stolen time is enabled by the guest, the stolen time counter is
>> reset.
>>
>> The stolen time itself is retrieved from the sched_info structure
>> maintained by the Linux scheduler code. We enable SCHEDSTATS when
>> selecting KVM Kconfig to ensure this value is meaningful.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  arch/arm64/include/asm/kvm_host.h | 13 +++++-
>>  arch/arm64/kvm/Kconfig            |  1 +
>>  include/kvm/arm_hypercalls.h      |  1 +
>>  include/linux/kvm_types.h         |  2 +
>>  virt/kvm/arm/arm.c                | 18 ++++++++
>>  virt/kvm/arm/hypercalls.c         | 70 +++++++++++++++++++++++++++++++
>>  6 files changed, 104 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
>> index f656169db8c3..78f270190d43 100644
>> --- a/arch/arm64/include/asm/kvm_host.h
>> +++ b/arch/arm64/include/asm/kvm_host.h
>> @@ -44,6 +44,7 @@
>>  	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
>>  #define KVM_REQ_IRQ_PENDING	KVM_ARCH_REQ(1)
>>  #define KVM_REQ_VCPU_RESET	KVM_ARCH_REQ(2)
>> +#define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
>>  
>>  DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
>>  
>> @@ -83,6 +84,11 @@ struct kvm_arch {
>>  
>>  	/* Mandated version of PSCI */
>>  	u32 psci_version;
>> +
>> +	struct kvm_arch_pvtime {
>> +		void *st;
> 
> Is it really a void *? I'm sure you can use a proper type here...

Indeed that sounds like a good idea!

>> +		gpa_t st_base;
>> +	} pvtime;
>>  };
>>  
>>  #define KVM_NR_MEM_OBJS     40
>> @@ -338,8 +344,13 @@ struct kvm_vcpu_arch {
>>  	/* True when deferrable sysregs are loaded on the physical CPU,
>>  	 * see kvm_vcpu_load_sysregs and kvm_vcpu_put_sysregs. */
>>  	bool sysregs_loaded_on_cpu;
>> -};
>>  
>> +	/* Guest PV state */
>> +	struct {
>> +		u64 steal;
>> +		u64 last_steal;
>> +	} steal;
>> +};
>>  /* Pointer to the vcpu's SVE FFR for sve_{save,load}_state() */
>>  #define vcpu_sve_pffr(vcpu) ((void *)((char *)((vcpu)->arch.sve_state) + \
>>  				      sve_ffr_offset((vcpu)->arch.sve_max_vl)))
>> diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
>> index a67121d419a2..d8b88e40d223 100644
>> --- a/arch/arm64/kvm/Kconfig
>> +++ b/arch/arm64/kvm/Kconfig
>> @@ -39,6 +39,7 @@ config KVM
>>  	select IRQ_BYPASS_MANAGER
>>  	select HAVE_KVM_IRQ_BYPASS
>>  	select HAVE_KVM_VCPU_RUN_PID_CHANGE
>> +	select SCHEDSTATS
>>  	---help---
>>  	  Support hosting virtualized guest machines.
>>  	  We don't support KVM with 16K page tables yet, due to the multiple
>> diff --git a/include/kvm/arm_hypercalls.h b/include/kvm/arm_hypercalls.h
>> index 35a5abcc4ca3..9f0710ab4292 100644
>> --- a/include/kvm/arm_hypercalls.h
>> +++ b/include/kvm/arm_hypercalls.h
>> @@ -7,6 +7,7 @@
>>  #include <asm/kvm_emulate.h>
>>  
>>  int kvm_hvc_call_handler(struct kvm_vcpu *vcpu);
>> +int kvm_update_stolen_time(struct kvm_vcpu *vcpu);
>>  
>>  static inline u32 smccc_get_function(struct kvm_vcpu *vcpu)
>>  {
>> diff --git a/include/linux/kvm_types.h b/include/linux/kvm_types.h
>> index bde5374ae021..1c88e69db3d9 100644
>> --- a/include/linux/kvm_types.h
>> +++ b/include/linux/kvm_types.h
>> @@ -35,6 +35,8 @@ typedef unsigned long  gva_t;
>>  typedef u64            gpa_t;
>>  typedef u64            gfn_t;
>>  
>> +#define GPA_INVALID	(~(gpa_t)0)
>> +
>>  typedef unsigned long  hva_t;
>>  typedef u64            hpa_t;
>>  typedef u64            hfn_t;
>> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
>> index f645c0fbf7ec..ebd963d2580b 100644
>> --- a/virt/kvm/arm/arm.c
>> +++ b/virt/kvm/arm/arm.c
>> @@ -40,6 +40,10 @@
>>  #include <asm/kvm_coproc.h>
>>  #include <asm/sections.h>
>>  
>> +#include <kvm/arm_hypercalls.h>
>> +#include <kvm/arm_pmu.h>
>> +#include <kvm/arm_psci.h>
>> +
>>  #ifdef REQUIRES_VIRT
>>  __asm__(".arch_extension	virt");
>>  #endif
>> @@ -135,6 +139,7 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
>>  	kvm->arch.max_vcpus = vgic_present ?
>>  				kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
>>  
>> +	kvm->arch.pvtime.st_base = GPA_INVALID;
>>  	return ret;
>>  out_free_stage2_pgd:
>>  	kvm_free_stage2_pgd(kvm);
>> @@ -371,6 +376,7 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>>  	kvm_vcpu_load_sysregs(vcpu);
>>  	kvm_arch_vcpu_load_fp(vcpu);
>>  	kvm_vcpu_pmu_restore_guest(vcpu);
>> +	kvm_make_request(KVM_REQ_RECORD_STEAL, vcpu);
>>  
>>  	if (single_task_running())
>>  		vcpu_clear_wfe_traps(vcpu);
>> @@ -617,6 +623,15 @@ static void vcpu_req_sleep(struct kvm_vcpu *vcpu)
>>  	smp_rmb();
>>  }
>>  
>> +static void vcpu_req_record_steal(struct kvm_vcpu *vcpu)
>> +{
>> +	int idx;
>> +
>> +	idx = srcu_read_lock(&vcpu->kvm->srcu);
>> +	kvm_update_stolen_time(vcpu);
>> +	srcu_read_unlock(&vcpu->kvm->srcu, idx);
>> +}
>> +
>>  static int kvm_vcpu_initialized(struct kvm_vcpu *vcpu)
>>  {
>>  	return vcpu->arch.target >= 0;
>> @@ -636,6 +651,9 @@ static void check_vcpu_requests(struct kvm_vcpu *vcpu)
>>  		 * that a VCPU sees new virtual interrupts.
>>  		 */
>>  		kvm_check_request(KVM_REQ_IRQ_PENDING, vcpu);
>> +
>> +		if (kvm_check_request(KVM_REQ_RECORD_STEAL, vcpu))
>> +			vcpu_req_record_steal(vcpu);
>>  	}
>>  }
>>  
>> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
>> index 2906b2df99df..196c71c8dd87 100644
>> --- a/virt/kvm/arm/hypercalls.c
>> +++ b/virt/kvm/arm/hypercalls.c
>> @@ -10,6 +10,70 @@
>>  #include <kvm/arm_hypercalls.h>
>>  #include <kvm/arm_psci.h>
>>  
>> +
>> +static struct pvclock_vcpu_stolen_time_info *pvtime_get_st(
>> +		struct kvm_vcpu *vcpu)
> 
> nit: on a single line.
> 
>> +{
>> +	struct pvclock_vcpu_stolen_time_info *st = vcpu->kvm->arch.pvtime.st;
>> +
>> +	if (!st)
>> +		return NULL;
>> +
>> +	return &st[kvm_vcpu_get_idx(vcpu)];
>> +}
>> +
>> +int kvm_update_stolen_time(struct kvm_vcpu *vcpu)
>> +{
>> +	u64 steal;
>> +	struct pvclock_vcpu_stolen_time_info *kaddr;
>> +
>> +	if (vcpu->kvm->arch.pvtime.st_base == GPA_INVALID)
>> +		return -ENOTSUPP;
> 
> So for a guest that doesn't have stolen time support (which is 100% of
> them for the foreseeable future), we still set a request, take the srcu
> lock and end-up here for nothing. I'd rather we test this st_base
> early, as it should never change once the guest has started.

Good point - I'll make the call to kvm_make_request() conditional on
st_base being set.

>> +
>> +	kaddr = pvtime_get_st(vcpu);
>> +
>> +	if (!kaddr)
>> +		return -ENOTSUPP;
> 
> How can this happen?

Good question, and it makes the pvtime_get_st() helper rather pointless.
Will remove.

>> +
>> +	kaddr->revision = 0;
>> +	kaddr->attributes = 0;
> 
> Why does this need to be written each time we update the stolen time? I
> have the feeling this would be better moved to the hypercall
> initializing the data structure.

Sure.

>> +
>> +	/* Let's do the local bookkeeping */
>> +	steal = vcpu->arch.steal.steal;
>> +	steal += current->sched_info.run_delay - vcpu->arch.steal.last_steal;
>> +	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
>> +	vcpu->arch.steal.steal = steal;
>> +
>> +	/* Now write out the value to the shared page */
>> +	WRITE_ONCE(kaddr->stolen_time, cpu_to_le64(steal));
> 
> Is there any requirement for this to be visible to another CPU than the
> one this is being written from?

I don't believe there is a requirement for this to be visible
synchronously - there is an implicit race here if another vCPU is
accessing the structure (because the hypervisor can preempt and update
at any point), so we don't need to push this out with a barrier. However
we must use 64-bit single-copy atomicity writes to ensure that another
vCPU can't see a half-updated value.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
