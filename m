Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE4C1A89C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ft2GvU95tSl6Z1lWcEeR0D4pMJkIJr/oFaXdnegnSpU=; b=ubw9svmky4Sns6
	EbXgWVD6WZLxKXd9ykT8jPMr7boEIhCGF0J94/DYx0/U7h9+u+b+hQK+m6VNs9eyq2OEYg4zarh5p
	frBbI7X6z3TrFhGoJz7IQF4dq3URm5uXkmtBdKbtntqLOCrenSErpJ8DUUxb3f2lUB066SRPLRAwy
	H4W+sZzp9G1hIyTd6KXkfJ0O2AsSH9EqF0Xyni7twLSd1opSziXL8WkKRlmeXS9RZBIoJ5vZm68eu
	0wMan7eLyyno2VMLe9IIGEpE/vOh8L+Whoo22Xuk8ilOKFLcxqn/0RaaV+wyLqAL5xZIKqdh54Xov
	Uu8nneTwxW+bqxX/0mUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOQSq-00043Z-Ii; Tue, 14 Apr 2020 18:39:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOQSi-00042T-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:39:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id c23so297543pgj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 11:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bWzUZ+y/P/VFQc8O9jcjTib7GUAQgeNd8tbzdYTpSw0=;
 b=cvDA3ZzYML1jsmZUCuucVGHQFQLCxJ33Bgh9eFfDJXMVLuLcc1yAOb+M9gYlOoA7i0
 tphAwgTQ4OxU4E0ZQ2rIJf+pOARUXj/w6dRlUJNzfpgwoAxrgf5HTwXk1q298j3Klz5V
 QZAzyYquVsfHiHLlUGgXlfghbRryOY8QBKp7KAuEMVP/nDVVuBUatxj8hVn0s75jwpg+
 mFULRdLkvOP3CsJVrnOMz5ALyQYoSLE8+sE5SjMkOuvYSeflMXa8ERrUhr3PZqYwamIN
 BlDxtxJHL3Pambz2O+O8vFSumOrgCybJZPOOh20FiDFlnql5nHmxSJti1lcusAs8IaJ5
 fmNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bWzUZ+y/P/VFQc8O9jcjTib7GUAQgeNd8tbzdYTpSw0=;
 b=fYeXbtEl2xO917fA6gLkM5Nf/k06xFfeBD0rdC1PTr3TFSS3zdVgyWEXWDhI+l3bTj
 GRv3raUVWW5/QAnCTAz4lcQJC2ZHvBG1VkRl14jiAV12mADctzmZVcy7AU2CIKrXJOcK
 L3hpdj9QxyUH/r9/8EBiAFsZjVV2fWPUC6UysrCbXGQp9epU+xRkZxoeVFiAas5kyTjF
 40Ro7/A10vTbAPPG1Bcg23bhz0lTFMdB3rr8aKOnUBm66MK/Fan0R9WW7tuN8mNBgLZe
 k591ph35kfeg8IHnKqRVWLWp5YBm+T6Tgs0P/yRnKOt/iK0b8MkyVHC3lQdMFzrHp0lz
 tjuw==
X-Gm-Message-State: AGi0PubWBXQ9JOv94Shh5PRGv1kUzFwDakXl79JX6J/i5cnJFdBjU83A
 hAFLyDdk5jiNhecHgFY0D2oyn5wpZAzlfLY/V6f4/A==
X-Google-Smtp-Source: APiQypLmoEbM65ygr4Cw9Ko6bBLtNq6iLDhlvuXJY226XFVl2klKiLrKFZLVi/XnOR+awyLdv4DT0+y1Ji4MacwDL7c=
X-Received: by 2002:aa7:919a:: with SMTP id x26mr23877309pfa.39.1586889541893; 
 Tue, 14 Apr 2020 11:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
