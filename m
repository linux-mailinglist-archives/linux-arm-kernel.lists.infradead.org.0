Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA414BD38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLaQD8m6bY2KBT5iaN8TAI6ITTrJTOhRepWEs/ESCzA=; b=Qmb29WOhuJCT6p
	IQYy77ux2i6notZVDCeV/frvBdG/8iBuonVzq3s3hJzllnAOBpo0pQvmA0AlptZVY/9eoXCb3Ghfx
	sUk6nqufbyUYUd4p2hemhmG2Cgw4PeEm9vJhnWTg+Qcfz8MA6f+/w312vsPpxxNMgX1zt1gQX6veL
	Ez3NZz9ZKTp+FHsMBF3obwWY4RakH/XN8rVqcSmVAE+hJ+SHaKi3q8Lh82BTC1kWlJ7nzfxlWYl0o
	LqjhScd7Xu+XFoIjmsNyUyac6fwiT9UU3VKk3HqHRxmz266SWDS7ObFfffzk78I5kyf94UTNbDRkS
	IGnu2d/L9HlI4VFlroJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwT6X-0001Ci-2U; Tue, 28 Jan 2020 15:48:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwT6N-0001Ai-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:48:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49F9A31B;
 Tue, 28 Jan 2020 07:48:28 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF8AA3F68E;
 Tue, 28 Jan 2020 07:48:27 -0800 (PST)
Date: Tue, 28 Jan 2020 15:48:26 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 3/6] arm64/kvm: disable access to AMU registers from
 kvm guests
Message-ID: <20200128154826.GB17411@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-4-ionela.voinescu@arm.com>
 <bc3f582c-9aed-8052-d0cb-b39c76c8ce73@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc3f582c-9aed-8052-d0cb-b39c76c8ce73@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_074831_603633_FAE280A5 
X-CRM114-Status: GOOD (  35.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 Julien Thierry <julien.thierry.kdev@gmail.com>, sudeep.holla@arm.com,
 James Morse <james.morse@arm.com>, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 27 Jan 2020 at 15:33:26 (+0000), Valentin Schneider wrote:
> On 18/12/2019 18:26, Ionela Voinescu wrote:
> > diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
> > index 6e5d839f42b5..dd20fb185d56 100644
> > --- a/arch/arm64/include/asm/kvm_arm.h
> > +++ b/arch/arm64/include/asm/kvm_arm.h
> > @@ -266,10 +266,11 @@
> >  #define CPTR_EL2_TFP_SHIFT 10
> >  
> >  /* Hyp Coprocessor Trap Register */
> > -#define CPTR_EL2_TCPAC	(1 << 31)
> > -#define CPTR_EL2_TTA	(1 << 20)
> > -#define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
> >  #define CPTR_EL2_TZ	(1 << 8)
> > +#define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
> > +#define CPTR_EL2_TTA	(1 << 20)
> > +#define CPTR_EL2_TAM	(1 << 30)
> > +#define CPTR_EL2_TCPAC	(1 << 31)
> 
> Nit: why the #define movement? Couldn't that just be added beneath
> CPTR_EL2_TCPAC?
>

It was a 'while here' thing done wrong. I was looking at the CPACR bits
and it led me to believe that the order of bits in the rest of the file
was from least significant to most significant and I thought I'll
reorder this as well. But looking again I see that it was done
correctly the first time, according to most of the file. My bad!

> >  #define CPTR_EL2_RES1	0x000032ff /* known RES1 bits in CPTR_EL2 */
> >  #define CPTR_EL2_DEFAULT	CPTR_EL2_RES1
> >  
> > diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> > index 72fbbd86eb5e..0bca87a2621f 100644
> > --- a/arch/arm64/kvm/hyp/switch.c
> > +++ b/arch/arm64/kvm/hyp/switch.c
> > @@ -90,6 +90,17 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
> >  	val = read_sysreg(cpacr_el1);
> >  	val |= CPACR_EL1_TTA;
> >  	val &= ~CPACR_EL1_ZEN;
> > +
> > +	/*
> > +	 * With VHE enabled, we have HCR_EL2.{E2H,TGE} = {1,1}. Note that in
> > +	 * this case CPACR_EL1 has the same bit layout as CPTR_EL2, and
> > +	 * CPACR_EL1 accessing instructions are redefined to access CPTR_EL2.
> > +	 * Therefore use CPTR_EL2.TAM bit reference to activate AMU register
> > +	 * traps.
> > +	 */
> > +
> > +	val |= CPTR_EL2_TAM;
> > +
> 
> Hmm so this is a bit confusing for me, I've rewritten that part of the
> email too many times (didn't help that I'm far from being a virt guru).
> Rectifications are most welcome.
> 

Yes, this is definitely not straight-forward. It took me a while to
retrace my steps in regards to this functionality as well.

> 
> First, AFAICT we *don't* have HCR_EL2.TGE set anymore at this point, it's
> cleared just a bit earlier in __activate_traps().
> 

First of all when I wrote the above I believed that when this function is
called we'll have HCR_EL2.{E2H,TGE} = {1,1}, which reflects running on
the host with general exceptions trapped to EL2. So thank you for the
correction.

But I don't believe running with TGE cleared changes anything at this
point. First of all I think we can only run the code here at EL2.
Initially I thought we might run it at EL1 for nested virtualisation
but for nested OSs we'll use NVHE so that problem goes away.

So when we run this code at EL2, accesses to EL1 registers are
redirected to their EL2 equivalents due to HCR_EL2.{E2H} = {1}, with no
impact from HCR_EL2.{TGE} = {0} in regards to the setting of the TAM bit
for CPACR_EL1/CPTR_EL2. Therefore, this code will result in AMU accesses
being trapped to EL2 when coming from EL0 or EL1 on the guest side, once
we enter guest.

> Then, your comment suggests that when we're running this code, CPACR_EL1
> accesses are rerouted to CPTR_EL2. Annoyingly this isn't mentioned in
> the doc of CPACR_EL1, but D5.6.3 does say
> 
> """
> When ARMv8.1-VHE is implemented, and HCR_EL2.E2H is set to 1, when executing
> at EL2, some EL1 System register access instructions are redefined to access
> the equivalent EL2 register.
> """
> 
> And CPACR_EL1 is part of these, so far so good. Now, the thing is
> the doc for CPACR_EL1 *doesn't* mention any TAM bit - but CPTR_EL2 does.
> I believe what *do* want here is to set CPTR_EL2.TAM (which IIUC we end
> up doing via the rerouting).
> 

Right! The error of my comment is that I believed that E2H and TGE
together determine the re-mapping or CPACR_EL1 to CPTR_EL2. But
actually, E2H determines this redirection when running at EL2, while TGE
only determines the current trapping behaviour: if we run with TGE=0,
we're running on the guest and CPACR_EL1 takes effect, and when we run
on the host with TGE=1, CPTR_EL2 takes effect.

I believe the reason CPACR_EL1 does not have a TAM bit is that for
trapping at EL1 we have the AMU register AMUSERENR_EL0 to trap accesses
from EL0.

When we run on the host side with HCR_EL2.{E2H,TGE} = {1,1}, the
CPTR_EL2.TAM bit takes effect.

I will modify my comment.

> So, providing I didn't get completely lost on the way, I have to ask:
> why do we use CPACR_EL1 here? Couldn't we use CPTR_EL2 directly?
>

No, all good so far :). I believe the reason is to keep the kernel as
generic as possible with the accesses to EL1 registers where a generic
kernel should be running. The fact that with VHE we know to be running
at EL2 and this code is only called at EL2 is more of an implementation
detail that should be hidden behind the VHE abstraction.


