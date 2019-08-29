Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9FFA293D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhVabE9XqOAAylo8e44w3JVZyGX5X+HxXo90UMgGYvI=; b=OpryzMomh7mrRE
	zzu03AD529unhyNUazxcsy3n7+AvnV2c72avnvks8HElv5j8XdYM9eKMxFA/4JYvgtVp8AyEau7O7
	GlyXbUj10efifKwp/QqlCsPfM5qJ0o9uSpAATzifGOFJHIPV0HA0CwMpbrRuVKxdMD1aDJkfJyP3W
	/7iAJtXfQG8KHjvyCCTlkqicdv8Bmwg361wa3OBuBSV9acqdqVEE4mZMONCzLZzc03hoauF3gunjD
	J0Kzgq73OrDicwmvzxXPcTG1SbEoK/hVlsq9SN/y7NbA0f2TpDYAuNAatXoGR33bb2Lf/o4vskApm
	aduUZbfD4E8KS+GfOruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SMn-00030o-56; Thu, 29 Aug 2019 21:54:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SMc-00030V-7A
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:53:55 +0000
Received: from brain-police (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8ED15208C2;
 Thu, 29 Aug 2019 21:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567115633;
 bh=tfvxCZ4oyuxgoY18SS51EelDk6RtlZHt1ZzY0quaE5Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=stqN+T3bOU8tVdPCV+Yxyx92v5vrVwiYq4Ys4aL1ATD/pbEmeUkyBJXiWnvfJXUOU
 1Qa3vSKwIOMaBRRIS1Rp2zYipVh22qhxKjHGr7X6dqnRjQCGp2w9B+0jl0nRDz5C97
 R7ROX4bw2u1YmVGDynaxJQ5iCYw8vFn+UQNFRN2w=
Date: Thu, 29 Aug 2019 22:53:48 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190829215347.GB2404@brain-police>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
 <CAKwvOdkaCTQ92hUe823Y14xo_Gft4vsRGgimHc8QPUBCbbAOrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdkaCTQ92hUe823Y14xo_Gft4vsRGgimHc8QPUBCbbAOrQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_145354_282245_7D9B6EBC 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 10:45:57AM -0700, Nick Desaulniers wrote:
> On Thu, Aug 29, 2019 at 9:55 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > > index 95091f72228b..7fa042f5444e 100644
> > > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > > @@ -23,6 +23,10 @@ asm_ops "\n"                                                               \
> > >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> > >  #endif
> > >
> > > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > > +#define K
> > > +#endif
> >
> > Bah, I need to use something like __stringify when the constraint is used
> > in order for this to get expanded properly. Updated diff below.
> >
> > Will
> 
> Hi Will, thanks for cc'ing me on the patch set.  I'd be happy to help
> test w/ Clang.  Would you mind pushing this set with the below diff to
> a publicly available tree+branch I can pull from?  (I haven't yet
> figured out how to download multiple diff's from gmail rather than 1
> by 1, and TBH I'd rather just use git).

Sorry, of course. I should've mentioned this in the cover letter:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/atomics

FWIW, I did test (defconfig + boot) with clang, but this does mean that LSE
atomics are disabled for that configuration when asm goto is not supported.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
