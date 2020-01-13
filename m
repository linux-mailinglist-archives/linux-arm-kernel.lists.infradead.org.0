Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DBA139664
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 17:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJW9/8+41kZumyLX7zz79Jcz+9e6HJjRlUT9m7e+mv0=; b=UGSmv1iWsfheb9
	IDYl+tbbmKtnqB+YOtHWBEVQAAlDMnbmW7e9iLnUMWF/zlktnU458txMYlEAyUxXQHGamLN3n11af
	w1KnQjE+p/Ll8Xg8HYodbjfpiX/MsH1V5Lp6k2CDbDSMMESpy2OMEuXV40LvTe3eYZI02ILvrlRAE
	nrLS2JGS8Jq00Ea+lEzl+n0NudG5WARCHyIYJ+pZHEEbHXl/N2I0qD8evDmCUBVqV2XmtIWN7TE8i
	RF3tpYnQ5ND8F6j5v4GFNcYgCuEfSFJevdPc+5dtYwv6XI33sXm62GOYP3tEN2cOle/0N38J9lRMW
	p+AW9TI72lhiZlt585jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir2d3-0004fB-VO; Mon, 13 Jan 2020 16:31:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2cx-0004eB-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 16:31:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3EC1011B3;
 Mon, 13 Jan 2020 08:31:41 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A69683F534;
 Mon, 13 Jan 2020 08:31:40 -0800 (PST)
Date: Mon, 13 Jan 2020 16:31:38 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 10/18] arm64: KVM/debug: use EL1&0 stage 1 translation
 regime
Message-ID: <20200113163138.GP42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-11-andrew.murray@arm.com>
 <86d0cgir74.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86d0cgir74.wl-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_083143_844317_7942DCF9 
X-CRM114-Status: GOOD (  22.23  )
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 22, 2019 at 10:34:55AM +0000, Marc Zyngier wrote:
> On Fri, 20 Dec 2019 14:30:17 +0000,
> Andrew Murray <andrew.murray@arm.com> wrote:
> > 
> > From: Sudeep Holla <sudeep.holla@arm.com>
> > 
> > Now that we have all the save/restore mechanism in place, lets enable
> > the translation regime used by buffer from EL2 stage 1 to EL1 stage 1
> > on VHE systems.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > [ Reword commit, don't trap to EL2 ]
> 
> Not trapping to EL2 for the case where we don't allow SPE in the
> guest is not acceptable.
> 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  arch/arm64/kvm/hyp/switch.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> > index 67b7c160f65b..6c153b79829b 100644
> > --- a/arch/arm64/kvm/hyp/switch.c
> > +++ b/arch/arm64/kvm/hyp/switch.c
> > @@ -100,6 +100,7 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
> >  
> >  	write_sysreg(val, cpacr_el1);
> >  
> > +	write_sysreg(vcpu->arch.mdcr_el2 | 3 << MDCR_EL2_E2PB_SHIFT, mdcr_el2);
> >  	write_sysreg(kvm_get_hyp_vector(), vbar_el1);
> >  }
> >  NOKPROBE_SYMBOL(activate_traps_vhe);
> > @@ -117,6 +118,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
> >  		__activate_traps_fpsimd32(vcpu);
> >  	}
> >  
> > +	write_sysreg(vcpu->arch.mdcr_el2 | 3 << MDCR_EL2_E2PB_SHIFT, mdcr_el2);
> 
> There is a _MASK macro that can replace this '3', and is in keeping
> with the rest of the code.
> 
> It still remains that it looks like the wrong place to do this, and
> vcpu_load seems much better. Why should you write to mdcr_el2 on each
> entry to the guest, since you know whether it has SPE enabled at the
> point where it gets scheduled?

For nVHE, the only reason we'd want to change E2PB on entry/exit of guest
would be if the host is also using SPE. If the host is using SPE whilst
the vcpu is 'loaded' but we're not in the guest, then host SPE could raise
an interrupt - we need the E2PB bits to allow access from EL1 (host).

Thanks,

Andrew Murray

> 
> 	M.
> 
> -- 
> Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
