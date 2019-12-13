Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805AE11E276
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 11:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oduWquuK2jmITstaCyE5xyZF8udN02RMdPGp78TkUZ8=; b=qSOifXVtyDuJjG
	5R1rq4Osqr98bxl6xACDRCj1qAMPauZj7JbYzYabaNLShYJ1SuiFSls79nfooJ5bK6CXvzoOXM9TT
	Nb9Bp20PCzNTOrnFuDgCVd6SXiUzPiXKT4aaTrl1pU1/uLUNPb7TQxRlc1waANpzn0FtaSs27eEQ6
	vYMyxQOQg/aXYd2Cttb7tZJn0OThIVA5XCZYVtlfkuzx2n2nYFz8BsvZEJy0aheRrzVPFL69/uRJ3
	72pvYj1cRenltpJhS52M/RKuu1RJ5sWfWOigioVYe+7Hlz9w6yoTYupB5NTDLcDTxRK/PWLqcdhuo
	gI4wGnyUVQm5GQlbZncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifid0-0001J4-HD; Fri, 13 Dec 2019 10:56:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifics-0001Ig-Hh
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 10:56:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E41C1FB;
 Fri, 13 Dec 2019 02:56:49 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E69B03F718;
 Fri, 13 Dec 2019 02:56:48 -0800 (PST)
Date: Fri, 13 Dec 2019 11:56:47 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Only sign-extend MMIO up to register width
Message-ID: <20191213105647.GH28840@e113682-lin.lund.arm.com>
References: <20191212195055.5541-1-christoffer.dall@arm.com>
 <92df358b3261598b587f95a2aa4d9bc5@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92df358b3261598b587f95a2aa4d9bc5@www.loen.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_025650_674114_3DEA51AF 
