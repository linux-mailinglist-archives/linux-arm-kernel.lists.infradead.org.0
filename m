Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F9FAB8FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNGGtQp8uopYQUrYYRUUQUdKnpvOTUj8hdn/TO4PF0o=; b=CdfdnNAQ/H7ly2
	R3lWfOMp+aMwG1lMI+OSq/of/21UR1KaW2Doc15vdlynaf0rbbHAr1CsGLRotCPfS6EI8Se5CSIXZ
	h0/5sJSHgQ4tW8uKLi09Bc9VS6jVxVKm7Z9mJ6UTXTeSqG+/NX4sHuiQZ7rXGUNB5Z4iW97Hv55Xb
	hVIcSlMonbtEiTpf8KIA1o/0hDehRXldojUoheAKBi6bRldvGCX7yPvWhc6liM8RqZ893pn31Pid2
	XXZMyi1+jc1wbYzDpAquJM6nJXavCfgKITA0jOhEfi6wetwly9I9RBOW4aZJovMR832NgkdKRI99g
	CcjoxQfkFAY7Yia+j0Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6E2y-0000PI-TR; Fri, 06 Sep 2019 13:13:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E2s-0000Nm-03
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:12:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4228E1570;
 Fri,  6 Sep 2019 06:12:54 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.144.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C93953F718;
 Fri,  6 Sep 2019 06:12:53 -0700 (PDT)
Date: Fri, 6 Sep 2019 15:12:52 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Alexander Graf <graf@amazon.com>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
Message-ID: <20190906131252.GG4320@e113682-lin.lund.arm.com>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_061258_134310_8285C0B3 
X-CRM114-Status: GOOD (  39.86  )
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
Cc: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>,
 Marc Zyngier <maz@kernel.org>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 02:08:15PM +0200, Alexander Graf wrote:
