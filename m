Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F6EA3D04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4n40j/xs2lp54RueNhE1xuvcd9yhFPxDdLEac7G7OCM=; b=dgqYuZnoKEcSHw
	/PYxvakDnlI/pbAKXKIcDln3eKSSDM8VSlZzjgYREP9HC+Dwm9rD/HYNwkWijHoZSW2oSBqNdyru0
	aT7yWx7Pz3ASdkoDXd4PQxxys9f1rmzUXeft+pBqix2wLUXOm8L5z/FNBdQV3j54btrWBq8/2vVjw
	A148xRL+NoD3yBHt/adj51gpEE+xErqa1FDjLHf/cVOeWoWEuB41hyKHOVOGHNLVr1rfU71NE/gbK
	RGNCxHRRG3MGNnyZ37wd8wd98V4jpk9Ohxc0bNlyeXxwsYdOdvriLprf2XOOVqWy3b7iyP4wOaifH
	Nq0YWUogfRvxf8sxy1Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3khY-00060v-SV; Fri, 30 Aug 2019 17:28:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3khI-00060Q-TO
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 17:28:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id l2so8245661wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 10:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eu7o1tjFJuoZ/R7GMzAcbzkgVT62tsYAxGmizjWMX1g=;
 b=vNqfRzTuHbAvVsS3zUpvAVib5iQ1fToXe25SMvEN3IZ6lKxyl1nk3LVqLbPT52L/e7
 h5mm7R83u/TOPgVcrOKY1IAXFwIjRRAQshoHym8JYlqKKxQuWVW/y+y0GzXPPWaXhypD
 JAXnmHSBwMRF3livuug96Ox1F2DepxnFINXLI647jrPR+/9V5SWrnkMp3vrlwzQ9iIL6
 Le2BVyhDYv4T3IUHcVPAJl1wBL9qxXtmERxOu1SHy+TeDexMl6Fj1Yp3rfOYlrGdwkDR
 s3mzYAmvCqoBCBYppE9lZ25q9wkH5AopP8ZqFJ5+XkmKByr9b6v2Z7ipZy4L351Sk/DB
 g6Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eu7o1tjFJuoZ/R7GMzAcbzkgVT62tsYAxGmizjWMX1g=;
 b=WzdS2pq1rmLggmarA1L9bsnPIqGgTZ6/qujbl6vIPNjIL4hIoDWKGouPKDKMJ8hHO5
 9BWfmHaGJ1gR00ZkoQCsMBGoDmnwx3FYlMB7aUF5gctRoQu8ADyncUHNAePOBaO7EzFh
 JYaGoanPrY/L3kIID0oDY8zw0vzS6duEm22eMepfjfJ93a/6Po67avhl5t9shlUMXKXb
 cXQ00Q3MaMj1RbBCfyvd7QF9zSdOCDFllzc4kv00xSRvePJs1j6GlLPWszW9R+oNdzj6
 RyZ6QwmG0SXiowGqEMu1tuZG0qIeQulzyWUBHu4qGHGOP4k3IfI+Jvhi4rnauCjSbNkS
 Aweg==
X-Gm-Message-State: APjAAAV8nwMFtLcd0OUaSo50uv9rw5Sm7/B7J/uSpikZzOhAm3BK1Lzv
 ht0wLwWcjuqyHPBhByqqQlA=
X-Google-Smtp-Source: APXvYqz/4etEtnnJmT0nqV9j3YE+c03EhkYjYG1flkPxaetZUPtf48FALOgc5C5NoMqOsBgY4e48ig==
X-Received: by 2002:a1c:f910:: with SMTP id x16mr18881080wmh.173.1567186106390; 
 Fri, 30 Aug 2019 10:28:26 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id p9sm7465898wru.61.2019.08.30.10.28.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 10:28:25 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:28:24 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Message-ID: <20190830172824.GA119107@archlinux-threadripper>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper>
 <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
 <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_102828_978784_73DBFC07 
