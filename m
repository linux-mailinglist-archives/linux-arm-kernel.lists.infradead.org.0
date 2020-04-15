Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CD81A9A98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPHJH6QDjleMmg8LRhvVin9RLCMCz5swrNSyaOrvqqs=; b=DSO4maFapJYJTl
	RIjbZLl8i6WE9f1348NUOdGZP1nZuamft7EEEXsTcsLdY7Cl/HjpvZQe3np6Epw9ib73zCHWqdWSP
	u0aaXyNsfuZNsMmIIWAA8L5pIIiDHn6bFnsMDFVWVjujpEy4aKono3F5wbp2OdDYO4jYmVkOEMjH1
	oL/6+i8suU99VnvM0b7IiksWn2xak4Wh+liqe1+kRd2gAHMJs6nfVCtOMrTC5O/W8PIHnBribcJqU
	o7jhwKZmpBo5nVIK9GCNNkMDZWxbCbFxPx+2jABHFmNqBo0pwwKrXuea+aWf73vuBHOXz/4MCtiLu
	fSNA7QZEsvhsWd//JT6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfLw-0002tQ-MZ; Wed, 15 Apr 2020 10:33:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfLK-0002Yh-1S
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:32:33 +0000
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D9EC2166E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 10:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586946749;
 bh=77bP08nDJwkuMBIczKe44qfyWWYykJVxclcbNqH4VLE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IDz65g7Uaxp34zLubiGGNINQl8Jm03rAZA2ZyB+IlE2uEO2sehJaeH63vh5UpIkZG
 pHhO9kpbU0QWTmsz5X//QAbGduHTHEYv0YJJYZfCe1mvdIA6oy3VlSG+1FZETwno0H
 m+UhGCFNWmVD8PjIlaOywMttsl5+nUkwievYMBR4=
Received: by mail-io1-f50.google.com with SMTP id n10so16574762iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 03:32:29 -0700 (PDT)
X-Gm-Message-State: AGi0PuYwiPMksYqv8sTiAU/RaHByNm6ZmZ/50ejEK29SVO0BQtjs/934
 LAvMSkIzm+k1grURcgrZ8ZvHkiJJSaOGTGV+fjw=
X-Google-Smtp-Source: APiQypKs/dssNLkwQF7Y6iZnfEqqaGRDYSqqtHnQ8mo1ghodoyGLM+E/adJ/pRaj/JHSfFfAohcDzcQidwXd2DtCqho=
X-Received: by 2002:a05:6602:1550:: with SMTP id
 h16mr25731080iow.171.1586946748454; 
 Wed, 15 Apr 2020 03:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook>
In-Reply-To: <202004141258.6D9CB92507@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 15 Apr 2020 12:32:17 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
Message-ID: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_033230_153803_F5C13FBA 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
>
> I don't know if this will help, but I feel like folks might be talking
> past each other a little here. I see two primary issues that are
> colliding, and I just want to call them out specifically...
>

Thanks Kees.

I don't think there is a huge difference of opinion here, and I hope I
managed to strike the right tone, which was not meant to be a grumpy
one.

To reiterate my point: I strongly prefer minor asm surgery over
elaborate Kconfig plumbing if it means we can retain the functionality
even when using LLVM tools. In particular, the use of macros to
implement missing ISA support should be considered before any other
solution, as these are already being used widely across architectures
to fill in such gaps.


> On Tue, Apr 14, 2020 at 1:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > 1. continuous integration and randconfigs.  We need CI to help us spot
> > > where things are still broken, and help us from regressing the ground
> > > we've fought for.  We can't expect kernel developers to test with
> > > LLVM.  Currently, we have LLVM builds in numerous kernel continuous
>
> First, is this one. To paraphrase, "we don't want to lose hard-won
> ground."
>
> > To be honest with you, I don't actually think iwmmxt is that
> > important. But I have already demonstrated how we can use a couple of
> > macros to emit the same instructions without resorting to bare
> > opcodes, so there is really no need to disable pieces left and right
> > because the Clang assembler does not support them outright - it just
> > needs someone to care enough about this, rather than rush through the
> > list with a tick the box attitude, and rip out the pieces that look a
> > bit too complicated.
>
> The second is this one. To paraphrase, "we can just fix things instead
> of disabling them."
>
> This feels a lot to me like the pain I (and plenty of others) have felt
> when doing treewide changes (adding full compiler support is kind of a
> treewide change). The above two points were really strongly felt when we
> were trying to remove VLAs. In our case, we didn't even have the option
> to disable stuff, so the pain was even worse: VLAs were being added to
> the kernel faster than we could remove them.
>
> What's a good middle ground here? For VLAs, I ended up getting akpm's
> help by having him add -Wvla to his local builds and send nag emails
> to people when they added VLAs. That's not really a thing here, but it
> seems like there should be a way to avoid losing ground (in this case,
> it's the erosion of attention: repeated known-issue warnings means the
> CI gets ignored for the warnings on newly added issues). It does seem
> to me like adding the negative depends is a reasonable first step: it
> marks what hard things need fixing later without losing coverage for
> things that can be more easily fixed now with available resources.
>
> For the specific iwmmxt.S case, perhaps the solution is the suggested
> changes? I imagine it should be possible to do a binary diff to see zero
> changes before/after.
>

This code has been around since 2004. It has never been possible to
assemble it with Clang's assembler. So the only thing this patch gives
you is the ability to switch from a .config where IWMMXT was disabled
by hand to one where it gets disabled automatically by Kconfig.

So what hard-won ground are we losing here? Did IWMMXT recently get
enabled in a defconfig that you care about?

> For others, is a negative depends acceptable? Given how responsive
> Nick, Nathan, and others are, I don't think there is any real risk of a
> "slippery slope" of things just getting swept under the rug forever.
> Everyone here wants to see the kernel be awesome. :)
>

I am not disagreeing with you here, and I have worked with Nick,
Nathan and Stefan on numerous occasions to get Clang related build
issues solved.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
