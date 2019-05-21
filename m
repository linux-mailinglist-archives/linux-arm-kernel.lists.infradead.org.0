Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A8D2579E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 20:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+O0z0u7ttsv0+dAk7rSUOGPeCzb5PijbvZebajh+WMU=; b=OCPr4J9HQ/terO
	TdbTAI7/OzjvuW/wpP1bNOQNgArpydY9Q36LqmCsYkP5EJS8IeFpr5HnoGlfJ1h1sx68lfnTFkaGA
	rkzk6M1YA7Zhl+mm1OpbUah2ebIbuaN+xqTse8idOkXDaUMAMSg8i1r8NuC2Abm9vzKYkWSiscRHX
	fhsdrgdgmr4QlRoaBAWUbcNfoCAkVsqOPqA5wns1feDtrlyX23LmfHF3iqqEf+yw57Gujz/r0lC3w
	h4mpRGd5AAyYSL3PSFrwNuoxmU73S8Xrc2IgPAnwf+8y7i+qxU2QBo2jM/NBvUGpf/kR699qVbc03
	EgEb3c7igugEJmbOGs4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9ap-0003WJ-V3; Tue, 21 May 2019 18:34:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9ai-0003VX-It
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 18:34:26 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE3E62173E;
 Tue, 21 May 2019 18:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558463660;
 bh=TS+Myr7yTT1qT00ODngyVPlLPpDgzJtrP5FUpXyLIEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qlKEBLZMfmLyAMNkN9oCsU/Wup5zhTA9zasTLh40i5Zyp8qlqlklHK/+m2/KGngOA
 pixi4WTFD9n5AjTcIiG1TLcRJkcI8p+yapxLMdOLxC1pPHv+UveLyUuFDmm2loPgD6
 2kTmneGIO6MOBoGzSbrjqVpWxH879GcvzelQ5xMI=
Date: Tue, 21 May 2019 11:34:18 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: crypto: run initcalls for generic implementations earlier
Message-ID: <20190521183417.GA121164@gmail.com>
References: <git-mailbomb-linux-master-c4741b23059794bd99beef0f700103b0d983b3fd@kernel.org>
 <CAMuHMdWSUMOh1uG1g+cipup86ZpiVYuHDpPJtp+gSmmUyjB6eA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWSUMOh1uG1g+cipup86ZpiVYuHDpPJtp+gSmmUyjB6eA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_113424_653588_9E82A8BD 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 4.1 FSL_HELO_FAKE          No description available.
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 06:39:00PM +0200, Geert Uytterhoeven wrote:
> Hi Eric,
> 
> On Tue, May 7, 2019 at 5:26 AM Linux Kernel Mailing List
> <linux-kernel@vger.kernel.org> wrote:
> > Commit:     c4741b23059794bd99beef0f700103b0d983b3fd
> > Parent:     40153b10d91c9e25f912344ba6ce1f0874400659
> > Refname:    refs/heads/master
> > Web:        https://git.kernel.org/torvalds/c/c4741b23059794bd99beef0f700103b0d983b3fd
> > Author:     Eric Biggers <ebiggers@google.com>
> > AuthorDate: Thu Apr 11 21:57:42 2019 -0700
> > Committer:  Herbert Xu <herbert@gondor.apana.org.au>
> > CommitDate: Thu Apr 18 22:15:03 2019 +0800
> >
> >     crypto: run initcalls for generic implementations earlier
> >
> >     Use subsys_initcall for registration of all templates and generic
> >     algorithm implementations, rather than module_init.  Then change
> >     cryptomgr to use arch_initcall, to place it before the subsys_initcalls.
> >
> >     This is needed so that when both a generic and optimized implementation
> >     of an algorithm are built into the kernel (not loadable modules), the
> >     generic implementation is registered before the optimized one.
> >     Otherwise, the self-tests for the optimized implementation are unable to
> >     allocate the generic implementation for the new comparison fuzz tests.
> >
> >     Note that on arm, a side effect of this change is that self-tests for
> >     generic implementations may run before the unaligned access handler has
> >     been installed.  So, unaligned accesses will crash the kernel.  This is
> >     arguably a good thing as it makes it easier to detect that type of bug.
> >
> >     Signed-off-by: Eric Biggers <ebiggers@google.com>
> >     Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
> 
> > --- a/crypto/jitterentropy-kcapi.c
> > +++ b/crypto/jitterentropy-kcapi.c
> > @@ -198,7 +198,7 @@ static void __exit jent_mod_exit(void)
> >         crypto_unregister_rng(&jent_alg);
> >  }
> >
> > -module_init(jent_mod_init);
> > +subsys_initcall(jent_mod_init);
> >  module_exit(jent_mod_exit);
> >
> >  MODULE_LICENSE("Dual BSD/GPL");
> 
> This change causes jitterentropy to fail on Renesas SoCs based on
> single-core Cortex A9 with:
> 
>     jitterentropy: Initialization failed with host not compliant with
> requirements: 2
> 
> This happens because jitterentropy is now initialized before the main
> clocksource is activated, i.e. before
> 
>     clocksource: Switched to clocksource ostm timer (on RZ/A1)
>     clocksource: Switched to clocksource fff80000.timer (on R-Mobile A1)
> 
> is printed.
> RZ/A1 and R-Mobile A1 SoCs rely on the OSTM resp. TMU timers.
> 
> The issue does not happen on SoCs with Cortex A15 cores (with ARM
> architectured timer) or Cortex A9 multicore (with ARM global timer).
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

Thanks for the bug report.  It seems there was no point for my patch to change
jitterentropy_rng, since it's not a generic crypto algorithm that has multiple
implementations, nor is it testable by the crypto self-tests.  So I'll send a
patch that changes it back to module_init().

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