X-CRM114-Status: GOOD (  39.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stefan Agner <stefan@agner.ch>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 01:57:35PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 29, 2019 at 1:21 PM Stefan Agner <stefan@agner.ch> wrote:
> >
> > On 2019-08-29 21:34, Nathan Chancellor wrote:
> > > On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> > >> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> > >> <natechancellor@gmail.com> wrote:
> > >> >
> > >> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> > >> > with clang:
> > >> >
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> > >> > softirq.c:(.text+0x504): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> > >> > softirq.c:(.text+0x58c): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> > >> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> > >> > softirq.c:(.text+0x75c): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> > >> > softirq.c:(.text+0x840): undefined reference to `mcount'
> > >> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> > >> >
> > >> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
> > >> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> > >> > broken and caused the kernel not to boot because the calling
> > >> > convention was not correct. Now that it is fixed, add this to
> > >> > the command line when clang is 10.0.0 or newer so everything
> > >> > works properly.
> > >> >
> > >> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> > >> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> > >> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> > >> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > >> > ---
> > >> >  arch/arm/Makefile | 6 ++++++
> > >> >  1 file changed, 6 insertions(+)
> > >> >
> > >> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > >> > index c3624ca6c0bc..7b5a26a866fc 100644
> > >> > --- a/arch/arm/Makefile
> > >> > +++ b/arch/arm/Makefile
> > >> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> > >> >  CFLAGS_ABI     +=-funwind-tables
> > >> >  endif
> > >> >
> > >> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> > >> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> > >> > +CFLAGS_ABI     +=-meabi gnu
> > >> > +endif
> > >> > +endif
> > >> > +
> > >>
> > >> Thanks for the patch!  I think this is one of the final issues w/ 32b
> > >> ARM configs when building w/ Clang.
> > >>
> > >> I'm not super enthused about the version check.  The flag is indeed
> > >> not recognized by GCC, but I think it would actually be more concise
> > >> with $(cc-option) and no compiler or version check.
> > >>
> > >> Further, I think that the working __gnu_mcount_nc in Clang would
> > >> better be represented as marking the arch/arm/KConfig option for
> > >> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
> > >> than or equal to Clang 10, not conditionally adding this flag. (We
> > >> should always add the flag when supported, IMO.  __gnu_mcount_nc's
> > >> calling convention being broken is orthogonal to the choice of
> > >> __gnu_mcount_nc vs mcount, and it's the former's that should be
> > >> checked, not the latter as in this patch.
> > >
> > > I will test with or without CONFIG_AEABI like Matthias asked and I will
> > > implement your Kconfig suggestion if it passes all of my tests. The
> > > reason that I did it this way is because I didn't want a user to end up
> > > with a non-booting kernel since -meabi gnu works with older versions of
> > > clang at build time, the issue happens at boot time but the Kconfig
> > > suggestion + cc-option should fix that.
> >
> > I agree with Nathan here, I'd rather prefer the build system to fail
> > building rather than runtime error.
> >
> > If we decide we want to have it building despite it not building a
> > functional kernel, we should at least add a #warning...
> 
> Just to be clear...I was suggesting a build failure, but for
> __gnu_mcount_nc not having the correct calling convention in older
> clang releases, which is orthogonal to passing `-meabi gnu`.  This
> patch uses the __gnu_mcount_nc calling convention problem to justify a
> version check for a flag that while closely related, is not actually
> the problem, IMO.

I am not entirely sure what you mean. -meabi gnu has always produced a
buildable kernel (see Stefan's original report [1]), it just doesn't
boot and that all happens silently.

[1]: https://lore.kernel.org/linux-arm-kernel/35ae3d464c7b77a5fe86a732079e32bc@agner.ch/

Okay, after doing some further testing...

Disabling CONFIG_AEABI does not work with clang, I get a ton of failures
around undefined references to __aeabi_idivmod and __aeabi_uidivmod. I
don't think this is worth looking into given that CONFIG_AEABI is not
selectable when CONFIG_CPU_V6 or CONFIG_CPU_V7 is selected, which is
what we primarily care about.. We currently build and boot
multi_v5_defconfig but it has CONFIG_AEABI set in it. As a result, I
don't think we need to care about it with this patch.

This diff would also solve the issue without the need for the version
check in the Makefile, as it is the combination of -meabi gnu and -pg
that causes the boot issue and -pg gets added when
CONFIG_FUNCTION_TRACER is enabled. Would that be preferred? I do not
think adding cc-option is necessary given that we know GCC universally
does not support this flag; there is no point in adding a small penalty
with cc-option to either compiler.

Cheers,
Nathan

================================================

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a98c7af50bf0..440ad41e77e4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,7 +83,7 @@ config ARM
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a43fc753aa53..23c2bf0fbd30 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+CFLAGS_ABI	+=-meabi gnu
+endif
+
 # Accept old syntax despite ".syntax unified"
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
