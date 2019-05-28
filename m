Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271B72C109
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fctqDlrQZ54TQhTDze9Sb+RmWtD+0VdttGwjFobarc4=; b=P7Nxu2wHZGzPoC
	S42C2OmgzQxVmp6feQ3ZyT4L/0ih/rxx19/EFAG/Rb4sCaAoe0Bkap1l3dcWkEtneRUl0i7QOQEj8
	OxQ3LaN0P1VGdKjOCQQC/JjTKqOzdPRgdHJRr/Ho58qE8R4sGnn7JtTYXmtuxyuc30FlKRLeKCWZL
	pGPusB7BUT4+w8zNWi86TmvoNHyqNKjr8uWya8J7htzyr7jYcA5x4w9S9rBdZMNYk9q9vS8bn/Osh
	n+yDInIUxi3baKRAi68RYesNF7zoiAkOtC8t3L7UnDenvan3dQs4GN09bHZt62yvxT6qeG1D5GaFe
	QbDPMNn/2l0i3j5VRvyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXJa-00010k-3W; Tue, 28 May 2019 08:18:34 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXJT-000101-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:18:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA68C341;
 Tue, 28 May 2019 01:18:25 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 149EB3F59C;
 Tue, 28 May 2019 01:18:22 -0700 (PDT)
Subject: Re: [PATCH v2 07/15] arm64: KVM: split debug save restore across
 vm/traps activation
To: Sudeep Holla <sudeep.holla@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
References: <20190523103502.25925-1-sudeep.holla@arm.com>
 <20190523103502.25925-8-sudeep.holla@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <84eba64a-899f-e231-0873-c3ccfeb2201d@arm.com>
Date: Tue, 28 May 2019 09:18:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190523103502.25925-8-sudeep.holla@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_011827_837888_CF9F6DFC 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On 23/05/2019 11:34, Sudeep Holla wrote:
> If we enable profiling buffer controls at EL1 generate a trap exception
> to EL2, it also changes profiling buffer to use EL1&0 stage 1 translation
> regime in case of VHE. To support SPE both in the guest and host, we
> need to first stop profiling and flush the profiling buffers before
> we activate/switch vm or enable/disable the traps.
> 
> In prepartion to do that, lets split the debug save restore functionality
> into 4 steps:
> 1. debug_save_host_context - saves the host context
> 2. debug_restore_guest_context - restore the guest context
> 3. debug_save_guest_context - saves the guest context
> 4. debug_restore_host_context - restores the host context
> 
> Lets rename existing __debug_switch_to_{host,guest} to make sure it's
> aligned to the above and just add the place holders for new ones getting
> added here as we need them to support SPE in guests.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/include/asm/kvm_hyp.h |  6 ++++--
>  arch/arm64/kvm/hyp/debug-sr.c    | 25 ++++++++++++++++---------
>  arch/arm64/kvm/hyp/switch.c      | 12 ++++++++----
>  3 files changed, 28 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
> index 782955db61dd..1c5ed80fcbda 100644
> --- a/arch/arm64/include/asm/kvm_hyp.h
> +++ b/arch/arm64/include/asm/kvm_hyp.h
> @@ -164,8 +164,10 @@ void sysreg_restore_guest_state_vhe(struct kvm_cpu_context *ctxt);
>  void __sysreg32_save_state(struct kvm_vcpu *vcpu);
>  void __sysreg32_restore_state(struct kvm_vcpu *vcpu);
>  
> -void __debug_switch_to_guest(struct kvm_vcpu *vcpu);
> -void __debug_switch_to_host(struct kvm_vcpu *vcpu);
> +void __debug_save_host_context(struct kvm_vcpu *vcpu);
> +void __debug_restore_guest_context(struct kvm_vcpu *vcpu);
> +void __debug_save_guest_context(struct kvm_vcpu *vcpu);
> +void __debug_restore_host_context(struct kvm_vcpu *vcpu);
>  
>  void __fpsimd_save_state(struct user_fpsimd_state *fp_regs);
>  void __fpsimd_restore_state(struct user_fpsimd_state *fp_regs);
> diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
> index fa51236ebcb3..618884df1dc4 100644
> --- a/arch/arm64/kvm/hyp/debug-sr.c
> +++ b/arch/arm64/kvm/hyp/debug-sr.c
> @@ -149,20 +149,13 @@ static void __hyp_text __debug_restore_state(struct kvm_vcpu *vcpu,
>  	write_sysreg(ctxt->sys_regs[MDCCINT_EL1], mdccint_el1);
>  }
>  
> -void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
> +void __hyp_text __debug_restore_guest_context(struct kvm_vcpu *vcpu)
>  {
>  	struct kvm_cpu_context *host_ctxt;
>  	struct kvm_cpu_context *guest_ctxt;
>  	struct kvm_guest_debug_arch *host_dbg;
>  	struct kvm_guest_debug_arch *guest_dbg;
>  
> -	/*
> -	 * Non-VHE: Disable and flush SPE data generation
> -	 * VHE: The vcpu can run, but it can't hide.
> -	 */
> -	if (!has_vhe())
> -		__debug_save_spe_nvhe(&vcpu->arch.host_debug_state.pmscr_el1);
> -
>  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
>  		return;
>  
> @@ -175,7 +168,7 @@ void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
>  	__debug_restore_state(vcpu, guest_dbg, guest_ctxt);
>  }
>  
> -void __hyp_text __debug_switch_to_host(struct kvm_vcpu *vcpu)
> +void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)

In the current state of the sources, __debug_switch_to_host() seems to
save the guest debug state before restoring the host's:

	__debug_save_state(vcpu, guest_dbg, guest_ctxt);

Since you're splitting the switch_to into save/restore operations, it
feels like this would fit better __debug_save_guest_context() (currently
empty) rather than __debug_restore_host_context().

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
