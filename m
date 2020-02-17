Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84A61614E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=50M+4cFbVd9HVFSW6necwP5byEM4227mCMpzCctn3Sk=; b=K5/CSp3gSw9EJzHP9Ykf9h+HT
	GHs+aSPBTaV/ngbZMIgI5pjPlU1iuLg9wa58jZCFXZUTaNaIYed2dALOGPMXbfJ5XU1fjNT84hBm4
	xILS9yZ3HhxLxaqmabuaL2JTjaifA3Be4DOtyA59tF+QpQXfWoZ4TwaOGY7x0mbc+UTy/QFLGb3PE
	EHAuwZoF5JzDNiuXy2cjrrS3xrYWpXAgvDEPtGxg8l4quG3qTj3kV/nyjV+4cCQK72SGvWd6vi7bj
	eWZxy1mee6p9V+D9nybBDoEveZE7Lxi+UOjIquW3BFuC7p1a3+ch0s2GWVdFqitS8+nWZid8Gm0Sa
	BSucu5MDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3has-00071r-4p; Mon, 17 Feb 2020 14:41:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hah-00071J-8v
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:41:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBBBA20718;
 Mon, 17 Feb 2020 14:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581950502;
 bh=10CjGupmuANJO7p4rlATxDJ2v7XrTRpZXAr0GqdbdN0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fpk6QOD17+GLOImKXQchf8+CjmhEoQbaZStZd/smSRa3ic2vzEPHxAbK2HNjg0ULE
 3rBUvZ6YrE5HnPO2EfGbdkd0M6uPaIOefnkNV0vKMdEN/IxFFG/WJRQ1fAW0lwr1JZ
 OmchkHrlZGjsB95HVR17YQ7IBWobjhffbpscJ4U0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3haf-005wWV-1C; Mon, 17 Feb 2020 14:41:41 +0000
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 14:41:40 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] kvm: arm/arm64: fold VHE entry/exit work into
 kvm_vcpu_run_vhe()
