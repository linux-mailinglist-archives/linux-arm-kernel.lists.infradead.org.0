Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF35E5270F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKbmzSgYcYYpxbqPvkLDtWBTLoDqmbv0U2TUJ6zxk3I=; b=jVmhSmQZicrDZC
	JWt59UiUbTUpJ2mGh3QgflIwddR80fLhB7gHEayJd3a14bM9s1fJD3MscPcUtTL9qiPEMiv/N+myU
	gFS46Vg/DwT9QpW+ZLe3lAlJxiiNozYx32u3kwxtLQcOhUL9fwwaFqTRMiHNVDrw5GE34JLcsJGh6
	BTaklCrbrLwMfGuPeGH5h748zk05FVt0lW4ooHDOK2IpqIFxZ37ILrOaD+NUMqyYPRHsbMScmD64r
	s53YW9VPhAK0LlluqH3yh/+h0husF1SM5gPT3ZKNbP/azSpfIWTWPUIw4DP+DdCt6VYa7fwqfbDfZ
	SNhFRwO7jYNcCWFvMVMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfh8W-0005L6-UF; Tue, 25 Jun 2019 08:49:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfh8J-0005Kk-BD
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:48:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88A232B;
 Tue, 25 Jun 2019 01:48:54 -0700 (PDT)
Received: from [10.37.8.194] (unknown [10.37.8.194])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E5D03F718;
 Tue, 25 Jun 2019 01:48:52 -0700 (PDT)
Subject: Re: [PATCH 16/59] KVM: arm64: nv: Save/Restore vEL2 sysregs
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-17-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <800f3e9a-5b67-951b-34c2-60367c0697f9@arm.com>
Date: Tue, 25 Jun 2019 09:48:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-17-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_014855_483730_4BE327C5 
X-CRM114-Status: GOOD (  22.80  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/21/2019 10:38 AM, Marc Zyngier wrote:
> From: Andre Przywara <andre.przywara@arm.com>
> 
> Whenever we need to restore the guest's system registers to the CPU, we
> now need to take care of the EL2 system registers as well. Most of them
> are accessed via traps only, but some have an immediate effect and also
> a guest running in VHE mode would expect them to be accessible via their
> EL1 encoding, which we do not trap.
> 
> Split the current __sysreg_{save,restore}_el1_state() functions into
> handling common sysregs, then differentiate between the guest running in
> vEL2 and vEL1.
> 
> For vEL2 we write the virtual EL2 registers with an identical format directly
> into their EL1 counterpart, and translate the few registers that have a
> different format for the same effect on the execution when running a
> non-VHE guest guest hypervisor.
> 
>   [ Commit message reworked and many bug fixes applied by Marc Zyngier
>     and Christoffer Dall. ]
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> ---
>  arch/arm64/kvm/hyp/sysreg-sr.c | 160 +++++++++++++++++++++++++++++++--
>  1 file changed, 153 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
> index 62866a68e852..2abb9c3ff24f 100644
> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c

[...]

> @@ -124,10 +167,91 @@ static void __hyp_text __sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
>  	write_sysreg(ctxt->sys_regs[TPIDRRO_EL0],	tpidrro_el0);
>  }
>  
> -static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
> +static void __sysreg_restore_vel2_state(struct kvm_cpu_context *ctxt)
>  {
> +	u64 val;
> +
> +	write_sysreg(read_cpuid_id(),			vpidr_el2);
>  	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
> -	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
> +	write_sysreg_el1(ctxt->sys_regs[MAIR_EL2],	SYS_MAIR);
> +	write_sysreg_el1(ctxt->sys_regs[VBAR_EL2],	SYS_VBAR);
> +	write_sysreg_el1(ctxt->sys_regs[CONTEXTIDR_EL2],SYS_CONTEXTIDR);
> +	write_sysreg_el1(ctxt->sys_regs[AMAIR_EL2],	SYS_AMAIR);
> +
> +	if (__vcpu_el2_e2h_is_set(ctxt)) {
> +		/*
> +		 * In VHE mode those registers are compatible between
> +		 * EL1 and EL2.
> +		 */
> +		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL2],	SYS_SCTLR);
> +		write_sysreg_el1(ctxt->sys_regs[CPTR_EL2],	SYS_CPACR);
> +		write_sysreg_el1(ctxt->sys_regs[TTBR0_EL2],	SYS_TTBR0);
> +		write_sysreg_el1(ctxt->sys_regs[TTBR1_EL2],	SYS_TTBR1);
> +		write_sysreg_el1(ctxt->sys_regs[TCR_EL2],	SYS_TCR);
> +		write_sysreg_el1(ctxt->sys_regs[CNTHCTL_EL2],	SYS_CNTKCTL);
> +	} else {
> +		write_sysreg_el1(translate_sctlr(ctxt->sys_regs[SCTLR_EL2]),
> +				 SYS_SCTLR);
> +		write_sysreg_el1(translate_cptr(ctxt->sys_regs[CPTR_EL2]),
> +				 SYS_CPACR);
> +		write_sysreg_el1(translate_ttbr0(ctxt->sys_regs[TTBR0_EL2]),
> +				 SYS_TTBR0);
> +		write_sysreg_el1(translate_tcr(ctxt->sys_regs[TCR_EL2]),
> +				 SYS_TCR);
> +		write_sysreg_el1(translate_cnthctl(ctxt->sys_regs[CNTHCTL_EL2]),
> +				 SYS_CNTKCTL);
> +	}
> +
> +	/*
> +	 * These registers can be modified behind our back by a fault
> +	 * taken inside vEL2. Save them, always.
> +	 */
> +	write_sysreg_el1(ctxt->sys_regs[ESR_EL2],	SYS_ESR);
> +	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL2],	SYS_AFSR0);
> +	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL2],	SYS_AFSR1);
> +	write_sysreg_el1(ctxt->sys_regs[FAR_EL2],	SYS_FAR);
> +	write_sysreg(ctxt->sys_regs[SP_EL2],		sp_el1);
> +	write_sysreg_el1(ctxt->sys_regs[ELR_EL2],	SYS_ELR);
> +
> +	val = __fixup_spsr_el2_write(ctxt, ctxt->sys_regs[SPSR_EL2]);
> +	write_sysreg_el1(val,	SYS_SPSR);
> +}
> +
> +static void __hyp_text __sysreg_restore_vel1_state(struct kvm_cpu_context *ctxt)
> +{
> +	u64 mpidr;
> +
> +	if (has_vhe()) {
> +		struct kvm_vcpu *vcpu;
> +
> +		/*
> +		 * Warning: this hack only works on VHE, because we only
> +		 * call this with the *guest* context, which is part of
> +		 * struct kvm_vcpu. On a host context, you'd get pure junk.
> +		 */
> +		vcpu = container_of(ctxt, struct kvm_vcpu, arch.ctxt);

This seems very fragile, just to find out whether the guest has hyp
capabilities. It would be at least nice to make sure this is indeed a
guest context.

The *clean* way to do it could be to have a pointer to kvm_vcpu in the
kvm_cpu_context which would be NULL for host contexts.

Otherwise, I'm under the impression that for a host context,
ctxt->sys_reg[HCR_EL2] == 0 and that this would also be true for a guest
without nested virt capability. Could we use something like that here?

Cheers,

Julien

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