This being said I'm still not sure if I should be using here a
CPTR_EL2.TAM bit or a CPACR_EL1.TAM bit. Functionally it would be the
same but the use of one or another will 'break' some kind of
abstraction logic :).

Let me know if you have a preference.


>
> >  	if (update_fp_enabled(vcpu)) {
> >  		if (vcpu_has_sve(vcpu))
> >  			val |= CPACR_EL1_ZEN;
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index 9f2165937f7d..940ab9b4c98b 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -1003,6 +1003,20 @@ static bool access_pmuserenr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> >  	{ SYS_DESC(SYS_PMEVTYPERn_EL0(n)),					\
> >  	  access_pmu_evtyper, reset_unknown, (PMEVTYPER0_EL0 + n), }
> >  
> > +static bool access_amu(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> > +			     const struct sys_reg_desc *r)
> > +{
> > +	kvm_inject_undefined(vcpu);
> > +
> > +	return false;
> > +}
> > +
> > +/* Macro to expand the AMU counter and type registers*/
> > +#define AMU_AMEVCNTR0_EL0(n) { SYS_DESC(SYS_AMEVCNTR0_EL0(n)), access_amu }
> > +#define AMU_AMEVTYPE0_EL0(n) { SYS_DESC(SYS_AMEVTYPE0_EL0(n)), access_amu }
> > +#define AMU_AMEVCNTR1_EL0(n) { SYS_DESC(SYS_AMEVCNTR1_EL0(n)), access_amu }
> > +#define AMU_AMEVTYPE1_EL0(n) { SYS_DESC(SYS_AMEVTYPE1_EL0(n)), access_amu }
> > +
> 
> You could save a *whopping* two lines with something like:
> 
> #define AMU_AMEVCNTR_EL0(group, n) { SYS_DESC(SYS_AMEVCNTR##group##_EL0(n)), access_amu }
> #define AMU_AMEVTYPE_EL0(group, n) { SYS_DESC(SYS_AMEVTYPE##group##_EL0(n)), access_amu }
> 

Will do!

> Though it doesn't help shortening the big register list below.
> 
> >  static bool trap_ptrauth(struct kvm_vcpu *vcpu,
> >  			 struct sys_reg_params *p,
> >  			 const struct sys_reg_desc *rd)
> > @@ -1078,8 +1092,12 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
> >  			 (u32)r->CRn, (u32)r->CRm, (u32)r->Op2);
> >  	u64 val = raz ? 0 : read_sanitised_ftr_reg(id);
> >  
> > -	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
> > -		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
> > +	if (id == SYS_ID_AA64PFR0_EL1) {
> > +		if (!vcpu_has_sve(vcpu))
> > +			val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
> > +		val &= ~(0xfUL << ID_AA64PFR0_AMU_SHIFT);
> > +	} else if (id == SYS_ID_PFR0_EL1) {
> > +		val &= ~(0xfUL << ID_PFR0_AMU_SHIFT);
> >  	} else if (id == SYS_ID_AA64ISAR1_EL1 && !vcpu_has_ptrauth(vcpu)) {
> >  		val &= ~((0xfUL << ID_AA64ISAR1_APA_SHIFT) |
> >  			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
> 
> Could almost turn the thing into a switch case at this point.


Right! It would definitely read better.

Thanks,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