In-Reply-To: <20200210114757.2889-1-mark.rutland@arm.com>
References: <20200210114757.2889-1-mark.rutland@arm.com>
Message-ID: <33ce7b2c8341bbe44b8fecf338f3b478@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_064143_350979_71EBCB6E 
X-CRM114-Status: GOOD (  30.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 2020-02-10 11:47, Mark Rutland wrote:
> With VHE, running a vCPU always requires the sequence:
> 
> 1. kvm_arm_vhe_guest_enter();
> 2. kvm_vcpu_run_vhe();
> 3. kvm_arm_vhe_guest_exit()
> 
> ... and as we invoke this from the shared arm/arm64 KVM code, 32-bit 
> arm
> has to provide stubs for all three functions.
> 
> To simplify the common code, and make it easier to make further
> modifications to the arm64-specific portions in the near future, let's
> fold kvm_arm_vhe_guest_enter() and kvm_arm_vhe_guest_exit() into
> kvm_vcpu_run_vhe().
> 
> The 32-bit stubs for kvm_arm_vhe_guest_enter() and
> kvm_arm_vhe_guest_exit() are removed, as they are no longer used. The
> 32-bit stub for kvm_vcpu_run_vhe() is left as-is.
> 
> There should be no functional change as a result of this patch.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: kvmarm@lists.cs.columbia.edu
> ---
>  arch/arm/include/asm/kvm_host.h   |  3 ---
>  arch/arm64/include/asm/kvm_host.h | 32 
> --------------------------------
>  arch/arm64/kvm/hyp/switch.c       | 39 
> +++++++++++++++++++++++++++++++++++++--
>  virt/kvm/arm/arm.c                |  2 --
>  4 files changed, 37 insertions(+), 39 deletions(-)
> 
> Hi Marc,
> 
> This is a preparatory patch for the arm64 entry rework I'm doing: I 
> need to
> move the DAIF manipulation into the same function so that I can replace 
> that
> with a common DAIF+PMR save/restore sequence.
> 
> If it's possible to queue this patch for v5.6-rc*, it would help to 
> minimize
> conflict in the v5.7 merge window, and would be much appreciated.
> 
> I've tested this on a ThunderX2 machine atop v5.6-rc1 defconfig, 
> booting the
> host and running a test VM.
> 
> Thanks,
> Mark.
> 
> diff --git a/arch/arm/include/asm/kvm_host.h 
> b/arch/arm/include/asm/kvm_host.h
> index c3314b286a61..a827b4d60d38 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -392,9 +392,6 @@ static inline void kvm_arch_vcpu_put_fp(struct
> kvm_vcpu *vcpu) {}
>  static inline void kvm_vcpu_pmu_restore_guest(struct kvm_vcpu *vcpu) 
> {}
>  static inline void kvm_vcpu_pmu_restore_host(struct kvm_vcpu *vcpu) {}
> 
> -static inline void kvm_arm_vhe_guest_enter(void) {}
> -static inline void kvm_arm_vhe_guest_exit(void) {}
> -
>  #define KVM_BP_HARDEN_UNKNOWN		-1
>  #define KVM_BP_HARDEN_WA_NEEDED		0
>  #define KVM_BP_HARDEN_NOT_REQUIRED	1
> diff --git a/arch/arm64/include/asm/kvm_host.h
> b/arch/arm64/include/asm/kvm_host.h
> index d87aa609d2b6..57fd46acd058 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -626,38 +626,6 @@ static inline void kvm_set_pmu_events(u32 set,
> struct perf_event_attr *attr) {}
>  static inline void kvm_clr_pmu_events(u32 clr) {}
>  #endif
> 
> -static inline void kvm_arm_vhe_guest_enter(void)
> -{
> -	local_daif_mask();
> -
> -	/*
> -	 * Having IRQs masked via PMR when entering the guest means the GIC
> -	 * will not signal the CPU of interrupts of lower priority, and the
> -	 * only way to get out will be via guest exceptions.
> -	 * Naturally, we want to avoid this.
> -	 *
> -	 * local_daif_mask() already sets GIC_PRIO_PSR_I_SET, we just need a
> -	 * dsb to ensure the redistributor is forwards EL2 IRQs to the CPU.
> -	 */
> -	pmr_sync();
> -}
> -
> -static inline void kvm_arm_vhe_guest_exit(void)
> -{
> -	/*
> -	 * local_daif_restore() takes care to properly restore PSTATE.DAIF
> -	 * and the GIC PMR if the host is using IRQ priorities.
> -	 */
> -	local_daif_restore(DAIF_PROCCTX_NOIRQ);
> -
> -	/*
> -	 * When we exit from the guest we change a number of CPU 
> configuration
> -	 * parameters, such as traps.  Make sure these changes take effect
> -	 * before running the host or additional guests.
> -	 */
> -	isb();
> -}
> -
>  #define KVM_BP_HARDEN_UNKNOWN		-1
>  #define KVM_BP_HARDEN_WA_NEEDED		0
>  #define KVM_BP_HARDEN_NOT_REQUIRED	1
> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index dfe8dd172512..925086b46136 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -625,7 +625,7 @@ static void __hyp_text __pmu_switch_to_host(struct
> kvm_cpu_context *host_ctxt)
>  }
> 
>  /* Switch to the guest for VHE systems running in EL2 */
> -int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
> +static int __kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
>  {
>  	struct kvm_cpu_context *host_ctxt;
>  	struct kvm_cpu_context *guest_ctxt;
> @@ -678,7 +678,42 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
> 
>  	return exit_code;
>  }
> -NOKPROBE_SYMBOL(kvm_vcpu_run_vhe);
> +NOKPROBE_SYMBOL(__kvm_vcpu_run_vhe);
> +
> +int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
> +{
> +	int ret;
> +
> +	local_daif_mask();
> +
> +	/*
> +	 * Having IRQs masked via PMR when entering the guest means the GIC
> +	 * will not signal the CPU of interrupts of lower priority, and the
> +	 * only way to get out will be via guest exceptions.
> +	 * Naturally, we want to avoid this.
> +	 *
> +	 * local_daif_mask() already sets GIC_PRIO_PSR_I_SET, we just need a
> +	 * dsb to ensure the redistributor is forwards EL2 IRQs to the CPU.
> +	 */
> +	pmr_sync();
> +
> +	ret = __kvm_vcpu_run_vhe(vcpu);
> +
> +	/*
> +	 * local_daif_restore() takes care to properly restore PSTATE.DAIF
> +	 * and the GIC PMR if the host is using IRQ priorities.
> +	 */
> +	local_daif_restore(DAIF_PROCCTX_NOIRQ);
> +
> +	/*
> +	 * When we exit from the guest we change a number of CPU 
> configuration
> +	 * parameters, such as traps.  Make sure these changes take effect
> +	 * before running the host or additional guests.
> +	 */
> +	isb();
> +
> +	return ret;
> +}
> 
>  /* Switch to the guest for legacy non-VHE systems */
>  int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index d65a0faa46d8..eda7b624eab8 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -742,9 +742,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu,
> struct kvm_run *run)
>  		guest_enter_irqoff();
> 
>  		if (has_vhe()) {
> -			kvm_arm_vhe_guest_enter();
>  			ret = kvm_vcpu_run_vhe(vcpu);
> -			kvm_arm_vhe_guest_exit();
>  		} else {
>  			ret = kvm_call_hyp_ret(__kvm_vcpu_run_nvhe, vcpu);
>  		}

Looks good to me, I've taken it as part of the (very small) set of fixes
queued for -rc3.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
