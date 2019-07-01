Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EEA5C096
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 17:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7VCNAJOJ6MMZspVlTGDew/c+8EptTMVIIPoaFDE1q4=; b=TQe3NuZaBoWky9
	DFLcyovGMjl87yi4Aum2MQ0wKrjy+9KL6iGrlGk5KGoErKeM45xXiROQ3fojGdqnvOv6wkwDwLj5x
	6nx0k/a6csSwC0392Ru8ylzZH1E4E4+FlUoQzCnw2s8QDTra44PsJKnu3IfYaG70j/U8dMcbXn+yW
	smKBJhl2PBdes5M3kS/bwfiMV7dhWS/J+VnpAUVXAPef2h8QNfWMJwDeHnJB2hxeONo2VEFaQM0Bk
	xt+sQU/glGUE3DBB5Qm5irn0V2kGQA6SW/gJMooszLiOOVL4jhcSdi8yyNRAeSGMbe2F7pfPdk9ip
	gzviF7Y9w8ekv4c/k/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhyVI-00057u-RK; Mon, 01 Jul 2019 15:46:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhyV6-00056x-2C
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 15:45:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6A172B;
 Mon,  1 Jul 2019 08:45:50 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68ED93F246;
 Mon,  1 Jul 2019 08:45:49 -0700 (PDT)
Subject: Re: [PATCH 43/59] KVM: arm64: nv: Trap and emulate AT instructions
 from virtual EL2
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-44-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <897185af-2f81-0373-1101-265f58b65e63@arm.com>
Date: Mon, 1 Jul 2019 16:45:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-44-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_084552_193125_399E6DAB 
X-CRM114-Status: GOOD (  30.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 21/06/2019 10:38, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
> 
> When supporting nested virtualization a guest hypervisor executing AT
> instructions must be trapped and emulated by the host hypervisor,
> because untrapped AT instructions operating on S1E1 will use the wrong
> translation regieme (the one used to emulate virtual EL2 in EL1 instead
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

Copy-paste with terrible consequences! I guess you want to write this
one to vtcr_el2.

Actually, things still seem to run with that. It looks like that
save/restore might not be completely required.

This seems to only get called in the context of handle_exit(). At that
point I think we don't need to save the *_el2 registers. vttbr_el2 and
vtcr_el2 both get set from the vcpu content in __activate_vm() before
jumping to EL1 (or vEL2), and hcr_el2 gets set in the same manner in
__activate_traps().

I think the *_el1 regs still need the save restore as we don't hit
vcpu_load() before re-running the guest after a successful handle_exit().

So unless we plan to call the "at" emulation code within
kvm_vcpu_run_vhe(), it should be safe to drop the hcr/vttbr/vtcr from
the mmu_config.

> +	write_sysreg(config->hcr,	hcr_el2);
> +
> +	isb();
> +}
> +

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
