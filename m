Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396661EE749
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQT/UnTvqW92OdjOeqklekAshQNtXop09wTASisC4fI=; b=sR5jTvHMPvvm8y
	4YcgUet0rBuXHO3SwOCzzBLIcfP1ocL2fEDs3b6P5nk5P0VD5O30PZhMg3JZsKaQ6nA4qDJa7XUCJ
	5zqE7Hb+B9a2oMbyw6kAuq41TTcBOyvgyI+Oj4usloVu6BDKyJStn6uXYEQ1XtjAftHWyQJIvScfL
	+b+ydtfg6fBve9+fahxflFRW5iig9+GpeLFrIi8+2jy63GKHiyrAJRkVllt2w64OaCy6SH0QybBvu
	nG1MtZYAPmk/1JXJyOIod5NqNw6Wd9AMhHrP1wOz9tGHsHw+tiCF0c+s56pFb+DPErNAY0uxkU/lj
	KhQ7ALCvcKGC0VraUIJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrQJ-0004yh-2z; Thu, 04 Jun 2020 15:04:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrQC-0004y6-Ae
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:04:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A52571FB;
 Thu,  4 Jun 2020 08:04:41 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.9.165])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BA053F305;
 Thu,  4 Jun 2020 08:04:38 -0700 (PDT)
Date: Thu, 4 Jun 2020 16:04:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/3] KVM: arm64: Save the host's PtrAuth keys in
 non-preemptible context
Message-ID: <20200604150436.GC75320@C02TD0UTHF1T.local>
References: <20200604133354.1279412-1-maz@kernel.org>
 <20200604133354.1279412-2-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604133354.1279412-2-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_080444_452791_C73B653B 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kernel-team@android.com, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 02:33:52PM +0100, Marc Zyngier wrote:
> When using the PtrAuth feature in a guest, we need to save the host's
> keys before allowing the guest to program them. For that, we dump
> them in a per-CPU data structure (the so called host context).
> 
> But both call sites that do this are in preemptible context,
> which may end up in disaster should the vcpu thread get preempted
> before reentering the guest.

Yuck!

> Instead, save the keys eagerly on each vcpu_load(). This has an
> increased overhead, but is at least safe.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Marc Zyngier <maz@kernel.org>

This looks sound to me given kvm_arch_vcpu_load() is surrounded with
get_cpu() .. put_cpu() and gets called when the thread is preempted.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
>  arch/arm64/include/asm/kvm_emulate.h |  6 ------
>  arch/arm64/kvm/arm.c                 | 18 +++++++++++++++++-
>  arch/arm64/kvm/handle_exit.c         | 19 ++-----------------
>  3 files changed, 19 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index a30b4eec7cb4..977843e4d5fb 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -112,12 +112,6 @@ static inline void vcpu_ptrauth_disable(struct kvm_vcpu *vcpu)
>  	vcpu->arch.hcr_el2 &= ~(HCR_API | HCR_APK);
>  }
>  
> -static inline void vcpu_ptrauth_setup_lazy(struct kvm_vcpu *vcpu)
> -{
> -	if (vcpu_has_ptrauth(vcpu))
> -		vcpu_ptrauth_disable(vcpu);
> -}
> -
>  static inline unsigned long vcpu_get_vsesr(struct kvm_vcpu *vcpu)
>  {
>  	return vcpu->arch.vsesr_el2;
> diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
> index d6988401c22a..152049c5055d 100644
> --- a/arch/arm64/kvm/arm.c
> +++ b/arch/arm64/kvm/arm.c
> @@ -337,6 +337,12 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
>  	preempt_enable();
>  }
>  
> +#define __ptrauth_save_key(regs, key)						\
> +({										\
> +	regs[key ## KEYLO_EL1] = read_sysreg_s(SYS_ ## key ## KEYLO_EL1);	\
> +	regs[key ## KEYHI_EL1] = read_sysreg_s(SYS_ ## key ## KEYHI_EL1);	\
> +})
> +
>  void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>  {
>  	int *last_ran;
> @@ -370,7 +376,17 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>  	else
>  		vcpu_set_wfx_traps(vcpu);
>  
> -	vcpu_ptrauth_setup_lazy(vcpu);
> +	if (vcpu_has_ptrauth(vcpu)) {
> +		struct kvm_cpu_context *ctxt = vcpu->arch.host_cpu_context;
> +
> +		__ptrauth_save_key(ctxt->sys_regs, APIA);
> +		__ptrauth_save_key(ctxt->sys_regs, APIB);
> +		__ptrauth_save_key(ctxt->sys_regs, APDA);
> +		__ptrauth_save_key(ctxt->sys_regs, APDB);
> +		__ptrauth_save_key(ctxt->sys_regs, APGA);
> +
> +		vcpu_ptrauth_disable(vcpu);
> +	}
>  }
>  
>  void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index eb194696ef62..065251efa2e6 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -162,31 +162,16 @@ static int handle_sve(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  	return 1;
>  }
>  
> -#define __ptrauth_save_key(regs, key)						\
> -({										\
> -	regs[key ## KEYLO_EL1] = read_sysreg_s(SYS_ ## key ## KEYLO_EL1);	\
> -	regs[key ## KEYHI_EL1] = read_sysreg_s(SYS_ ## key ## KEYHI_EL1);	\
> -})
> -
>  /*
>   * Handle the guest trying to use a ptrauth instruction, or trying to access a
>   * ptrauth register.
>   */
>  void kvm_arm_vcpu_ptrauth_trap(struct kvm_vcpu *vcpu)
>  {
> -	struct kvm_cpu_context *ctxt;
> -
> -	if (vcpu_has_ptrauth(vcpu)) {
> +	if (vcpu_has_ptrauth(vcpu))
>  		vcpu_ptrauth_enable(vcpu);
> -		ctxt = vcpu->arch.host_cpu_context;
> -		__ptrauth_save_key(ctxt->sys_regs, APIA);
> -		__ptrauth_save_key(ctxt->sys_regs, APIB);
> -		__ptrauth_save_key(ctxt->sys_regs, APDA);
> -		__ptrauth_save_key(ctxt->sys_regs, APDB);
> -		__ptrauth_save_key(ctxt->sys_regs, APGA);
> -	} else {
> +	else
>  		kvm_inject_undefined(vcpu);
> -	}
>  }
>  
>  /*
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
