Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75B71A76BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYmIUfLS1rlsVKsodIk1/3M6O/o9hdBUSOvu1hiEm2w=; b=hbtNHnt8ghQN9r
	8dP5BUJmrhYd4cW78ejn52Fe0G+qUY7EMxJ2iqbaxoeJHBVRb7eiAMjd5PVVjHKhTrzmTVBbWEUkM
	5oVoeBjsobAXP7v8546CdcHfLI35HGgEhalzmKlL9LSQ3wLSebvtpxSYEy8qi2wrMSa51KLMYqcPD
	HuEHJGYd6oNZAL8L99k1vPXHeB/2MU4P5SZakyK70dL0Y481To26/IV5nC+L83sEtazRi+K9CsPW3
	VfBPemK9ke6g8q7bptwOi7rzJQ7NDg5saWm1Rxr26J1+D0z6rhr8KaKJzMqjYtm0cn8ELpRcTqTVb
	jlO7JzlbrkPo1sh8eGsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHQ1-000149-RB; Tue, 14 Apr 2020 08:59:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHPt-00013d-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:59:39 +0000
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
 [209.85.166.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33C9B2085B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586854777;
 bh=SqkasMSzNH62OqOi5+wpyiV3vZk0yvRWEpx9HrxfKzM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ovUwlBW+O+NhyFJ9o7obZ1Gx/UuAL3fQjXC+QsgmnIOI5/nSwH8R3LXIrY8heOaly
 8aCuqHOHFJ041BtkaG0PWIn9IBARrus/7Qps6W+kdwQXI2C9sOdQ8/qlZSHtNmgXke
 tONkCm0SWRF7Ym46m6BfNvdKyXPz9oEmdQFICi9I=
Received: by mail-il1-f172.google.com with SMTP id e4so8943979ils.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 01:59:37 -0700 (PDT)
X-Gm-Message-State: AGi0PuZfxYjaKicxZJMOqqWMw0mvbQAYRXv90NJ+4BbZD9A+cyEk8r25
 cjX8Qbm2bY0PRjaZgch+nJBNfKRkQySwpMs4qIs=
X-Google-Smtp-Source: APiQypIRfriof1Jj1dud2z9ouiN7Oe/s/OcZJNzuZQyx3tYkn3qcDtrnmTeyCNGY5oEhnGqjWgYNdhUKLxylRpjvLFs=
X-Received: by 2002:a92:443:: with SMTP id 64mr16054243ile.258.1586854776281; 
 Tue, 14 Apr 2020 01:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
In-Reply-To: <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 14 Apr 2020 10:59:24 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
Message-ID: <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_015937_899587_0AFDE649 
X-CRM114-Status: GOOD (  37.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masami Hiramatsu <mhiramat@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
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

On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Apr 10, 2020 at 6:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
...
> > > If your compiler/assembler only implements what is in the latest ARM
> > > ARM, then it is not going to be suitable for these older CPUs and
> > > alternate vendor "ARM compatible" CPUs.
> > >
> >
> > Indeed, and I'm a bit disappointed at the willingness to leave stuff
> > by the wayside, especially since Clang's integrated assembler has no
> > other benefit to it than being built into the compiler.
>
> I don't disagree.  I also wish LLVM had a backend for every
> architecture that GCC does.  But resources are finite and there are
> more fires than firemen.  It gets really hard to justify a high
> priority for certain things over others.  Doubly-so for hardware no
> longer in production.  Triply-so when the ISA vendor doesn't provide
> information in available reference manuals.  I'm happy to push for
> more investment in LLVM to support the Linux kernel from Google
> internally; maybe you can help do so from ARM?  That was my appeal to
> ARM back in February; support for newest ISA extensions is great,
> support for existing instructions is great, too.  (And not having to
> choose between one or the other is preferrable, given the amount of
> resources available).
>

Sure. But my point was really that disabling stuff left and right just
so we can get to the finish line is fine for internal kernel-on-clang
development, but I'd expect the contributions upstream to be a bit
more considerate of other concerns, such as not regressing in terms of
functionality.

> My thoughts on the benefits of this approach to using Clang's
> integrated assembler:
> 1. continuous integration and randconfigs.  We need CI to help us spot
> where things are still broken, and help us from regressing the ground
> we've fought for.  We can't expect kernel developers to test with
> LLVM.  Currently, we have LLVM builds in numerous kernel continuous
> integration services (KernelCI, Kbuild test robot "0day bot", Linaro's
> TCWG, Syzcaller, and our own CI).  For services that are bisecting and
> notifying authors, they are currently harassing authors for
> pre-existing conditions that the service uncovered via randconfig.
> This is very very dangerous territory to be in.  If authors start
> ignoring build reports due to false positives or false negatives, it
> becomes a weak signal that tends to be ignored.  Then when real bugs
> are uncovered, the actual bugs get ignored.  We don't want that.  If a
> canary dies in a coal mine, but no one notices, was it for naught?
>

OK, so you are saying you need the Clang *assembler* to perform CI on
C pieces that we can now build with the Clang compiler, and we don't
want to regress on that? Is this because the cross-assemblers are
missing from the CI build hosts?

> 2. It helps us quantify how broken we are, via `grep` and `wc`.  LLVM
> is in no way a perfect substitute for GNU utilities, but it's not too
> far off either.  As an imperfect substitute, there's a lot of work
> both on the toolchain side and sources of various codebases in terms
> of toolchain portability.  Being able to quantify what doesn't work
> let's us be clear in which ways LLVM is not a perfect substitute, but
> also where and how much resources we need to get closer.  That helps
> then with planning and prioritization.  The proper thing to do is to
> bury the dead but at this point we only have resources to collect dog
> tags and keep moving.  That doesn't rule out revisiting implementing
> iWMMXT in the future.
>

To be honest with you, I don't actually think iwmmxt is that
important. But I have already demonstrated how we can use a couple of
macros to emit the same instructions without resorting to bare
opcodes, so there is really no need to disable pieces left and right
because the Clang assembler does not support them outright - it just
needs someone to care enough about this, rather than rush through the
list with a tick the box attitude, and rip out the pieces that look a
bit too complicated.

> 3. Testing Clang's assembler allows for us to do kernel builds without
> binutils.  This work is helping uncover places within the kernel where
> the build is not hermetic.  We're still a long ways away from hermetic
> reproducible kernel builds I suspect, but my main worry is when people
> have multiple versions of a toolchain in their path, that only one is
> used.  Otherwise, it leads to spooky hard to reproduce bug reports.  I
> don't think I need to argue about build hermiticity, but it's
> important for user trust and verification.
>

So we need the Clang assembler for reproducible builds?

> 4. Improving toolchain portability of assembler in LLVM itself.
> There's plenty of subtle differences, but missing full on instructions
> (or are they psuedo's?) is pretty bad.
>

I don't think this point belongs in the 'why should we care about the
Clang assembler' list :-)

> I value the feedback from you, Russell, and Arnd even when I disagree.
> These are just my thoughts on *why* things are the way they are, FWIW.
> If there's thoughts on how we might better prioritize one thing over
> another, I would appreciate it.

I think the 'all legacy needs to die' attitude is not particularly
helpful here. In the 32-bit Linux/ARM community, there are many people
who care about older systems, and spend a lot of time on keeping
things in a working order on platforms that Google or ARM have stopped
caring about long ago.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
