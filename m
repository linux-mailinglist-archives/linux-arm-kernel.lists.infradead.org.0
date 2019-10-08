Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB15ACF91B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LBbFCCGi6AzyhjgILQ4G4ECSMC4YF1+QWmjRsbtL+tY=; b=iMRLED/eqsB11GHpTO8AQpkPX
	E17uWLx4wtN4G+CSpR6FVLEowO6yeNxP1dGzUz9JU0dy9VodpeZJfwtROtAypuxqAEXt+eWTpTxTV
	juC8jxh39t0y9jAvByYlo1YXFYS2SAcxeYTehvovfTbH89gAuWAZ7FeKUSjYl/UjX70fIj5NILdnO
	kXcaZRBhnw3uCYNP5kntwjEET8UBvNzjb4rnra3LBkcdk1NY4QGej5oO06VOE9L6AVi+NEwNMP1LA
	VSugUqqK0XGs9vTLi4yU+zDcHqEteh7vfKlNfIldA0REwz/gMkcT4wTrFIGLNp/kkOs4pyTDxkEf+
	jp6LIPGaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoDC-0003NQ-GH; Tue, 08 Oct 2019 12:03:30 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoD5-0003Mz-8a
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1570536203; x=1602072203;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=JQETfEn0m1dUGm0SaHQuznDQjERlffX5pdltVZpQyYA=;
 b=pvkgiP0TXPc+nVcAfiY0GGkLdC3p6Q2+XnQ3a9qlFbQcbc3VMf88UgJ2
 nzdlu0Q0k8OeD6+Mi0hUt+uQgWcRXZcHjUjW/AHdUDIu+kQk1AJQc09uJ
 Fu6aPjlFJA1UTEaRRl+trxrOv3Q84VmzBXa0zYaSWHYSekbiRFzInKgRl I=;
X-IronPort-AV: E=Sophos;i="5.67,270,1566864000"; d="scan'208";a="790658491"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 08 Oct 2019 12:03:18 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com (Postfix) with ESMTPS
 id 7FFD8A24D4; Tue,  8 Oct 2019 12:03:15 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 8 Oct 2019 12:03:14 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.30) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 8 Oct 2019 12:03:10 +0000
Subject: Re: [PATCH v2 2/2] KVM: arm/arm64: Allow user injection of external
 data aborts
To: Christoffer Dall <christoffer.dall@arm.com>, <kvmarm@lists.cs.columbia.edu>
References: <20191008093640.26519-1-christoffer.dall@arm.com>
 <20191008093640.26519-3-christoffer.dall@arm.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <2719f1b2-9e8e-3d70-f5f6-6de3228fa04b@amazon.com>
Date: Tue, 8 Oct 2019 14:03:07 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008093640.26519-3-christoffer.dall@arm.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.30]
X-ClientProxiedBy: EX13D21UWA003.ant.amazon.com (10.43.160.184) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_050323_509771_D98CC8F7 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich
 Schuchardt <xypron.glpk@gmx.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08.10.19 11:36, Christoffer Dall wrote:
