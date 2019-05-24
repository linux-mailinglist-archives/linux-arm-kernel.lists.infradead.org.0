Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F88299D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5vg0DuIGLYXxZxYogeKX1bLZANYKruu8mOkbSI7AIA=; b=OH8eCt8VOIZ0Zk
	cug7p6X5YasmWpwdjAjyGE/ZrRaqYdbLGUzluWUT7WDQMai0WmtvJsrUzBauppu+iwXUsaOR/yYcD
	KIJfFJSN6xoEsWNHGx8lDHYFbbRv3BFW2zvikRV89d+Ptk2lMMgrw1lhL4v8m50Frkm/GYbIZeOD/
	nBdhsQaTw6WCT1mT6LaxnWyjePoVQKYjK4/tjlwVVsrKzeG+2xyh3UzJlCi33kjhexJehzIVh/oyJ
	MaBcQgS41Pzb5husyFaGGZIn8Rnx85JPBhrgod7PN3Ch0UKwLkWlwafC0Rnqem+AzXnjIMhUOLm/6
	U3ERi4XNNifUiBrH7FMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAvy-00010C-OG; Fri, 24 May 2019 14:12:34 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAvs-0000zN-2W
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:12:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E549BA78;
 Fri, 24 May 2019 07:12:25 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFD8C3F575;
 Fri, 24 May 2019 07:12:23 -0700 (PDT)
Date: Fri, 24 May 2019 15:12:18 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v2 05/15] arm64: KVM: add access handler for SPE system
 registers
Message-ID: <20190524141218.GA29406@e107155-lin>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
 <20190523103502.25925-6-sudeep.holla@arm.com>
 <c45323a8-92e4-e406-381b-2084e222a870@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c45323a8-92e4-e406-381b-2084e222a870@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_071228_126392_D82DB38C 
X-CRM114-Status: GOOD (  21.87  )
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
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 12:36:24PM +0100, Julien Thierry wrote:
> Hi Sudeep,
> 
> On 23/05/2019 11:34, Sudeep Holla wrote:
> > SPE Profiling Buffer owning EL is configurable and when MDCR_EL2.E2PB
> > is configured to provide buffer ownership to EL1, the control registers
> > are trapped.
> > 
> > Add access handlers for the Statistical Profiling Extension(SPE)
> > Profiling Buffer controls registers. This is need to support profiling
> > using SPE in the guests.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  arch/arm64/include/asm/kvm_host.h | 13 ++++++++++++
> >  arch/arm64/kvm/sys_regs.c         | 35 +++++++++++++++++++++++++++++++
> >  include/kvm/arm_spe.h             | 15 +++++++++++++
> >  3 files changed, 63 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> > index 611a4884fb6c..559aa6931291 100644
> > --- a/arch/arm64/include/asm/kvm_host.h
> > +++ b/arch/arm64/include/asm/kvm_host.h
> > @@ -147,6 +147,19 @@ enum vcpu_sysreg {
> >  	MDCCINT_EL1,	/* Monitor Debug Comms Channel Interrupt Enable Reg */
> >  	DISR_EL1,	/* Deferred Interrupt Status Register */
> >  
> > +	/* Statistical Profiling Extension Registers */
> > +
> > +	PMSCR_EL1,
> > +	PMSICR_EL1,
> > +	PMSIRR_EL1,
> > +	PMSFCR_EL1,
> > +	PMSEVFR_EL1,
> > +	PMSLATFR_EL1,
> > +	PMSIDR_EL1,
> > +	PMBLIMITR_EL1,
> > +	PMBPTR_EL1,
> > +	PMBSR_EL1,
> > +
> >  	/* Performance Monitors Registers */
> >  	PMCR_EL0,	/* Control Register */
> >  	PMSELR_EL0,	/* Event Counter Selection Register */
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index 857b226bcdde..dbf5056828d3 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -646,6 +646,30 @@ static void reset_pmcr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
> >  	__vcpu_sys_reg(vcpu, PMCR_EL0) = val;
> >  }
> >  
> > +static bool access_pmsb_val(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
> > +			    const struct sys_reg_desc *r)
> > +{
> > +	if (p->is_write)
> > +		vcpu_write_sys_reg(vcpu, p->regval, r->reg);
> > +	else
> > +		p->regval = vcpu_read_sys_reg(vcpu, r->reg);
> > +
> > +	return true;
> > +}
> > +
> > +static void reset_pmsb_val(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
> > +{
> > +	if (!kvm_arm_support_spe_v1()) {
> > +		__vcpu_sys_reg(vcpu, r->reg) = 0;
> > +		return;
> > +	}
> > +
> > +	if (r->reg == PMSIDR_EL1)
> 
> If only PMSIDR_EL1 has a non-zero reset value, it feels a bit weird to
> share the reset function for all these registers.
>

Ah, right. Initially I did have couple of other registers which were not
needed. So I removed them without observing that I could have just used
reset_val(0) for all except PMSIDR_EL1.

> I would suggest only having a reset_pmsidr() function, and just use
> reset_val() with sys_reg_desc->val set to 0 for all the others.
>

Thanks for pointing this out.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
