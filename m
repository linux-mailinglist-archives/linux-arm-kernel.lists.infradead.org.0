Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD59136B76
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:54:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Humfp1VE5pSH9EsqmjXgFmdsd/fO257phW3T+9tAKyQ=; b=AJor8jucLgnBPo
	jP0m+6zcj7ia7RyK6eaF9gPmOsRrxiBHGPOfrkT14ighj8tAhhdarNeXIDbSqRGj8np24Cj6pkSMb
	CpIPDUknOywTQ3EMvcYs4jkYw7LNbYznYmnKAXWPlezuYiXhz2/qY+hGwgDmOTXQmsaFMPIDDuqp9
	HK29FE+hSotehIluJwf1BZ1mvGv9Wf/Aa6/9ubAHoKq9xyWO8ZJkc4FxwEpGznWKrhFNEGmoHB6Xb
	pctECFT9bgjRU7RkPpNJHgdswQ/Tq4Tjjk+lenCvhuL2uZUuNXv4B6C+e4J5HDlmz/ptNa03Hmosw
	9mn8ioZ7xE6Ut/Pqr5pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprwE-0002Rb-Et; Fri, 10 Jan 2020 10:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprw6-0002R5-S1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:54:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A0C2328;
 Fri, 10 Jan 2020 02:54:38 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E5433F703;
 Fri, 10 Jan 2020 02:54:37 -0800 (PST)
Date: Fri, 10 Jan 2020 10:54:36 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 09/18] arm64: KVM: enable conditional save/restore
 full SPE profiling buffer controls
Message-ID: <20200110105435.GC42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-10-andrew.murray@arm.com>
 <20191221141325.5a177343@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191221141325.5a177343@why>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_025438_995003_AB40C3CE 
