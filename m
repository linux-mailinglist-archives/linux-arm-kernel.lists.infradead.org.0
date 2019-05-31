Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9699F31396
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEaZpZdeVBAzRsMzhtb6al0Kj1Ws4N1ZQRpzvpfpikQ=; b=DwMhF1WRwRsYGw
	zQ9+pW/Q9TUXR/evASduLyoCBkRIq1TWblhuWbvnkX1VMEJPBlAQH5MW0FsKhZ2NRu2AeTjroeRRj
	dUoIUmqLkxSDXjF9UjwoUPA5jnaJf2kWGBh6G19EhmQvYWYdP1FAH6KTbd8LixPKr4bSBXkmqWbX0
	R1W0wKDVL9YZN3hsGqOhKZDe1uzDeaksQZGtCyPJj6uK+C8rd9y5T1u61NXtNc3XwECmAOqxK1HXP
	EdA8olbuFejl0IES2enCrZHTcUhQI2YD2RU02Sg8/GCiQaEdM1+6paqHlii1/zaHQujfyCQtF/X93
	FwQdFC1d9ctenCEmxH+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWl68-0004vt-IN; Fri, 31 May 2019 17:13:44 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWl61-0004vZ-7T
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:13:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FE42A78;
 Fri, 31 May 2019 10:13:36 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF5723F59C;
 Fri, 31 May 2019 10:13:34 -0700 (PDT)
Date: Fri, 31 May 2019 18:13:31 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH kvmtool v3 8/9] arm64: Add SVE support
Message-ID: <20190531181331.2a4ef6dd@donnerap.cambridge.arm.com>
In-Reply-To: <1559229194-3036-9-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-9-git-send-email-Dave.Martin@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_101337_281021_F38A67BE 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, 30 May 2019 16:13:13 +0100
Dave Martin <Dave.Martin@arm.com> wrote:

> This patch adds --enable-sve/--disable-sve command line options to
> allow the user to control whether the Scalable Vector Extension is
> made available to the guest.

I guess I have a similar concern about this enable/disable pair being
confusing, though there is more sense here for SVE, given the impact of it
being enabled in the guest.

Maybe we can cover both pointer auth and SVE options with the same revised
approach?

Cheers,
Andre.