In-Reply-To: <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 14 Apr 2020 11:38:50 -0700
Message-ID: <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_113908_684127_7C62E750 
X-CRM114-Status: GOOD (  47.09  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kristof Beyls <Kristof.Beyls@arm.com>, Jian Cai <caij2003@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Luis Lozano <llozano@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Stephen Hines <srhines@google.com>,
 Doug Anderson <armlinux@m.disordat.com>,
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

On Tue, Apr 14, 2020 at 1:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Fri, Apr 10, 2020 at 6:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> ...
> > > > If your compiler/assembler only implements what is in the latest ARM
> > > > ARM, then it is not going to be suitable for these older CPUs and
> > > > alternate vendor "ARM compatible" CPUs.
> > > >
> > >
> > > Indeed, and I'm a bit disappointed at the willingness to leave stuff
> > > by the wayside, especially since Clang's integrated assembler has no
> > > other benefit to it than being built into the compiler.
> >
> > I don't disagree.  I also wish LLVM had a backend for every
> > architecture that GCC does.  But resources are finite and there are
> > more fires than firemen.  It gets really hard to justify a high
> > priority for certain things over others.  Doubly-so for hardware no
> > longer in production.  Triply-so when the ISA vendor doesn't provide
> > information in available reference manuals.  I'm happy to push for
> > more investment in LLVM to support the Linux kernel from Google
> > internally; maybe you can help do so from ARM?  That was my appeal to
> > ARM back in February; support for newest ISA extensions is great,
> > support for existing instructions is great, too.  (And not having to
> > choose between one or the other is preferrable, given the amount of
> > resources available).
> >
>
> Sure. But my point was really that disabling stuff left and right just
> so we can get to the finish line is fine for internal kernel-on-clang
> development, but I'd expect the contributions upstream to be a bit
> more considerate of other concerns, such as not regressing in terms of
> functionality.

Does this or any of the proposed patches regress anything for GCC?  Do
they regress anything for Clang?  Is it a regression if it never
worked in the first place? ;)

Disabling things isn't crossing the finish line.  It's admitting where
your weaknesses lie, and where you need to improve.  Crossing the
finish line is implementing and filling out those weaknesses.  We're
running a race we're behind by 10 years! We may never catch up!

>
> > My thoughts on the benefits of this approach to using Clang's
> > integrated assembler:
> > 1. continuous integration and randconfigs.  We need CI to help us spot
> > where things are still broken, and help us from regressing the ground
> > we've fought for.  We can't expect kernel developers to test with
> > LLVM.  Currently, we have LLVM builds in numerous kernel continuous
> > integration services (KernelCI, Kbuild test robot "0day bot", Linaro's
> > TCWG, Syzcaller, and our own CI).  For services that are bisecting and
> > notifying authors, they are currently harassing authors for
> > pre-existing conditions that the service uncovered via randconfig.
> > This is very very dangerous territory to be in.  If authors start
> > ignoring build reports due to false positives or false negatives, it
> > becomes a weak signal that tends to be ignored.  Then when real bugs
> > are uncovered, the actual bugs get ignored.  We don't want that.  If a
> > canary dies in a coal mine, but no one notices, was it for naught?
> >
>
> OK, so you are saying you need the Clang *assembler* to perform CI on
> C pieces that we can now build with the Clang compiler, and we don't
> want to regress on that? Is this because the cross-assemblers are
> missing from the CI build hosts?

We need to disable configs that we know are broken when using certain
LLVM tools until we can dedicate more resources to fixing them.  This
prevents curious failures when doing randconfig builds, which some of
the CI systems do.  It then gives us a nice list we can grep for
configs we need to fix, whether that's via improvements to the
toolchain to changes to the source.  And I think Arnd agreed with me
when he said "It clearly makes sense to limit the Kconfig option to
compilers that can actually build it."

