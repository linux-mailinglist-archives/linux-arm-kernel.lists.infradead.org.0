Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C9F135F3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hePyl4h+UPokvMb6lDwpZ4b1OMFzO6gLy0NQIUcelIc=; b=pUg7oCiFI1Vm4Z
	xWMg/m0wBSbiYOUmWldjDgZcSZrVeFY1mND0oKlpGvBgabrASknO12BOqNRLLMYIk9Dzl0clsfouK
	Ly2re6kvNz+AEivPgKn2wF0CdbO0VpDHi7LPIK5MFS5SFoEQQwuhL1PYySxqO0xmHtQs4KXDtcFv5
	Fu1OwU2bBJwQGZ4XKCERHkHDZn7U9SC5kM+rpqa8g08/3ce3ZcPZavZg7ds576kpVfsuLY2ipzvM4
	KNbuavelppSBldPHLvKT/wzA0A5bGR1fvu7fOT2yG+AmVwyj6CiuSPab0He8ZekDRUNydNhhndV9w
	ucliP/Nzw5iY48ao8DBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbYj-00011Y-EC; Thu, 09 Jan 2020 17:25:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbYY-00010J-SY
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 17:25:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 320E7328;
 Thu,  9 Jan 2020 09:25:14 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A75BE3F703;
 Thu,  9 Jan 2020 09:25:13 -0800 (PST)
Date: Thu, 9 Jan 2020 17:25:12 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 11/18] KVM: arm64: don't trap Statistical Profiling
 controls to EL2
Message-ID: <20200109172511.GA42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-12-andrew.murray@arm.com>
 <86bls0iqv6.wl-maz@kernel.org>
 <20191223115651.GA42593@e119886-lin.cambridge.arm.com>
 <1bb190091362262021dbaf41b5fe601e@www.loen.fr>
 <20191223121042.GC42593@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223121042.GC42593@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_092515_013633_06738C89 
X-CRM114-Status: GOOD (  26.48  )
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
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 12:10:42PM +0000, Andrew Murray wrote:
> On Mon, Dec 23, 2019 at 12:05:12PM +0000, Marc Zyngier wrote:
> > On 2019-12-23 11:56, Andrew Murray wrote:
> > > On Sun, Dec 22, 2019 at 10:42:05AM +0000, Marc Zyngier wrote:
> > > > On Fri, 20 Dec 2019 14:30:18 +0000,
> > > > Andrew Murray <andrew.murray@arm.com> wrote:
> > > > >
> > > > > As we now save/restore the profiler state there is no need to trap
> > > > > accesses to the statistical profiling controls. Let's unset the
> > > > > _TPMS bit.
> > > > >
> > > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > > > ---
> > > > >  arch/arm64/kvm/debug.c | 2 --
> > > > >  1 file changed, 2 deletions(-)
> > > > >
> > > > > diff --git a/arch/arm64/kvm/debug.c b/arch/arm64/kvm/debug.c
> > > > > index 43487f035385..07ca783e7d9e 100644
> > > > > --- a/arch/arm64/kvm/debug.c
> > > > > +++ b/arch/arm64/kvm/debug.c
> > > > > @@ -88,7 +88,6 @@ void kvm_arm_reset_debug_ptr(struct kvm_vcpu
> > > > *vcpu)
> > > > >   *  - Performance monitors (MDCR_EL2_TPM/MDCR_EL2_TPMCR)
> > > > >   *  - Debug ROM Address (MDCR_EL2_TDRA)
> > > > >   *  - OS related registers (MDCR_EL2_TDOSA)
> > > > > - *  - Statistical profiler (MDCR_EL2_TPMS/MDCR_EL2_E2PB)
> > > > >   *
> > > > >   * Additionally, KVM only traps guest accesses to the debug
> > > > registers if
> > > > >   * the guest is not actively using them (see the
> > > > KVM_ARM64_DEBUG_DIRTY
> > > > > @@ -111,7 +110,6 @@ void kvm_arm_setup_debug(struct kvm_vcpu
> > > > *vcpu)
> > > > >  	 */
> > > > >  	vcpu->arch.mdcr_el2 = __this_cpu_read(mdcr_el2) &
> > > > MDCR_EL2_HPMN_MASK;
> > > > >  	vcpu->arch.mdcr_el2 |= (MDCR_EL2_TPM |
> > > > > -				MDCR_EL2_TPMS |
> > > > 
> > > > No. This is an *optional* feature (the guest could not be presented
> > > > with the SPE feature, or the the support simply not be compiled in).
> > > > 
> > > > If the guest is not allowed to see the feature, for whichever
> > > > reason,
> > > > the traps *must* be enabled and handled.
> > > 
> > > I'll update this (and similar) to trap such registers when we don't
> > > support
> > > SPE in the guest.
> > > 
> > > My original concern in the cover letter was in how to prevent the guest
> > > from attempting to use these registers in the first place - I think the
> > > solution I was looking for is to trap-and-emulate ID_AA64DFR0_EL1 such
> > > that
> > > the PMSVer bits indicate that SPE is not emulated.
> > 
> > That, and active trapping of the SPE system registers resulting in injection
> > of an UNDEF into the offending guest.
> 
> Yes that's no problem.

The spec says that 'direct access to [these registers] are UNDEFINED' - is it
not more correct to handle this with trap_raz_wi than an undefined instruction?

Thanks,

Andrew Murray

> 
> Thanks,
> 
> Andrew Murray
> 
> > 
> > Thanks,
> > 
> >         M.
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
