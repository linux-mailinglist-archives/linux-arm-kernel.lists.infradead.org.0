Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C886CE6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 15:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4J39VKBvCIfBFUdHMKaFKEj//rzszlNYODzeZNi6fc=; b=L//ZL1fOhIdprt
	vDV+WCE6GYtPncjNNPy0kWPFrq/SRRSod4zE4e/hLa95QXzB/tm9GxNomT6YSJfzg95iYoYqT8JeC
	Ot1KhtV2bk9Sz9/wa0Drkccmu3SZAqZEGqpxJi6yGqo0BfmhEEReWw9QvXv1Akuxmbzvdi5VXdx/v
	IZ1l6RJlXIZeyoQtiXI2LA/dQjOcL2FgWgD5FUeMjpU+WZ6BKNCzS21qp1FWJ8eezfwVQYHjbVXD1
	HYao6Q4F3lwUIMmdhElgoY811FMfWKS7Pejo1Mt2qqnWGYt7LfauYihlv3jZt6waW+lmFjE9y5NXk
	Fm7fQHaPZhIY+7l3+ovA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho61b-0002Wv-Rh; Thu, 18 Jul 2019 13:00:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho61M-0002W5-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 13:00:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B8E8344;
 Thu, 18 Jul 2019 06:00:26 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2859F3F71F;
 Thu, 18 Jul 2019 06:00:25 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:00:22 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH kvmtool v4 6/8] KVM: arm/arm64: Back out ptrauth
 command-line arguments
Message-ID: <20190718140022.2970c688@donnerap.cambridge.arm.com>
In-Reply-To: <1559906789-20936-7-git-send-email-Dave.Martin@arm.com>
References: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
 <1559906789-20936-7-git-send-email-Dave.Martin@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_060028_999271_8FF76CDA 
X-CRM114-Status: GOOD (  17.58  )
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Alex =?UTF-8?B?QmVubsOpZQ==?= <alex.bennee@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 12:26:27 +0100
Dave Martin <Dave.Martin@arm.com> wrote:

> Will says that the command-line arguments for controlling optional
> vcpu features are superfluous: we don't attempt to support
> migration, and this isn't QEMU.
> 
> So, remove the command-line arguments and just default pointer auth
> to on if supported.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> ---
> 
> Changes since v3:
> 
>  * New patch.  This should probably be folded into the previous one.

Yes, absolutely! Those two merged become a so much simpler patch.

For the stashed version:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre.

> ---
>  arm/aarch64/include/kvm/kvm-config-arch.h |  6 +-----
>  arm/include/arm-common/kvm-config-arch.h  |  2 --
>  arm/kvm-cpu.c                             | 19 ++++---------------
>  3 files changed, 5 insertions(+), 22 deletions(-)
> 
> diff --git a/arm/aarch64/include/kvm/kvm-config-arch.h b/arm/aarch64/include/kvm/kvm-config-arch.h
> index 0279b13..04be43d 100644
> --- a/arm/aarch64/include/kvm/kvm-config-arch.h
> +++ b/arm/aarch64/include/kvm/kvm-config-arch.h
> @@ -8,11 +8,7 @@
>  			"Create PMUv3 device"),				\
>  	OPT_U64('\0', "kaslr-seed", &(cfg)->kaslr_seed,			\
>  			"Specify random seed for Kernel Address Space "	\
> -			"Layout Randomization (KASLR)"),		\
> -	OPT_BOOLEAN('\0', "enable-ptrauth", &(cfg)->enable_ptrauth,	\
> -			"Enables pointer authentication"),		\
> -	OPT_BOOLEAN('\0', "disable-ptrauth", &(cfg)->disable_ptrauth,	\
> -			"Disables pointer authentication"),
> +			"Layout Randomization (KASLR)"),
>  
>  #include "arm-common/kvm-config-arch.h"
>  
> diff --git a/arm/include/arm-common/kvm-config-arch.h b/arm/include/arm-common/kvm-config-arch.h
> index 1b4287d..5734c46 100644
> --- a/arm/include/arm-common/kvm-config-arch.h
> +++ b/arm/include/arm-common/kvm-config-arch.h
> @@ -10,8 +10,6 @@ struct kvm_config_arch {
>  	bool		aarch32_guest;
>  	bool		has_pmuv3;
>  	u64		kaslr_seed;
> -	bool		enable_ptrauth;
> -	bool		disable_ptrauth;
>  	enum irqchip_type irqchip;
>  	u64		fw_addr;
>  };
> diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
> index acd1d5f..fff8494 100644
> --- a/arm/kvm-cpu.c
> +++ b/arm/kvm-cpu.c
> @@ -68,16 +68,9 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
>  		vcpu_init.features[0] |= (1UL << KVM_ARM_VCPU_PSCI_0_2);
>  	}
>  
> -	/* Check Pointer Authentication command line arguments. */
> -	if (kvm->cfg.arch.enable_ptrauth && kvm->cfg.arch.disable_ptrauth)
> -		die("Both enable-ptrauth and disable-ptrauth option cannot be present");
> -	/*
> -	 * Always enable Pointer Authentication if system supports
> -	 * this extension unless disable-ptrauth option is present.
> -	 */
> +	/* Enable pointer authentication if available */
>  	if (kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
> -	    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC) &&
> -	    !kvm->cfg.arch.disable_ptrauth)
> +	    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC))
>  			vcpu_init.features[0] |= ARM_VCPU_PTRAUTH_FEATURE;
>  
>  	/*
> @@ -118,12 +111,8 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
>  			die("Unable to find matching target");
>  	}
>  
> -	if (err || target->init(vcpu)) {
> -		if (kvm->cfg.arch.enable_ptrauth)
> -			die("Unable to initialise vcpu with pointer authentication feature");
> -		else
> -			die("Unable to initialise vcpu");
> -	}
> +	if (err || target->init(vcpu))
> +		die("Unable to initialise vcpu");
>  
>  	coalesced_offset = ioctl(kvm->sys_fd, KVM_CHECK_EXTENSION,
>  				 KVM_CAP_COALESCED_MMIO);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
