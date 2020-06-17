Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863441FCD97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9nboQkDmTfuEvR5RMeUVibLHCaD4gGSfOFVDYCFZ8Y=; b=SE+/IKTKyJPkSy
	uxuQMfDhHG2CzUkAFIT11MMaF0isX3YVis15j06KHx5ju/nnduFVZDffNyBpIvdTY0Jp+mryv++rd
	Jn4A5sHqJSrplfnajlXHe8N7hpoeWSUhLKNJc6D02bVmtmYkrtJx7N1hI0XxbIXlYDc1FDyMAfVwn
	iYLu3ACVkf68/OHe3mpKJZg+iFlcUNw/wHyRXc7Zr1V4tHQQAKiNINEWJXAmCJmp12HisifyDimrB
	pILrwL2VY+tN72XO5oRz2lTB1kJxWtJX1xEN2DLXVVVaE/SjcJBeDPagYqLMXaUslwohtl0cH+wse
	FDRYlDlJcZMSNgscmidw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXMt-0001wl-7Z; Wed, 17 Jun 2020 12:40:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXMb-0001tX-4Y
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:40:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54F7A20707;
 Wed, 17 Jun 2020 12:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592397620;
 bh=ndOCPkh38nFJDiO+ELM8yvZLDJ1sr9wPZIH3weuN5TY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hu9QCZJqAYpSvNtguuyYyagGeoTD4NslGLHEgWKfdLyg5aR+KpwghRONcr+GS4f5/
 97k7DaHIPshcOsqUU66DVp79knSFpk1HaMO6vFIWbGUxKmGVYzdP32YiEUiQLPQhKi
 647WVia1Oys+A1j7U02z6ADL0Iq1kidJxa5uF7os=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jlXMY-003mcB-Rj; Wed, 17 Jun 2020 13:40:19 +0100
Date: Wed, 17 Jun 2020 13:40:17 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: Re: [PATCH v2 01/17] KVM: arm64: Factor out stage 2 page table data
 from struct kvm
Message-ID: <20200617134017.11e8cd15@why>
In-Reply-To: <20200615132719.1932408-2-maz@kernel.org>
References: <20200615132719.1932408-1-maz@kernel.org>
 <20200615132719.1932408-2-maz@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, kernel-team@android.com,
 will@kernel.org, andre.przywara@arm.com, Dave.Martin@arm.com,
 gcherian@marvell.com, prime.zeng@hisilicon.com, catalin.marinas@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_054021_755202_2E85D521 
