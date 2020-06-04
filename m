Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9F01EE7A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+/ol8flsHIgayBVqtTqa4Wadi0RJjxkjYtJ1+mhO8I=; b=tiQTH2v8oZ1+qK
	OOUBhfjNzjRKBHQwl0+fvacw4TuUapyKkRgPtsooE5AY4R+zA9F+WptanRKvFKDqmBd/hteVYToVr
	Ys0YX/EEZuouT6m5+nyypP1g1QqwuXbdZ/Pk74wsje5jSenSWtMd8VfxZ5DK3/Kwry+iykqPthNHT
	iJ4lyCUwPN8LkWnZG5DZzRhNlhWrgJYILYj2zgqrWXl0HIxMOh8peNrWBnb57B0c/V4LpAeHN0RXZ
	BagqOcHpNI7FsjIQjBW1mld+2WDjYaZcg0RFarlSFmIjuBa/Nukg4vxQhESqd9t7pbF4vXYBAw7tW
	tOrCtrpxHVdAoDoPeHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgric-0001f2-BI; Thu, 04 Jun 2020 15:23:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgriV-0001eL-5Q
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:23:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75CFE1FB;
 Thu,  4 Jun 2020 08:23:38 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.9.165])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C8D93F305;
 Thu,  4 Jun 2020 08:23:36 -0700 (PDT)
Date: Thu, 4 Jun 2020 16:23:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 2/3] KVM: arm64: Handle PtrAuth traps early
Message-ID: <20200604152333.GD75320@C02TD0UTHF1T.local>
References: <20200604133354.1279412-1-maz@kernel.org>
 <20200604133354.1279412-3-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604133354.1279412-3-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_082339_289581_8FDADF37 
X-CRM114-Status: GOOD (  25.93  )
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
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 02:33:53PM +0100, Marc Zyngier wrote:
> The current way we deal with PtrAuth is a bit heavy handed:
> 
> - We forcefully save the host's keys on each vcpu_load()
> - Handling the PtrAuth trap forces us to go all the way back
>   to the exit handling code to just set the HCR bits
> 
> Overall, this is pretty heavy handed. A better approach would be
> to handle it the same way we deal with the FPSIMD registers:
> 
> - On vcpu_load() disable PtrAuth for the guest
> - On first use, save the host's keys, enable PtrAuth in the
>   guest
> 
> Crutially, this can happen as a fixup, which is done very early
> on exit. We can then reenter the guest immediately without
> leaving the hypervisor role.
> 
> Another thing is that it simplify the rest of the host handling:
> exiting all the way to the host means that the only possible
> outcome for this trap is to inject an UNDEF.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/arm.c         | 17 +----------
>  arch/arm64/kvm/handle_exit.c | 17 ++---------
>  arch/arm64/kvm/hyp/switch.c  | 59 ++++++++++++++++++++++++++++++++++++
>  arch/arm64/kvm/sys_regs.c    | 13 +++-----
>  4 files changed, 68 insertions(+), 38 deletions(-)

[...]

> +static bool __hyp_text __hyp_handle_ptrauth(struct kvm_vcpu *vcpu)
> +{
> +	u32 sysreg = esr_sys64_to_sysreg(kvm_vcpu_get_hsr(vcpu));
> +	u32 ec = kvm_vcpu_trap_get_class(vcpu);
> +	struct kvm_cpu_context *ctxt;
> +	u64 val;
> +
> +	if (!vcpu_has_ptrauth(vcpu))
> +		return false;
> +
> +	switch (ec) {
> +	case ESR_ELx_EC_PAC:
> +		break;
> +	case ESR_ELx_EC_SYS64:
> +		switch (sysreg) {
> +		case SYS_APIAKEYLO_EL1:
> +		case SYS_APIAKEYHI_EL1:
> +		case SYS_APIBKEYLO_EL1:
> +		case SYS_APIBKEYHI_EL1:
> +		case SYS_APDAKEYLO_EL1:
> +		case SYS_APDAKEYHI_EL1:
> +		case SYS_APDBKEYLO_EL1:
> +		case SYS_APDBKEYHI_EL1:
> +		case SYS_APGAKEYLO_EL1:
> +		case SYS_APGAKEYHI_EL1:
> +			break;
> +		default:
> +			return false;
> +		}
> +		break;
> +	default:
> +		return false;
> +	}

The ESR triage looks correct, but I think it might be clearer split out
into a helper, since you can avoid the default cases with direct
returns, and you could avoid the nested switch, e.g.

static inline bool __hyp_text esr_is_ptrauth_trap(u32 esr)
{
	u32 ec = ESR_ELx_EC(esr);

	if (ec == ESR_ELx_EC_PAC)
		return true;

	if (ec != ESR_ELx_EC_SYS64)
		return false;
	
	switch (esr_sys64_to_sysreg(esr)) {
	case SYS_APIAKEYLO_EL1:
	case SYS_APIAKEYHI_EL1:
	case SYS_APIBKEYLO_EL1:
	case SYS_APIBKEYHI_EL1:
	case SYS_APDAKEYLO_EL1:
	case SYS_APDAKEYHI_EL1:
	case SYS_APDBKEYLO_EL1:
	case SYS_APDBKEYHI_EL1:
	case SYS_APGAKEYLO_EL1:
	case SYS_APGAKEYHI_EL1:
		return true;
	}

	return false;
}


> +
> +	ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> +	__ptrauth_save_key(ctxt->sys_regs, APIA);
> +	__ptrauth_save_key(ctxt->sys_regs, APIB);
> +	__ptrauth_save_key(ctxt->sys_regs, APDA);
> +	__ptrauth_save_key(ctxt->sys_regs, APDB);
> +	__ptrauth_save_key(ctxt->sys_regs, APGA);
> +
> +	vcpu_ptrauth_enable(vcpu);
> +
> +	val = read_sysreg(hcr_el2);
> +	val |= (HCR_API | HCR_APK);
> +	write_sysreg(val, hcr_el2);
> +
> +	return true;
> +}
> +
>  /*
>   * Return true when we were able to fixup the guest exit and should return to
>   * the guest, false when we should restore the host state and return to the
> @@ -524,6 +580,9 @@ static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
>  	if (__hyp_handle_fpsimd(vcpu))
>  		return true;
>  
> +	if (__hyp_handle_ptrauth(vcpu))
> +		return true;
> +
>  	if (!__populate_fault_info(vcpu))
>  		return true;
>  
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index ad1d57501d6d..564995084cf8 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1034,16 +1034,13 @@ static bool trap_ptrauth(struct kvm_vcpu *vcpu,
>  			 struct sys_reg_params *p,
>  			 const struct sys_reg_desc *rd)
>  {
> -	kvm_arm_vcpu_ptrauth_trap(vcpu);
> -
>  	/*
> -	 * Return false for both cases as we never skip the trapped
> -	 * instruction:
> -	 *
> -	 * - Either we re-execute the same key register access instruction
> -	 *   after enabling ptrauth.
> -	 * - Or an UNDEF is injected as ptrauth is not supported/enabled.
> +	 * If we land here, that is because we didn't fixup the access on exit
> +	 * by allowing the PtrAuth sysregs. The only way this happens is when
> +	 * the guest does not have PtrAuth support enabled.
>  	 */
> +	kvm_inject_undefined(vcpu);
> +
>  	return false;
>  }
>  
> -- 
> 2.26.2
> 

Regardless of the suggestion above, this looks sound to me. I agree that
it's much nicer to handle this in hyp, and AFAICT the context switch
should do the right thing, so:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
