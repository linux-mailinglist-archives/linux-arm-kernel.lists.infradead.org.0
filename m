Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62AD636D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKLoDi1k5vrVGFPdmx6D3kk+MPPjZ9SKgeP4FtnNJO0=; b=RqkbrPmJkK+ni/
	JQ6bgg/BhSJrP1F/MLZGAPu3tMzwx1hz8B6bP5mnH4AMrqbkdi2MRU/8gw2TEvUXJl8c04le/xoKP
	3OoL0HXsdne9ovoelfWksIfZhw4ZNzvJlvy/mv+ahyUfEJQeb4GIFZr/wVQz/O+xUXejp8IRDX7h+
	KHBiZ7y/ph57XXgziRqfA0O3UlOF8wEdhMjQHf0lrcUZC2KDHKdXW1T3D3o/1dTftiocYrKGRhCUl
	p0ohtSr96JTQorLAcDUAusiefKSXaSu4inGtw2NpDvdt1ruHT3IBA8vWxjSKGMlg/u3Jxxg96+1Ri
	rawiQo4yVOlp6iJlc1iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkq5J-0004k3-P1; Tue, 09 Jul 2019 13:23:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkq3I-0003Ew-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:21:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA72628;
 Tue,  9 Jul 2019 06:20:59 -0700 (PDT)
