Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F220AAA3E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjCkCaSmLo9+/39VcGv+7UgGbfRdJZCxmQyHMFNHopE=; b=fpshuL5Pk5YfKO
	eiESeY+CfUlTz2LaB4lKOeKle4wy621s2fDVUMMYr8CXOFeY3nYFTZjnwQgqjJpUbUXU3B9OJ005t
	Ret0B6nekl72dlI/6oCAGkMi+D/R1lstba0hPqj4kw2T1ECPil92HMPXoxDdRFFF908NftY5NJjGk
	mxl+UR2rBicEadrqhUH+1Ur/cEaCaFNALzpiNNMD49ePzRlf4zwZ2nmobzmlZfq27PAJjQRi9TO8z
	Oh/sn81fWYL0n6vdGTLqI+9P0Tw5zc9wCo2k51YFk5xQBq/5gTocjJxugxauquL6HelKc8qZKevCI
	aD9Nxr6OeXZskPJO4jnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rW1-0000oC-4L; Thu, 05 Sep 2019 13:09:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rVq-0000nq-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:09:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35D2628;
 Thu,  5 Sep 2019 06:09:22 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 31D723F67D; Thu,  5 Sep 2019 06:09:21 -0700 (PDT)
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Christoffer Dall <christoffer.dall@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
Date: Thu, 5 Sep 2019 14:09:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905092223.GC4320@e113682-lin.lund.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_060922_737075_DD323E9E 
X-CRM114-Status: GOOD (  31.49  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/09/2019 10:22, Christoffer Dall wrote:
> On Thu, Sep 05, 2019 at 09:56:44AM +0100, Peter Maydell wrote:
>> On Thu, 5 Sep 2019 at 09:52, Marc Zyngier <maz@kernel.org> wrote:
>>>
>>> On Thu, 05 Sep 2019 09:16:54 +0100,
>>> Peter Maydell <peter.maydell@linaro.org> wrote:
>>>> This is true, but the problem is that barfing out to userspace
>>>> makes it harder to debug the guest because it means that
>>>> the VM is immediately destroyed, whereas AIUI if we
>>>> inject some kind of exception then (assuming you're set up
>>>> to do kernel-debug via gdbstub) you can actually examine
>>>> the offending guest code with a debugger because at least
>>>> your VM is still around to inspect...
>>>
>>> To Christoffer's point, I find the benefit a bit dubious. Yes, you get
>>> an exception, but the instruction that caused it may be completely
>>> legal (store with post-increment, for example), leading to an even
>>> more puzzled developer (that exception should never have been
>>> delivered the first place).
>>
>> Right, but the combination of "host kernel prints a message
>> about an unsupported load/store insn" and "within-guest debug
>> dump/stack trace/etc" is much more useful than just having
>> "host kernel prints message" and "QEMU exits"; and it requires
>> about 3 lines of code change...
>>
>>> I'm far more in favour of dumping the state of the access in the run
>>> structure (much like we do for a MMIO access) and let userspace do
>>> something about it (such as dumping information on the console or
>>> breaking). It could even inject an exception *if* the user has asked
>>> for it.
>>
>> ...whereas this requires agreement on a kernel-userspace API,
>> larger changes in the kernel, somebody to implement the userspace
>> side of things, and the user to update both the kernel and QEMU.
>> It's hard for me to see that the benefit here over the 3-line
>> approach really outweighs the extra effort needed. In practice
>> saying "we should do this" is saying "we're going to do nothing",
>> based on the historical record.
>>
> 
> How about something like the following (completely untested, liable for
> ABI discussions etc. etc., but for illustration purposes).
> 
> I think it raises the question (and likely many other) of whether we can
> break the existing 'ABI' and change behavior for missing ISV
> retrospectively for legacy user space when the issue has occurred?
>    
> Someone might have written code that reacts to the -ENOSYS, so I've
> taken the conservative approach for this for the time being.
> 
> 
> diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> index 8a37c8e89777..19a92c49039c 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -76,6 +76,14 @@ struct kvm_arch {
>  
>  	/* Mandated version of PSCI */
>  	u32 psci_version;
> +
> +	/*
> +	 * If we encounter a data abort without valid instruction syndrome
> +	 * information, report this to user space.  User space can (and
> +	 * should) opt in to this feature if KVM_CAP_ARM_NISV_TO_USER is
> +	 * supported.
> +	 */
> +	bool return_nisv_io_abort_to_user;
>  };
>  
>  #define KVM_NR_MEM_OBJS     40
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index f656169db8c3..019bc560edc1 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -83,6 +83,14 @@ struct kvm_arch {
>  
>  	/* Mandated version of PSCI */
>  	u32 psci_version;
> +
> +	/*
> +	 * If we encounter a data abort without valid instruction syndrome
> +	 * information, report this to user space.  User space can (and
> +	 * should) opt in to this feature if KVM_CAP_ARM_NISV_TO_USER is
> +	 * supported.
> +	 */
> +	bool return_nisv_io_abort_to_user;
>  };
>  
>  #define KVM_NR_MEM_OBJS     40
> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> index 5e3f12d5359e..a4dd004d0db9 100644
> --- a/include/uapi/linux/kvm.h
> +++ b/include/uapi/linux/kvm.h
> @@ -235,6 +235,7 @@ struct kvm_hyperv_exit {
>  #define KVM_EXIT_S390_STSI        25
>  #define KVM_EXIT_IOAPIC_EOI       26
>  #define KVM_EXIT_HYPERV           27
> +#define KVM_EXIT_ARM_NISV         28
>  
>  /* For KVM_EXIT_INTERNAL_ERROR */
>  /* Emulate instruction failed. */
> @@ -996,6 +997,7 @@ struct kvm_ppc_resize_hpt {
>  #define KVM_CAP_ARM_PTRAUTH_ADDRESS 171
>  #define KVM_CAP_ARM_PTRAUTH_GENERIC 172
>  #define KVM_CAP_PMU_EVENT_FILTER 173
> +#define KVM_CAP_ARM_NISV_TO_USER 174
>  
>  #ifdef KVM_CAP_IRQ_ROUTING
>  
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 35a069815baf..2ce94bd9d4a9 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -98,6 +98,26 @@ int kvm_arch_check_processor_compat(void)
>  	return 0;
>  }
>  
> +int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
> +			    struct kvm_enable_cap *cap)
> +{
> +	int r;
> +
> +	if (cap->flags)
> +		return -EINVAL;
> +
> +	switch (cap->cap) {
> +	case KVM_CAP_ARM_NISV_TO_USER:
> +		r = 0;
> +		kvm->arch.return_nisv_io_abort_to_user = true;
> +		break;
> +	default:
> +		r = -EINVAL;
> +		break;
> +	}
> +
> +	return r;
> +}
>  
>  /**
>   * kvm_arch_init_vm - initializes a VM data structure
> @@ -196,6 +216,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>  	case KVM_CAP_MP_STATE:
>  	case KVM_CAP_IMMEDIATE_EXIT:
>  	case KVM_CAP_VCPU_EVENTS:
> +	case KVM_CAP_ARM_NISV_TO_USER:
>  		r = 1;
>  		break;
>  	case KVM_CAP_ARM_SET_DEVICE_ADDR:
> @@ -673,6 +694,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
>  		if (ret)
>  			return ret;
> +	} else if (run->exit_reason == KVM_EXIT_ARM_NISV) {
> +		kvm_inject_undefined(vcpu);

Just to make sure I understand: Is the expectation here that userspace
could clear the exit reason if it managed to handle the exit? And
otherwise we'd inject an UNDEF on reentry?

>  	}
>  
>  	if (run->immediate_exit)
> diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> index 6af5c91337f2..62e6ef47a6de 100644
> --- a/virt/kvm/arm/mmio.c
> +++ b/virt/kvm/arm/mmio.c
> @@ -167,8 +167,15 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
>  		if (ret)
>  			return ret;
>  	} else {
> -		kvm_err("load/store instruction decoding not implemented\n");
> -		return -ENOSYS;
> +		if (vcpu->kvm->arch.return_nisv_io_abort_to_user) {
> +			run->exit_reason = KVM_EXIT_ARM_NISV;
> +			run->mmio.phys_addr = fault_ipa;

We could also record whether that's a read or a write (WnR should still
be valid). Actually, we could store a sanitized version of the ESR.

> +			vcpu->stat.mmio_exit_user++;
> +			return 0;
> +		} else {
> +			kvm_info("encountered data abort without syndrome info\n");

My only issue with this is that the previous message has been sort of
documented...

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
