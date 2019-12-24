Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4511112A022
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 11:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45tfTDfFKqo3DdfGgAJGtFVKugdjir8mhlJYClfT/Xo=; b=UiTpYBYlsAqyaT
	zuqnCgOW7L5In4onTjdy7hvbsQHktAIPSYasr6H1qY7nBdM1Gy+oKQ7KMbBGFQ7ngoor6rCw1WwLE
	RQQwg41XgXW5LUw/3woaY6GCCWNiM9R2WfbVqQNDuEkxB1X7aUA5cdGsyy3QlDpT+JPfZgsEr6XEZ
	pFXhx6+i80r6shyFTKeNbPjTUQyXSV/ZrHZMrsF2JstrIoYH4TKu3I3Z1Y/o/OjbTPzDArjSZJmtG
	4xl2R1fBq1nOb+VvGyyLg2Xp/vh0An+PHRkMI2JYlzAxpC7cd9gZE3z2elJBAtDeR/ml8KA/9VScS
	aOF3SNY2jafv/VPlJg0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijhS8-0007ur-Mj; Tue, 24 Dec 2019 10:30:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijhRp-0007uE-NL
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 10:29:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93FCF31B;
 Tue, 24 Dec 2019 02:29:52 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C4773F6CF;
 Tue, 24 Dec 2019 02:29:51 -0800 (PST)
Date: Tue, 24 Dec 2019 10:29:50 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 02/18] arm64: KVM: reset E2PB correctly in MDCR_EL2
 when exiting the guest(VHE)
Message-ID: <20191224102949.GD42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-3-andrew.murray@arm.com>
 <20191221131214.769a140e@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191221131214.769a140e@why>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_022953_803771_32DB56BA 
X-CRM114-Status: GOOD (  21.19  )
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
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 21, 2019 at 01:12:14PM +0000, Marc Zyngier wrote:
> On Fri, 20 Dec 2019 14:30:09 +0000
> Andrew Murray <andrew.murray@arm.com> wrote:
> 
> > From: Sudeep Holla <sudeep.holla@arm.com>
> > 
> > On VHE systems, the reset value for MDCR_EL2.E2PB=b00 which defaults
> > to profiling buffer using the EL2 stage 1 translations. 
> 
> Does the reset value actually matter here? I don't see it being
> specific to VHE systems, and all we're trying to achieve is to restore
> the SPE configuration to a state where it can be used by the host.
> 
> > However if the
> > guest are allowed to use profiling buffers changing E2PB settings, we
> 
> How can the guest be allowed to change E2PB settings? Or do you mean
> here that allowing the guest to use SPE will mandate changes of the
> E2PB settings, and that we'd better restore the hypervisor state once
> we exit?
> 
> > need to ensure we resume back MDCR_EL2.E2PB=b00. Currently we just
> > do bitwise '&' with MDCR_EL2_E2PB_MASK which will retain the value.
> > 
> > So fix it by clearing all the bits in E2PB.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  arch/arm64/kvm/hyp/switch.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> > index 72fbbd86eb5e..250f13910882 100644
> > --- a/arch/arm64/kvm/hyp/switch.c
> > +++ b/arch/arm64/kvm/hyp/switch.c
> > @@ -228,9 +228,7 @@ void deactivate_traps_vhe_put(void)
> >  {
> >  	u64 mdcr_el2 = read_sysreg(mdcr_el2);
> >  
> > -	mdcr_el2 &= MDCR_EL2_HPMN_MASK |
> > -		    MDCR_EL2_E2PB_MASK << MDCR_EL2_E2PB_SHIFT |
> > -		    MDCR_EL2_TPMS;
> > +	mdcr_el2 &= MDCR_EL2_HPMN_MASK | MDCR_EL2_TPMS;
> >  
> >  	write_sysreg(mdcr_el2, mdcr_el2);
> >  
> 
> I'm OK with this change, but I believe the commit message could use
> some tidying up.

No problem, I'll update the commit message.

Thanks,

Andrew Murray

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