Received: from [10.1.196.217] (unassigned-hostname.cambridge.arm.com
 [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB0453F738;
 Tue,  9 Jul 2019 06:20:58 -0700 (PDT)
Subject: Re: [PATCH 43/59] KVM: arm64: nv: Trap and emulate AT instructions
 from virtual EL2
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-44-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <4cd8b175-7676-0d3b-2853-365a346e1302@arm.com>
Date: Tue, 9 Jul 2019 14:20:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-44-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_062100_684039_16E617AA 
X-CRM114-Status: GOOD (  37.13  )
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/21/19 10:38 AM, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
>
> When supporting nested virtualization a guest hypervisor executing AT
> instructions must be trapped and emulated by the host hypervisor,
> because untrapped AT instructions operating on S1E1 will use the wrong
> translation regieme (the one used to emulate virtual EL2 in EL1 instead

I think that should be "regime".

> of virtual EL1) and AT instructions operating on S12 will not work from
> EL1.
>
> This patch does several things.
>
> 1. List and define all AT system instructions to emulate and document
> the emulation design.
>
> 2. Implement AT instruction handling logic in EL2. This will be used to
> emulate AT instructions executed in the virtual EL2.
>
> AT instruction emulation works by loading the proper processor
> context, which depends on the trapped instruction and the virtual
> HCR_EL2, to the EL1 virtual memory control registers and executing AT
> instructions. Note that ctxt->hw_sys_regs is expected to have the
> proper processor context before calling the handling
> function(__kvm_at_insn) implemented in this patch.
>
> 4. Emulate AT S1E[01] instructions by issuing the same instructions in
> EL2. We set the physical EL1 registers, NV and NV1 bits as described in
> the AT instruction emulation overview.

Is item number 3 missing, or is that the result of an unfortunate typo?

>
> 5. Emulate AT A12E[01] instructions in two steps: First, do the stage-1
> translation by reusing the existing AT emulation functions.  Second, do
> the stage-2 translation by walking the guest hypervisor's stage-2 page
> table in software. Record the translation result to PAR_EL1.
>
> 6. Emulate AT S1E2 instructions by issuing the corresponding S1E1
> instructions in EL2. We set the physical EL1 registers and the HCR_EL2
> register as described in the AT instruction emulation overview.
>
> 7. Forward system instruction traps to the virtual EL2 if the corresponding
> virtual AT bit is set in the virtual HCR_EL2.
>
>   [ Much logic above has been reworked by Marc Zyngier ]
>
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> ---
>  arch/arm64/include/asm/kvm_arm.h |   2 +
>  arch/arm64/include/asm/kvm_asm.h |   2 +
>  arch/arm64/include/asm/sysreg.h  |  17 +++
>  arch/arm64/kvm/hyp/Makefile      |   1 +
>  arch/arm64/kvm/hyp/at.c          | 217 +++++++++++++++++++++++++++++++
>  arch/arm64/kvm/hyp/switch.c      |  13 +-
>  arch/arm64/kvm/sys_regs.c        | 202 +++++++++++++++++++++++++++-
>  7 files changed, 450 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm64/kvm/hyp/at.c
>
> diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
> index 1e4dbe0b1c8e..9903f10f6343 100644
> --- a/arch/arm64/include/asm/kvm_arm.h
> +++ b/arch/arm64/include/asm/kvm_arm.h
> @@ -24,6 +24,7 @@
>  
>  /* Hyp Configuration Register (HCR) bits */
>  #define HCR_FWB		(UL(1) << 46)
> +#define HCR_AT		(UL(1) << 44)
>  #define HCR_NV1		(UL(1) << 43)
>  #define HCR_NV		(UL(1) << 42)
>  #define HCR_API		(UL(1) << 41)
> @@ -119,6 +120,7 @@
>  #define VTCR_EL2_TG0_16K	TCR_TG0_16K
>  #define VTCR_EL2_TG0_64K	TCR_TG0_64K
>  #define VTCR_EL2_SH0_MASK	TCR_SH0_MASK
> +#define VTCR_EL2_SH0_SHIFT	TCR_SH0_SHIFT
>  #define VTCR_EL2_SH0_INNER	TCR_SH0_INNER
>  #define VTCR_EL2_ORGN0_MASK	TCR_ORGN0_MASK
>  #define VTCR_EL2_ORGN0_WBWA	TCR_ORGN0_WBWA
> diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
> index 5e956c2cd9b4..1cfa4d2cf772 100644
> --- a/arch/arm64/include/asm/kvm_asm.h
> +++ b/arch/arm64/include/asm/kvm_asm.h
> @@ -69,6 +69,8 @@ extern void __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu);
>  extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
>  
>  extern void __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high);
> +extern void __kvm_at_s1e01(struct kvm_vcpu *vcpu, u32 op, u64 vaddr);
> +extern void __kvm_at_s1e2(struct kvm_vcpu *vcpu, u32 op, u64 vaddr);
>  
>  extern int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu);
>  
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 8b95f2c42c3d..b3a8d21c07b3 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -536,6 +536,23 @@
>  
>  #define SYS_SP_EL2			sys_reg(3, 6,  4, 1, 0)
>  
> +/* AT instructions */
> +#define AT_Op0 1
> +#define AT_CRn 7
> +
> +#define OP_AT_S1E1R	sys_insn(AT_Op0, 0, AT_CRn, 8, 0)
> +#define OP_AT_S1E1W	sys_insn(AT_Op0, 0, AT_CRn, 8, 1)
> +#define OP_AT_S1E0R	sys_insn(AT_Op0, 0, AT_CRn, 8, 2)
> +#define OP_AT_S1E0W	sys_insn(AT_Op0, 0, AT_CRn, 8, 3)
> +#define OP_AT_S1E1RP	sys_insn(AT_Op0, 0, AT_CRn, 9, 0)
> +#define OP_AT_S1E1WP	sys_insn(AT_Op0, 0, AT_CRn, 9, 1)
> +#define OP_AT_S1E2R	sys_insn(AT_Op0, 4, AT_CRn, 8, 0)
> +#define OP_AT_S1E2W	sys_insn(AT_Op0, 4, AT_CRn, 8, 1)
> +#define OP_AT_S12E1R	sys_insn(AT_Op0, 4, AT_CRn, 8, 4)
> +#define OP_AT_S12E1W	sys_insn(AT_Op0, 4, AT_CRn, 8, 5)
> +#define OP_AT_S12E0R	sys_insn(AT_Op0, 4, AT_CRn, 8, 6)
> +#define OP_AT_S12E0W	sys_insn(AT_Op0, 4, AT_CRn, 8, 7)
> +
>  /* Common SCTLR_ELx flags. */
>  #define SCTLR_ELx_DSSBS	(_BITUL(44))
>  #define SCTLR_ELx_ENIA	(_BITUL(31))
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..f7af51647079 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_KVM_ARM_HOST) += entry.o
>  obj-$(CONFIG_KVM_ARM_HOST) += switch.o
>  obj-$(CONFIG_KVM_ARM_HOST) += fpsimd.o
>  obj-$(CONFIG_KVM_ARM_HOST) += tlb.o
> +obj-$(CONFIG_KVM_ARM_HOST) += at.o
>  obj-$(CONFIG_KVM_ARM_HOST) += hyp-entry.o
>  
>  # KVM code is run at a different exception code with a different map, so
> diff --git a/arch/arm64/kvm/hyp/at.c b/arch/arm64/kvm/hyp/at.c
> new file mode 100644
> index 000000000000..0e938b6f8e43
> --- /dev/null
> +++ b/arch/arm64/kvm/hyp/at.c
> @@ -0,0 +1,217 @@
> +/*
> + * Copyright (C) 2017 - Linaro Ltd
> + * Author: Jintack Lim <jintack.lim@linaro.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <asm/kvm_hyp.h>
> +#include <asm/kvm_mmu.h>
> +
> +struct mmu_config {
> +	u64	ttbr0;
> +	u64	ttbr1;
> +	u64	tcr;
> +	u64	sctlr;
> +	u64	vttbr;
> +	u64	vtcr;
> +	u64	hcr;
> +};
> +
> +static void __mmu_config_save(struct mmu_config *config)
> +{
> +	config->ttbr0	= read_sysreg_el1(SYS_TTBR0);
> +	config->ttbr1	= read_sysreg_el1(SYS_TTBR1);
> +	config->tcr	= read_sysreg_el1(SYS_TCR);
> +	config->sctlr	= read_sysreg_el1(SYS_SCTLR);
> +	config->vttbr	= read_sysreg(vttbr_el2);
> +	config->vtcr	= read_sysreg(vtcr_el2);
> +	config->hcr	= read_sysreg(hcr_el2);
> +}
> +
> +static void __mmu_config_restore(struct mmu_config *config)
> +{
> +	write_sysreg_el1(config->ttbr0,	SYS_TTBR0);
> +	write_sysreg_el1(config->ttbr1,	SYS_TTBR1);
> +	write_sysreg_el1(config->tcr,	SYS_TCR);
> +	write_sysreg_el1(config->sctlr,	SYS_SCTLR);
> +	write_sysreg(config->vttbr,	vttbr_el2);
> +	write_sysreg(config->vtcr,	vttbr_el2);
> +	write_sysreg(config->hcr,	hcr_el2);
> +
> +	isb();
> +}
> +
> +void __kvm_at_s1e01(struct kvm_vcpu *vcpu, u32 op, u64 vaddr)
> +{
> +	struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
> +	struct mmu_config config;
> +	struct kvm_s2_mmu *mmu;
> +
> +	/*
> +	 * We can only get here when trapping from vEL2, so we're
> +	 * translating a guest guest VA.
> +	 *
> +	 * FIXME: Obtaining the S2 MMU for a a guest guest is horribly
> +	 * racy, and we may not find it.
> +	 */
> +	spin_lock(&vcpu->kvm->mmu_lock);
> +
> +	mmu = lookup_s2_mmu(vcpu->kvm,
> +			    vcpu_read_sys_reg(vcpu, VTTBR_EL2),
> +			    vcpu_read_sys_reg(vcpu, HCR_EL2));
From ARM DDI 0487D.b, the description for AT S1E1R (page C5-467, it's the same
for the other at s1e{0,1}* instructions):

