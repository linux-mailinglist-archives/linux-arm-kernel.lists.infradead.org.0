Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B56116B19
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMgRKyHmLN8XTH1dgoxS/P+o7xV/wHHay5yip9twgNM=; b=Vg9Q3GytZmuMGE
	q2rHiljrO3OyvOQz0d9rUl6ExPYW/bL+WDKOP1vOqrGRP1DmzYEcG4j9//ECvNmhqFvTfSvblEr1F
	Cav0bWYniionze3GUX53wv22TizE8gitfMitF45gw82adJCa/h2GiB5kwM08/4AO2lx1wtZVT1VMA
	pvQIYHH0/ZJjptZPJDqNraw5pTBzaVoWcxc3Ws5zn9dhSvnk6PwkH+wiw2cQQCwy6lgI0Kh2+Fxj/
	O4jV4cSZYuTXHYGwCQ/1xSSA9NnsT8gTK+Uy+fVmXjO6Z6hKERyJCjSiC5iG8mKYzHkXbujL78KoK
	lwKB5l0c7tdBE6WdycGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGLn-0003KB-9I; Mon, 09 Dec 2019 10:33:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGLT-00037e-AZ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:32:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 925861FB;
 Mon,  9 Dec 2019 02:32:47 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9160F3F6CF;
 Mon,  9 Dec 2019 02:32:46 -0800 (PST)
Date: Mon, 9 Dec 2019 10:32:40 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 2/2] kvm/arm64: don't log IMP DEF sysreg traps
Message-ID: <20191209103240.GA40574@lakrids.cambridge.arm.com>
References: <20191205180652.18671-1-mark.rutland@arm.com>
 <20191205180652.18671-3-mark.rutland@arm.com>
 <86h82dz1pf.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86h82dz1pf.wl-maz@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_023251_430599_1B81910D 
X-CRM114-Status: GOOD (  16.97  )
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
Cc: suzuki.poulose@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, alexandru.elisei@arm.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 07:35:56PM +0000, Marc Zyngier wrote:
> On Thu, 05 Dec 2019 18:06:52 +0000,
> Mark Rutland <mark.rutland@arm.com> wrote:
> > 
> > We don't intend to support IMPLEMENATION DEFINED system registers, but
> > have to trap them (and emulate them as UNDEFINED). These traps aren't
> > interesting to the system administrator or to the KVM developers, so
> > let's not bother logging when we do so.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Alexandru Elisei <alexandru.elisei@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> > Cc: Marc Zyngier <maz@kernel.org>
> > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Cc: kvmarm@lists.cs.columbia.edu
> > ---
> >  arch/arm64/kvm/sys_regs.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> > index d128abd38656..61f019104841 100644
> > --- a/arch/arm64/kvm/sys_regs.c
> > +++ b/arch/arm64/kvm/sys_regs.c
> > @@ -2233,6 +2233,12 @@ int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
> >  				NULL, 0);
> >  }
> >  
> > +static bool is_imp_def_sys_reg(struct sys_reg_params *params)
> > +{
> > +	// See ARM DDI 0487E.a, section D12.3.2
> > +	return params->Op0 == 3 && (params->CRn & 0b1011) == 0b1011;
> > +}
> > +
> >  static int emulate_sys_reg(struct kvm_vcpu *vcpu,
> >  			   struct sys_reg_params *params)
> >  {
> > @@ -2248,6 +2254,8 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
> >  
> >  	if (likely(r)) {
> >  		perform_access(vcpu, params, r);
> > +	} else if (is_imp_def_sysreg(params)) {
> 
> Meh. Doesn't compile... :-(
> Fixing it locally.

Whoops, sorry about that. I "fixed" this at the last moment to match
emulate_sys_reg(), but evidently failed to rebuild. I had tested the
patch before the rename on my machine, at least.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
