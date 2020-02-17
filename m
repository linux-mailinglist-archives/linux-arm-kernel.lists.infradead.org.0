Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F41B161578
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17ixivfMUTZ1G9zK8BqymqftEUKb/HfYRfduqFRA4us=; b=TDYJryMW5VQxrj
	7HwuMS3dUH/mY2v4BEB1yCqDaG0lPrS751ed4zpaFsx7701fk0DoV2Rj5CoCpU2IDKaFIEN2yLTXC
	NKzzDfzrE5h6UxMcaHbW+iLk4cIcWFrnji3ZOaEHH8oFN11jpDiNzpaCHje23Nn8imnb6m0+ax2WI
	ldLxeK+I5uDaO/5vK4u2bwOVL778SrfkGGsz8SMvLPiawdHnTYNFyVNohRaNNky5+xHw2twk8N6SG
	tBfltw5LMICM9ZX6SySSoBCarO377CXzSVirdDa7fAd8vadEzcWuuLroLBVfNPcoq1dXo9Falb8tD
	iYbVUX8DMG4JG96MgSaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hwZ-0008Rw-W4; Mon, 17 Feb 2020 15:04:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hwM-0008R6-TR
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:04:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B06D30E;
 Mon, 17 Feb 2020 07:04:06 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 556B23F703;
 Mon, 17 Feb 2020 07:04:05 -0800 (PST)
Date: Mon, 17 Feb 2020 15:04:03 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 15/94] KVM: arm64: nv: Handle SPSR_EL2 specially
Message-ID: <20200217150402.GE47755@lakrids.cambridge.arm.com>
References: <20200211174938.27809-1-maz@kernel.org>
 <20200211174938.27809-16-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211174938.27809-16-maz@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_070407_035058_66FD5729 