[..] Performs stage 1 address translation, with permisions as if reading from
the given virtual address from EL1, or from EL2 [..], using the following
translation regime:
- If HCR_EL2.{E2H,TGE} is {1, 1}, the EL2&0 translation regime, accessed from EL2.

If the guest is VHE, I don't think there's any need to switch mmus. The AT
instruction will use the physical EL1&0 translation regime already on the
hardware (assuming host HCR_EL2.TGE == 0), which is the vEL2&0 regime for the
guest hypervisor.

> +
> +	if (WARN_ON(!mmu))
> +		goto out;
> +
> +	/* We've trapped, so everything is live on the CPU. */
> +	__mmu_config_save(&config);
> +
> +	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
> +	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
> +	write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
> +	write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
> +	write_sysreg(kvm_get_vttbr(mmu),		vttbr_el2);
> +	/* FIXME: write S2 MMU VTCR_EL2 */
> +	write_sysreg(config.hcr & ~HCR_TGE,		hcr_el2);
> +
> +	isb();
> +
> +	switch (op) {
> +	case OP_AT_S1E1R:
> +	case OP_AT_S1E1RP:
> +		asm volatile("at s1e1r, %0" : : "r" (vaddr));
> +		break;
> +	case OP_AT_S1E1W:
> +	case OP_AT_S1E1WP:
> +		asm volatile("at s1e1w, %0" : : "r" (vaddr));
> +		break;
> +	case OP_AT_S1E0R:
> +		asm volatile("at s1e0r, %0" : : "r" (vaddr));
> +		break;
> +	case OP_AT_S1E0W:
> +		asm volatile("at s1e0w, %0" : : "r" (vaddr));
> +		break;
> +	default:
> +		WARN_ON(1);
> +		break;
> +	}
> +
> +	isb();
> +
> +	ctxt->sys_regs[PAR_EL1] = read_sysreg(par_el1);
> +
> +	/*
> +	 * Failed? let's leave the building now.
> +	 *
> +	 * FIXME: how about a failed translation because the shadow S2
> +	 * wasn't populated? We may need to perform a SW PTW,
> +	 * populating our shadow S2 and retry the instruction.
> +	 */

