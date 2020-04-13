Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC441A6D85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 22:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBI/OgYnmVaYqbIGqhWmSX130p21zPt1/Gi6IXvl5CA=; b=nTtFQAPff1lznH
	/OvWtvfuE4MfoADGYh42kEpyDh6zGupPZ3LDo2yCG2RsHeQz14QPqKNn8RvZ9It2Qf615ZHxT2nJH
	02/Us5gziKI3Rq1DIYB+02ulk9GV3isLFPiNotl45e4HraZK6/VlnmvYtpPPahJSyw9Nou8UJEwQS
	noXJtFYktPxV5n5N4/IOlRgyXeP9uCKPZWTejtZyx8I0BYgGRL4eGs2ha4jzNorv3nTNnJOUSvTbb
	gsqqv7A4Xp01yFs7wmL7Dk/ShAV8SKIfMO9BHfaJhCvkb9A5+2MgX/KoRtbxxyz1QwDDjZwlEOEvb
	z4SRRaaj6IiaqVblbSvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO5xq-0000ma-33; Mon, 13 Apr 2020 20:45:54 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO5xg-0000lw-Gr
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 20:45:46 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ay6so2121362pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 13:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s4y7no5cyj/YT4NaiWheMZjYGgfrIItnmovUhjd8zTY=;
 b=MxUKlu72lwCrKhGXVxduY0qZRgXn58LJpwf45V1U0IwsLpyYFdO4NTdYRYksGgLThG
 LjcwuJ3qtW/aMeUQVaNoCR1ma+LbIsxDt+WvdppsT2FczWyvqmmrLjAgWAM7YzJ25z/W
 oLHWepdKVIGCwQLht+JmMpwswZQNN24G0wY7DoNIzGmqQD97+DXQ3Zde9wh4Ns6aFowA
 XHYs8XJ5wAqSj3+WS3m1QLefUTIklrwl+d0trYQg0F3S4xbD8RauNnNvjlfKL6ZCZOxN
 lej6UKgs+0tL/1LYKU5znHQXtKQQVM/Cp8L2913iNBFo2GozR80ZWPnTxHl7R0lqArkF
 kafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s4y7no5cyj/YT4NaiWheMZjYGgfrIItnmovUhjd8zTY=;
 b=CEnKBw6k1/N+c4uo53KM6uKrDPAsmFQaQrC+dNX9BIct1U1Itw3QY3kzvF7YRBB7mB
 CVgjoUPIiIucMkFi4GezAhkwb6YryH/4GHIgNHAWll+Fkyuwo1zNeZZIMPNmnrH7An7a
 sYM7TJ8nMKojbnQB66h6fndagGJm3HNyPQcLz9Ct7dZ/e2eIbWQ4Sck1SO4hzcIZlVbH
 3RpFMj5c0x2zDAUDOoj5BitXc3Wzhe4d3w3xIhcA6RBMvYmeyuyLk5XM2L8D2z/ElykQ
 tKJ1fWoa1H9+2bz1U/Eyoh0rnArgSrBT96iCZ72FMF7FbRkPNve9MDECoVKHPMEWOw99
 kC8A==
X-Gm-Message-State: AGi0Pua9nsAmsfiXLaM8W8UspjqHDF48k++NGhOWtjD2zq14th2d3NRU
 2dkth8WZ8VPM6n0PmQH/cMy09uz6EsklvJhjNO1ClA==
X-Google-Smtp-Source: APiQypLGFgm2HK6f87vLVW+fyw7ThkH2RCckD3cUckOMjMHJ/OZZxjo6UusB1aGrqQdsL/tWiDwUbb0lOfwb1s0H7Ro=
X-Received: by 2002:a17:902:7e42:: with SMTP id
 a2mr8760793pln.223.1586810743007; 
 Mon, 13 Apr 2020 13:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
In-Reply-To: <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 13:45:30 -0700
Message-ID: <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Ard Biesheuvel <ardb@kernel.org>, Kristof Beyls <Kristof.Beyls@arm.com>, 
 Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_134544_583265_2E725C05 
