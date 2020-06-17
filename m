Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655901FCBBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyaA+nC1bBsMXoNVzvLJqge5QjCzmOrOJpxEqkM8CaI=; b=jPlmhFCqT/j1LL
	ymxLLUlvomeXz9mxiC8EUtqP4ZOf3JCASG3eAFnVNtZ+cJDHLkk+i6yeiJIyOojUiYLg6y4eT2tni
	Fvh8+GfCLaLNAkT4P4mfj4T2/5Cy1ZNzzzVA1H1yx0JnSqaVAPYkm8BKvnUe5KaKcpYpbhK1ieQys
	mLKDUFJSEFm2P9DZrD5mIlWroUwc8+U86gbQ5YfrD1rmGgR+g4kskZOspxtVI2sMmADDNA7+QqfcS
	zK+2kV5Lf57pZ8rf80Fgq4Jcn8Zk5OcDbstW5bKIl5bW6KMk/jtf9iGXSVbWPgLybaWsOKVW3R41k
	0PEXSgVz10r00q23qEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVtb-0006rv-5l; Wed, 17 Jun 2020 11:06:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVtQ-0006rK-Rz
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:06:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33FD31FB;
 Wed, 17 Jun 2020 04:06:08 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 849EF3F71F;
 Wed, 17 Jun 2020 04:06:07 -0700 (PDT)
Date: Wed, 17 Jun 2020 12:06:05 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Message-ID: <20200617110605.GQ25945@arm.com>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
 <20200616131808.GA1040@lca.pw>
 <20200616150451.GA1941@willie-the-truck>
 <20200616161704.GN25945@arm.com>
 <20200616171926.GA2129@willie-the-truck>
 <20200617094054.GP25945@arm.com>
 <20200617100832.GA3368@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617100832.GA3368@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_040608_993147_9F7ECEDE 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 11:08:32AM +0100, Will Deacon wrote:
> On Wed, Jun 17, 2020 at 10:40:54AM +0100, Dave Martin wrote:
> > On Tue, Jun 16, 2020 at 06:19:27PM +0100, Will Deacon wrote:
> > > diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> > > index d9eee9194511..55c8f3ec6705 100644
> > > --- a/arch/arm64/kernel/fpsimd.c
> > > +++ b/arch/arm64/kernel/fpsimd.c
> > > @@ -349,7 +349,7 @@ static unsigned int find_supported_vector_length(unsigned int vl)
> > >  	return sve_vl_from_vq(__bit_to_vq(bit));
> > >  }
> > >  
> > > -#ifdef CONFIG_SYSCTL
> > > +#if defined(CONFIG_ARM64_SVE) && defined(CONFIG_SYSCTL)
> > >  
> > >  static int sve_proc_do_default_vl(struct ctl_table *table, int write,
> > >  				  void *buffer, size_t *lenp, loff_t *ppos)
> > > @@ -394,9 +394,9 @@ static int __init sve_sysctl_init(void)
> > >  	return 0;
> > >  }
> > >  
> > > -#else /* ! CONFIG_SYSCTL */
> > > +#else /* ! (CONFIG_ARM64_SVE && CONFIG_SYSCTL) */
> > >  static int __init sve_sysctl_init(void) { return 0; }
> > > -#endif /* ! CONFIG_SYSCTL */
> > > +#endif /* ! (CONFIG_ARM64_SVE && CONFIG_SYSCTL) */
> > 
> > Hmm, I guess that works, but it still seems cumbersome.  #ifdefs do
> > tend to breed as the code gets extended, so I'd worked hard to
> > eliminate them as much as possible.
> 
> This is just extending an existing #ifdef though, and I don't think it
> makes any sense to compile in the SVE sysctl logic if SVE is not enabled.
> If CONFIG_SYSCTL didn't exist, this code would almost certainly be inside
> a CONFIG_SVE block anyway.

Only code that's unreachable from inside the translation unit needs to
be #ifdeffed.  For the rest, the compiler knows how to determine what's
used (indeed, it's better at it than humans).

Originally I relied on #ifdefs more, but I needed a lot of them, and it
was hell to rebase every time anything needed to be moved around.

Currently I don't see anything that gets compiled in if CONFIG_SYSCTL=n.
Other than what was already compiled before this patch.  We still need
to track the default vl, because it depends on the hardware; however it's
effectively ro-after-init if CONFIG_SYSCTL=n.

I think that complicating the #ifdef conditions in this file is a
slippery slope, but I guess it's the it's up to the maintainer whether
to care about that.

Am I missing something?

> > Can't we simply leave the helpers outside the #ifdef, and do this?
> > 
> >  /* Default VL for tasks that don't set it explicitly: */
> >  static int __sve_default_vl = -1;
> >  
> > -static int get_sve_default_vl(void)
> > +static inline int get_sve_default_vl(void)
> >  {
> >  	return READ_ONCE(__sve_default_vl);
> >  }
> >  
> > -static void set_sve_default_vl(int val)
> > +static inline void set_sve_default_vl(int val)
> >  {
> >  	WRITE_ONCE(__sve_default_vl, val);
> >  }
> 
> That would work too, although I'd be wary of somebody removing the inline
> later on because "the compiler knows best about inlining decisions". I'd

AFAIK inline is widely used for static functions in headers for precisely
this reason.  I have tried to use __maybe_unused (or even #ifdefs) in
the past to be more explicit, but got shouted at.  We could optionally
use __maybe_unused here if you think that's more self-explanatory.

> also say that calling set_sve_default_vl() is an error if CONFIG_SVE is
> not defined as we really want get_sve_default_vl() to return -1
> unconditionally in that case. Having set_sve_default_vl() inside the
> #ifdef ensures that.

Fair point, I'm not sure how valuable it is.  We manage without it thus
far: prior to these changes, the sve_default_vl variable was not #ifdeffed.

> I don't care too strongly either way, but I already queued my diff last
> night [1] in order to fix linux-next, so I'd prefer not to drop it unless
> there's a functional reason to do so.

Ack, since this change would be purely to ease future maintanence (or
not, if you judge it's not useful), it's not urgent.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
