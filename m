Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F15D0990
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrVWIaNc9Ocscbo7ZmfFITbV1bDvtzOytg4G/sUqG0w=; b=E5cqXH+d3zcMSr
	5IzZeEaATXwqiGGXfR2cFx3WRjZoBqO7sHGpm9NrseSVKp4N4Ay4Y0FoOMlGdnpuEM0JY+h7pxJvz
	Hq3I+Crmwk/JYHu9EnVyFzTdhTwHNM1eAn18hdGJpOM/49WP6wBEaaxSsBzdtEl/Z/sSdCW4Gmf3k
	fYfgGfQQodxLzEXK4TW2RR7hnNL9CZP5WorHYYUa67G/OIUbh4DRTDa/vbcZCiXJw88yQxRXYXWiX
	IaMimik/ekeqFVD9yxul0wP51WgiwaMaaRp4Mbc0r/CT4fN2JQDP1rroie/mFpLJsjmYMrOH5oh1D
	B000yCuI6KFgwlJBYBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7Ez-00012v-UL; Wed, 09 Oct 2019 08:22:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Ed-0000pa-Sw
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:22:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8015337;
 Wed,  9 Oct 2019 01:22:12 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BE123F68E;
 Wed,  9 Oct 2019 01:22:12 -0700 (PDT)
Date: Wed, 9 Oct 2019 10:22:11 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Alexander Graf <graf@amazon.com>
Subject: Re: [PATCH v2 2/2] KVM: arm/arm64: Allow user injection of external
 data aborts
Message-ID: <20191009082211.GE4153@e113682-lin.lund.arm.com>
References: <20191008093640.26519-1-christoffer.dall@arm.com>
 <20191008093640.26519-3-christoffer.dall@arm.com>
 <2719f1b2-9e8e-3d70-f5f6-6de3228fa04b@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2719f1b2-9e8e-3d70-f5f6-6de3228fa04b@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_012216_044155_944229F9 