> In some scenarios, such as buggy guest or incorrect configuration of the
> VMM and firmware description data, userspace will detect a memory access
> to a portion of the IPA, which is not mapped to any MMIO region.
> 
> For this purpose, the appropriate action is to inject an external abort
> to the guest.  The kernel already has functionality to inject an
> external abort, but we need to wire up a signal from user space that
> lets user space tell the kernel to do this.
> 
> It turns out, we already have the set event functionality which we can
> perfectly reuse for this.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> ---
>   Documentation/virt/kvm/api.txt    | 18 +++++++++++++++++-
>   arch/arm/include/uapi/asm/kvm.h   |  3 ++-
>   arch/arm/kvm/guest.c              |  3 +++
>   arch/arm64/include/uapi/asm/kvm.h |  3 ++-
>   arch/arm64/kvm/guest.c            |  3 +++
>   arch/arm64/kvm/inject_fault.c     |  4 ++--
>   include/uapi/linux/kvm.h          |  1 +
>   virt/kvm/arm/arm.c                |  1 +
>   8 files changed, 31 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
> index 7403f15657c2..10ebe8cfda29 100644
> --- a/Documentation/virt/kvm/api.txt
> +++ b/Documentation/virt/kvm/api.txt
> @@ -968,6 +968,8 @@ The following bits are defined in the flags field:
>   
>   ARM/ARM64:
>   
> +User space may need to inject several types of events to the guest.
> +
>   If the guest accesses a device that is being emulated by the host kernel in
>   such a way that a real device would generate a physical SError, KVM may make
>   a virtual SError pending for that VCPU. This system error interrupt remains
> @@ -1002,12 +1004,26 @@ Specifying exception.has_esr on a system that does not support it will return
>   -EINVAL. Setting anything other than the lower 24bits of exception.serror_esr
>   will return -EINVAL.
>   
> +If the guest performed an access to I/O memory which could not be handled by
> +userspace, for example because of missing instruction syndrome decode
> +information or because there is no device mapped at the accessed IPA, then
> +userspace can ask the kernel to inject an external abort using the address
> +from the exiting fault on the VCPU. It is a programming error to set
> +ext_dabt_pending at the same time as any of the serror fields, or to set
> +ext_dabt_pending after an exit which was not either KVM_EXIT_MMIO or
> +KVM_EXIT_ARM_NISV. This feature is only available if the system supports
> +KVM_CAP_ARM_INJECT_EXT_DABT. This is a helper which provides commonality in
> +how userspace reports accesses for the above cases to guests, across different
> +userspace implementations. Nevertheless, userspace can still emulate all Arm
> +exceptions by manipulating individual registers using the KVM_SET_ONE_REG API.
> +
>   struct kvm_vcpu_events {
>   	struct {
>   		__u8 serror_pending;
>   		__u8 serror_has_esr;
> +		__u8 ext_dabt_pending;
>   		/* Align it to 8 bytes */
> -		__u8 pad[6];
> +		__u8 pad[5];
>   		__u64 serror_esr;
>   	} exception;
>   	__u32 reserved[12];
> diff --git a/arch/arm/include/uapi/asm/kvm.h b/arch/arm/include/uapi/asm/kvm.h
> index 2769360f195c..03cd7c19a683 100644
> --- a/arch/arm/include/uapi/asm/kvm.h
> +++ b/arch/arm/include/uapi/asm/kvm.h
> @@ -131,8 +131,9 @@ struct kvm_vcpu_events {
>   	struct {
>   		__u8 serror_pending;
>   		__u8 serror_has_esr;
> +		__u8 ext_dabt_pending;
>   		/* Align it to 8 bytes */
> -		__u8 pad[6];
> +		__u8 pad[5];
>   		__u64 serror_esr;
>   	} exception;
>   	__u32 reserved[12];
> diff --git a/arch/arm/kvm/guest.c b/arch/arm/kvm/guest.c
> index 684cf64b4033..4154c5589501 100644
> --- a/arch/arm/kvm/guest.c
> +++ b/arch/arm/kvm/guest.c
> @@ -263,11 +263,14 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
>   {
>   	bool serror_pending = events->exception.serror_pending;
>   	bool has_esr = events->exception.serror_has_esr;
> +	bool has_ext_dabt_pending = events->exception.ext_dabt_pending;
>   
>   	if (serror_pending && has_esr)
>   		return -EINVAL;
>   	else if (serror_pending)
>   		kvm_inject_vabt(vcpu);
> +	else if (has_ext_dabt_pending)
> +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
>   
>   	return 0;
>   }
> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> index 67c21f9bdbad..d49c17a80491 100644
> --- a/arch/arm64/include/uapi/asm/kvm.h
> +++ b/arch/arm64/include/uapi/asm/kvm.h
> @@ -164,8 +164,9 @@ struct kvm_vcpu_events {
>   	struct {
>   		__u8 serror_pending;
>   		__u8 serror_has_esr;
> +		__u8 ext_dabt_pending;
>   		/* Align it to 8 bytes */
> -		__u8 pad[6];
> +		__u8 pad[5];
>   		__u64 serror_esr;
>   	} exception;
>   	__u32 reserved[12];
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index dfd626447482..10e6e2144dca 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -720,6 +720,7 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
>   {
>   	bool serror_pending = events->exception.serror_pending;
>   	bool has_esr = events->exception.serror_has_esr;
> +	bool has_ext_dabt_pending = events->exception.ext_dabt_pending;

The has_ is inconsistent here (and below in the copies of this function).

What I'm really curious on is why it's written the way it is though. Why 
not just make "exception" be a named struct and refer to a pointer of 
that here?

   struct kvm_arm_exception *e = &events->exception;

   if (e->serror_pending && e->serror_has_esr) {
     ...
   } else if (e->ext_dabt_pending) {
     ...
   }

Copying the values into their own local bools looks a bit convoluted to 
me. In fact, why do we copy u8s into bools in the first place?

>   
>   	if (serror_pending && has_esr) {
>   		if (!cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
> @@ -731,6 +732,8 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
>   			return -EINVAL;
>   	} else if (serror_pending) {
>   		kvm_inject_vabt(vcpu);
> +	} else if (has_ext_dabt_pending) {
> +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));

I'm a bit confused on the else if here. I understand that we probably 
don't want to inject an serror at the same time as a dabt, but shouldn't 
the API express that dependency?

Do we have guarantees on the value of "serror_pending"? Can we assume 
it's always either 0 or 1 today given all known user space? Maybe we can 
create a union and make this an "exception_pending" enum instead which 
indicates which exception we want to inject?


Alex




Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
