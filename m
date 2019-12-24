Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8677312A2E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 16:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTSzCON3XmbFEd1+XYMQE79Q1ldil7D35k87Xgi+X4w=; b=gASPi6H0NIi/xr
	sHHjnI5H7UG7jnc5h7ulMqGMt+qeUMxvjP6xc9iSJn5CcKY8SxL+OlmxDRS8gS4zSZUeu5rHwcODS
	rwjnSpB6ZEUfVnoSVyVa4XCfMqH4UPyN7LXawsYoyCLLF0k2GlZS4TaGb+uIULgMBRfehUEmPY39I
	XwXnUWCzHRmd+DX2j6EgaFqWQVXXEFhNsYA3984T9I1Hr43fCQ7Mkqne94bwiBl4c48AaCway/UMI
	KEkdk+nsDWwkCTnpI+pzto9RtDcq8iDLhEr8xUS8Y77RKIWYfWuA6B11CuKUh+2tXrz+oh1SCYk+8
	S5prE8MsDT8N30BKzZXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlwY-0000tE-Cj; Tue, 24 Dec 2019 15:17:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlwN-0000si-In
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 15:17:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3037E1FB;
 Tue, 24 Dec 2019 07:17:42 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 97CCD3F6CF;
 Tue, 24 Dec 2019 07:17:41 -0800 (PST)
Date: Tue, 24 Dec 2019 15:17:39 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 08/18] arm64: KVM: add support to save/restore SPE
 profiling buffer controls
Message-ID: <20191224151739.GP42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-9-andrew.murray@arm.com>
 <20191221135755.70a6e8df@why>
 <20191224104929.GE42593@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224104929.GE42593@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_071743_707650_00EF7050 
