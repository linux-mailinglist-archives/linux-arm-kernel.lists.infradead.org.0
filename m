Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A0A38D8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAyDbWQHv92/fVSQ1uEFooEQqYyQCK0ju040ZMXP8es=; b=CW+4RJhlLT6JiV
	5wpxHvM99Rjjrnnr3+3FFO6Dxy72GlEzCzoD2S2LDOnx9zsLAD3D8tAOzBewP3jJOBfSiEqDU5AFm
	gKYPpvL2dyTj8ZdIkpcL2idY9koOMm5vFN7n+2vK4l7kDC3l0Ni0oiKXvjX79SxzBAOpCtC0Jv1zI
	Wp9y3ZYC6116V87uABpnlbgOC9jZwJcM7oq3SkgyOkOkIzUvC7dKgCfrmIkAheN6Dtx1yB136Wteg
	6la9AXkg3L93rbl+wqg+xjAwuQ1VvP8PhIRkZMCBngpGXyWA3rSZ7mXovUwiupyevMYbH4jR2ZjjZ
	h+2C6jgaYMhrLi14R7Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZG4s-0006y6-Bp; Fri, 07 Jun 2019 14:42:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG4h-0006xk-RW
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:42:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CE78337;
 Fri,  7 Jun 2019 07:42:35 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05C733F71A;
 Fri,  7 Jun 2019 07:42:33 -0700 (PDT)
Date: Fri, 7 Jun 2019 15:42:31 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Message-ID: <20190607144229.GF28398@e103592.cambridge.arm.com>
References: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
 <20190604095915.GW28398@e103592.cambridge.arm.com>
 <20190607060037.eaof3hllyombxlhc@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607060037.eaof3hllyombxlhc@vireshk-i7>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074235_939220_DDBD5F03 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 11:30:37AM +0530, Viresh Kumar wrote:
> On 04-06-19, 10:59, Dave Martin wrote:
> > On Tue, Jun 04, 2019 at 10:13:19AM +0530, Viresh Kumar wrote:
> > > We currently get following compilation warning:
> > > 
> > > arch/arm64/kvm/guest.c: In function 'set_sve_vls':
> > > arch/arm64/kvm/guest.c:262:18: warning: passing argument 1 of 'vq_present' from incompatible pointer type
> > > arch/arm64/kvm/guest.c:212:13: note: expected 'const u64 (* const)[8]' but argument is of type 'u64 (*)[8]'
> > > 
> > > The argument can't be const, as it is copied at runtime using
> > > copy_from_user(). Drop const from the prototype of vq_present().
> > > 
> > > Fixes: 9033bba4b535 ("KVM: arm64/sve: Add pseudo-register for the guest's vector lengths")
> > > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > > ---
> > >  arch/arm64/kvm/guest.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> > > index 3ae2f82fca46..78f5a4f45e0a 100644
> > > --- a/arch/arm64/kvm/guest.c
> > > +++ b/arch/arm64/kvm/guest.c
> > > @@ -209,7 +209,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
> > >  #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
> > >  
> > >  static bool vq_present(
> > > -	const u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
> > > +	u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
> > >  	unsigned int vq)
> > >  {
> > >  	return (*vqs)[vq_word(vq)] & vq_mask(vq);
> > 
> > Ack, but maybe this should just be converted to a macro?
> 
> I will send a patch with that if that's what you want.

I think this would solve the problem and simplify the code a bit at the
same time.

So go for it.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
