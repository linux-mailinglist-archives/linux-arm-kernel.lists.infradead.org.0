Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2331281E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 19:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwuY/YjDMHlNnyANGL5lj72KefmK90i+4+Db2gfsHJ4=; b=ZHWzawKIJVoTUY
	SKY3Q5bHubMLAYwSRtM4yCCi6fqtJfr8SeyCkPvzkac0aim3kE0fBnt3ygoshmnD+i/Bn2PMt3kYy
	Sn/gP0MWkY99MZp5WBTgqon4f4lrcplUBS4JNjm8tUL4WFhU+UOm3fHriQn/Ykfg/OLjdV5AIpYQ2
	kT6PQyAYf/qjSi2ELuJV/W+vbSLheRS0FAZ23swWRnBCub3JVmhrY/CxxnxX+qIG+JVu5M/1vqpz5
	rKcP5HzgyE2kxlm0OSNPqiULeFivmx6Q194i27747AYztGbTHTP7qyEZR3bOQ+KZ8hVt5lok5X3EX
	I+baHVSpS+3mnko8jgXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiMgD-0003gD-3w; Fri, 20 Dec 2019 18:07:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiMg2-0003fU-Bu
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 18:07:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 564091FB;
 Fri, 20 Dec 2019 10:07:01 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2154B3F67D;
 Fri, 20 Dec 2019 10:07:00 -0800 (PST)
Date: Fri, 20 Dec 2019 18:06:58 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 09/18] arm64: KVM: enable conditional save/restore
 full SPE profiling buffer controls
Message-ID: <20191220180657.GD25258@lakrids.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-10-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220143025.33853-10-andrew.murray@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_100702_495132_A88DE7B9 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 02:30:16PM +0000, Andrew Murray wrote:
> From: Sudeep Holla <sudeep.holla@arm.com>
> 
> Now that we can save/restore the full SPE controls, we can enable it
> if SPE is setup and ready to use in KVM. It's supported in KVM only if
> all the CPUs in the system supports SPE.
> 
> However to support heterogenous systems, we need to move the check if
> host supports SPE and do a partial save/restore.

I don't think that it makes sense to support this for heterogeneous
systems, given their SPE capabilities and IMP DEF details will differ.

Is there some way we can limit this to homogeneous systems?

Thanks,
Mark.

> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  arch/arm64/kvm/hyp/debug-sr.c | 33 ++++++++++++++++-----------------
>  include/kvm/arm_spe.h         |  6 ++++++
>  2 files changed, 22 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
> index 12429b212a3a..d8d857067e6d 100644
> --- a/arch/arm64/kvm/hyp/debug-sr.c
> +++ b/arch/arm64/kvm/hyp/debug-sr.c
> @@ -86,18 +86,13 @@
>  	}
>  
>  static void __hyp_text
> -__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
> +__debug_save_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
>  {
>  	u64 reg;
>  
>  	/* Clear pmscr in case of early return */
>  	ctxt->sys_regs[PMSCR_EL1] = 0;
>  
> -	/* SPE present on this CPU? */
> -	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
> -						  ID_AA64DFR0_PMSVER_SHIFT))
> -		return;
> -
>  	/* Yes; is it owned by higher EL? */
>  	reg = read_sysreg_s(SYS_PMBIDR_EL1);
>  	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
> @@ -142,7 +137,7 @@ __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
>  }
>  
>  static void __hyp_text
> -__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
> +__debug_restore_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
>  {
>  	if (!ctxt->sys_regs[PMSCR_EL1])
>  		return;
> @@ -210,11 +205,14 @@ void __hyp_text __debug_restore_guest_context(struct kvm_vcpu *vcpu)
>  	struct kvm_guest_debug_arch *host_dbg;
>  	struct kvm_guest_debug_arch *guest_dbg;
>  
> +	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> +	guest_ctxt = &vcpu->arch.ctxt;
> +
> +	__debug_restore_spe_context(guest_ctxt, kvm_arm_spe_v1_ready(vcpu));
> +
>  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
>  		return;
>  
> -	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> -	guest_ctxt = &vcpu->arch.ctxt;
>  	host_dbg = &vcpu->arch.host_debug_state.regs;
>  	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
>  
> @@ -232,8 +230,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
>  	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
>  	guest_ctxt = &vcpu->arch.ctxt;
>  
> -	if (!has_vhe())
> -		__debug_restore_spe_nvhe(host_ctxt, false);
> +	__debug_restore_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
>  
>  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
>  		return;
> @@ -249,19 +246,21 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
>  
>  void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
>  {
> -	/*
> -	 * Non-VHE: Disable and flush SPE data generation
> -	 * VHE: The vcpu can run, but it can't hide.
> -	 */
>  	struct kvm_cpu_context *host_ctxt;
>  
>  	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> -	if (!has_vhe())
> -		__debug_save_spe_nvhe(host_ctxt, false);
> +	if (cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
> +						 ID_AA64DFR0_PMSVER_SHIFT))
> +		__debug_save_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
>  }
>  
>  void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
>  {
> +	bool kvm_spe_ready = kvm_arm_spe_v1_ready(vcpu);
> +
> +	/* SPE present on this vCPU? */
> +	if (kvm_spe_ready)
> +		__debug_save_spe_context(&vcpu->arch.ctxt, kvm_spe_ready);
>  }
>  
>  u32 __hyp_text __kvm_get_mdcr_el2(void)
> diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
> index 48d118fdb174..30c40b1bc385 100644
> --- a/include/kvm/arm_spe.h
> +++ b/include/kvm/arm_spe.h
> @@ -16,4 +16,10 @@ struct kvm_spe {
>  	bool irq_level;
>  };
>  
> +#ifdef CONFIG_KVM_ARM_SPE
> +#define kvm_arm_spe_v1_ready(v)		((v)->arch.spe.ready)
> +#else
> +#define kvm_arm_spe_v1_ready(v)		(false)
> +#endif /* CONFIG_KVM_ARM_SPE */
> +
>  #endif /* __ASM_ARM_KVM_SPE_H */
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