X-CRM114-Status: GOOD (  38.33  )
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 24, 2019 at 10:49:30AM +0000, Andrew Murray wrote:
> On Sat, Dec 21, 2019 at 01:57:55PM +0000, Marc Zyngier wrote:
> > On Fri, 20 Dec 2019 14:30:15 +0000
> > Andrew Murray <andrew.murray@arm.com> wrote:
> > 
> > > From: Sudeep Holla <sudeep.holla@arm.com>
> > > 
> > > Currently since we don't support profiling using SPE in the guests,
> > > we just save the PMSCR_EL1, flush the profiling buffers and disable
> > > sampling. However in order to support simultaneous sampling both in
> > 
> > Is the sampling actually simultaneous? I don't believe so (the whole
> > series would be much simpler if it was).
> 
> No the SPE is used by either the guest or host at any one time. I guess
> the term simultaneous was used to refer to illusion given to both guest
> and host that they are able to use it whenever they like. I'll update
> the commit message to drop the magic.
>  
> 
> > 
> > > the host and guests, we need to save and reatore the complete SPE
> > 
> > s/reatore/restore/
> 
> Noted.
> 
> 
> > 
> > > profiling buffer controls' context.
> > > 
> > > Let's add the support for the same and keep it disabled for now.
> > > We can enable it conditionally only if guests are allowed to use
> > > SPE.
> > > 
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > [ Clear PMBSR bit when saving state to prevent spurious interrupts ]
> > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > ---
> > >  arch/arm64/kvm/hyp/debug-sr.c | 51 +++++++++++++++++++++++++++++------
> > >  1 file changed, 43 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
> > > index 8a70a493345e..12429b212a3a 100644
> > > --- a/arch/arm64/kvm/hyp/debug-sr.c
> > > +++ b/arch/arm64/kvm/hyp/debug-sr.c
> > > @@ -85,7 +85,8 @@
> > >  	default:	write_debug(ptr[0], reg, 0);			\
> > >  	}
> > >  
> > > -static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
> > > +static void __hyp_text
> > > +__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
> > 
> > nit: don't split lines like this if you can avoid it. You can put the
> > full_ctxt parameter on a separate line instead.
> 
> Yes understood.
> 
> 
> > 
> > >  {
> > >  	u64 reg;
> > >  
> > > @@ -102,22 +103,46 @@ static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
> > >  	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
> > >  		return;
> > >  
> > > -	/* No; is the host actually using the thing? */
> > > -	reg = read_sysreg_s(SYS_PMBLIMITR_EL1);
> > > -	if (!(reg & BIT(SYS_PMBLIMITR_EL1_E_SHIFT)))
> > > +	/* Save the control register and disable data generation */
> > > +	ctxt->sys_regs[PMSCR_EL1] = read_sysreg_el1(SYS_PMSCR);
> > > +
> > > +	if (!ctxt->sys_regs[PMSCR_EL1])
> > 
> > Shouldn't you check the enable bits instead of relying on the whole
> > thing being zero?
> 
> Yes that would make more sense (E1SPE and E0SPE).
> 
> I feel that this check makes an assumption about the guest/host SPE
> driver... What happens if the SPE driver writes to some SPE registers
> but doesn't enable PMSCR? If the guest is also using SPE then those
> writes will be lost, when the host returns and the SPE driver enables
> SPE it won't work.
> 
> With a quick look at the SPE driver I'm not sure this will happen, but
> even so it makes me nervous relying on these assumptions. I wonder if
> this risk is present in other devices?

In fact, this may be a good reason to trap the SPE registers - this would
allow you to conditionally save/restore based on a dirty bit. It would
also allow you to re-evaluate the SPE interrupt (for example when the guest
clears the status register) and thus potentially reduce any black hole.

Thanks,

Andrew Murray

> 
> 
> > 
> > >  		return;
> > >  
> > >  	/* Yes; save the control register and disable data generation */
> > > -	ctxt->sys_regs[PMSCR_EL1] = read_sysreg_el1(SYS_PMSCR);
> > 
> > You've already saved the control register...
> 
> I'll remove that.
> 
> 
> > 
> > >  	write_sysreg_el1(0, SYS_PMSCR);
> > >  	isb();
> > >  
> > >  	/* Now drain all buffered data to memory */
> > >  	psb_csync();
> > >  	dsb(nsh);
> > > +
> > > +	if (!full_ctxt)
> > > +		return;
> > > +
> > > +	ctxt->sys_regs[PMBLIMITR_EL1] = read_sysreg_s(SYS_PMBLIMITR_EL1);
> > > +	write_sysreg_s(0, SYS_PMBLIMITR_EL1);
> > > +
> > > +	/*
> > > +	 * As PMBSR is conditionally restored when returning to the host we
> > > +	 * must ensure the service bit is unset here to prevent a spurious
> > > +	 * host SPE interrupt from being raised.
> > > +	 */
> > > +	ctxt->sys_regs[PMBSR_EL1] = read_sysreg_s(SYS_PMBSR_EL1);
> > > +	write_sysreg_s(0, SYS_PMBSR_EL1);
> > > +
> > > +	isb();
> > > +
> > > +	ctxt->sys_regs[PMSICR_EL1] = read_sysreg_s(SYS_PMSICR_EL1);
> > > +	ctxt->sys_regs[PMSIRR_EL1] = read_sysreg_s(SYS_PMSIRR_EL1);
> > > +	ctxt->sys_regs[PMSFCR_EL1] = read_sysreg_s(SYS_PMSFCR_EL1);
> > > +	ctxt->sys_regs[PMSEVFR_EL1] = read_sysreg_s(SYS_PMSEVFR_EL1);
> > > +	ctxt->sys_regs[PMSLATFR_EL1] = read_sysreg_s(SYS_PMSLATFR_EL1);
> > > +	ctxt->sys_regs[PMBPTR_EL1] = read_sysreg_s(SYS_PMBPTR_EL1);
> > >  }
> > >  
> > > -static void __hyp_text __debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt)
> > > +static void __hyp_text
> > > +__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
> > >  {
> > >  	if (!ctxt->sys_regs[PMSCR_EL1])
> > >  		return;
> > > @@ -126,6 +151,16 @@ static void __hyp_text __debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt)
> > >  	isb();
> > >  
> > >  	/* Re-enable data generation */
> > > +	if (full_ctxt) {
> > > +		write_sysreg_s(ctxt->sys_regs[PMBPTR_EL1], SYS_PMBPTR_EL1);
> > > +		write_sysreg_s(ctxt->sys_regs[PMBLIMITR_EL1], SYS_PMBLIMITR_EL1);
> > > +		write_sysreg_s(ctxt->sys_regs[PMSFCR_EL1], SYS_PMSFCR_EL1);
> > > +		write_sysreg_s(ctxt->sys_regs[PMSEVFR_EL1], SYS_PMSEVFR_EL1);
> > > +		write_sysreg_s(ctxt->sys_regs[PMSLATFR_EL1], SYS_PMSLATFR_EL1);
> > > +		write_sysreg_s(ctxt->sys_regs[PMSIRR_EL1], SYS_PMSIRR_EL1);
> > > +		write_sysreg_s(ctxt->sys_regs[PMSICR_EL1], SYS_PMSICR_EL1);
> > > +		write_sysreg_s(ctxt->sys_regs[PMBSR_EL1], SYS_PMBSR_EL1);
> > > +	}
> > >  	write_sysreg_el1(ctxt->sys_regs[PMSCR_EL1], SYS_PMSCR);
> > >  }
> > >  
> > > @@ -198,7 +233,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
> > >  	guest_ctxt = &vcpu->arch.ctxt;
> > >  
> > >  	if (!has_vhe())
> > > -		__debug_restore_spe_nvhe(host_ctxt);
> > > +		__debug_restore_spe_nvhe(host_ctxt, false);
> > >  
> > >  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
> > >  		return;
> > > @@ -222,7 +257,7 @@ void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
> > >  
> > >  	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> > >  	if (!has_vhe())
> > > -		__debug_save_spe_nvhe(host_ctxt);
> > > +		__debug_save_spe_nvhe(host_ctxt, false);
> > >  }
> > >  
> > >  void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
> > 
> > So all of this is for non-VHE. What happens in the VHE case?
> 
> By the end of the series this ends up in __debug_save_host_context which is
> called for both VHE/nVHE - on the re-spin I'll make it not look so confusing.
> 
> Thanks,
> 
> Andrew Murray
> 
> > 
> > 	M.
> > -- 
> > Jazz is not dead. It just smells funny...
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
