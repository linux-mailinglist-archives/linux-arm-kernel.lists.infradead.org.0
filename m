Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DF01C5F1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wItEUC5ZcdUzcV17eUU7o08L5x1OsHOCyHE2mCko8aA=; b=OAVrYzwxL8ofqf
	SC8n0OuuqxquguLPA37haBwEpeC4Y5IABLJEVOTmKnsALDeHWdwL0p6g6ucv5a5bVTxsegEWLLzuB
	gKk6tjPYcfbRZnTOGVjqRjxXt/VjUQ+hVCNpUBt+Z93HNykAJ4dn3bzbO2HLQIQODG85JjmQ5UPpN
	p2T+4IUGThzWOd20FFJ68fkPAm5k5OM/L8cjKhuAmn8Zz7wUU1d2hCv/xwvh9pK9hrVizvdOFQDMz
	3SvCi77ERdk7pdBBJuntxgdDlwFoJwuiLTlcW0tVzRCt62axRaJCzqxNNOfct4ZlrfgpDVwYOgcBh
	bkt3WdkhUEIj3wqr6Llg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1bJ-0004CI-8J; Tue, 05 May 2020 17:43:25 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1bB-0004Ae-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:43:19 +0000
Received: by verein.lst.de (Postfix, from userid 107)
 id 51CB368C65; Tue,  5 May 2020 19:43:13 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on verein.lst.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=ALL_TRUSTED,BAYES_50
 autolearn=disabled version=3.3.1
Received: from blackhole (p5B0D8880.dip0.t-ipconnect.de [91.13.136.128])
 by verein.lst.de (Postfix) with ESMTPSA id 4B6E268BFE;
 Tue,  5 May 2020 19:42:48 +0200 (CEST)
Date: Tue, 5 May 2020 19:42:43 +0200
From: Torsten Duwe <duwe@lst.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200505194243.5bfc6ec6@blackhole>
In-Reply-To: <20200505142556.GF82823@C02TD0UTHF1T.local>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
Organization: LST e.V.
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_104317_818583_CB9E6EFA 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, Ionela Voinescu <ionela.voinescu@arm.com>,
 Julien Thierry <jthierry@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Torsten Duwe <duwe@suse.de>,
 Steve Capper <steve.capper@arm.com>, linux-kernel@vger.kernel.org,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Alexandre Ghiti <alex@ghiti.fr>,
 clang-built-linux@googlegroups.com, Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Mark and others,

this may not be worth arguing but I'm currently fighting excessive
workarounds in another area and so this triggers me, so I have to make
a remark ;-)

On Tue, 5 May 2020 15:25:56 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > Clang only supports the patchable_function_entry attribute on
> > little-endian arm64 builds, but not on big-endian:
> > 
> > include/linux/kasan-checks.h:16:8: error: unknown attribute
> > 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]
> > 
> > Disable that configuration with another dependency. Unfortunately
> > the existing check is not enough, as $(cc-option) at this point does
> > not pass the -mbig-endian flag.
> 
> Well that's unfortunate. :(
> 
> Do we know if this is deliberate and/or likely to change in future?
> This practically rules out a BE distro kernel with things like PAC,
> which isn't ideal.

But still better than cumulating workarounds. If clang's flags aren't
orthogonal then that's a bug in clang. If I get a vote here I'm against
it.

> > Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> This looks fine for now, and we can add a version check in future, so:
                                      ^^^^^^^^^^^^^^^^^^^
see what I mean? And in the end another line of code you'll never again
get rid of.

I suggest to get a quote from clang folks first about their schedule and
regarded importance of patchable-function-entries on BE, and leave it as
is: broken on certain clang configurations. It's not the kernel's fault.

> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> Mark.
> 
> > ---
> >  arch/arm64/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 4b256fa6db7a..a33d6402b934 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -151,7 +151,7 @@ config ARM64
> >  	select HAVE_DMA_CONTIGUOUS
> >  	select HAVE_DYNAMIC_FTRACE
> >  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
> > -		if $(cc-option,-fies on y=2)
> > +		if $(cc-option,-fpatchable-function-entry=2) &&
> > !(CC_IS_CLANG && CPU_BIG_ENDIAN) select
> > HAVE_EFFICIENT_UNALIGNED_ACCESS select HAVE_FAST_GUP
> >  	select HAVE_FTRACE_MCOUNT_RECORD
> > -- 
> > 2.26.0
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
