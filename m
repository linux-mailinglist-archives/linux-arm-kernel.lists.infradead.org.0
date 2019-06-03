Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362EE3316C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzdKnwcZmoDMGhmSiqodbC3RClTGTdo/ayS+EcYhppI=; b=GpKqyllFMyJyPa
	SRLhP4qVq0JItwyITGfpO1CCiHXmiaPPBMiNN387l1+khsmTjQ6/ZEqIjtcjja1s7HTcLK4LwlQkA
	DlA5cpEvogZFsktUEyFX8wU63HRc/AMed6z3O+UdVtRQfLSK5olLWamQASPbHwzTSHoow+OunEQxn
	rOJgepqSoCNdJUB9zIRBv3EIBZqyVsF/02R7obvARCskgY2JoUhte4LwNZpKZzaT15TFPmQ0Y1riP
	6OxrNj3CEF+ZqTYfjEguELRriXGds5G4F3bJO6Wbq/Ww9R2tx6qHR+h4lfeBrI8qrbReFIVO/xN5p
	mrPZfrZH9CgGcjMMAJzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnKS-000596-NR; Mon, 03 Jun 2019 13:48:48 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnKL-00058a-PK
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:48:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A740015A2;
 Mon,  3 Jun 2019 06:48:38 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8E253F246;
 Mon,  3 Jun 2019 06:48:36 -0700 (PDT)
Date: Mon, 3 Jun 2019 14:48:34 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: Re: [PATCH kvmtool v3 5/9] KVM: arm/arm64: Add a vcpu feature for
 pointer authentication
