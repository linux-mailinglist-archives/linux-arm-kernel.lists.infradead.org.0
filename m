Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEE017E27F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:25:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaL+JD462fo23zn5/E+0eiFcyB6awdlQYjK5O2OeV7I=; b=p9JtU6Dr0cIRiU
	7nJ0aMLYx8TMi/lVm8/Y3jTQZBGXJeyb4laU81qFw692lKnp+DvVhVRTOC94B2LpHpH32ek2Irgiy
	fNdvUAUp1e/nSxWw+AHEG6jdE5drV5yCfKgioWoY+tNh+mqk9E+EDPySQ2Na8BaFS3xnwYipqpl9S
	IoMyCoo6cCBCNgf2MMVeaXLtzHqH8vEDGVQCwj04+oawuX2BgynDdJ/oIOuTAXJbBtI9+6syVdjWW
	33cuhm9rXYRzqKxIy7/vcduBTjgdntAIDSyOrVmzYHmbYOQYe5T+L1/D3E5StACRv2VfSfXcmDG25
	C5v9aYJpZn2r9+QQo41g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJLj-0007mJ-R1; Mon, 09 Mar 2020 14:25:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJLZ-0007lZ-EL
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:25:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C805B11D4;
 Mon,  9 Mar 2020 07:25:30 -0700 (PDT)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AC3C3F67D;
 Mon,  9 Mar 2020 07:25:30 -0700 (PDT)
Date: Mon, 9 Mar 2020 14:25:29 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v5 3/7] arm64/kvm: disable access to AMU registers from
 kvm guests
Message-ID: <20200309142529.GB13343@arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
 <20200226132947.29738-4-ionela.voinescu@arm.com>
 <46b89d0c9704e0a0fb7a4ac2a1fb5b7a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46b89d0c9704e0a0fb7a4ac2a1fb5b7a@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_072533_530768_25A798C9 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, pkondeti@codeaurora.org,
 catalin.marinas@arm.com, linux-pm@vger.kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
 peterz@infradead.org, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Thursday 27 Feb 2020 at 19:58:32 (+0000), Marc Zyngier wrote:
[..]
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index 3e909b117f0c..44354c812783 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -1003,6 +1003,20 @@ static bool access_pmuserenr(struct kvm_vcpu
> > *vcpu, struct sys_reg_params *p,
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
> > +#define AMU_AMEVCNTR0_EL0(n) { SYS_DESC(SYS_AMEVCNTR0_EL0(n)),
> > access_amu }
> > +#define AMU_AMEVTYPE0_EL0(n) { SYS_DESC(SYS_AMEVTYPE0_EL0(n)),
> > access_amu }
> > +#define AMU_AMEVCNTR1_EL0(n) { SYS_DESC(SYS_AMEVCNTR1_EL0(n)),
> > access_amu }
> > +#define AMU_AMEVTYPE1_EL0(n) { SYS_DESC(SYS_AMEVTYPE1_EL0(n)),
> > access_amu }
> > +
> >  static bool trap_ptrauth(struct kvm_vcpu *vcpu,
> >  			 struct sys_reg_params *p,
> >  			 const struct sys_reg_desc *rd)
> > @@ -1078,8 +1092,10 @@ static u64 read_id_reg(const struct kvm_vcpu
> > *vcpu,
> >  			 (u32)r->CRn, (u32)r->CRm, (u32)r->Op2);
> >  	u64 val = raz ? 0 : read_sanitised_ftr_reg(id);
> > 
> > -	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
> > -		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
> > +	if (id == SYS_ID_AA64PFR0_EL1) {
> > +		if (!vcpu_has_sve(vcpu))
> > +			val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
> > +		val &= ~(0xfUL << ID_AA64PFR0_AMU_SHIFT);
> 
> This will definitely conflict with some of the ongoing rework I have[1].
> I'm happy to provide this as a stable branch for you to rebase on top,
> or use an arm64 provided branch to rebase my stoff on top.
> 
> Just let me know how you want to proceed.
>

Catalin added the AMU patches on top of 5.6-rc3 at [1].
Is this okay as a base branch for your patches?

Thanks,
Ionela.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/amu

> Thanks,
> 
>         M.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?h=kvm-arm64/debug-fixes-5.6&id=454fb7398d3626328f7f771c07d21e894e4e1a3b
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
