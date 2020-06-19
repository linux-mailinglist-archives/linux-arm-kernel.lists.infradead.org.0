Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A4B2003DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cmEKeD8C4koNC5zNEpBgiFYs/36xRsCpqlhoMATOAZc=; b=YTyyGV0pE9sJgUub3eh7dusU6
	6f8u2Flkrs0LVQb4i9Ef29DE3GYtE/9CE6CHU3x+kGZTFIlzHN8+NAXU/qd6LtZEEeidTl9fvmNTj
	jyMjj/7GgGYDchWRBQNrjx5la6kE/A4lONvWzXDgRfJTPFt6W16aEqf4skIfTX7bKleE7jHBEVK3o
	NsUaI5jNT//2ypuhyXoNGSlyoIcYyRy5Q7hwXgU0loJbvAO5q2UqBw7qtIjjvoOd+7/MZcZH7DnAj
	xZjpYc0tWn1WA2k5/cpcnyfpy8F1xk0pte4ti0oY4HyPReiQTunrLBL5tb9vOFFdRgxX4mZUmuVMs
	IpBgLedZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCO6-0001Yz-TL; Fri, 19 Jun 2020 08:28:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCNs-0001Y9-Kv
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:28:26 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5F0B20885;
 Fri, 19 Jun 2020 08:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592555303;
 bh=S79gsW+74BIDc7GKPImFAz0hb5fGrtyPpGZfOrQbLK0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hHuVuKdfeVR6d0OmT1exnTrTvuB5j83aEEsfAc9qbNZm8HYDOHs1ny2bjTG21OTF7
 drbBan2JItMO8YU5EeJPxk4YR2YTNmVq8DNTvkC7QRhW/fKBfbxx4M6psKy9hmJiFJ
 mUv5cz1KDp5JRgYGUB58R2eOHG5kGM5v9tPX/Mo4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jmCNq-004Or3-83; Fri, 19 Jun 2020 09:28:22 +0100
MIME-Version: 1.0
Date: Fri, 19 Jun 2020 09:28:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH v3 07/15] arm64: kvm: Split hyp/tlb.c to VHE/nVHE
In-Reply-To: <20200618122537.9625-8-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
 <20200618122537.9625-8-dbrazdil@google.com>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <63418803e5801279f012ce8c6fc824c6@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: dbrazdil@google.com, will@kernel.org,
 catalin.marinas@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 android-kvm@google.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012824_725508_DA88DB3D 