X-CRM114-Status: GOOD (  28.06  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, djordje.kovacevic@arm.com,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:12:19AM +0000, Marc Zyngier wrote:
> On 2019-12-12 19:50, Christoffer Dall wrote:
> > On AArch64 you can do a sign-extended load to either a 32-bit or 64-bit
> > register, and we should only sign extend the register up to the width of
> > the register as specified in the operation (by using the 32-bit Wn or
> > 64-bit Xn register specifier).
> 
> Nice catch. It's only been there for... Oh wait! ;-)
> 
> > 
> > As it turns out, the architecture provides this decoding information in
> > the SF ("Sixty-Four" -- how cute...) bit.
> > 
> > Let's take advantage of this with the usual 32-bit/64-bit header file
> > dance and do the right thing on AArch64 hosts.
> > 
> > Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> 
> Cc: stable?
> 

Yes, good idea.

> > ---
> >  arch/arm/include/asm/kvm_emulate.h   | 5 +++++
> >  arch/arm/include/asm/kvm_mmio.h      | 2 ++
> >  arch/arm64/include/asm/kvm_emulate.h | 5 +++++
> >  arch/arm64/include/asm/kvm_mmio.h    | 6 ++----
> >  virt/kvm/arm/mmio.c                  | 8 +++++++-
> >  5 files changed, 21 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/arm/include/asm/kvm_emulate.h
> > b/arch/arm/include/asm/kvm_emulate.h
> > index 9b118516d2db..fe55d8737a11 100644
> > --- a/arch/arm/include/asm/kvm_emulate.h
> > +++ b/arch/arm/include/asm/kvm_emulate.h
> > @@ -182,6 +182,11 @@ static inline bool kvm_vcpu_dabt_issext(struct
> > kvm_vcpu *vcpu)
> >  	return kvm_vcpu_get_hsr(vcpu) & HSR_SSE;
> >  }
> > 
> > +static inline bool kvm_vcpu_dabt_issf(const struct kvm_vcpu *vcpu)
> > +{
> > +	return false;
> > +}
> > +
> >  static inline int kvm_vcpu_dabt_get_rd(struct kvm_vcpu *vcpu)
> >  {
> >  	return (kvm_vcpu_get_hsr(vcpu) & HSR_SRT_MASK) >> HSR_SRT_SHIFT;
> > diff --git a/arch/arm/include/asm/kvm_mmio.h
> > b/arch/arm/include/asm/kvm_mmio.h
> > index 7c0eddb0adb2..32fbf82e3ebc 100644
> > --- a/arch/arm/include/asm/kvm_mmio.h
> > +++ b/arch/arm/include/asm/kvm_mmio.h
> > @@ -14,6 +14,8 @@
> >  struct kvm_decode {
> >  	unsigned long rt;
> >  	bool sign_extend;
> > +	/* Not used on 32-bit arm */
> > +	bool sixty_four;
> >  };
> > 
> >  void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long
> > data);
> > diff --git a/arch/arm64/include/asm/kvm_emulate.h
> > b/arch/arm64/include/asm/kvm_emulate.h
> > index 5efe5ca8fecf..f407b6bdad2e 100644
> > --- a/arch/arm64/include/asm/kvm_emulate.h
> > +++ b/arch/arm64/include/asm/kvm_emulate.h
> > @@ -283,6 +283,11 @@ static inline bool kvm_vcpu_dabt_issext(const
> > struct kvm_vcpu *vcpu)
> >  	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SSE);
> >  }
> > 
> > +static inline bool kvm_vcpu_dabt_issf(const struct kvm_vcpu *vcpu)
> > +{
> > +	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SF);
> > +}
> > +
> >  static inline int kvm_vcpu_dabt_get_rd(const struct kvm_vcpu *vcpu)
> >  {
> >  	return (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SRT_MASK) >>
> > ESR_ELx_SRT_SHIFT;
> > diff --git a/arch/arm64/include/asm/kvm_mmio.h
> > b/arch/arm64/include/asm/kvm_mmio.h
> > index 02b5c48fd467..b204501a0c39 100644
> > --- a/arch/arm64/include/asm/kvm_mmio.h
> > +++ b/arch/arm64/include/asm/kvm_mmio.h
> > @@ -10,13 +10,11 @@
> >  #include <linux/kvm_host.h>
> >  #include <asm/kvm_arm.h>
> > 
> > -/*
> > - * This is annoying. The mmio code requires this, even if we don't
> > - * need any decoding. To be fixed.
> > - */
> >  struct kvm_decode {
> >  	unsigned long rt;
> >  	bool sign_extend;
> > +	/* Witdth of the register accessed by the faulting instruction is
> > 64-bits */
> > +	bool sixty_four;
> >  };
> > 
> >  void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long
> > data);
> > diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> > index 70d3b449692c..e62454b2e529 100644
> > --- a/virt/kvm/arm/mmio.c
> > +++ b/virt/kvm/arm/mmio.c
> > @@ -83,7 +83,7 @@ unsigned long kvm_mmio_read_buf(const void *buf,
> > unsigned int len)
> >  int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
> >  {
> >  	unsigned long data;
> > -	unsigned int len;
> > +	unsigned int len, regsize;
> 
> Unused variable?
> 

Ah, yes, whoops.  Guess which unstaged change I still have in my tree...

> >  	int mask;
> > 
> >  	/* Detect an already handled MMIO return */
> > @@ -105,6 +105,9 @@ int kvm_handle_mmio_return(struct kvm_vcpu *vcpu,
> > struct kvm_run *run)
> >  			data = (data ^ mask) - mask;
> >  		}
> > 
> > +		if (!vcpu->arch.mmio_decode.sixty_four)
> > +			data = data & 0xffffffff;
> > +
> >  		trace_kvm_mmio(KVM_TRACE_MMIO_READ, len, run->mmio.phys_addr,
> >  			       &data);
> >  		data = vcpu_data_host_to_guest(vcpu, data, len);
> > @@ -125,6 +128,7 @@ static int decode_hsr(struct kvm_vcpu *vcpu, bool
> > *is_write, int *len)
> >  	unsigned long rt;
> >  	int access_size;
> >  	bool sign_extend;
> > +	bool sixty_four;
> > 
> >  	if (kvm_vcpu_dabt_iss1tw(vcpu)) {
> >  		/* page table accesses IO mem: tell guest to fix its TTBR */
> > @@ -138,11 +142,13 @@ static int decode_hsr(struct kvm_vcpu *vcpu,
> > bool *is_write, int *len)
> > 
> >  	*is_write = kvm_vcpu_dabt_iswrite(vcpu);
> >  	sign_extend = kvm_vcpu_dabt_issext(vcpu);
> > +	sixty_four = kvm_vcpu_dabt_issf(vcpu);
> >  	rt = kvm_vcpu_dabt_get_rd(vcpu);
> > 
> >  	*len = access_size;
> >  	vcpu->arch.mmio_decode.sign_extend = sign_extend;
> >  	vcpu->arch.mmio_decode.rt = rt;
> > +	vcpu->arch.mmio_decode.sixty_four = sixty_four;
> > 
> >  	return 0;
> >  }
> 
> I can't remember why we keep this mmio_decode structure as part of
> the vcpu. It isn't like it is going to change anytime soon (userspace
> cannot change the saved ESR_EL2)...

I think that was just an uninformed design decision on my part and it
could be reworked to operate on the ESR_EL2 directly or just take the
information from userspace (which we already rely on for read vs.
write).

> 
> Anyway, your patch is in keeping with the current shape of the code.
> If you're OK with, it, I'll apply it with the above nits addressed.
> 

Absolutely, I decided not to rework the mmio_decode stuff, and leave
that for some later day.


Thanks!

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
