Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF4BA2881
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4D7YO+ZfT10r508xEtGpwh51HEgIbA4abN5LJt8JZeI=; b=fugr4+2bBc/8wq
	mhpxknakRsGxCgxjUvvwBhyUZegcUNxOEcQgccHJJpZJ1TmWu8IEXtkfoKCzK+P9biIbP3bpTa9dG
	AY/A0tS926sxxKmtEDsjhLQQa4KnCDvuFEaxG+FA1LkPKEH3n6prO64un5QAY3hi16vL88rGDF68z
	bJr8vOSG6bIID+dDRaZ4zgB8osjk3J28TtikBHZ0QjhF2bwD2ozG3hZNm/LOB59dCjCI/xLylXtdJ
	IOf4l8cDId9VxlrYxVX2/mclEl9LSzemyxZK8QOnWpbR8kWU+X+U46cIQRWRbBo/CnpsnRP6CTF/D
	5boXiAWv4Y42AZN9c9pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3RUU-0000sY-Ib; Thu, 29 Aug 2019 20:57:58 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3RUK-0000sB-6C
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:57:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so2248661pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oeDSTDmCykdOboI0NlO40BAz1xd+JSb526zs42hsg2U=;
 b=wWMz75BiWBHHLdLBIU+n9B/CTKoZ8dnq7ADjr5OGkRKToC9bRZONCKrh+s/7WxD7P7
 Z3PvHQvDI/bCbDi3VZY+VBuWDE/OQMsYWdFaW948gYKyR6kSLUafPqt6V4FhN6A7wCIP
 uVYhYBK9kBRw1O318HxJm2hltIhZlolHYQfOjz6V8gOleVd8jMrQyPQByQeWmVk9Sn2u
 Auy3+9mHeWDUhVQ5kfe8o3iYFRgS5ETL2v5fuVn6ilMiDSsXtY7dMF16ndW4htSfXPV1
 /+rImTVhTYSOsPQ55Q+dbV55VJlWRxSavFs1RoGuZNaMNfRveYw764+z2zbZ0XrxGaRt
 Resw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oeDSTDmCykdOboI0NlO40BAz1xd+JSb526zs42hsg2U=;
 b=BOQA1vQ3y1oaWyo8wJ9I9wGhWXCPx9YfhTLMkpr2kTcnRJ/76DaQLD+jGJNOm0oyrK
 1KWmnfKQfpz6sjmprGcXdlHqmTj3Pfn0bzZw5Keu9GOj27f3q3dVFBKsFTE3PDbWhuvB
 Fj4wfC8M8kCpWwAHV95QVDWEBqRrKS2TgVCFX8m7F5zuAw2aJr0LBlkzawmNWYTyKlum
 /pXnyS5nG8pgW39VQWrbb8H9HL8XxElS7WyOp3rHFiDbYz3tZwr1tdYfPGW7TqN/00uL
 I0M97cr+e3qG+fsiVeYzxpJrbL6gLszRnmk6RY8w35A71xNDtOIlUeZe5v9IQHLg5aNy
 2Piw==
X-Gm-Message-State: APjAAAXc88L7ZTLamwifgFZ7GHJlqjsComOaRcfxSUez3Jsb3rDh8yyv
 PXmjXQhGLWHqPbZ6A4QIcN5g7qzf8MU0NCVvvK75/tQp9kg=
X-Google-Smtp-Source: APXvYqwxrHQNUffGYMlvpasEH3mMMVTH2bEhfBs7v/LPPVikgEwGiFF8NSyvBwuYvYRbOoHdgoVBcicPa9Xep4yIjgw=
X-Received: by 2002:a17:90a:c20f:: with SMTP id
 e15mr11791171pjt.123.1567112267046; 
 Thu, 29 Aug 2019 13:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper>
 <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
In-Reply-To: <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 29 Aug 2019 13:57:35 -0700
Message-ID: <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_135748_256779_36D41E59 
X-CRM114-Status: GOOD (  29.93  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 1:21 PM Stefan Agner <stefan@agner.ch> wrote:
>
> On 2019-08-29 21:34, Nathan Chancellor wrote:
> > On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> >> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> >> <natechancellor@gmail.com> wrote:
> >> >
> >> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> >> > with clang:
> >> >
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> >> > softirq.c:(.text+0x504): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> >> > softirq.c:(.text+0x58c): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> >> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> >> > softirq.c:(.text+0x75c): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> >> > softirq.c:(.text+0x840): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> >> >
> >> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
> >> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> >> > broken and caused the kernel not to boot because the calling
> >> > convention was not correct. Now that it is fixed, add this to
> >> > the command line when clang is 10.0.0 or newer so everything
> >> > works properly.
> >> >
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> >> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> >> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> >> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > ---
> >> >  arch/arm/Makefile | 6 ++++++
> >> >  1 file changed, 6 insertions(+)
> >> >
> >> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> >> > index c3624ca6c0bc..7b5a26a866fc 100644
> >> > --- a/arch/arm/Makefile
> >> > +++ b/arch/arm/Makefile
> >> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> >> >  CFLAGS_ABI     +=-funwind-tables
> >> >  endif
> >> >
> >> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> >> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> >> > +CFLAGS_ABI     +=-meabi gnu
> >> > +endif
> >> > +endif
> >> > +
> >>
> >> Thanks for the patch!  I think this is one of the final issues w/ 32b
> >> ARM configs when building w/ Clang.
> >>
> >> I'm not super enthused about the version check.  The flag is indeed
> >> not recognized by GCC, but I think it would actually be more concise
> >> with $(cc-option) and no compiler or version check.
> >>
> >> Further, I think that the working __gnu_mcount_nc in Clang would
> >> better be represented as marking the arch/arm/KConfig option for
> >> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
> >> than or equal to Clang 10, not conditionally adding this flag. (We
> >> should always add the flag when supported, IMO.  __gnu_mcount_nc's
> >> calling convention being broken is orthogonal to the choice of
> >> __gnu_mcount_nc vs mcount, and it's the former's that should be
> >> checked, not the latter as in this patch.
> >
> > I will test with or without CONFIG_AEABI like Matthias asked and I will
> > implement your Kconfig suggestion if it passes all of my tests. The
> > reason that I did it this way is because I didn't want a user to end up
> > with a non-booting kernel since -meabi gnu works with older versions of
> > clang at build time, the issue happens at boot time but the Kconfig
> > suggestion + cc-option should fix that.
>
> I agree with Nathan here, I'd rather prefer the build system to fail
> building rather than runtime error.
>
> If we decide we want to have it building despite it not building a
> functional kernel, we should at least add a #warning...

Just to be clear...I was suggesting a build failure, but for
__gnu_mcount_nc not having the correct calling convention in older
clang releases, which is orthogonal to passing `-meabi gnu`.  This
patch uses the __gnu_mcount_nc calling convention problem to justify a
version check for a flag that while closely related, is not actually
the problem, IMO.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
