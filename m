Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91D91ADF94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8NwlYe4yWdHEmbcAU1ZPNFSq3fGj4xsGVcX5QBGbl8=; b=RRgUpInyVqmjbM
	F8S2G/SsDsIzVcpQsEXAvrmq/8uedSFWfQijWsxgC3z3NdLP2ytBgXipyMxBdn7XGB4O+irKaxXCG
	ejJMI9X4N3tqooNJ0khrtEzjhVt8iB0LMNkOrSFP/YGvlI1ZNmr7+NW5SBRkczM1yGixavqHDT83X
	Qk+Pr9fXmkutRcltRIZWAvdbbkW9Cwm3AiRdy8F+8dKFiej7Z6AJchYfVnAIUiQaZh3Ze0/mc/yhX
	Q+Yv/koArPzougJ1GblWDZec2kuXC1YiTj8sjro6EqgEEkii1d/gE9xSB2yGf8WXBnB8mxf6u6YWW
	YnVv4ipbV/GuyXSQss5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRki-0004BB-QN; Fri, 17 Apr 2020 14:13:56 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRkY-0004A3-DI
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:13:48 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 03HEDDdc011310
 for <linux-arm-kernel@lists.infradead.org>; Fri, 17 Apr 2020 23:13:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 03HEDDdc011310
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587132794;
 bh=soczHQygZ5e4Z4/uBgr0PVGiMli0DNK+wn9N64tR5qU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vXuRLTovDrQmMb0Jz37P9s2LBa6Jb1e/OUiRedx63I0IFnBEDdaseDJmrt8I6+yNf
 YwxQQopMU2clgNfcN5XYa5Pdao15glEfClHbc9nH43HSs1Julc8SjX09ZfxxNGgNZ1
 L2y3yIwwSDwMFX+ug9VhWRfr7yo4w7BJoeadMqw4WrhuM6BzVqXadkqpeahMtW4mME
 iRKHSf/7aXQtWqNWcjEqbNd1y2k7an7fr66xZ6JGbirh4am9JHd6+siWU3PaImO0sO
 Eg2kf5oJczJgxOoSYG0X5oXG3RdLGssN/7QKmvFhvYf2WvL7C7tM5MDUBnGKcAH8mv
 pI488dLZ0hQJw==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id s5so693450uad.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 07:13:13 -0700 (PDT)
X-Gm-Message-State: AGi0PubNomNfGmD0f6OyGyJpcOgsmNxT2qOsM+7YpQgIRXRO2dQ6EMup
 xUgEmG8+XmMou/wB5ELkvLuK7WmZF7teK5GnZWE=
X-Google-Smtp-Source: APiQypKhiuo80RsLEisith0XyQOFUV3PzTzMi+mrapjPQLCKwWkCyn51WYWMMdjYPdS/P6p4Vjn2U9i/In6A9eNfdOo=
X-Received: by 2002:ab0:20d6:: with SMTP id z22mr2640996ual.121.1587132792213; 
 Fri, 17 Apr 2020 07:13:12 -0700 (PDT)
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
 <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
 <202004150833.E2E9A89E0@keescook>
In-Reply-To: <202004150833.E2E9A89E0@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 17 Apr 2020 23:12:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS-juF8dpeSVCuYQPwJ5HSQypFqOvesGFQR4bzTf23nUg@mail.gmail.com>
Message-ID: <CAK7LNAS-juF8dpeSVCuYQPwJ5HSQypFqOvesGFQR4bzTf23nUg@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_071346_784242_F21F7381 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>,
 Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Kristof Beyls <Kristof.Beyls@arm.com>, Jian Cai <caij2003@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
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

Hi

On Thu, Apr 16, 2020 at 12:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Apr 15, 2020 at 12:32:17PM +0200, Ard Biesheuvel wrote:
> > To reiterate my point: I strongly prefer minor asm surgery over
> > elaborate Kconfig plumbing if it means we can retain the functionality
> > even when using LLVM tools. In particular, the use of macros to
> > implement missing ISA support should be considered before any other
> > solution, as these are already being used widely across architectures
> > to fill in such gaps.
>
> Yeah, this seems like the right place to start from. It sounded like
> there were cases where the people with knowledge needed to accomplish
> the macro creation were not always immediately available. But, yes,
> let's get iwmmxt fixed up.
>
> > This code has been around since 2004. It has never been possible to
> > assemble it with Clang's assembler. So the only thing this patch gives
> > you is the ability to switch from a .config where IWMMXT was disabled
> > by hand to one where it gets disabled automatically by Kconfig.
>
> Right -- I meant "let's fix iwmmxt with macro magic" not "let's disable
> it". I did want to point out the Kconfig disabling may be needed in
> other cases.
>
> > So what hard-won ground are we losing here? Did IWMMXT recently get
> > enabled in a defconfig that you care about?
>
> It's a CI's ability to do randconfig builds to catch new stuff. (i.e.
> where "disabled by hand" isn't part of the process.) Since there are
> multiple CIs doing multi-architecture builds we need to get these things
> fixed upstream, not a CI's local patch stacks or Kconfig whitelists,
> etc. And when the expertise isn't available to fix arch-specific stuff,
> Kconfig negative depends seems like a reasonable middle ground. I, too,
> prefer fixes that allow Clang to do its work without wrecking things
> for GNU as.
>
> > I am not disagreeing with you here, and I have worked with Nick,
> > Nathan and Stefan on numerous occasions to get Clang related build
> > issues solved.
>
> Yup! Totally; this thread just looked very familiar to me from doing
> treewide stuff and I didn't want what I thought looked like the core
> points to get lost in the details. :)
>
> --
> Kees Cook



When I started to read this thread,
I just slightly preferred
    depends on $(as-instr, <some iwmmxt instructions>)
over
    depends on AS_IS_CLANG

because it is what we recently did for x86.
commit 5e8ebd841a44b895e2bab5e874ff7d333ca31135


But, Ard's macro approach seems even better.


I do not know how difficult to replace
the arch/x86/Kconfig.assembler with .macro

Anyway, arch/x86/Kconfig.assembler will be gone
when we raise the binutils version next time.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