X-CRM114-Status: GOOD (  32.83  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>,
 Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Jian Cai <caij2003@gmail.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 6:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Fri, Apr 10, 2020 at 01:15:08PM +0200, Ard Biesheuvel wrote:
> > > On Fri, 10 Apr 2020 at 11:56, Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> > > > >
> > > > > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > > > > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > > > > kernel.
> > > > >
> > > > > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > > >
> > > > It clearly makes sense to limit the Kconfig option to compilers that
> > > > can actually build it.
> > > > A few questions though:
> > > >
> > > > - Given that Armada XP with its PJ4B was still marketed until fairly
> > > > recently[1],
> > > >   wouldn't it make sense to still add support for it? Is it a lot of work?
> > > >
> > >
> > > The part of that file that the assembler chokes on hasn't been touched
> > > by anyone since Nico added it 15+ years ago. It can only be built in
> > > ARM mode, and it disassembles to the sequence below (the ld/st fe/fp
> > > mnemonics are not document in recent versions of the ARM ARM, and
> > > aren't understood by Clang either)
> >
> > For older CPUs, it doesn't matter what the latest ARM ARM says, the
> > appropriate version of the ARM ARM is the one relevant for the CPU
> > architecture.  This is a mistake frequently made, and it's been pointed
> > out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> > keeping older revisions is necessary if you want to be interested in
> > the older architectures.
> >
> > However, there's an additional complication here: DEC's license from
> > Arm Ltd back in the days of StrongARM allowed them to make changes to
> > the architecture - that was passed over to Intel when they bought that
> > part of DEC.  Consequently, these "non-Arm vendor" cores contain
> > extensions that are not part of the ARM ARM.  iWMMXT is one such
> > example, which first appeared in the Intel PXA270 SoC (an ARMv5
> > derived CPU).
> >
> > In fact, several of the features found in later versions of the ARM
> > architecture came from DEC and Intel enhancements.
> >
> > If your compiler/assembler only implements what is in the latest ARM
> > ARM, then it is not going to be suitable for these older CPUs and
> > alternate vendor "ARM compatible" CPUs.
> >
>
> Indeed, and I'm a bit disappointed at the willingness to leave stuff
> by the wayside, especially since Clang's integrated assembler has no
> other benefit to it than being built into the compiler.

I don't disagree.  I also wish LLVM had a backend for every
architecture that GCC does.  But resources are finite and there are
more fires than firemen.  It gets really hard to justify a high
priority for certain things over others.  Doubly-so for hardware no
longer in production.  Triply-so when the ISA vendor doesn't provide
information in available reference manuals.  I'm happy to push for
more investment in LLVM to support the Linux kernel from Google
internally; maybe you can help do so from ARM?  That was my appeal to
ARM back in February; support for newest ISA extensions is great,
support for existing instructions is great, too.  (And not having to
choose between one or the other is preferrable, given the amount of
resources available).

My thoughts on the benefits of this approach to using Clang's
integrated assembler:
1. continuous integration and randconfigs.  We need CI to help us spot
where things are still broken, and help us from regressing the ground
we've fought for.  We can't expect kernel developers to test with
LLVM.  Currently, we have LLVM builds in numerous kernel continuous
integration services (KernelCI, Kbuild test robot "0day bot", Linaro's
TCWG, Syzcaller, and our own CI).  For services that are bisecting and
notifying authors, they are currently harassing authors for
pre-existing conditions that the service uncovered via randconfig.
This is very very dangerous territory to be in.  If authors start
ignoring build reports due to false positives or false negatives, it
becomes a weak signal that tends to be ignored.  Then when real bugs
are uncovered, the actual bugs get ignored.  We don't want that.  If a
canary dies in a coal mine, but no one notices, was it for naught?

2. It helps us quantify how broken we are, via `grep` and `wc`.  LLVM
is in no way a perfect substitute for GNU utilities, but it's not too
far off either.  As an imperfect substitute, there's a lot of work
both on the toolchain side and sources of various codebases in terms
of toolchain portability.  Being able to quantify what doesn't work
let's us be clear in which ways LLVM is not a perfect substitute, but
also where and how much resources we need to get closer.  That helps
then with planning and prioritization.  The proper thing to do is to
bury the dead but at this point we only have resources to collect dog
tags and keep moving.  That doesn't rule out revisiting implementing
iWMMXT in the future.

3. Testing Clang's assembler allows for us to do kernel builds without
binutils.  This work is helping uncover places within the kernel where
the build is not hermetic.  We're still a long ways away from hermetic
reproducible kernel builds I suspect, but my main worry is when people
have multiple versions of a toolchain in their path, that only one is
used.  Otherwise, it leads to spooky hard to reproduce bug reports.  I
don't think I need to argue about build hermiticity, but it's
important for user trust and verification.

4. Improving toolchain portability of assembler in LLVM itself.
There's plenty of subtle differences, but missing full on instructions
(or are they psuedo's?) is pretty bad.

I value the feedback from you, Russell, and Arnd even when I disagree.
These are just my thoughts on *why* things are the way they are, FWIW.
If there's thoughts on how we might better prioritize one thing over
another, I would appreciate it.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
