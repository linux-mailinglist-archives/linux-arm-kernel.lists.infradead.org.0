Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED08BA34CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/J/oN9HA6Zwlh7wAqdvHDeFlBRYrvH0qzQz4ZgBPXBM=; b=mNoeXcGgWGEAcn
	Scc567uq4bJOvkmL7TtOSgI75zT3HWKyelUezmp2aZeLvyqgm3a2ASPuEpwIxuDKNWL6C0/jYzezN
	8eWeRQL67njnrjnpVV7Ktke36+fjgKMteHjGBAfcjGAL6WaYDz4pHNKEL8nsrprWaGNU1oaOYfp68
	+II/GoErZ8NzSgzcrxBr+hfchzytI2HnEBQLFzc+yCYNpAeiw6sHoHCpUwAPg28RNr+pnfwLJuyob
	Rxvkye98M68OJBqThEbSbkjx6s0qhM+q804KF6e9eH5YwaRm/wD7VxXTdCHMoGXYWNzS/Se3MHpTw
	KSonK+Y9bJpeuTlJcWaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dyF-0001Sk-2B; Fri, 30 Aug 2019 10:17:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dy6-0001SQ-67
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:17:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B5FE2341B;
 Fri, 30 Aug 2019 10:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567160241;
 bh=UxrdZNvCGf3ZX7JHSy8F3uwYg1Tmi5qQSO3hqNTlBTs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dGAO05GUHerWLiV+kuYRw/gt2EHFaZKJ2VZgceImpTEzmQyc5O6RWnM6TUd2DTljt
 qLMSEfmg5QcBEOBunCRz5xagoYzGcgiiFF75DkbqhFajnPprsYn3f3Ov4/aWTF2iI3
 EpOSP+Redbc5XOkkwLNfgZTcE9/+cZh1llTsV3H4=
Date: Fri, 30 Aug 2019 11:17:16 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190830101716.b4orwol66q4l2kxy@willie-the-truck>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
 <20190830000803.GR14582@e119886-lin.cambridge.arm.com>
 <20190830075220.6xyyctvgd2ssrsjf@willie-the-truck>
 <20190830091155.GS14582@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830091155.GS14582@e119886-lin.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_031722_272754_6A5D29DC 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, natechancellor@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 10:11:55AM +0100, Andrew Murray wrote:
> On Fri, Aug 30, 2019 at 08:52:20AM +0100, Will Deacon wrote:
> > On Fri, Aug 30, 2019 at 01:08:03AM +0100, Andrew Murray wrote:
> > > On Thu, Aug 29, 2019 at 05:54:58PM +0100, Will Deacon wrote:
> > > > On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > > > > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > index 95091f72228b..7fa042f5444e 100644
> > > > > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > @@ -23,6 +23,10 @@ asm_ops "\n"								\
> > > > >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> > > > >  #endif
> 
> I downloaded your original patches and tried them, and also got the
> build error. After playing with this I think something isn't quite right...
> 
> This is your current test:
> 
>  echo 'int main(void) {asm volatile("and w0, w0, %w0" :: "K" (4294967295)); return 0; }' |  aarch64-linux-gnu-gcc -S -x c  - ; echo $?
> 
> But on my machine this returns 0, i.e. no error. If I drop the -S:
> 
>  echo 'int main(void) {asm volatile("and w0, w0, %w0" :: "K" (4294967295)); return 0; }' |  aarch64-linux-gnu-gcc -x c  - ; echo $?
> 
> Then this returns 1.
> 
> So I guess the -S flag or something similar is needed.

This seems correct to me, and is the reason we pass -S in the Makefile. Why
are you dropping it?

In the first case, the (broken) compiler is emitted an assembly file
containing "and w0, w0, 4294967295", and so we will not define
CONFIG_CC_HAS_K_CONSTRAINT.

In the second case, you're passing the bad assembly file to GAS, which
rejects it.

> > > > > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > > > > +#define K
> > > > > +#endif
> 
> Also, isn't this the wrong way around?

No. If the compiler doesn't support the K constraint, then we get:

	[old] "" "r" (old)

because we've defined K as being nothing. Otherwise, we get:

	[old] "K" "r" (old)

because K isn't defined as anything.

> It looks like when using $(call try-run,echo - it's the last argument that is
> used when the condition is false. Thus at present we seem to be setting 
> CONFIG_CC_HAS_K_CONSTRAINT when 'K' is broken.

No. We set CONFIG_CC_HAS_K_CONSTRAINT when the compiler fails to generate
an assembly file with the invalid immediate.

> > Without the __stringify I get a compilation failure when building
> > kernel/panic.o because it tries to cmpxchg a 32-bit variable with -1
> > (PANIC_CPU_INVALID). Looking at panic.s, I see that constraint parameter
> > isn't being expanded. For example if I do:
> > 
> >   #ifndef CONFIG_CC_HAS_K_CONSTRAINT
> >   #define INVALID_CONSTRAINT
> >   #else
> >   #define INVALID_CONSTRAINT	K
> >   #endif
> > 
> > and then pass INVALID_CONSTRAINT to the generator macros, we'll end up
> > with INVALID_CONSTRAINT in the .s file and gas will barf.
> 
> This still isn't an issue for me. Your patches cause the build to fail because
> it's using the K flag - if I invert the CONFIG_CC_HAS_K_CONSTRAINT test then
> it builds correctly (because it expands the K to nothing).

That doesn't make any sense :/ Is this after you've dropped the -S
parameter?

If you think there's a bug, please can you send a patch? However, inverting
the check breaks the build for me. Which toolchain are you using?

> If there is an issue with the expansion of constraint, shouldn't we also
> __stringify 'asm_op'?

It would be harmless, but there's no need because asm_op doesn't ever
require further expansion.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