> This requires use of the new KVM_ARM_VCPU_FINALIZE ioctl before the
> vcpu is runnable, so a new hook kvm_cpu__configure_features() is
> added to provide an appropriate place to do this work.
> 
> By default, SVE is enabled for the guest if the host supports it.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  arm/aarch32/include/kvm/kvm-cpu-arch.h    |  4 +++
>  arm/aarch64/include/kvm/kvm-config-arch.h |  6 ++++-
>  arm/aarch64/include/kvm/kvm-cpu-arch.h    |  1 +
>  arm/aarch64/kvm-cpu.c                     | 41 +++++++++++++++++++++++++++++++
>  arm/include/arm-common/kvm-config-arch.h  |  2 ++
>  arm/kvm-cpu.c                             |  3 +++
>  6 files changed, 56 insertions(+), 1 deletion(-)
> 
> diff --git a/arm/aarch32/include/kvm/kvm-cpu-arch.h b/arm/aarch32/include/kvm/kvm-cpu-arch.h
> index 01983f0..780e0e2 100644
> --- a/arm/aarch32/include/kvm/kvm-cpu-arch.h
> +++ b/arm/aarch32/include/kvm/kvm-cpu-arch.h
> @@ -15,5 +15,9 @@
>  
>  static inline void kvm_cpu__select_features(struct kvm *kvm,
>  					    struct kvm_vcpu_init *init) { }
> +static inline int kvm_cpu__configure_features(struct kvm_cpu *vcpu)
> +{
> +	return 0;
> +}
>  
>  #endif /* KVM__KVM_CPU_ARCH_H */
> diff --git a/arm/aarch64/include/kvm/kvm-config-arch.h b/arm/aarch64/include/kvm/kvm-config-arch.h
> index fe1699d..41e9d05 100644
> --- a/arm/aarch64/include/kvm/kvm-config-arch.h
> +++ b/arm/aarch64/include/kvm/kvm-config-arch.h
> @@ -12,7 +12,11 @@
>  	OPT_BOOLEAN('\0', "enable-ptrauth", &(cfg)->enable_ptrauth,	\
>  			"Enable pointer authentication for the guest"),	\
>  	OPT_BOOLEAN('\0', "disable-ptrauth", &(cfg)->disable_ptrauth,	\
> -			"Disable pointer authentication for the guest"),
> +			"Disable pointer authentication for the guest"), \
> +	OPT_BOOLEAN('\0', "enable-sve", &(cfg)->enable_sve,		\
> +			"Enable SVE for the guest"),			\
> +	OPT_BOOLEAN('\0', "disable-sve", &(cfg)->disable_sve,		\
> +			"Disable SVE for the guest"),
>  
>  #include "arm-common/kvm-config-arch.h"
>  
> diff --git a/arm/aarch64/include/kvm/kvm-cpu-arch.h b/arm/aarch64/include/kvm/kvm-cpu-arch.h
> index e6875fc..8dfb82e 100644
> --- a/arm/aarch64/include/kvm/kvm-cpu-arch.h
> +++ b/arm/aarch64/include/kvm/kvm-cpu-arch.h
> @@ -18,5 +18,6 @@
>  #define ARM_CPU_CTRL_SCTLR_EL1	0
>  
>  void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init);
> +int kvm_cpu__configure_features(struct kvm_cpu *vcpu);
>  
>  #endif /* KVM__KVM_CPU_ARCH_H */
> diff --git a/arm/aarch64/kvm-cpu.c b/arm/aarch64/kvm-cpu.c
> index 08e4fd5..cdfb22e 100644
> --- a/arm/aarch64/kvm-cpu.c
> +++ b/arm/aarch64/kvm-cpu.c
> @@ -152,9 +152,50 @@ static void select_ptrauth_feature(struct kvm *kvm, struct kvm_vcpu_init *init)
>  	}
>  }
>  
> +static void select_sve_feature(struct kvm *kvm, struct kvm_vcpu_init *init)
> +{
> +	bool supported;
> +
> +	if (kvm->cfg.arch.enable_sve && kvm->cfg.arch.disable_sve)
> +		die("--enable-sve conflicts with --disable-sve");
> +
> +	supported = kvm__supports_extension(kvm, KVM_CAP_ARM_SVE);
> +
> +	if (kvm->cfg.arch.enable_sve && !supported)
> +		die("--enable-sve not supported on this host");
> +
> +	/* Default SVE to on if available and not explicitly disabled */
> +	if (supported && !kvm->cfg.arch.disable_sve) {
> +		kvm->cfg.arch.enable_sve = true;
> +		init->features[0] |= 1UL << KVM_ARM_VCPU_SVE;
> +	}
> +}
> +
>  void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init)
>  {
>  	select_ptrauth_feature(kvm, init);
> +	select_sve_feature(kvm, init);
> +}
> +
> +static int configure_sve(struct kvm_cpu *vcpu)
> +{
> +	int feature = KVM_ARM_VCPU_SVE;
> +
> +	if (ioctl(vcpu->vcpu_fd, KVM_ARM_VCPU_FINALIZE, &feature)) {
> +		pr_err("KVM_ARM_VCPU_FINALIZE: %s", strerror(errno));
> +		return -1;
> +	}
> +
> +	return 0;
> +}
> +
> +int kvm_cpu__configure_features(struct kvm_cpu *vcpu)
> +{
> +	if (vcpu->kvm->cfg.arch.enable_sve)
> +		if (configure_sve(vcpu))
> +			return -1;
> +
> +	return 0;
>  }
>  
>  void kvm_cpu__reset_vcpu(struct kvm_cpu *vcpu)
> diff --git a/arm/include/arm-common/kvm-config-arch.h b/arm/include/arm-common/kvm-config-arch.h
> index 1b4287d..40e3d1f 100644
> --- a/arm/include/arm-common/kvm-config-arch.h
> +++ b/arm/include/arm-common/kvm-config-arch.h
> @@ -10,6 +10,8 @@ struct kvm_config_arch {
>  	bool		aarch32_guest;
>  	bool		has_pmuv3;
>  	u64		kaslr_seed;
> +	bool		enable_sve;
> +	bool		disable_sve;
>  	bool		enable_ptrauth;
>  	bool		disable_ptrauth;
>  	enum irqchip_type irqchip;
> diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
> index 1652f6f..554414f 100644
> --- a/arm/kvm-cpu.c
> +++ b/arm/kvm-cpu.c
> @@ -124,6 +124,9 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
>  	vcpu->cpu_compatible	= target->compatible;
>  	vcpu->is_running	= true;
>  
> +	if (kvm_cpu__configure_features(vcpu))
> +		die("Unable to configure requested vcpu features");
> +
>  	return vcpu;
>  }
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