I think this can also fail if the L2 IPA is not in the L1 guest stage 2 tables
(and therefore not in the shadow stage 2 tables). At that point we should stop
and fail the AT instruction emulation.

Thanks,
Alex
> +	if (ctxt->sys_regs[PAR_EL1] & 1)
> +		goto nopan;
> +
> +	/* No PAN? No problem. */
> +	if (!(*vcpu_cpsr(vcpu) & PSR_PAN_BIT))
> +		goto nopan;
> +
> +	/*
> +	 * For PAN-involved AT operations, perform the same
> +	 * translation, using EL0 this time.
> +	 */
> +	switch (op) {
> +	case OP_AT_S1E1RP:
> +		asm volatile("at s1e0r, %0" : : "r" (vaddr));
> +		break;
> +	case OP_AT_S1E1WP:
> +		asm volatile("at s1e0w, %0" : : "r" (vaddr));
> +		break;
> +	default:
> +		goto nopan;
> +	}
> +
> +	/*
> +	 * If the EL0 translation has succeeded, we need to pretend
> +	 * the AT operation has failed, as the PAN setting forbids
> +	 * such a translation.
> +	 *
> +	 * FIXME: we hardcode a Level-3 permission fault. We really
> +	 * should return the real fault level.
> +	 */
> +	if (!(read_sysreg(par_el1) & 1))
> +		ctxt->sys_regs[PAR_EL1] = 0x1f;
> +
> +nopan:
> +	__mmu_config_restore(&config);
> +
> +out:
> +	spin_unlock(&vcpu->kvm->mmu_lock);
> +}
> +
> +void __kvm_at_s1e2(struct kvm_vcpu *vcpu, u32 op, u64 vaddr)
> +{
> +	struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
> +	struct mmu_config config;
> +	struct kvm_s2_mmu *mmu;
> +	u64 val;
> +
> +	spin_lock(&vcpu->kvm->mmu_lock);
> +
> +	mmu = &vcpu->kvm->arch.mmu;
> +
> +	/* We've trapped, so everything is live on the CPU. */
> +	__mmu_config_save(&config);
> +
> +	if (vcpu_el2_e2h_is_set(vcpu)) {
> +		write_sysreg_el1(ctxt->sys_regs[TTBR0_EL2],	SYS_TTBR0);
> +		write_sysreg_el1(ctxt->sys_regs[TTBR1_EL2],	SYS_TTBR1);
> +		write_sysreg_el1(ctxt->sys_regs[TCR_EL2],	SYS_TCR);
> +		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL2],	SYS_SCTLR);
> +
> +		val = config.hcr;
> +	} else {
> +		write_sysreg_el1(ctxt->sys_regs[TTBR0_EL2],	SYS_TTBR0);
> +		write_sysreg_el1(translate_tcr(ctxt->sys_regs[TCR_EL2]),
> +				 SYS_TCR);
> +		write_sysreg_el1(translate_sctlr(ctxt->sys_regs[SCTLR_EL2]),
> +				 SYS_SCTLR);
> +
> +		val = config.hcr | HCR_NV | HCR_NV1;
> +	}
> +
> +	write_sysreg(kvm_get_vttbr(mmu),		vttbr_el2);
> +	/* FIXME: write S2 MMU VTCR_EL2 */
> +	write_sysreg(val & ~HCR_TGE,			hcr_el2);
> +
> +	isb();
> +
> +	switch (op) {
> +	case OP_AT_S1E2R:
> +		asm volatile("at s1e1r, %0" : : "r" (vaddr));
> +		break;
> +	case OP_AT_S1E2W:
> +		asm volatile("at s1e1w, %0" : : "r" (vaddr));
> +		break;
> +	default:
> +		WARN_ON(1);
> +		break;
> +	}
> +
> +	isb();
> +
> +	/* FIXME: handle failed translation due to shadow S2 */
> +	ctxt->sys_regs[PAR_EL1] = read_sysreg(par_el1);
> +
> +	__mmu_config_restore(&config);
> +	spin_unlock(&vcpu->kvm->mmu_lock);
> +}
> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index fb479c71b521..bd9fc0dae8e8 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -143,9 +143,10 @@ static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
>  		if (!vcpu_el2_e2h_is_set(vcpu)) {
>  			/*
>  			 * For a guest hypervisor on v8.0, trap and emulate
> -			 * the EL1 virtual memory control register accesses.
> +			 * the EL1 virtual memory control register accesses
> +			 * as well as the AT S1 operations.
>  			 */
> -			hcr |= HCR_TVM | HCR_TRVM | HCR_NV1;
> +			hcr |= HCR_TVM | HCR_TRVM | HCR_AT | HCR_NV1;
>  		} else {
>  			/*
>  			 * For a guest hypervisor on v8.1 (VHE), allow to
> @@ -168,6 +169,14 @@ static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
>  			hcr &= ~HCR_TVM;
>  
>  			hcr |= vhcr_el2 & (HCR_TVM | HCR_TRVM);
> +
> +			/*
> +			 * If we're using the EL1 translation regime
> +			 * (TGE clear, then ensure that AT S1 ops are
> +			 * trapped too.
> +			 */
> +			if (!vcpu_el2_tge_is_set(vcpu))
> +				hcr |= HCR_AT;
>  		}
>  	}
>  
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 0d5b7a7c76de..102419b837e8 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1656,6 +1656,11 @@ static bool access_sp_el1(struct kvm_vcpu *vcpu,
>  	return true;
>  }
>  
> +static bool forward_at_traps(struct kvm_vcpu *vcpu)
> +{
> +	return forward_traps(vcpu, HCR_AT);
> +}
> +
>  /* This function is to support the recursive nested virtualization */
>  static bool forward_nv1_traps(struct kvm_vcpu *vcpu, struct sys_reg_params *p)
>  {
> @@ -2135,12 +2140,205 @@ static const struct sys_reg_desc sys_reg_descs[] = {
>  	{ SYS_DESC(SYS_SP_EL2), NULL, reset_unknown, SP_EL2 },
>  };
>  
> -#define SYS_INSN_TO_DESC(insn, access_fn, forward_fn)	\
> -	{ SYS_DESC((insn)), (access_fn), NULL, 0, 0, NULL, NULL, (forward_fn) }
> +static bool handle_s1e01(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> +			 const struct sys_reg_desc *r)
> +{
> +	int sys_encoding = sys_insn(p->Op0, p->Op1, p->CRn, p->CRm, p->Op2);
> +
> +	__kvm_at_s1e01(vcpu, sys_encoding, p->regval);
> +
> +	return true;
> +}
> +
> +static bool handle_s1e2(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> +			const struct sys_reg_desc *r)
> +{
> +	int sys_encoding = sys_insn(p->Op0, p->Op1, p->CRn, p->CRm, p->Op2);
> +
> +	__kvm_at_s1e2(vcpu, sys_encoding, p->regval);
> +
> +	return true;
> +}
> +
> +static u64 setup_par_aborted(u32 esr)
> +{
> +	u64 par = 0;
> +
> +	/* S [9]: fault in the stage 2 translation */
> +	par |= (1 << 9);
> +	/* FST [6:1]: Fault status code  */
> +	par |= (esr << 1);
> +	/* F [0]: translation is aborted */
> +	par |= 1;
> +
> +	return par;
> +}
> +
> +static u64 setup_par_completed(struct kvm_vcpu *vcpu, struct kvm_s2_trans *out)
> +{
> +	u64 par, vtcr_sh0;
> +
> +	/* F [0]: Translation is completed successfully */
> +	par = 0;
> +	/* ATTR [63:56] */
> +	par |= out->upper_attr;
> +	/* PA [47:12] */
> +	par |= out->output & GENMASK_ULL(11, 0);
> +	/* RES1 [11] */
> +	par |= (1UL << 11);
> +	/* SH [8:7]: Shareability attribute */
> +	vtcr_sh0 = vcpu_read_sys_reg(vcpu, VTCR_EL2) & VTCR_EL2_SH0_MASK;
> +	par |= (vtcr_sh0 >> VTCR_EL2_SH0_SHIFT) << 7;
> +
> +	return par;
> +}
> +
> +static bool handle_s12(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> +		       const struct sys_reg_desc *r, bool write)
> +{
> +	u64 par, va;
> +	u32 esr;
> +	phys_addr_t ipa;
> +	struct kvm_s2_trans out;
> +	int ret;
> +
> +	/* Do the stage-1 translation */
> +	handle_s1e01(vcpu, p, r);
> +	par = vcpu_read_sys_reg(vcpu, PAR_EL1);
> +	if (par & 1) {
> +		/* The stage-1 translation aborted */
> +		return true;
> +	}
> +
> +	/* Do the stage-2 translation */
> +	va = p->regval;
> +	ipa = (par & GENMASK_ULL(47, 12)) | (va & GENMASK_ULL(11, 0));
> +	out.esr = 0;
> +	ret = kvm_walk_nested_s2(vcpu, ipa, &out);
> +	if (ret < 0)
> +		return false;
> +
> +	/* Check if the stage-2 PTW is aborted */
> +	if (out.esr) {
> +		esr = out.esr;
> +		goto s2_trans_abort;
> +	}
> +
> +	/* Check the access permission */
> +	if ((!write && !out.readable) || (write && !out.writable)) {
> +		esr = ESR_ELx_FSC_PERM;
> +		esr |= out.level & 0x3;
> +		goto s2_trans_abort;
> +	}
> +
> +	vcpu_write_sys_reg(vcpu, setup_par_completed(vcpu, &out), PAR_EL1);
> +	return true;
> +
> +s2_trans_abort:
> +	vcpu_write_sys_reg(vcpu, setup_par_aborted(esr), PAR_EL1);
> +	return true;
> +}
> +
> +static bool handle_s12r(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> +			const struct sys_reg_desc *r)
> +{
> +	return handle_s12(vcpu, p, r, false);
> +}
> +
> +static bool handle_s12w(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> +			const struct sys_reg_desc *r)
> +{
> +	return handle_s12(vcpu, p, r, true);
> +}
> +
> +/*
> + * AT instruction emulation
> + *
> + * We emulate AT instructions executed in the virtual EL2.
> + * Basic strategy for the stage-1 translation emulation is to load proper
> + * context, which depends on the trapped instruction and the virtual HCR_EL2,
> + * to the EL1 virtual memory control registers and execute S1E[01] instructions
> + * in EL2. See below for more detail.
> + *
> + * For the stage-2 translation, which is necessary for S12E[01] emulation,
> + * we walk the guest hypervisor's stage-2 page table in software.
> + *
> + * The stage-1 translation emulations can be divided into two groups depending
> + * on the translation regime.
> + *
> + * 1. EL2 AT instructions: S1E2x
> + * +-----------------------------------------------------------------------+
> + * |                             |         Setting for the emulation       |
> + * | Virtual HCR_EL2.E2H on trap |-----------------------------------------+
> + * |                             | Phys EL1 regs | Phys NV, NV1 | Phys TGE |
> + * |-----------------------------------------------------------------------|
> + * |             0               |     vEL2      |    (1, 1)    |    0     |
> + * |             1               |     vEL2      |    (0, 0)    |    0     |
> + * +-----------------------------------------------------------------------+
> + *
> + * We emulate the EL2 AT instructions by loading virtual EL2 context
> + * to the EL1 virtual memory control registers and executing corresponding
> + * EL1 AT instructions.
> + *
> + * We set physical NV and NV1 bits to use EL2 page table format for non-VHE
> + * guest hypervisor (i.e. HCR_EL2.E2H == 0). As a VHE guest hypervisor uses the
> + * EL1 page table format, we don't set those bits.
> + *
> + * We should clear physical TGE bit not to use the EL2 translation regime when
> + * the host uses the VHE feature.
> + *
> + *
> + * 2. EL0/EL1 AT instructions: S1E[01]x, S12E1x
> + * +----------------------------------------------------------------------+
> + * |   Virtual HCR_EL2 on trap  |        Setting for the emulation        |
> + * |----------------------------------------------------------------------+
> + * | (vE2H, vTGE) | (vNV, vNV1) | Phys EL1 regs | Phys NV, NV1 | Phys TGE |
> + * |----------------------------------------------------------------------|
> + * |    (0, 0)*   |   (0, 0)    |      vEL1     |    (0, 0)    |    0     |
> + * |    (0, 0)    |   (1, 1)    |      vEL1     |    (1, 1)    |    0     |
> + * |    (1, 1)    |   (0, 0)    |      vEL2     |    (0, 0)    |    0     |
> + * |    (1, 1)    |   (1, 1)    |      vEL2     |    (1, 1)    |    0     |
> + * +----------------------------------------------------------------------+
> + *
> + * *For (0, 0) in the 'Virtual HCR_EL2 on trap' column, it actually means
> + *  (1, 1). Keep them (0, 0) just for the readability.
> + *
> + * We set physical EL1 virtual memory control registers depending on
> + * (vE2H, vTGE) pair. When the pair is (0, 0) where AT instructions are
> + * supposed to use EL0/EL1 translation regime, we load the EL1 registers with
> + * the virtual EL1 registers (i.e. EL1 registers from the guest hypervisor's
> + * point of view). When the pair is (1, 1), however, AT instructions are defined
> + * to apply EL2 translation regime. To emulate this behavior, we load the EL1
> + * registers with the virtual EL2 context. (i.e the shadow registers)
> + *
> + * We respect the virtual NV and NV1 bit for the emulation. When those bits are
> + * set, it means that a guest hypervisor would like to use EL2 page table format
> + * for the EL1 translation regime. We emulate this by setting the physical
> + * NV and NV1 bits.
> + */
> +
> +#define SYS_INSN_TO_DESC(insn, access_fn, forward_fn)			\
> +	{ SYS_DESC(OP_##insn), (access_fn), NULL, 0, 0,			\
> +	  NULL, NULL, (forward_fn) }
>  static struct sys_reg_desc sys_insn_descs[] = {
>  	{ SYS_DESC(SYS_DC_ISW), access_dcsw },
> +
> +	SYS_INSN_TO_DESC(AT_S1E1R, handle_s1e01, forward_at_traps),
> +	SYS_INSN_TO_DESC(AT_S1E1W, handle_s1e01, forward_at_traps),
> +	SYS_INSN_TO_DESC(AT_S1E0R, handle_s1e01, forward_at_traps),
> +	SYS_INSN_TO_DESC(AT_S1E0W, handle_s1e01, forward_at_traps),
> +	SYS_INSN_TO_DESC(AT_S1E1RP, handle_s1e01, forward_at_traps),
> +	SYS_INSN_TO_DESC(AT_S1E1WP, handle_s1e01, forward_at_traps),
> +
>  	{ SYS_DESC(SYS_DC_CSW), access_dcsw },
>  	{ SYS_DESC(SYS_DC_CISW), access_dcsw },
> +
> +	SYS_INSN_TO_DESC(AT_S1E2R, handle_s1e2, forward_nv_traps),
> +	SYS_INSN_TO_DESC(AT_S1E2W, handle_s1e2, forward_nv_traps),
> +	SYS_INSN_TO_DESC(AT_S12E1R, handle_s12r, forward_nv_traps),
> +	SYS_INSN_TO_DESC(AT_S12E1W, handle_s12w, forward_nv_traps),
> +	SYS_INSN_TO_DESC(AT_S12E0R, handle_s12r, forward_nv_traps),
> +	SYS_INSN_TO_DESC(AT_S12E0W, handle_s12w, forward_nv_traps),
>  };
>  
>  static bool trap_dbgidr(struct kvm_vcpu *vcpu,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
