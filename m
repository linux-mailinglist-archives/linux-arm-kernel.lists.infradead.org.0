Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A226B19596B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:00:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OEXxsGLM+c/XTXU1ftRlw3VwPjVZg7U1ivpBNIxEco4=; b=nvIXQ+sCaznSUk77V/cgd46+g
	LOgj7QkHkqwmz8pNZsUL7FjOidp8/mstYQ9DWvHbGK6IpYPxBo+EQPcCCLAYjeC8q7cJkGikr6m4q
	yOm1CtKDHOgszDOq7un4V67jiVL7Mijzdatqpg3xkQrV7+FYjfgrNbcHwA8CWixnpCmZjl1GUui0a
	LHEJ0Rbgo1sp+CQEF58CmacpfEFdRf+/JxMztHVUqiNEBbPsQEA7EYUKM53eTf0xXvDQsZaWqObJH
	crjCDrzntFxp8ZX2BwRk9juo39sHhvL4nkW/7f6z959x9qMkdUQR1BzhHN8q9uQml9S2vF8mBHDZ9
	BomFR9jrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHqT2-0000vg-IO; Fri, 27 Mar 2020 15:00:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHqSg-0000uf-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 14:59:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BD771FB;
 Fri, 27 Mar 2020 07:59:51 -0700 (PDT)
Received: from [10.57.57.91] (unknown [10.57.57.91])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 286153F71F;
 Fri, 27 Mar 2020 07:59:49 -0700 (PDT)
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
To: Andrew Scull <ascull@google.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>
References: <20200327143941.195626-1-ascull@google.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
Date: Fri, 27 Mar 2020 14:59:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200327143941.195626-1-ascull@google.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_075954_985941_16134966 
X-CRM114-Status: GOOD (  28.03  )
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
Cc: "qwandor@google.com" <qwandor@google.com>,
 "qperret@google.com" <qperret@google.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Will Deacon <will@kernel.org>,
 "wedsonaf@google.com" <wedsonaf@google.com>, James Morse <James.Morse@arm.com>,
 "dbrazdil@google.com" <dbrazdil@google.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "tabba@google.com" <tabba@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/03/2020 14:39, Andrew Scull wrote:
> Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
> allocated as a result of a speculative AT instruction. In order to
> avoid mandating VHE on certain affected CPUs, apply the workaround to
> both the nVHE and the VHE case for all affected CPUs.
> 
> Signed-off-by: Andrew Scull <ascull@google.com>
> CC: Marc Zyngier <maz@kernel.org>
> CC: James Morse <james.morse@arm.com>
> CC: Suzuki K Poulose <suzuki.poulose@arm.com>
> CC: Will Deacon <will@kernel.org>
> CC: Steven Price <steven.price@arm.com>
> 
> ---
> 
> I'm not able to test the workarounds properly for the affected CPUs but
> have built and booted under qemu configs with and without VHE as well as
> the workaround being enabled and disabled.
> 
> As there exist work arounds for nVHE and VHE, it doesn't appear to be a
> technical limitation that meant VHE was being mandated. Please correct
> me if this understanding is inaccurate. Thanks!

I proposed something similar a while ago[1], but Marc was concerned 
about the microarch detail[2] and hence I split the workaround into 
VHE/non-VHE.

That said I'm not saying this is necessarily wrong, just that we'd need 
some more information on whether the non-VHE workaround is suitable for 
the CPUs we're currently forcing VHE on.

Steve

[1] 
https://lore.kernel.org/kvmarm/20191113114118.2427-2-steven.price@arm.com/

[2] 
https://lore.kernel.org/kvmarm/566ecd45c8bf07b3cb5d75a10c9413a8@www.loen.fr/