X-CRM114-Status: GOOD (  36.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-team@android.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 android-kvm@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-18 13:25, David Brazdil wrote:
> This patch is part of a series which builds KVM's non-VHE hyp code 
> separately
> from VHE and the rest of the kernel.
> 
> tlb.c contains code for flushing the TLB, with parts shared between 
> VHE/nVHE.
> These common routines are moved into a header file tlb.h, VHE-specific 
> code
> remains in tlb.c and nVHE-specific code is moved to nvhe/tlb.c.
> 
> The header file expects its users to implement two helper functions 
> declared
> at the top of the file.
> 
> Signed-off-by: David Brazdil <dbrazdil@google.com>
> ---
>  arch/arm64/kernel/image-vars.h   |   8 +-
>  arch/arm64/kvm/hyp/nvhe/Makefile |   2 +-
>  arch/arm64/kvm/hyp/nvhe/tlb.c    |  70 +++++++++++++
>  arch/arm64/kvm/hyp/tlb.c         | 171 +++----------------------------
>  arch/arm64/kvm/hyp/tlb.h         | 134 ++++++++++++++++++++++++
>  5 files changed, 222 insertions(+), 163 deletions(-)
>  create mode 100644 arch/arm64/kvm/hyp/nvhe/tlb.c
>  create mode 100644 arch/arm64/kvm/hyp/tlb.h
> 
> diff --git a/arch/arm64/kernel/image-vars.h 
> b/arch/arm64/kernel/image-vars.h
> index 4dc969ccda9e..e8a8aa6bc7bd 100644
> --- a/arch/arm64/kernel/image-vars.h
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -63,13 +63,10 @@ __efistub__ctype		= _ctype;
> 
>  __kvm_nvhe___guest_exit = __guest_exit;
>  __kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
> +__kvm_nvhe___icache_flags = __icache_flags;

This is new, and definitely deserves a comment, together with much of 
the other kernel symbols you added. You probably want to keep these 
symbols separate from the KVM-specific symbols for ease of maintenance.

>  __kvm_nvhe___kvm_enable_ssbs = __kvm_enable_ssbs;
> -__kvm_nvhe___kvm_flush_vm_context = __kvm_flush_vm_context;
>  __kvm_nvhe___kvm_get_mdcr_el2 = __kvm_get_mdcr_el2;
>  __kvm_nvhe___kvm_timer_set_cntvoff = __kvm_timer_set_cntvoff;
> -__kvm_nvhe___kvm_tlb_flush_local_vmid = __kvm_tlb_flush_local_vmid;
> -__kvm_nvhe___kvm_tlb_flush_vmid = __kvm_tlb_flush_vmid;
> -__kvm_nvhe___kvm_tlb_flush_vmid_ipa = __kvm_tlb_flush_vmid_ipa;
>  __kvm_nvhe___kvm_vcpu_run_nvhe = __kvm_vcpu_run_nvhe;
>  __kvm_nvhe___vgic_v3_get_ich_vtr_el2 = __vgic_v3_get_ich_vtr_el2;
>  __kvm_nvhe___vgic_v3_init_lrs = __vgic_v3_init_lrs;
> @@ -79,8 +76,11 @@ __kvm_nvhe___vgic_v3_save_aprs = 
> __vgic_v3_save_aprs;
>  __kvm_nvhe___vgic_v3_write_vmcr = __vgic_v3_write_vmcr;
>  __kvm_nvhe_abort_guest_exit_end = abort_guest_exit_end;
>  __kvm_nvhe_abort_guest_exit_start = abort_guest_exit_start;
> +__kvm_nvhe_arm64_const_caps_ready = arm64_const_caps_ready;
>  __kvm_nvhe_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
>  __kvm_nvhe_arm64_ssbd_callback_required = 
> arm64_ssbd_callback_required;
> +__kvm_nvhe_cpu_hwcap_keys = cpu_hwcap_keys;
> +__kvm_nvhe_cpu_hwcaps = cpu_hwcaps;
>  __kvm_nvhe_hyp_panic = hyp_panic;
>  __kvm_nvhe_idmap_t0sz = idmap_t0sz;
>  __kvm_nvhe_kimage_voffset = kimage_voffset;
> diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile 
> b/arch/arm64/kvm/hyp/nvhe/Makefile
> index fef6f1881765..3bfc51de1679 100644
> --- a/arch/arm64/kvm/hyp/nvhe/Makefile
> +++ b/arch/arm64/kvm/hyp/nvhe/Makefile
> @@ -7,7 +7,7 @@ asflags-y := -D__KVM_NVHE_HYPERVISOR__
>  ccflags-y := -D__KVM_NVHE_HYPERVISOR__ -fno-stack-protector \
>  	     -DDISABLE_BRANCH_PROFILING $(DISABLE_STACKLEAK_PLUGIN)
> 
> -obj-y := hyp-init.o ../hyp-entry.o
> +obj-y := tlb.o hyp-init.o ../hyp-entry.o
> 
>  obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
>  extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
> diff --git a/arch/arm64/kvm/hyp/nvhe/tlb.c 
> b/arch/arm64/kvm/hyp/nvhe/tlb.c
> new file mode 100644
> index 000000000000..111c4b0a23d3
> --- /dev/null
> +++ b/arch/arm64/kvm/hyp/nvhe/tlb.c
> @@ -0,0 +1,70 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2015 - ARM Ltd
> + * Author: Marc Zyngier <marc.zyngier@arm.com>
> + */
> +
> +#include <linux/irqflags.h>

Unnecessary non !VHE.

> +
> +#include <asm/kvm_hyp.h>
> +#include <asm/kvm_mmu.h>
> +#include <asm/tlbflush.h>

At least tlbflush.h should directly be dragged by tlb.h, since that's 
where the actual TLB ops are done.

> +
> +#include "../tlb.h"
> +
> +static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
> +					     struct tlb_inv_context *cxt)
> +{
> +	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
> +		u64 val;
> +
> +		/*
> +		 * For CPUs that are affected by ARM 1319367, we need to
> +		 * avoid a host Stage-1 walk while we have the guest's
> +		 * VMID set in the VTTBR in order to invalidate TLBs.
> +		 * We're guaranteed that the S1 MMU is enabled, so we can
> +		 * simply set the EPD bits to avoid any further TLB fill.
> +		 */
> +		val = cxt->tcr = read_sysreg_el1(SYS_TCR);
> +		val |= TCR_EPD1_MASK | TCR_EPD0_MASK;
> +		write_sysreg_el1(val, SYS_TCR);
> +		isb();
> +	}
> +
> +	/* __load_guest_stage2() includes an ISB for the workaround. */
> +	__load_guest_stage2(kvm);
> +	asm(ALTERNATIVE("isb", "nop", ARM64_WORKAROUND_SPECULATIVE_AT));
> +}
> +
> +static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
> +					    struct tlb_inv_context *cxt)
> +{
> +	write_sysreg(0, vttbr_el2);
> +
> +	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
> +		/* Ensure write of the host VMID */
> +		isb();
> +		/* Restore the host's TCR_EL1 */
> +		write_sysreg_el1(cxt->tcr, SYS_TCR);
> +	}
> +}
> +
> +void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t 
> ipa)
> +{
> +	__tlb_flush_vmid_ipa(kvm, ipa);
> +}
> +
> +void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
> +{
> +	__tlb_flush_vmid(kvm);
> +}
> +
> +void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
> +{
> +	__tlb_flush_local_vmid(vcpu);
> +}
> +
> +void __hyp_text __kvm_flush_vm_context(void)
> +{
> +	__tlb_flush_vm_context();
> +}

