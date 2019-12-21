Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B26A2128955
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 14:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9GqWqmKUfjB+3zHAyenJy1bQGlYj3sg3O6mbpzN5oM=; b=ph9WCjGWNQInmW
	+M+/aTZegNJl6Uz5kvj0X5oiF7zz44UC9cZ3F/ZhCUkW/wuE/atGXZGBeqqVjC+3l0JlSQJUIWQ4o
	NvADYmrVX6WUnuU8s9YiOcZVpdGTUklMAmBsQWiNiirQjldoce4f44F5zwyNE5SHMr3TcKskrrmQI
	DytTtOgwsKybku4M0wO++1XSpC82RZlPE8F5LshjfkX9tpoaFopQ7lSQzFiuKHo7Jz7AoHrkT6rFU
	wNXYMQkqQbAAcL4OdEr9e2/k7amU7V6jstxrEXpeAA/qNshF822wGVfi6ItorHWlnPqdDV/upM9yU
	dYc3z/+kFyZh4gcTPnhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iifGl-0003Vs-0M; Sat, 21 Dec 2019 13:58:11 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iifGc-0003Uu-DT
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 13:58:04 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iifGW-00047r-QW; Sat, 21 Dec 2019 14:57:57 +0100
Date: Sat, 21 Dec 2019 13:57:55 +0000
From: Marc Zyngier <maz@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 08/18] arm64: KVM: add support to save/restore SPE
 profiling buffer controls
Message-ID: <20191221135755.70a6e8df@why>
In-Reply-To: <20191220143025.33853-9-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-9-andrew.murray@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, catalin.marinas@arm.com,
 will@kernel.org, kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sudeep.holla@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_055802_600028_5E29BF0B 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Dec 2019 14:30:15 +0000
Andrew Murray <andrew.murray@arm.com> wrote:

> From: Sudeep Holla <sudeep.holla@arm.com>
> 
> Currently since we don't support profiling using SPE in the guests,
> we just save the PMSCR_EL1, flush the profiling buffers and disable
> sampling. However in order to support simultaneous sampling both in

Is the sampling actually simultaneous? I don't believe so (the whole
series would be much simpler if it was).

> the host and guests, we need to save and reatore the complete SPE

s/reatore/restore/

> profiling buffer controls' context.
> 
> Let's add the support for the same and keep it disabled for now.
> We can enable it conditionally only if guests are allowed to use
> SPE.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> [ Clear PMBSR bit when saving state to prevent spurious interrupts ]
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  arch/arm64/kvm/hyp/debug-sr.c | 51 +++++++++++++++++++++++++++++------
>  1 file changed, 43 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
> index 8a70a493345e..12429b212a3a 100644
> --- a/arch/arm64/kvm/hyp/debug-sr.c
> +++ b/arch/arm64/kvm/hyp/debug-sr.c
> @@ -85,7 +85,8 @@
>  	default:	write_debug(ptr[0], reg, 0);			\
>  	}
>  
> -static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
> +static void __hyp_text
> +__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)

nit: don't split lines like this if you can avoid it. You can put the
full_ctxt parameter on a separate line instead.

>  {
>  	u64 reg;
>  
> @@ -102,22 +103,46 @@ static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
>  	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
>  		return;
>  
> -	/* No; is the host actually using the thing? */
> -	reg = read_sysreg_s(SYS_PMBLIMITR_EL1);
> -	if (!(reg & BIT(SYS_PMBLIMITR_EL1_E_SHIFT)))
> +	/* Save the control register and disable data generation */
> +	ctxt->sys_regs[PMSCR_EL1] = read_sysreg_el1(SYS_PMSCR);
> +
> +	if (!ctxt->sys_regs[PMSCR_EL1])

Shouldn't you check the enable bits instead of relying on the whole
thing being zero?

>  		return;
>  
>  	/* Yes; save the control register and disable data generation */
> -	ctxt->sys_regs[PMSCR_EL1] = read_sysreg_el1(SYS_PMSCR);

You've already saved the control register...

>  	write_sysreg_el1(0, SYS_PMSCR);
>  	isb();
>  
>  	/* Now drain all buffered data to memory */
>  	psb_csync();
>  	dsb(nsh);
> +
> +	if (!full_ctxt)
> +		return;
> +
> +	ctxt->sys_regs[PMBLIMITR_EL1] = read_sysreg_s(SYS_PMBLIMITR_EL1);
> +	write_sysreg_s(0, SYS_PMBLIMITR_EL1);
> +
> +	/*
> +	 * As PMBSR is conditionally restored when returning to the host we
> +	 * must ensure the service bit is unset here to prevent a spurious
> +	 * host SPE interrupt from being raised.
> +	 */
> +	ctxt->sys_regs[PMBSR_EL1] = read_sysreg_s(SYS_PMBSR_EL1);
> +	write_sysreg_s(0, SYS_PMBSR_EL1);
> +
> +	isb();
> +
> +	ctxt->sys_regs[PMSICR_EL1] = read_sysreg_s(SYS_PMSICR_EL1);
> +	ctxt->sys_regs[PMSIRR_EL1] = read_sysreg_s(SYS_PMSIRR_EL1);
> +	ctxt->sys_regs[PMSFCR_EL1] = read_sysreg_s(SYS_PMSFCR_EL1);
> +	ctxt->sys_regs[PMSEVFR_EL1] = read_sysreg_s(SYS_PMSEVFR_EL1);
> +	ctxt->sys_regs[PMSLATFR_EL1] = read_sysreg_s(SYS_PMSLATFR_EL1);
> +	ctxt->sys_regs[PMBPTR_EL1] = read_sysreg_s(SYS_PMBPTR_EL1);
>  }
>  
> -static void __hyp_text __debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt)
> +static void __hyp_text
> +__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
>  {
>  	if (!ctxt->sys_regs[PMSCR_EL1])
>  		return;
> @@ -126,6 +151,16 @@ static void __hyp_text __debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt)
>  	isb();
>  
>  	/* Re-enable data generation */
> +	if (full_ctxt) {
> +		write_sysreg_s(ctxt->sys_regs[PMBPTR_EL1], SYS_PMBPTR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[PMBLIMITR_EL1], SYS_PMBLIMITR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[PMSFCR_EL1], SYS_PMSFCR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[PMSEVFR_EL1], SYS_PMSEVFR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[PMSLATFR_EL1], SYS_PMSLATFR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[PMSIRR_EL1], SYS_PMSIRR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[PMSICR_EL1], SYS_PMSICR_EL1);
> +		write_sysreg_s(ctxt->sys_regs[PMBSR_EL1], SYS_PMBSR_EL1);
> +	}
>  	write_sysreg_el1(ctxt->sys_regs[PMSCR_EL1], SYS_PMSCR);
>  }
>  
> @@ -198,7 +233,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
>  	guest_ctxt = &vcpu->arch.ctxt;
>  
>  	if (!has_vhe())
> -		__debug_restore_spe_nvhe(host_ctxt);
> +		__debug_restore_spe_nvhe(host_ctxt, false);
>  
>  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
>  		return;
> @@ -222,7 +257,7 @@ void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
>  
>  	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
>  	if (!has_vhe())
> -		__debug_save_spe_nvhe(host_ctxt);
> +		__debug_save_spe_nvhe(host_ctxt, false);
>  }
>  
>  void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)

So all of this is for non-VHE. What happens in the VHE case?

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