Message-ID: <20190603134834.GO28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-6-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559229194-3036-6-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_064841_837714_850494B0 
X-CRM114-Status: GOOD (  27.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

@Peter, do you have an opinion on this (below) ?

On Thu, May 30, 2019 at 04:13:10PM +0100, Dave Martin wrote:
> From: Amit Daniel Kachhap <amit.kachhap@arm.com>
> 
> This patch adds a runtime capabality for KVM tool to enable Arm64 8.3
> Pointer Authentication in guest kernel. Two vcpu features
> KVM_ARM_VCPU_PTRAUTH_[ADDRESS/GENERIC] are supplied together to enable
> Pointer Authentication in KVM guest after checking the capability.
> 
> Command line options --enable-ptrauth and --disable-ptrauth are added
> to use this feature. However, if those options are not provided then
> also this feature is enabled if host supports this capability.
> 
> The macros defined in the headers are not in sync and should be replaced
> from the upstream.
> 
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Signed-off-by: Dave Martin <Dave.Martin@arm.com> [merge new kernel heaers]
> ---
>  arm/aarch32/include/kvm/kvm-cpu-arch.h    |  2 ++
>  arm/aarch64/include/kvm/kvm-config-arch.h |  6 +++++-
>  arm/aarch64/include/kvm/kvm-cpu-arch.h    |  3 +++
>  arm/include/arm-common/kvm-config-arch.h  |  2 ++
>  arm/kvm-cpu.c                             | 20 ++++++++++++++++++--
>  5 files changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/arm/aarch32/include/kvm/kvm-cpu-arch.h b/arm/aarch32/include/kvm/kvm-cpu-arch.h
> index d28ea67..3ec6f03 100644
> --- a/arm/aarch32/include/kvm/kvm-cpu-arch.h
> +++ b/arm/aarch32/include/kvm/kvm-cpu-arch.h
> @@ -13,4 +13,6 @@
>  #define ARM_CPU_ID		0, 0, 0
>  #define ARM_CPU_ID_MPIDR	5
>  
> +#define ARM_VCPU_PTRAUTH_FEATURE	0
> +
>  #endif /* KVM__KVM_CPU_ARCH_H */
> diff --git a/arm/aarch64/include/kvm/kvm-config-arch.h b/arm/aarch64/include/kvm/kvm-config-arch.h
> index 04be43d..0279b13 100644
> --- a/arm/aarch64/include/kvm/kvm-config-arch.h
> +++ b/arm/aarch64/include/kvm/kvm-config-arch.h
> @@ -8,7 +8,11 @@
>  			"Create PMUv3 device"),				\
>  	OPT_U64('\0', "kaslr-seed", &(cfg)->kaslr_seed,			\
>  			"Specify random seed for Kernel Address Space "	\
> -			"Layout Randomization (KASLR)"),
> +			"Layout Randomization (KASLR)"),		\
> +	OPT_BOOLEAN('\0', "enable-ptrauth", &(cfg)->enable_ptrauth,	\
> +			"Enables pointer authentication"),		\
> +	OPT_BOOLEAN('\0', "disable-ptrauth", &(cfg)->disable_ptrauth,	\
> +			"Disables pointer authentication"),
>  
>  #include "arm-common/kvm-config-arch.h"
>  
> diff --git a/arm/aarch64/include/kvm/kvm-cpu-arch.h b/arm/aarch64/include/kvm/kvm-cpu-arch.h
> index a9d8563..9fa99fb 100644
> --- a/arm/aarch64/include/kvm/kvm-cpu-arch.h
> +++ b/arm/aarch64/include/kvm/kvm-cpu-arch.h
> @@ -17,4 +17,7 @@
>  #define ARM_CPU_CTRL		3, 0, 1, 0
>  #define ARM_CPU_CTRL_SCTLR_EL1	0
>  
> +#define ARM_VCPU_PTRAUTH_FEATURE	((1UL << KVM_ARM_VCPU_PTRAUTH_ADDRESS) \
> +					| (1UL << KVM_ARM_VCPU_PTRAUTH_GENERIC))
> +
>  #endif /* KVM__KVM_CPU_ARCH_H */
> diff --git a/arm/include/arm-common/kvm-config-arch.h b/arm/include/arm-common/kvm-config-arch.h
> index 5734c46..1b4287d 100644
> --- a/arm/include/arm-common/kvm-config-arch.h
> +++ b/arm/include/arm-common/kvm-config-arch.h
> @@ -10,6 +10,8 @@ struct kvm_config_arch {
>  	bool		aarch32_guest;
>  	bool		has_pmuv3;
>  	u64		kaslr_seed;
> +	bool		enable_ptrauth;
> +	bool		disable_ptrauth;
>  	enum irqchip_type irqchip;
>  	u64		fw_addr;
>  };
> diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
> index 7780251..acd1d5f 100644
> --- a/arm/kvm-cpu.c
> +++ b/arm/kvm-cpu.c
> @@ -68,6 +68,18 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
>  		vcpu_init.features[0] |= (1UL << KVM_ARM_VCPU_PSCI_0_2);
>  	}
>  
> +	/* Check Pointer Authentication command line arguments. */
> +	if (kvm->cfg.arch.enable_ptrauth && kvm->cfg.arch.disable_ptrauth)
> +		die("Both enable-ptrauth and disable-ptrauth option cannot be present");
> +	/*
> +	 * Always enable Pointer Authentication if system supports
> +	 * this extension unless disable-ptrauth option is present.
> +	 */
> +	if (kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
> +	    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC) &&
> +	    !kvm->cfg.arch.disable_ptrauth)
> +			vcpu_init.features[0] |= ARM_VCPU_PTRAUTH_FEATURE;
> +

Does anyone recall why we need these cap and feature flags for ptrauth
at all?

We have a window before v5.2 where we could remove them, but we need to
get a move on if so...


As I understand it, the main concern here was to support migrations
between nodes that have the same hardware but are running different
kernel versions, thus allowing a new kernel to be deployed across a
cluster without having to stop the world.

Thus, a guest created on an old kernel where KVM doesn's support
ptrauth wouldn't detect the caps and wouldn't set those VCPU_INIT
feature bits: the VCPU_INIT feature set would be recorded in the guest
metadata by userspace and used for creating vcpus on the new node when
migrating, forcing ptrauth still to be hidden from the guest even
if the new node's kernel supports ptrauth for KVM.  Fine.

However, this is equally a problem for other random CPU features, and
we don't handle those at all for now: any feature that the new kernel
supports and is present in the hardware will result in changed CPUID
registers exposed to the guest and thus migration failures.  This
applies even to features that require no KVM supervision whatever.

So migrating between arbitrary kernel versions doesn't work today.
For that, we'd need a way for the CPUID sysregs at the destination
node to values different that the default: we have no logic for that
today.

What problem(s) are we actually trying to solve here?

Do the ptrauth caps and feature flags actually solve anything?


(Note, the SVE case is different: there, the cap and VCPU_INIT flag are
there to work around an ABI break, so that old userspace doesn't see
impossibly-large registers through KVM_GET_ONE_REG etc.)

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