Overall, I find the result hard to reason about. Too many things happen 
in the .h file, and reading the .c file feels puzzling (no apparent 
users of the two static functions, for example).

The VHE/nVHE files only differ by the the __tlb_switch_to_*() helpers 
(and the __hyp_text annotation that ends up going away). Why can't this 
be structured in a more conventionnal way, where the TLB code stays in a 
C file, and per-mode .h files providing the two helpers? It would 
certainly look much more readable.

> diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
> index d063a576d511..4e190f8c7e9c 100644
> --- a/arch/arm64/kvm/hyp/tlb.c
> +++ b/arch/arm64/kvm/hyp/tlb.c
> @@ -10,14 +10,10 @@
>  #include <asm/kvm_mmu.h>
>  #include <asm/tlbflush.h>
> 
> -struct tlb_inv_context {
> -	unsigned long	flags;
> -	u64		tcr;
> -	u64		sctlr;
> -};
> +#include "tlb.h"
> 
> -static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
> -						 struct tlb_inv_context *cxt)
> +static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
> +					     struct tlb_inv_context *cxt)
>  {
>  	u64 val;
> 
> @@ -60,41 +56,8 @@ static void __hyp_text
> __tlb_switch_to_guest_vhe(struct kvm *kvm,
>  	isb();
>  }
> 
> -static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
> -						  struct tlb_inv_context *cxt)
> -{
> -	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
> -		u64 val;
> -
> -		/*
> -		 * For CPUs that are affected by ARM 1319367, we need to
> -		 * avoid a host Stage-1 walk while we have the guest's
> -		 * VMID set in the VTTBR in order to invalidate TLBs.
> -		 * We're guaranteed that the S1 MMU is enabled, so we can
> -		 * simply set the EPD bits to avoid any further TLB fill.
> -		 */
> -		val = cxt->tcr = read_sysreg_el1(SYS_TCR);
> -		val |= TCR_EPD1_MASK | TCR_EPD0_MASK;
> -		write_sysreg_el1(val, SYS_TCR);
> -		isb();
> -	}
> -
> -	/* __load_guest_stage2() includes an ISB for the workaround. */
> -	__load_guest_stage2(kvm);
> -	asm(ALTERNATIVE("isb", "nop", ARM64_WORKAROUND_SPECULATIVE_AT));
> -}
> -
> -static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
> -					     struct tlb_inv_context *cxt)
> -{
> -	if (has_vhe())
> -		__tlb_switch_to_guest_vhe(kvm, cxt);
> -	else
> -		__tlb_switch_to_guest_nvhe(kvm, cxt);
> -}
> -
> -static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
> -						struct tlb_inv_context *cxt)
> +static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
> +					    struct tlb_inv_context *cxt)
>  {
>  	/*
>  	 * We're done with the TLB operation, let's restore the host's
> @@ -113,130 +76,22 @@ static void __hyp_text
> __tlb_switch_to_host_vhe(struct kvm *kvm,
>  	local_irq_restore(cxt->flags);
>  }
> 
> -static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
> -						 struct tlb_inv_context *cxt)
> -{
> -	write_sysreg(0, vttbr_el2);
> -
> -	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
> -		/* Ensure write of the host VMID */
> -		isb();
> -		/* Restore the host's TCR_EL1 */
> -		write_sysreg_el1(cxt->tcr, SYS_TCR);
> -	}
> -}
> -
> -static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
> -					    struct tlb_inv_context *cxt)
> -{
> -	if (has_vhe())
> -		__tlb_switch_to_host_vhe(kvm, cxt);
> -	else
> -		__tlb_switch_to_host_nvhe(kvm, cxt);
> -}
> -
> -void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t 
> ipa)
> +void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
>  {
> -	struct tlb_inv_context cxt;
> -
> -	dsb(ishst);
> -
> -	/* Switch to requested VMID */
> -	kvm = kern_hyp_va(kvm);
> -	__tlb_switch_to_guest(kvm, &cxt);
> -
> -	/*
> -	 * We could do so much better if we had the VA as well.
> -	 * Instead, we invalidate Stage-2 for this IPA, and the
> -	 * whole of Stage-1. Weep...
> -	 */
> -	ipa >>= 12;
> -	__tlbi(ipas2e1is, ipa);
> -
> -	/*
> -	 * We have to ensure completion of the invalidation at Stage-2,
> -	 * since a table walk on another CPU could refill a TLB with a
> -	 * complete (S1 + S2) walk based on the old Stage-2 mapping if
> -	 * the Stage-1 invalidation happened first.
> -	 */
> -	dsb(ish);
> -	__tlbi(vmalle1is);
> -	dsb(ish);
> -	isb();
> -
> -	/*
> -	 * If the host is running at EL1 and we have a VPIPT I-cache,
> -	 * then we must perform I-cache maintenance at EL2 in order for
> -	 * it to have an effect on the guest. Since the guest cannot hit
> -	 * I-cache lines allocated with a different VMID, we don't need
> -	 * to worry about junk out of guest reset (we nuke the I-cache on
> -	 * VMID rollover), but we do need to be careful when remapping
> -	 * executable pages for the same guest. This can happen when KSM
> -	 * takes a CoW fault on an executable page, copies the page into
> -	 * a page that was previously mapped in the guest and then needs
> -	 * to invalidate the guest view of the I-cache for that page
> -	 * from EL1. To solve this, we invalidate the entire I-cache when
> -	 * unmapping a page from a guest if we have a VPIPT I-cache but
> -	 * the host is running at EL1. As above, we could do better if
> -	 * we had the VA.
> -	 *
> -	 * The moral of this story is: if you have a VPIPT I-cache, then
> -	 * you should be running with VHE enabled.
> -	 */
> -	if (!has_vhe() && icache_is_vpipt())
> -		__flush_icache_all();
> -
> -	__tlb_switch_to_host(kvm, &cxt);
> +	__tlb_flush_vmid_ipa(kvm, ipa);
>  }
> 
> -void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
> +void __kvm_tlb_flush_vmid(struct kvm *kvm)
>  {
> -	struct tlb_inv_context cxt;
> -
> -	dsb(ishst);
> -
> -	/* Switch to requested VMID */
> -	kvm = kern_hyp_va(kvm);
> -	__tlb_switch_to_guest(kvm, &cxt);
> -
> -	__tlbi(vmalls12e1is);
> -	dsb(ish);
> -	isb();
> -
> -	__tlb_switch_to_host(kvm, &cxt);
> +	__tlb_flush_vmid(kvm);
>  }
> 
> -void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
> +void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
>  {
> -	struct kvm *kvm = kern_hyp_va(kern_hyp_va(vcpu)->kvm);
> -	struct tlb_inv_context cxt;
> -
> -	/* Switch to requested VMID */
> -	__tlb_switch_to_guest(kvm, &cxt);
> -
> -	__tlbi(vmalle1);
> -	dsb(nsh);
> -	isb();
> -
> -	__tlb_switch_to_host(kvm, &cxt);
> +	__tlb_flush_local_vmid(vcpu);
>  }
> 
> -void __hyp_text __kvm_flush_vm_context(void)
> +void __kvm_flush_vm_context(void)
>  {
> -	dsb(ishst);
> -	__tlbi(alle1is);
> -
> -	/*
> -	 * VIPT and PIPT caches are not affected by VMID, so no maintenance
> -	 * is necessary across a VMID rollover.
> -	 *
> -	 * VPIPT caches constrain lookup and maintenance to the active VMID,
> -	 * so we need to invalidate lines with a stale VMID to avoid an ABA
> -	 * race after multiple rollovers.
> -	 *
> -	 */
> -	if (icache_is_vpipt())
> -		asm volatile("ic ialluis");
> -
> -	dsb(ish);
> +	__tlb_flush_vm_context();
>  }
> diff --git a/arch/arm64/kvm/hyp/tlb.h b/arch/arm64/kvm/hyp/tlb.h
> new file mode 100644
> index 000000000000..841ef400c8ec
> --- /dev/null
> +++ b/arch/arm64/kvm/hyp/tlb.h
> @@ -0,0 +1,134 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2015 - ARM Ltd
> + * Author: Marc Zyngier <marc.zyngier@arm.com>
> + */
> +
> +#ifndef __ARM64_KVM_HYP_TLB_H__
> +#define __ARM64_KVM_HYP_TLB_H__
> +
> +#include <linux/irqflags.h>
> +
> +#include <asm/kvm_hyp.h>
> +#include <asm/kvm_mmu.h>
> +#include <asm/tlbflush.h>
> +
> +struct tlb_inv_context {
> +	unsigned long	flags;
> +	u64		tcr;
> +	u64		sctlr;
> +};
> +
> +static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
> +					     struct tlb_inv_context *cxt);
> +static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
> +					    struct tlb_inv_context *cxt);
> +
> +static inline void __hyp_text
> +__tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)

For things that you move around, please do not reformat the code, This 
will lead to unnecessary conflicts. And long lines are just fine (screw 
checkpatch!).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