>
> > 2. It helps us quantify how broken we are, via `grep` and `wc`.  LLVM
> > is in no way a perfect substitute for GNU utilities, but it's not too
> > far off either.  As an imperfect substitute, there's a lot of work
> > both on the toolchain side and sources of various codebases in terms
> > of toolchain portability.  Being able to quantify what doesn't work
> > let's us be clear in which ways LLVM is not a perfect substitute, but
> > also where and how much resources we need to get closer.  That helps
> > then with planning and prioritization.  The proper thing to do is to
> > bury the dead but at this point we only have resources to collect dog
> > tags and keep moving.  That doesn't rule out revisiting implementing
> > iWMMXT in the future.
> >
>
> To be honest with you, I don't actually think iwmmxt is that
> important. But I have already demonstrated how we can use a couple of
> macros to emit the same instructions without resorting to bare
> opcodes, so there is really no need to disable pieces left and right
> because the Clang assembler does not support them outright - it just
> needs someone to care enough about this, rather than rush through the
> list with a tick the box attitude, and rip out the pieces that look a
> bit too complicated.

I don't think we have a long list of configs to mark broken; it's not
like we're flooding the list with patches marking tons of things
broken.

In my town where I live, they spray paint the sidewalks that need
repair so that people don't trip.  "Why not just replace the
sidewalk?" you might ask.  Eventually they do, but it takes much more
time and effort, and there are a lot more broken sidewalks than people
and money to repair them.  Was it a waste to highlight the areas where
people might trip?

All I'm suggesting is that we mark the way for future travelers that
this doesn't work, as you'll get a potentially very confusing error
message if you try.  Then `git log` probably has a Link: and more
context as to why.  Then you can `grep` for all of the places that are
broken, and figure out which sidewalk is most important to repair
first, and better estimate the cost to repair all of them.

>
> > 3. Testing Clang's assembler allows for us to do kernel builds without
> > binutils.  This work is helping uncover places within the kernel where
> > the build is not hermetic.  We're still a long ways away from hermetic
> > reproducible kernel builds I suspect, but my main worry is when people
> > have multiple versions of a toolchain in their path, that only one is
> > used.  Otherwise, it leads to spooky hard to reproduce bug reports.  I
> > don't think I need to argue about build hermiticity, but it's
> > important for user trust and verification.
> >
>
> So we need the Clang assembler for reproducible builds?

No; it allows us to not even install binutils on the host, and know
that the Clang assembler and only the Clang assembler is being used;
no other host utilities that happen to be in the $PATH.

When I do a build with any LLVM utility, I'd like to ensure that the
equivalent from binutils isn't invoked.  This is something folks can
already start testing today with multiple installs of GNU or LLVM
utilities, though I don't know of anyone leading a conscious effort.
This is something we've been finding the hard way; we've been doing
builds on hosts with no GCC/binutils, and finding places where as an
example `nm` or `objcopy` is hardcoded, rather than
`$(NM)`/`$(OBCOPY)`, which is the first step towards making the build
more hermetic.

The next step is ensuring the tools produce deterministic output,
which is quite painful.

>
> > 4. Improving toolchain portability of assembler in LLVM itself.
> > There's plenty of subtle differences, but missing full on instructions
> > (or are they psuedo's?) is pretty bad.
> >
>
> I don't think this point belongs in the 'why should we care about the
> Clang assembler' list :-)

If LLVM improves, thanks to efforts to support the Linux kernel, then
I'd call that a win that kernel developers can celebrate.

>
> > I value the feedback from you, Russell, and Arnd even when I disagree.
> > These are just my thoughts on *why* things are the way they are, FWIW.
> > If there's thoughts on how we might better prioritize one thing over
> > another, I would appreciate it.
>
> I think the 'all legacy needs to die' attitude is not particularly
> helpful here. In the 32-bit Linux/ARM community, there are many people
> who care about older systems, and spend a lot of time on keeping
> things in a working order on platforms that Google or ARM have stopped
> caring about long ago.

I think if anyone on this thread had the position that "_all_ legacy
needs to die," then no one here would have anything to work on. :P
--
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