X-CRM114-Status: GOOD (  28.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, kvm@vger.kernel.org,
 Catalin Marinas <Catalin.Marinas@arm.com>, linux-kernel@vger.kernel.org,
 Sudeep Holla <Sudeep.Holla@arm.com>, will@kernel.org,
 kvmarm <kvmarm@lists.cs.columbia.edu>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 21, 2019 at 02:13:25PM +0000, Marc Zyngier wrote:
> On Fri, 20 Dec 2019 14:30:16 +0000
> Andrew Murray <andrew.murray@arm.com> wrote:
> 
> [somehow managed not to do a reply all, re-sending]
> 
> > From: Sudeep Holla <sudeep.holla@arm.com>
> > 
> > Now that we can save/restore the full SPE controls, we can enable it
> > if SPE is setup and ready to use in KVM. It's supported in KVM only if
> > all the CPUs in the system supports SPE.
> > 
> > However to support heterogenous systems, we need to move the check if
> > host supports SPE and do a partial save/restore.
> 
> No. Let's just not go down that path. For now, KVM on heterogeneous
> systems do not get SPE. If SPE has been enabled on a guest and a CPU
> comes up without SPE, this CPU should fail to boot (same as exposing a
> feature to userspace).
> 
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  arch/arm64/kvm/hyp/debug-sr.c | 33 ++++++++++++++++-----------------
> >  include/kvm/arm_spe.h         |  6 ++++++
> >  2 files changed, 22 insertions(+), 17 deletions(-)
> > 
> > diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
> > index 12429b212a3a..d8d857067e6d 100644
> > --- a/arch/arm64/kvm/hyp/debug-sr.c
> > +++ b/arch/arm64/kvm/hyp/debug-sr.c
> > @@ -86,18 +86,13 @@
> >  	}
> >  
> >  static void __hyp_text
> > -__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
> > +__debug_save_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
> >  {
> >  	u64 reg;
> >  
> >  	/* Clear pmscr in case of early return */
> >  	ctxt->sys_regs[PMSCR_EL1] = 0;
> >  
> > -	/* SPE present on this CPU? */
> > -	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
> > -						  ID_AA64DFR0_PMSVER_SHIFT))
> > -		return;
> > -
> >  	/* Yes; is it owned by higher EL? */
> >  	reg = read_sysreg_s(SYS_PMBIDR_EL1);
> >  	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
> > @@ -142,7 +137,7 @@ __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
> >  }
> >  
> >  static void __hyp_text
> > -__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
> > +__debug_restore_spe_context(struct kvm_cpu_context *ctxt, bool full_ctxt)
> >  {
> >  	if (!ctxt->sys_regs[PMSCR_EL1])
> >  		return;
> > @@ -210,11 +205,14 @@ void __hyp_text __debug_restore_guest_context(struct kvm_vcpu *vcpu)
> >  	struct kvm_guest_debug_arch *host_dbg;
> >  	struct kvm_guest_debug_arch *guest_dbg;
> >  
> > +	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> > +	guest_ctxt = &vcpu->arch.ctxt;
> > +
> > +	__debug_restore_spe_context(guest_ctxt, kvm_arm_spe_v1_ready(vcpu));
> > +
> >  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
> >  		return;
> >  
> > -	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> > -	guest_ctxt = &vcpu->arch.ctxt;
> >  	host_dbg = &vcpu->arch.host_debug_state.regs;
> >  	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
> >  
> > @@ -232,8 +230,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
> >  	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> >  	guest_ctxt = &vcpu->arch.ctxt;
> >  
> > -	if (!has_vhe())
> > -		__debug_restore_spe_nvhe(host_ctxt, false);
> > +	__debug_restore_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
> 
> So you now do an unconditional save/restore on the exit path for VHE as
> well? Even if the host isn't using the SPE HW? That's not acceptable
> as, in most cases, only the host /or/ the guest will use SPE. Here, you
> put a measurable overhead on each exit.
> 
> If the host is not using SPE, then the restore/save should happen in
> vcpu_load/vcpu_put. Only if the host is using SPE should you do
> something in the run loop. Of course, this only applies to VHE and
> non-VHE must switch eagerly.
> 

On VHE where SPE is used in the guest only - we save/restore in vcpu_load/put.

On VHE where SPE is used in the host only - we save/restore in the run loop.

On VHE where SPE is used in guest and host - we save/restore in the run loop.

As the guest can't trace EL2 it doesn't matter if we restore guest SPE early
in the vcpu_load/put functions. (I assume it doesn't matter that we restore
an EL0/EL1 profiling buffer address at this point and enable tracing given
that there is nothing to trace until entering the guest).

However the reason for moving save/restore to vcpu_load/put when the host is
using SPE is to minimise the host EL2 black-out window.


On nVHE we always save/restore in the run loop. For the SPE guest-use-only
use-case we can't save/restore in vcpu_load/put - because the guest runs at
the same ELx level as the host - and thus doing so would result in the guest
tracing part of the host.

Though if we determine that (for nVHE systems) the guest SPE is profiling only
EL0 - then we could also save/restore in vcpu_load/put where SPE is only being
used in the guest.

Does that make sense, are my reasons correct?

Thanks,

Andrew Murray


> >  
> >  	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
> >  		return;
> > @@ -249,19 +246,21 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
> >  
> >  void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
> >  {
> > -	/*
> > -	 * Non-VHE: Disable and flush SPE data generation
> > -	 * VHE: The vcpu can run, but it can't hide.
> > -	 */
> >  	struct kvm_cpu_context *host_ctxt;
> >  
> >  	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
> > -	if (!has_vhe())
> > -		__debug_save_spe_nvhe(host_ctxt, false);
> > +	if (cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
> > +						 ID_AA64DFR0_PMSVER_SHIFT))
> > +		__debug_save_spe_context(host_ctxt, kvm_arm_spe_v1_ready(vcpu));
> >  }
> >  
> >  void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
> >  {
> > +	bool kvm_spe_ready = kvm_arm_spe_v1_ready(vcpu);
> > +
> > +	/* SPE present on this vCPU? */
> > +	if (kvm_spe_ready)
> > +		__debug_save_spe_context(&vcpu->arch.ctxt, kvm_spe_ready);
> >  }
> >  
> >  u32 __hyp_text __kvm_get_mdcr_el2(void)
> > diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
> > index 48d118fdb174..30c40b1bc385 100644
> > --- a/include/kvm/arm_spe.h
> > +++ b/include/kvm/arm_spe.h
> > @@ -16,4 +16,10 @@ struct kvm_spe {
> >  	bool irq_level;
> >  };
> >  
> > +#ifdef CONFIG_KVM_ARM_SPE
> > +#define kvm_arm_spe_v1_ready(v)		((v)->arch.spe.ready)
> > +#else
> > +#define kvm_arm_spe_v1_ready(v)		(false)
> > +#endif /* CONFIG_KVM_ARM_SPE */
> > +
> >  #endif /* __ASM_ARM_KVM_SPE_H */
> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