> ---
>   arch/arm64/Kconfig                | 39 ++++++++++++++-----------------
>   arch/arm64/include/asm/cpucaps.h  |  9 ++++---
>   arch/arm64/include/asm/kvm_host.h |  4 ----
>   arch/arm64/include/asm/kvm_hyp.h  |  2 +-
>   arch/arm64/kernel/cpu_errata.c    | 25 +++++++++-----------
>   arch/arm64/kvm/hyp/switch.c       |  6 ++---
>   arch/arm64/kvm/hyp/sysreg-sr.c    |  4 ++--
>   arch/arm64/kvm/hyp/tlb.c          |  8 +++----
>   8 files changed, 43 insertions(+), 54 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 0b30e884e088..7492b929cb12 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -521,13 +521,13 @@ config ARM64_ERRATUM_1418040
>   
>   	  If unsure, say Y.
>   
> -config ARM64_WORKAROUND_SPECULATIVE_AT_VHE
> +config ARM64_WORKAROUND_SPECULATIVE_AT
>   	bool
>   
>   config ARM64_ERRATUM_1165522
> -	bool "Cortex-A76: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
> +	bool "Cortex-A76: 1165522: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
>   	default y
> -	select ARM64_WORKAROUND_SPECULATIVE_AT_VHE
> +	select ARM64_WORKAROUND_SPECULATIVE_AT
>   	help
>   	  This option adds a workaround for ARM Cortex-A76 erratum 1165522.
>   
> @@ -537,10 +537,23 @@ config ARM64_ERRATUM_1165522
>   
>   	  If unsure, say Y.
>   
> +config ARM64_ERRATUM_1319367
> +	bool "Cortex-A57/A72: 1319537: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
> +	default y
> +	select ARM64_WORKAROUND_SPECULATIVE_AT
> +	help
> +	  This option adds work arounds for ARM Cortex-A57 erratum 1319537
> +	  and A72 erratum 1319367
> +
> +	  Cortex-A57 and A72 cores could end-up with corrupted TLBs by
> +	  speculating an AT instruction during a guest context switch.
> +
> +	  If unsure, say Y.
> +
>   config ARM64_ERRATUM_1530923
> -	bool "Cortex-A55: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
> +	bool "Cortex-A55: 1530923: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
>   	default y
> -	select ARM64_WORKAROUND_SPECULATIVE_AT_VHE
> +	select ARM64_WORKAROUND_SPECULATIVE_AT
>   	help
>   	  This option adds a workaround for ARM Cortex-A55 erratum 1530923.
>   
> @@ -566,22 +579,6 @@ config ARM64_ERRATUM_1286807
>   	  invalidated has been observed by other observers. The
>   	  workaround repeats the TLBI+DSB operation.
>   
> -config ARM64_WORKAROUND_SPECULATIVE_AT_NVHE
> -	bool
> -
> -config ARM64_ERRATUM_1319367
> -	bool "Cortex-A57/A72: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
> -	default y
> -	select ARM64_WORKAROUND_SPECULATIVE_AT_NVHE
> -	help
> -	  This option adds work arounds for ARM Cortex-A57 erratum 1319537
> -	  and A72 erratum 1319367
> -
> -	  Cortex-A57 and A72 cores could end-up with corrupted TLBs by
> -	  speculating an AT instruction during a guest context switch.
> -
> -	  If unsure, say Y.
> -
>   config ARM64_ERRATUM_1463225
>   	bool "Cortex-A76: Software Step might prevent interrupt recognition"
>   	default y
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index 865e0253fc1e..e396e357f5b2 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -44,7 +44,7 @@
>   #define ARM64_SSBS				34
>   #define ARM64_WORKAROUND_1418040		35
>   #define ARM64_HAS_SB				36
> -#define ARM64_WORKAROUND_SPECULATIVE_AT_VHE	37
> +#define ARM64_WORKAROUND_SPECULATIVE_AT	37
>   #define ARM64_HAS_ADDRESS_AUTH_ARCH		38
>   #define ARM64_HAS_ADDRESS_AUTH_IMP_DEF		39
>   #define ARM64_HAS_GENERIC_AUTH_ARCH		40
> @@ -55,10 +55,9 @@
>   #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
>   #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
>   #define ARM64_WORKAROUND_1542419		47
> -#define ARM64_WORKAROUND_SPECULATIVE_AT_NVHE	48
> -#define ARM64_HAS_E0PD				49
> -#define ARM64_HAS_RNG				50
> +#define ARM64_HAS_E0PD				48
> +#define ARM64_HAS_RNG				49
>   
> -#define ARM64_NCAPS				51
> +#define ARM64_NCAPS				50
>   
>   #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 57fd46acd058..4c8acbb949ce 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -572,10 +572,6 @@ static inline bool kvm_arch_requires_vhe(void)
>   	if (system_supports_sve())
>   		return true;
>   
> -	/* Some implementations have defects that confine them to VHE */
> -	if (cpus_have_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE))
> -		return true;
> -
>   	return false;
>   }
>   
> diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
> index fe57f60f06a8..238d2e049694 100644
> --- a/arch/arm64/include/asm/kvm_hyp.h
> +++ b/arch/arm64/include/asm/kvm_hyp.h
> @@ -102,7 +102,7 @@ static __always_inline void __hyp_text __load_guest_stage2(struct kvm *kvm)
>   	 * above before we can switch to the EL1/EL0 translation regime used by
>   	 * the guest.
>   	 */
> -	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
> +	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT));
>   }
>   
>   #endif /* __ARM64_KVM_HYP_H__ */
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index 703ad0a84f99..fe3bbdb82c70 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -637,7 +637,7 @@ has_neoverse_n1_erratum_1542419(const struct arm64_cpu_capabilities *entry,
>   	return is_midr_in_range(midr, &range) && has_dic;
>   }
>   
> -#if defined(CONFIG_HARDEN_EL2_VECTORS) || defined(CONFIG_ARM64_ERRATUM_1319367)
> +#if defined(CONFIG_HARDEN_EL2_VECTORS)
>   
>   static const struct midr_range ca57_a72[] = {
>   	MIDR_ALL_VERSIONS(MIDR_CORTEX_A57),
> @@ -759,12 +759,16 @@ static const struct arm64_cpu_capabilities erratum_843419_list[] = {
>   };
>   #endif
>   
> -#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
> -static const struct midr_range erratum_speculative_at_vhe_list[] = {
> +#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT
> +static const struct midr_range erratum_speculative_at_list[] = {
>   #ifdef CONFIG_ARM64_ERRATUM_1165522
>   	/* Cortex A76 r0p0 to r2p0 */
>   	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
>   #endif
> +#ifdef CONFIG_ARM64_ERRATUM_1319367
> +	MIDR_ALL_VERSIONS(MIDR_CORTEX_A57),
> +	MIDR_ALL_VERSIONS(MIDR_CORTEX_A72),
> +#endif
>   #ifdef CONFIG_ARM64_ERRATUM_1530923
>   	/* Cortex A55 r0p0 to r2p0 */
>   	MIDR_RANGE(MIDR_CORTEX_A55, 0, 0, 2, 0),
> @@ -899,11 +903,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>   		ERRATA_MIDR_RANGE_LIST(erratum_1418040_list),
>   	},
>   #endif
> -#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
> +#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT
>   	{
> -		.desc = "ARM errata 1165522, 1530923",
> -		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_VHE,
> -		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_vhe_list),
> +		.desc = "ARM errata 1165522, 1319367, 1530923",
> +		.capability = ARM64_WORKAROUND_SPECULATIVE_AT,
> +		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_list),
>   	},
>   #endif
>   #ifdef CONFIG_ARM64_ERRATUM_1463225
> @@ -936,13 +940,6 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>   		.matches = has_neoverse_n1_erratum_1542419,
>   		.cpu_enable = cpu_enable_trap_ctr_access,
>   	},
> -#endif
> -#ifdef CONFIG_ARM64_ERRATUM_1319367
> -	{
> -		.desc = "ARM erratum 1319367",
> -		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_NVHE,
> -		ERRATA_MIDR_RANGE_LIST(ca57_a72),
> -	},
>   #endif
>   	{
>   	}
> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index 925086b46136..71d4a7250421 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -127,7 +127,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
>   
>   	write_sysreg(val, cptr_el2);
>   
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>   		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
>   
>   		isb();
> @@ -170,7 +170,7 @@ static void deactivate_traps_vhe(void)
>   	 * above before we can switch to the EL2/EL0 translation regime used by
>   	 * the host.
>   	 */
> -	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
> +	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT));
>   
>   	write_sysreg(CPACR_EL1_DEFAULT, cpacr_el1);
>   	write_sysreg(vectors, vbar_el1);
> @@ -181,7 +181,7 @@ static void __hyp_text __deactivate_traps_nvhe(void)
>   {
>   	u64 mdcr_el2 = read_sysreg(mdcr_el2);
>   
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>   		u64 val;
>   
>   		/*
> diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
> index 7672a978926c..2c1436fc0830 100644
> --- a/arch/arm64/kvm/hyp/sysreg-sr.c
> +++ b/arch/arm64/kvm/hyp/sysreg-sr.c
> @@ -118,7 +118,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
>   	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
>   	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
>   
> -	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
> +	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>   		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
>   		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
>   	} else	if (!ctxt->__hyp_running_vcpu) {
> @@ -149,7 +149,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
>   	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
>   	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
>   
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT) &&
>   	    ctxt->__hyp_running_vcpu) {
>   		/*
>   		 * Must only be done for host registers, hence the context
> diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
> index 92f560e3e1aa..6b6a139ad29a 100644
> --- a/arch/arm64/kvm/hyp/tlb.c
> +++ b/arch/arm64/kvm/hyp/tlb.c
> @@ -23,7 +23,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
>   
>   	local_irq_save(cxt->flags);
>   
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>   		/*
>   		 * For CPUs that are affected by ARM errata 1165522 or 1530923,
>   		 * we cannot trust stage-1 to be in a correct state at that
> @@ -63,7 +63,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
>   static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
>   						  struct tlb_inv_context *cxt)
>   {
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>   		u64 val;
>   
>   		/*
> @@ -103,7 +103,7 @@ static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
>   	write_sysreg(HCR_HOST_VHE_FLAGS, hcr_el2);
>   	isb();
>   
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>   		/* Restore the registers to what they were */
>   		write_sysreg_el1(cxt->tcr, SYS_TCR);
>   		write_sysreg_el1(cxt->sctlr, SYS_SCTLR);
> @@ -117,7 +117,7 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
>   {
>   	write_sysreg(0, vttbr_el2);
>   
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
>   		/* Ensure write of the host VMID */
>   		isb();
>   		/* Restore the host's TCR_EL1 */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
