Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 879B31D9490
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqeShh0mhJPfz9Yq7klvzcim89L2qOSWX+MLU4PvRPk=; b=Sk4HmpndtbrNFG
	q5AZDSZ96fchr7qIHQE7teqeUjeGinhvcjp7OhrNktSriOEbutscNx7R0Q+fmpz5wP7XUM2CgpnWe
	7QBPWfa97zEUPoeSqly6W1/7jzEf6lvIi3KbkF6rnzWMVcFQG7GJvcEqR371EAHkimwG1n6NKjvxd
	jBpUNVo81Au6I4KdvDeRcqY4V6IiMXk6aEdjOSPBDprH+l+EXZzuTtY21KoGxpuxXiwwFDGaQmjcH
	t2Cencce9AZXJJF+M9OXHSEoQq458HeLxFWSZ+md4lodsUDM/fh4EnNGJEJjRlLnql68Vso3ynqXI
	7rRSjBvj6RlzR1kUWQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazkM-0004A6-2l; Tue, 19 May 2020 10:45:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazkA-0003TK-Cl
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:45:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A279A101E;
 Tue, 19 May 2020 03:45:05 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5837B3F305;
 Tue, 19 May 2020 03:45:02 -0700 (PDT)
Date: Tue, 19 May 2020 11:44:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 26/26] KVM: arm64: Parametrize exception entry with a
 target EL
Message-ID: <20200519104457.GA19548@C02TD0UTHF1T.local>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-27-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422120050.3693593-27-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_034506_549483_F321E444 
X-CRM114-Status: GOOD (  27.16  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 01:00:50PM +0100, Marc Zyngier wrote:
> We currently assume that an exception is delivered to EL1, always.
> Once we emulate EL2, this no longer will be the case. To prepare
> for this, add a target_mode parameter.
> 
> While we're at it, merge the computing of the target PC and PSTATE in
> a single function that updates both PC and CPSR after saving their
> previous values in the corresponding ELR/SPSR. This ensures that they
> are updated in the correct order (a pretty common source of bugs...).
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/inject_fault.c | 75 ++++++++++++++++++-----------------
>  1 file changed, 38 insertions(+), 37 deletions(-)
> 
> diff --git a/arch/arm64/kvm/inject_fault.c b/arch/arm64/kvm/inject_fault.c
> index d3ebf8bca4b89..3dbcbc839b9c3 100644
> --- a/arch/arm64/kvm/inject_fault.c
> +++ b/arch/arm64/kvm/inject_fault.c
> @@ -26,28 +26,12 @@ enum exception_type {
>  	except_type_serror	= 0x180,
>  };
>  
> -static u64 get_except_vector(struct kvm_vcpu *vcpu, enum exception_type type)
> -{
> -	u64 exc_offset;
> -
> -	switch (*vcpu_cpsr(vcpu) & (PSR_MODE_MASK | PSR_MODE32_BIT)) {
> -	case PSR_MODE_EL1t:
> -		exc_offset = CURRENT_EL_SP_EL0_VECTOR;
> -		break;
> -	case PSR_MODE_EL1h:
> -		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
> -		break;
> -	case PSR_MODE_EL0t:
> -		exc_offset = LOWER_EL_AArch64_VECTOR;
> -		break;
> -	default:
> -		exc_offset = LOWER_EL_AArch32_VECTOR;
> -	}
> -
> -	return vcpu_read_sys_reg(vcpu, VBAR_EL1) + exc_offset + type;
> -}
> -
>  /*
> + * This performs the exception entry at a given EL (@target_mode), stashing PC
> + * and PSTATE into ELR and SPSR respectively, and compute the new PC/PSTATE.
> + * The EL passed to this function *must* be a non-secure, privileged mode with
> + * bit 0 being set (PSTATE.SP == 1).
> + *
>   * When an exception is taken, most PSTATE fields are left unchanged in the
>   * handler. However, some are explicitly overridden (e.g. M[4:0]). Luckily all
>   * of the inherited bits have the same position in the AArch64/AArch32 SPSR_ELx
> @@ -59,10 +43,35 @@ static u64 get_except_vector(struct kvm_vcpu *vcpu, enum exception_type type)
>   * Here we manipulate the fields in order of the AArch64 SPSR_ELx layout, from
>   * MSB to LSB.
>   */
> -static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
> +static void enter_exception(struct kvm_vcpu *vcpu, unsigned long target_mode,
> +			    enum exception_type type)

Since this is all for an AArch64 target, could we keep `64` in the name,
e.g enter_exception64? That'd mirror the callers below.

>  {
> -	unsigned long sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
> -	unsigned long old, new;
> +	unsigned long sctlr, vbar, old, new, mode;
> +	u64 exc_offset;
> +
> +	mode = *vcpu_cpsr(vcpu) & (PSR_MODE_MASK | PSR_MODE32_BIT);
> +
> +	if      (mode == target_mode)
> +		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
> +	else if ((mode | 1) == target_mode)
> +		exc_offset = CURRENT_EL_SP_EL0_VECTOR;

It would be nice if we could add a mnemonic for the `1` here, e.g.
PSR_MODE_SP0 or PSR_MODE_THREAD_BIT.

> +	else if (!(mode & PSR_MODE32_BIT))
> +		exc_offset = LOWER_EL_AArch64_VECTOR;
> +	else
> +		exc_offset = LOWER_EL_AArch32_VECTOR;

Other than the above, I couldn't think of a nicer way of writing thism
and AFAICT this is correct.

> +
> +	switch (target_mode) {
> +	case PSR_MODE_EL1h:
> +		vbar = vcpu_read_sys_reg(vcpu, VBAR_EL1);
> +		sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
> +		vcpu_write_sys_reg(vcpu, *vcpu_pc(vcpu), ELR_EL1);
> +		break;
> +	default:
> +		/* Don't do that */
> +		BUG();
> +	}
> +
> +	*vcpu_pc(vcpu) = vbar + exc_offset + type;
>  
>  	old = *vcpu_cpsr(vcpu);
>  	new = 0;
> @@ -105,9 +114,10 @@ static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
>  	new |= PSR_I_BIT;
>  	new |= PSR_F_BIT;
>  
> -	new |= PSR_MODE_EL1h;
> +	new |= target_mode;

As a heads-up, some of the other bits will need to change for an EL2
target (e.g. SPAN will depend on HCR_EL2.E2H), but as-is this this is
fine.

Regardless of the above comments:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