> 
> 
> On 06.09.19 10:00, Christoffer Dall wrote:
> > On Thu, Sep 05, 2019 at 02:09:18PM +0100, Marc Zyngier wrote:
> > > On 05/09/2019 10:22, Christoffer Dall wrote:
> > > > On Thu, Sep 05, 2019 at 09:56:44AM +0100, Peter Maydell wrote:
> > > > > On Thu, 5 Sep 2019 at 09:52, Marc Zyngier <maz@kernel.org> wrote:
> > > > > > 
> > > > > > On Thu, 05 Sep 2019 09:16:54 +0100,
> > > > > > Peter Maydell <peter.maydell@linaro.org> wrote:
> > > > > > > This is true, but the problem is that barfing out to userspace
> > > > > > > makes it harder to debug the guest because it means that
> > > > > > > the VM is immediately destroyed, whereas AIUI if we
> > > > > > > inject some kind of exception then (assuming you're set up
> > > > > > > to do kernel-debug via gdbstub) you can actually examine
> > > > > > > the offending guest code with a debugger because at least
> > > > > > > your VM is still around to inspect...
> > > > > > 
> > > > > > To Christoffer's point, I find the benefit a bit dubious. Yes, you get
> > > > > > an exception, but the instruction that caused it may be completely
> > > > > > legal (store with post-increment, for example), leading to an even
> > > > > > more puzzled developer (that exception should never have been
> > > > > > delivered the first place).
> > > > > 
> > > > > Right, but the combination of "host kernel prints a message
> > > > > about an unsupported load/store insn" and "within-guest debug
> > > > > dump/stack trace/etc" is much more useful than just having
> > > > > "host kernel prints message" and "QEMU exits"; and it requires
> > > > > about 3 lines of code change...
> > > > > 
> > > > > > I'm far more in favour of dumping the state of the access in the run
> > > > > > structure (much like we do for a MMIO access) and let userspace do
> > > > > > something about it (such as dumping information on the console or
> > > > > > breaking). It could even inject an exception *if* the user has asked
> > > > > > for it.
> > > > > 
> > > > > ...whereas this requires agreement on a kernel-userspace API,
> > > > > larger changes in the kernel, somebody to implement the userspace
> > > > > side of things, and the user to update both the kernel and QEMU.
> > > > > It's hard for me to see that the benefit here over the 3-line
> > > > > approach really outweighs the extra effort needed. In practice
> > > > > saying "we should do this" is saying "we're going to do nothing",
> > > > > based on the historical record.
> > > > > 
> > > > 
> > > > How about something like the following (completely untested, liable for
> > > > ABI discussions etc. etc., but for illustration purposes).
> > > > 
> > > > I think it raises the question (and likely many other) of whether we can
> > > > break the existing 'ABI' and change behavior for missing ISV
> > > > retrospectively for legacy user space when the issue has occurred?
> > > > Someone might have written code that reacts to the -ENOSYS, so I've
> > > > taken the conservative approach for this for the time being.
> > > > 
> > > > 
> > > > diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> > > > index 8a37c8e89777..19a92c49039c 100644
> > > > --- a/arch/arm/include/asm/kvm_host.h
> > > > +++ b/arch/arm/include/asm/kvm_host.h
> > > > @@ -76,6 +76,14 @@ struct kvm_arch {
> > > >   	/* Mandated version of PSCI */
> > > >   	u32 psci_version;
> > > > +
> > > > +	/*
> > > > +	 * If we encounter a data abort without valid instruction syndrome
> > > > +	 * information, report this to user space.  User space can (and
> > > > +	 * should) opt in to this feature if KVM_CAP_ARM_NISV_TO_USER is
> > > > +	 * supported.
> > > > +	 */
> > > > +	bool return_nisv_io_abort_to_user;
> > > >   };
> > > >   #define KVM_NR_MEM_OBJS     40
> > > > diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> > > > index f656169db8c3..019bc560edc1 100644
> > > > --- a/arch/arm64/include/asm/kvm_host.h
> > > > +++ b/arch/arm64/include/asm/kvm_host.h
> > > > @@ -83,6 +83,14 @@ struct kvm_arch {
> > > >   	/* Mandated version of PSCI */
> > > >   	u32 psci_version;
> > > > +
> > > > +	/*
> > > > +	 * If we encounter a data abort without valid instruction syndrome
> > > > +	 * information, report this to user space.  User space can (and
> > > > +	 * should) opt in to this feature if KVM_CAP_ARM_NISV_TO_USER is
> > > > +	 * supported.
> > > > +	 */
> > > > +	bool return_nisv_io_abort_to_user;
> > > >   };
> > > >   #define KVM_NR_MEM_OBJS     40
> > > > diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> > > > index 5e3f12d5359e..a4dd004d0db9 100644
> > > > --- a/include/uapi/linux/kvm.h
> > > > +++ b/include/uapi/linux/kvm.h
> > > > @@ -235,6 +235,7 @@ struct kvm_hyperv_exit {
> > > >   #define KVM_EXIT_S390_STSI        25
> > > >   #define KVM_EXIT_IOAPIC_EOI       26
> > > >   #define KVM_EXIT_HYPERV           27
> > > > +#define KVM_EXIT_ARM_NISV         28
> > > >   /* For KVM_EXIT_INTERNAL_ERROR */
> > > >   /* Emulate instruction failed. */
> > > > @@ -996,6 +997,7 @@ struct kvm_ppc_resize_hpt {
> > > >   #define KVM_CAP_ARM_PTRAUTH_ADDRESS 171
> > > >   #define KVM_CAP_ARM_PTRAUTH_GENERIC 172
> > > >   #define KVM_CAP_PMU_EVENT_FILTER 173
> > > > +#define KVM_CAP_ARM_NISV_TO_USER 174
> > > >   #ifdef KVM_CAP_IRQ_ROUTING
> > > > diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> > > > index 35a069815baf..2ce94bd9d4a9 100644
> > > > --- a/virt/kvm/arm/arm.c
> > > > +++ b/virt/kvm/arm/arm.c
> > > > @@ -98,6 +98,26 @@ int kvm_arch_check_processor_compat(void)
> > > >   	return 0;
> > > >   }
> > > > +int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
> > > > +			    struct kvm_enable_cap *cap)
> > > > +{
> > > > +	int r;
> > > > +
> > > > +	if (cap->flags)
> > > > +		return -EINVAL;
> > > > +
> > > > +	switch (cap->cap) {
> > > > +	case KVM_CAP_ARM_NISV_TO_USER:
> > > > +		r = 0;
> > > > +		kvm->arch.return_nisv_io_abort_to_user = true;
> > > > +		break;
> > > > +	default:
> > > > +		r = -EINVAL;
> > > > +		break;
> > > > +	}
> > > > +
> > > > +	return r;
> > > > +}
> > > >   /**
> > > >    * kvm_arch_init_vm - initializes a VM data structure
> > > > @@ -196,6 +216,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
> > > >   	case KVM_CAP_MP_STATE:
> > > >   	case KVM_CAP_IMMEDIATE_EXIT:
> > > >   	case KVM_CAP_VCPU_EVENTS:
> > > > +	case KVM_CAP_ARM_NISV_TO_USER:
> > > >   		r = 1;
> > > >   		break;
> > > >   	case KVM_CAP_ARM_SET_DEVICE_ADDR:
> > > > @@ -673,6 +694,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
> > > >   		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
> > > >   		if (ret)
> > > >   			return ret;
> > > > +	} else if (run->exit_reason == KVM_EXIT_ARM_NISV) {
> > > > +		kvm_inject_undefined(vcpu);
> > > 
> > > Just to make sure I understand: Is the expectation here that userspace
> > > could clear the exit reason if it managed to handle the exit? And
> > > otherwise we'd inject an UNDEF on reentry?
> > > 
> > 
> > Yes, but I think we should change that to an external abort.  I'll test
> > something and send a proper patch with more clear documentation.
> 
> Why not leave the injection to user space in any case? API wise there is no
> need to be backwards compatible, as we require the CAP to be enabled, right?
> 

I'd prefer leaving it to userspace to worry about, but I thought Peter
said that had been problematic historically, which I took at face value,
but I could have misunderstood.

If QEMU, kvmtool, and whatever the crazy^H cool kids are using in
userspace these days are happy emulating the exception, then that's a
viable approach.  The main concern I have with that is whether they'll
all get it right, and since we already have the code in the kernel to do
this, it might make sense to re-use the kernel logic for it.

I'll leave it in for v1 of the patch, and if based on how that code and
interface looks like, we agree it's better to leave it to userspace, I
can remove it in v2.


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