X-CRM114-Status: GOOD (  35.46  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 02:03:07PM +0200, Alexander Graf wrote:
> 
> 
> On 08.10.19 11:36, Christoffer Dall wrote:
> > In some scenarios, such as buggy guest or incorrect configuration of the
> > VMM and firmware description data, userspace will detect a memory access
> > to a portion of the IPA, which is not mapped to any MMIO region.
> > 
> > For this purpose, the appropriate action is to inject an external abort
> > to the guest.  The kernel already has functionality to inject an
> > external abort, but we need to wire up a signal from user space that
> > lets user space tell the kernel to do this.
> > 
> > It turns out, we already have the set event functionality which we can
> > perfectly reuse for this.
> > 
> > Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> > ---
> >   Documentation/virt/kvm/api.txt    | 18 +++++++++++++++++-
> >   arch/arm/include/uapi/asm/kvm.h   |  3 ++-
> >   arch/arm/kvm/guest.c              |  3 +++
> >   arch/arm64/include/uapi/asm/kvm.h |  3 ++-
> >   arch/arm64/kvm/guest.c            |  3 +++
> >   arch/arm64/kvm/inject_fault.c     |  4 ++--
> >   include/uapi/linux/kvm.h          |  1 +
> >   virt/kvm/arm/arm.c                |  1 +
> >   8 files changed, 31 insertions(+), 5 deletions(-)
> > 
> > diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
> > index 7403f15657c2..10ebe8cfda29 100644
> > --- a/Documentation/virt/kvm/api.txt
> > +++ b/Documentation/virt/kvm/api.txt
> > @@ -968,6 +968,8 @@ The following bits are defined in the flags field:
> >   ARM/ARM64:
> > +User space may need to inject several types of events to the guest.
> > +
> >   If the guest accesses a device that is being emulated by the host kernel in
> >   such a way that a real device would generate a physical SError, KVM may make
> >   a virtual SError pending for that VCPU. This system error interrupt remains
> > @@ -1002,12 +1004,26 @@ Specifying exception.has_esr on a system that does not support it will return
> >   -EINVAL. Setting anything other than the lower 24bits of exception.serror_esr
> >   will return -EINVAL.
> > +If the guest performed an access to I/O memory which could not be handled by
> > +userspace, for example because of missing instruction syndrome decode
> > +information or because there is no device mapped at the accessed IPA, then
> > +userspace can ask the kernel to inject an external abort using the address
> > +from the exiting fault on the VCPU. It is a programming error to set
> > +ext_dabt_pending at the same time as any of the serror fields, or to set
> > +ext_dabt_pending after an exit which was not either KVM_EXIT_MMIO or
> > +KVM_EXIT_ARM_NISV. This feature is only available if the system supports
> > +KVM_CAP_ARM_INJECT_EXT_DABT. This is a helper which provides commonality in
> > +how userspace reports accesses for the above cases to guests, across different
> > +userspace implementations. Nevertheless, userspace can still emulate all Arm
> > +exceptions by manipulating individual registers using the KVM_SET_ONE_REG API.
> > +
> >   struct kvm_vcpu_events {
> >   	struct {
> >   		__u8 serror_pending;
> >   		__u8 serror_has_esr;
> > +		__u8 ext_dabt_pending;
> >   		/* Align it to 8 bytes */
> > -		__u8 pad[6];
> > +		__u8 pad[5];
> >   		__u64 serror_esr;
> >   	} exception;
> >   	__u32 reserved[12];
> > diff --git a/arch/arm/include/uapi/asm/kvm.h b/arch/arm/include/uapi/asm/kvm.h
> > index 2769360f195c..03cd7c19a683 100644
> > --- a/arch/arm/include/uapi/asm/kvm.h
> > +++ b/arch/arm/include/uapi/asm/kvm.h
> > @@ -131,8 +131,9 @@ struct kvm_vcpu_events {
> >   	struct {
> >   		__u8 serror_pending;
> >   		__u8 serror_has_esr;
> > +		__u8 ext_dabt_pending;
> >   		/* Align it to 8 bytes */
> > -		__u8 pad[6];
> > +		__u8 pad[5];
> >   		__u64 serror_esr;
> >   	} exception;
> >   	__u32 reserved[12];
> > diff --git a/arch/arm/kvm/guest.c b/arch/arm/kvm/guest.c
> > index 684cf64b4033..4154c5589501 100644
> > --- a/arch/arm/kvm/guest.c
> > +++ b/arch/arm/kvm/guest.c
> > @@ -263,11 +263,14 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
> >   {
> >   	bool serror_pending = events->exception.serror_pending;
> >   	bool has_esr = events->exception.serror_has_esr;
> > +	bool has_ext_dabt_pending = events->exception.ext_dabt_pending;
> >   	if (serror_pending && has_esr)
> >   		return -EINVAL;
> >   	else if (serror_pending)
> >   		kvm_inject_vabt(vcpu);
> > +	else if (has_ext_dabt_pending)
> > +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> >   	return 0;
> >   }
> > diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> > index 67c21f9bdbad..d49c17a80491 100644
> > --- a/arch/arm64/include/uapi/asm/kvm.h
> > +++ b/arch/arm64/include/uapi/asm/kvm.h
> > @@ -164,8 +164,9 @@ struct kvm_vcpu_events {
> >   	struct {
> >   		__u8 serror_pending;
> >   		__u8 serror_has_esr;
> > +		__u8 ext_dabt_pending;
> >   		/* Align it to 8 bytes */
> > -		__u8 pad[6];
> > +		__u8 pad[5];
> >   		__u64 serror_esr;
> >   	} exception;
> >   	__u32 reserved[12];
> > diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> > index dfd626447482..10e6e2144dca 100644
> > --- a/arch/arm64/kvm/guest.c
> > +++ b/arch/arm64/kvm/guest.c
> > @@ -720,6 +720,7 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
> >   {
> >   	bool serror_pending = events->exception.serror_pending;
> >   	bool has_esr = events->exception.serror_has_esr;
> > +	bool has_ext_dabt_pending = events->exception.ext_dabt_pending;
> 
> The has_ is inconsistent here (and below in the copies of this function).

True, my bad.

> 
> What I'm really curious on is why it's written the way it is though. Why not
> just make "exception" be a named struct and refer to a pointer of that here?

I have no idea, but that's beyond this patch.
> 
>   struct kvm_arm_exception *e = &events->exception;
> 
>   if (e->serror_pending && e->serror_has_esr) {
>     ...
>   } else if (e->ext_dabt_pending) {
>     ...
>   }
> 
> Copying the values into their own local bools looks a bit convoluted to me.
> In fact, why do we copy u8s into bools in the first place?
> 
 I don't know, but probably another version of the if (!!foo)
 construct.  It could definitely be written differently, but it's easy
 enough to understand.

> >   	if (serror_pending && has_esr) {
> >   		if (!cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
> > @@ -731,6 +732,8 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
> >   			return -EINVAL;
> >   	} else if (serror_pending) {
> >   		kvm_inject_vabt(vcpu);
> > +	} else if (has_ext_dabt_pending) {
> > +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> 
> I'm a bit confused on the else if here. I understand that we probably don't
> want to inject an serror at the same time as a dabt, but shouldn't the API
> express that dependency?

Interesting point.  Re-reading the general definition of the
KVM_SET_VCPU_EVENTS api, I actually think the cleanest thing here is to
allow setting both at the same time.  I can't come up with a valid case
where the VMM would validly need to do that, but there'd be no harm in
doing it as far as I can tell.

I'll rework this so that checking
ext_dabt_pending is orthogonal for the serror stuff.
> 
> Do we have guarantees on the value of "serror_pending"? Can we assume it's
> always either 0 or 1 today given all known user space? Maybe we can create a
> union and make this an "exception_pending" enum instead which indicates
> which exception we want to inject?

With the change proposed above, I believe this concern goes away, as the
two fields are decoupled.

Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