X-CRM114-Status: GOOD (  23.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020 14:27:03 +0100
Marc Zyngier <maz@kernel.org> wrote:

> From: Christoffer Dall <christoffer.dall@arm.com>
> 
> As we are about to reuse our stage 2 page table manipulation code for
> shadow stage 2 page tables in the context of nested virtualization, we
> are going to manage multiple stage 2 page tables for a single VM.
> 
> This requires some pretty invasive changes to our data structures,
> which moves the vmid and pgd pointers into a separate structure and
> change pretty much all of our mmu code to operate on this structure
> instead.
> 
> The new structure is called struct kvm_s2_mmu.
> 
> There is no intended functional change by this patch alone.
> 
> Reviewed-by: James Morse <james.morse@arm.com>
> [Designed data structure layout in collaboration]
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Co-developed-by: Marc Zyngier <maz@kernel.org>
> [maz: Moved the last_vcpu_ran down to the S2 MMU structure as well]
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/kvm_asm.h  |   7 +-
>  arch/arm64/include/asm/kvm_host.h |  32 +++-
>  arch/arm64/include/asm/kvm_mmu.h  |  16 +-
>  arch/arm64/kvm/arm.c              |  36 ++--
>  arch/arm64/kvm/hyp/switch.c       |   8 +-
>  arch/arm64/kvm/hyp/tlb.c          |  52 +++---
>  arch/arm64/kvm/mmu.c              | 278 +++++++++++++++++-------------
>  7 files changed, 233 insertions(+), 196 deletions(-)

[...]

> diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
> index d063a576d511..993c74cc054c 100644
> --- a/arch/arm64/kvm/hyp/tlb.c
> +++ b/arch/arm64/kvm/hyp/tlb.c
> @@ -16,7 +16,7 @@ struct tlb_inv_context {
>  	u64		sctlr;
>  };
>  
> -static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
> +static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm_s2_mmu *mmu,
>  						 struct tlb_inv_context *cxt)
>  {
>  	u64 val;
> @@ -53,14 +53,14 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
>  	 * place before clearing TGE. __load_guest_stage2() already
>  	 * has an ISB in order to deal with this.
>  	 */
> -	__load_guest_stage2(kvm);
> +	__load_guest_stage2(mmu);
>  	val = read_sysreg(hcr_el2);
>  	val &= ~HCR_TGE;
>  	write_sysreg(val, hcr_el2);
>  	isb();
>  }
>  
> -static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
> +static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm_s2_mmu *mmu,
>  						  struct tlb_inv_context *cxt)
>  {
>  	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
> @@ -79,22 +79,19 @@ static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
>  		isb();
>  	}
>  
> -	/* __load_guest_stage2() includes an ISB for the workaround. */
> -	__load_guest_stage2(kvm);
> -	asm(ALTERNATIVE("isb", "nop", ARM64_WORKAROUND_SPECULATIVE_AT));
> +	__load_guest_stage2(mmu);
>  }
>  
> -static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
> +static void __hyp_text __tlb_switch_to_guest(struct kvm_s2_mmu *mmu,
>  					     struct tlb_inv_context *cxt)
>  {
>  	if (has_vhe())
> -		__tlb_switch_to_guest_vhe(kvm, cxt);
> +		__tlb_switch_to_guest_vhe(mmu, cxt);
>  	else
> -		__tlb_switch_to_guest_nvhe(kvm, cxt);
> +		__tlb_switch_to_guest_nvhe(mmu, cxt);
>  }
>  
> -static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
> -						struct tlb_inv_context *cxt)
> +static void __hyp_text __tlb_switch_to_host_vhe(struct tlb_inv_context *cxt)
>  {
>  	/*
>  	 * We're done with the TLB operation, let's restore the host's
> @@ -113,8 +110,7 @@ static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
>  	local_irq_restore(cxt->flags);
>  }
>  
> -static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
> -						 struct tlb_inv_context *cxt)
> +static void __hyp_text __tlb_switch_to_host_nvhe(struct tlb_inv_context *cxt)
>  {
>  	write_sysreg(0, vttbr_el2);
>  
> @@ -126,24 +122,23 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
>  	}
>  }
>  
> -static void __hyp_text __tlb_switch_to_host(struct kvm *kvm,
> -					    struct tlb_inv_context *cxt)
> +static void __hyp_text __tlb_switch_to_host(struct tlb_inv_context *cxt)
>  {
>  	if (has_vhe())
> -		__tlb_switch_to_host_vhe(kvm, cxt);
> +		__tlb_switch_to_host_vhe(cxt);
>  	else
> -		__tlb_switch_to_host_nvhe(kvm, cxt);
> +		__tlb_switch_to_host_nvhe(cxt);
>  }
>  
> -void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
> +void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
>  {
>  	struct tlb_inv_context cxt;
>  
>  	dsb(ishst);
>  
>  	/* Switch to requested VMID */
> -	kvm = kern_hyp_va(kvm);
> -	__tlb_switch_to_guest(kvm, &cxt);
> +	mmu = kern_hyp_va(mmu);
> +	__tlb_switch_to_guest(mmu, &cxt);
>  
>  	/*
>  	 * We could do so much better if we had the VA as well.
> @@ -186,39 +181,38 @@ void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
>  	if (!has_vhe() && icache_is_vpipt())
>  		__flush_icache_all();
>  
> -	__tlb_switch_to_host(kvm, &cxt);
> +	__tlb_switch_to_host(&cxt);
>  }
>  
> -void __hyp_text __kvm_tlb_flush_vmid(struct kvm *kvm)
> +void __hyp_text __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu)
>  {
>  	struct tlb_inv_context cxt;
>  
>  	dsb(ishst);
>  
>  	/* Switch to requested VMID */
> -	kvm = kern_hyp_va(kvm);
> -	__tlb_switch_to_guest(kvm, &cxt);
> +	mmu = kern_hyp_va(mmu);
> +	__tlb_switch_to_guest(mmu, &cxt);
>  
>  	__tlbi(vmalls12e1is);
>  	dsb(ish);
>  	isb();
>  
> -	__tlb_switch_to_host(kvm, &cxt);
> +	__tlb_switch_to_host(&cxt);
>  }
>  
> -void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
> +void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_s2_mmu *mmu)
>  {
> -	struct kvm *kvm = kern_hyp_va(kern_hyp_va(vcpu)->kvm);
>  	struct tlb_inv_context cxt;
>  
>  	/* Switch to requested VMID */
> -	__tlb_switch_to_guest(kvm, &cxt);
> +	__tlb_switch_to_guest(mmu, &cxt);

The astute reviewer will have noticed that this sequence is unlikely
to work on non-VHE systems, as what we get here is a kernel address.

I fixed it with the following patch:

diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index 993c74cc054c..e41217946289 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -206,6 +206,7 @@ void __hyp_text __kvm_tlb_flush_local_vmid(struct
kvm_s2_mmu *mmu) struct tlb_inv_context cxt;
 
 	/* Switch to requested VMID */
+	mmu = kern_hyp_va(mmu);
 	__tlb_switch_to_guest(mmu, &cxt);
 
 	__tlbi(vmalle1);

and tested that things work as expected on such a system. I'll push out
an updated branch shortly.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
