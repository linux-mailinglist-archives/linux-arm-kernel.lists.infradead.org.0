Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B4B1BC032
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRD4ac0rvPjONoR6XuKTpmqQMhQmCr0IWaY9bf1fDdA=; b=SCQtRfwWX2v8U5
	0H6tuC3F+JxyMvr95OPH0IwZMJuF/qV7lgtOmlcpfrYqJahv5xqxiKTYGF6TUbJYF6ZtMSalcIhc5
	yGphUYUPjf2FEhS8GoNOtVDaLBvoC937BebMb/z/yIkOc3Vpj3iiUwGMw5Q/1/OqHEyLfKIaRBhvp
	9v9eX16Hw/PQre0fogMV40Jici77o2YNmyIJXV2jC3aX6sQzfyGgXuL1GQZqvzpD+jHNIFS94oyV0
	rggYb3p7H2sL86ClzC+3ueB+9J+V2vJNeBmSHaSHjX95TT8vEERc47XTmN9LkJz5CDqnS1e/r9+Qd
	doqw19urIluEIhp96sWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQda-0006SI-9m; Tue, 28 Apr 2020 13:51:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQdM-0006Qf-Sw
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:50:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A573231B;
 Tue, 28 Apr 2020 06:50:46 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 984B83F68F;
 Tue, 28 Apr 2020 06:50:45 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: Make KVM_CAP_MAX_VCPUS compatible with the
 selected GIC version
To: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200427141507.284985-1-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <5ac78e8b-4776-70c7-c05c-8ffe536e175d@arm.com>
Date: Tue, 28 Apr 2020 14:51:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427141507.284985-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_065049_025165_6C6EC029 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: James Morse <james.morse@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/27/20 3:15 PM, Marc Zyngier wrote:
> KVM_CAP_MAX_VCPUS always return the maximum possible number of

s/return/returns?

> VCPUs, irrespective of the selected interrupt controller. This
> is pretty misleading for userspace that selects a GICv2 on a GICv3
> system that supports v2 compat: It always gets a maximum of 512
> VCPUs, even if the effective limit is 8. The 9th VCPU will fail
> to be created, which is unexpected as far as userspace is concerned.
>
> Fortunately, we already have the right information stashed in the
> kvm structure, and we can return it as requested.
>
> Reported-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/arm.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 48d0ec44ad77..f9b0528f7305 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -95,6 +95,11 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
>  	return r;
>  }
>  
> +static int kvm_arm_default_max_vcpus(void)
> +{
> +	return vgic_present ? kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
> +}
> +
>  /**
>   * kvm_arch_init_vm - initializes a VM data structure
>   * @kvm:	pointer to the KVM struct
> @@ -128,8 +133,7 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
>  	kvm->arch.vmid.vmid_gen = 0;
>  
>  	/* The maximum number of VCPUs is limited by the host's GIC model */
> -	kvm->arch.max_vcpus = vgic_present ?
> -				kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
> +	kvm->arch.max_vcpus = kvm_arm_default_max_vcpus();

Nitpicking, but the comment is not 100% true because the maximum number of vcpus
is limited based on the requested vgic type, even before this patch.

>  
>  	return ret;
>  out_free_stage2_pgd:
> @@ -204,10 +208,11 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>  		r = num_online_cpus();

Not relevant to this patch. If the host has a GICv3, and userspace requests a
GICv2, it is possible that KVM_CAP_NR_VCPUS > KVM_CAP_MAX_VCPUS. I am curious, I
don't see anything in the KVM API documentation about this case, so I suppose it's
perfectly legal, right?

>  		break;
>  	case KVM_CAP_MAX_VCPUS:
> -		r = KVM_MAX_VCPUS;
> -		break;
>  	case KVM_CAP_MAX_VCPU_ID:
> -		r = KVM_MAX_VCPU_ID;
> +		if (kvm)
> +			r = kvm->arch.max_vcpus;
> +		else
> +			r = kvm_arm_default_max_vcpus();

This works as expected - when KVM_CHECK_EXTENSION is called on the kvm fd, struct
kvm is NULL.

>  		break;
>  	case KVM_CAP_MSI_DEVID:
>  		if (!kvm)

The patch looks fine to me:

Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>

Tested it on a rockpro64, which has a GICv3 that can also emulate a GICv2. When
the vgic is a GICv3, before and after instantiating the device, the ioctl returns
512 on both /dev/kvm and the vm fd, as you would expect. When the vgic is a GICv2,
the ioctl return 512 on /dev/kvm and the vm fd before instantiating the vgic;
afterward it returns 512 on /dev/kvm and 8 on the vm fd:

Tested-by: Alexandru Elisei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