X-CRM114-Status: GOOD (  28.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 05:48:19PM +0000, Marc Zyngier wrote:
> SPSR_EL2 needs special attention when running nested on ARMv8.3:
> 
> If taking an exception while running at vEL2 (actually EL1), the
> HW will update the SPSR_EL1 register with the EL1 mode. We need
> to track this in order to make sure that accesses to the virtual
> view of SPSR_EL2 is correct.
> 
> To do so, we place an illegal value in SPSR_EL1.M, and patch it
> accordingly if required when accessing it.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/kvm_emulate.h | 45 ++++++++++++++++++++++++++++
>  arch/arm64/kvm/sys_regs.c            | 23 ++++++++++++--
>  2 files changed, 66 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index 486978d0346b..26552c8571cb 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -277,11 +277,51 @@ static inline bool is_hyp_ctxt(const struct kvm_vcpu *vcpu)
>  	return __is_hyp_ctxt(&vcpu->arch.ctxt);
>  }
>  
> +static inline u64 __fixup_spsr_el2_write(struct kvm_cpu_context *ctxt, u64 val)
> +{
> +	if (!__vcpu_el2_e2h_is_set(ctxt)) {
> +		/*
> +		 * Clear the .M field when writing SPSR to the CPU, so that we
> +		 * can detect when the CPU clobbered our SPSR copy during a
> +		 * local exception.
> +		 */
> +		val &= ~0xc;

Probably worth making that UL(0xc) so that we consistently treat the
SPSRs as 64-bits.

Perhaps:

#define SPSR_EL2_M_3_2	UL(0xc)

... so that we can use it consistently below?

> +	}
> +
> +	return val;
> +}
> +
> +static inline u64 __fixup_spsr_el2_read(const struct kvm_cpu_context *ctxt, u64 val)
> +{
> +	if (__vcpu_el2_e2h_is_set(ctxt))
> +		return val;
> +
> +	/*
> +	 * SPSR.M == 0 means the CPU has not touched the SPSR, so the
> +	 * register has still the value we saved on the last write.
> +	 */
> +	if ((val & 0xc) == 0)
> +		return ctxt->sys_regs[SPSR_EL2];
> +
> +	/*
> +	 * Otherwise there was a "local" exception on the CPU,

Perhaps "exit-less" rather than "local"?

Thanks,
Mark.

> +	 * which from the guest's point of view was being taken from
> +	 * EL2 to EL2, although it actually happened to be from
> +	 * EL1 to EL1.
> +	 * So we need to fix the .M field in SPSR, to make it look
> +	 * like EL2, which is what the guest would expect.
> +	 */
> +	return (val & ~0x0c) | CurrentEL_EL2;
> +}
> +
>  static inline unsigned long vcpu_read_spsr(const struct kvm_vcpu *vcpu)
>  {
>  	if (vcpu_mode_is_32bit(vcpu))
>  		return vcpu_read_spsr32(vcpu);
>  
> +	if (unlikely(vcpu_mode_el2(vcpu)))
> +		return vcpu_read_sys_reg(vcpu, SPSR_EL2);
> +
>  	if (vcpu->arch.sysregs_loaded_on_cpu)
>  		return read_sysreg_el1(SYS_SPSR);
>  	else
> @@ -295,6 +335,11 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
>  		return;
>  	}
>  
> +	if (unlikely(vcpu_mode_el2(vcpu))) {
> +		vcpu_write_sys_reg(vcpu, v, SPSR_EL2);
> +		return;
> +	}
> +
>  	if (vcpu->arch.sysregs_loaded_on_cpu)
>  		write_sysreg_el1(v, SYS_SPSR);
>  	else
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 64be9f452ad6..8c7d3d410689 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -258,11 +258,14 @@ u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
>  			goto memory_read;
>  
>  		/*
> -		 * ELR_EL2 is special cased for now.
> +		 * ELR_EL2 and SPSR_EL2 are special cased for now.
>  		 */
>  		switch (reg) {
>  		case ELR_EL2:
>  			return read_sysreg_el1(SYS_ELR);
> +		case SPSR_EL2:
> +			val = read_sysreg_el1(SYS_SPSR);
> +			return __fixup_spsr_el2_read(&vcpu->arch.ctxt, val);
>  		}
>  
>  		/*
> @@ -319,6 +322,10 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
>  		case ELR_EL2:
>  			write_sysreg_el1(val, SYS_ELR);
>  			return;
> +		case SPSR_EL2:
> +			val = __fixup_spsr_el2_write(&vcpu->arch.ctxt, val);
> +			write_sysreg_el1(val, SYS_SPSR);
> +			return;
>  		}
>  
>  		/* No EL1 counterpart? We're done here.? */
> @@ -1589,6 +1596,18 @@ static bool access_sp_el1(struct kvm_vcpu *vcpu,
>  	return true;
>  }
>  
> +static bool access_spsr_el2(struct kvm_vcpu *vcpu,
> +			    struct sys_reg_params *p,
> +			    const struct sys_reg_desc *r)
> +{
> +	if (p->is_write)
> +		vcpu_write_sys_reg(vcpu, p->regval, SPSR_EL2);
> +	else
> +		p->regval = vcpu_read_sys_reg(vcpu, SPSR_EL2);
> +
> +	return true;
> +}
> +
>  /*
>   * Architected system registers.
>   * Important: Must be sorted ascending by Op0, Op1, CRn, CRm, Op2
> @@ -1899,7 +1918,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
>  	{ SYS_DESC(SYS_VTCR_EL2), access_rw, reset_val, VTCR_EL2, 0 },
>  
>  	{ SYS_DESC(SYS_DACR32_EL2), NULL, reset_unknown, DACR32_EL2 },
> -	{ SYS_DESC(SYS_SPSR_EL2), access_rw, reset_val, SPSR_EL2, 0 },
> +	{ SYS_DESC(SYS_SPSR_EL2), access_spsr_el2, reset_val, SPSR_EL2, 0 },
>  	{ SYS_DESC(SYS_ELR_EL2), access_rw, reset_val, ELR_EL2, 0 },
>  	{ SYS_DESC(SYS_SP_EL1), access_sp_el1},
>  
> -- 
> 2.20.1
> 
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
