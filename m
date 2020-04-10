Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60ED1A4589
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wyv6JUfx7MFLnXoZkyEmp9XKYEDdNf2iq3N7cJcdUYY=; b=tf4QwX0DpYxlg6
	xsUBt9u0V7NmmBqkIyVy2YpuNGLG+JJCWCnWr3d1HJ0BlOBT3yQpwHu7pbBocttkmxIiXefrCfK2w
	mU4xNVwTY/S3AERfBG1cK84jtRX9jMKQMYzfK7PLbnyMgM7AaKlhkBHnqeIz9Z+mY/T/IKBHajqY8
	+t/FnFAXOVvQZ6CzzC0AUVWBwd/re5Qe0MHeGWD8UDXx4tePQJz3MBWN1VAn8iL7v+Dr7ZDgPmPeM
	igI34owSQqGlOgigXNpWRvKHyZHbJcS7WeuxKk4COPrn6R4yBF8edsBayCipa4P17PorxVCcYJ1ge
	1H6kWe6aA9MaTEgIDv3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrdB-0005DU-Ge; Fri, 10 Apr 2020 11:15:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrd3-0005D3-Bi
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 11:15:23 +0000
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
 [209.85.166.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3D98216FD
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 11:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586517320;
 bh=3YXzGC3ObJihzyd1AuE7dmr+XaEQodkdzqmLPWjQZVw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=A3ZpHJd0z3q5d5P39vHKt3H1YIccE8/FYC13OkS3RTWHHUR6WwU0CJSd/XUdXeOhe
 eHu7qHEBz+eEwbEQLxVl0ThOX9wzt/c/Yu6ttYQSw75PGEAZcaSCLxQdXaITrl0YDK
 84a/mTOL6J9LpDwRwGSOfqcnrJ3Df1cqtJeA2JU0=
Received: by mail-il1-f172.google.com with SMTP id r5so1528877ilq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 04:15:20 -0700 (PDT)
X-Gm-Message-State: AGi0PuYUkCP14m14j1IhYw7n4oeukmN/QY4yeE1HZN2w9izN95FWTbWK
 VgomWaH4pDBwYwnA3/SmkMYJ4A97bgzYGo0sB5c=
X-Google-Smtp-Source: APiQypKx2r9i+/5ngLLjcrqLROZyR2/huVURg0XP0TmnmasGW6xcHBs2nCK8pIhAEuxrWv22nO2mhz//zWaHmqQ8DN4=
X-Received: by 2002:a92:c788:: with SMTP id c8mr4514670ilk.279.1586517319930; 
 Fri, 10 Apr 2020 04:15:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
In-Reply-To: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 13:15:08 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
Message-ID: <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_041521_445328_21ED4F82 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jian Cai <caij2003@gmail.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, jiancai@google.com,
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

On Fri, 10 Apr 2020 at 11:56, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> >
> > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > kernel.
> >
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>
> It clearly makes sense to limit the Kconfig option to compilers that
> can actually build it.
> A few questions though:
>
> - Given that Armada XP with its PJ4B was still marketed until fairly
> recently[1],
>   wouldn't it make sense to still add support for it? Is it a lot of work?
>

The part of that file that the assembler chokes on hasn't been touched
by anyone since Nico added it 15+ years ago. It can only be built in
ARM mode, and it disassembles to the sequence below (the ld/st fe/fp
mnemonics are not document in recent versions of the ARM ARM, and
aren't understood by Clang either)

Instead of playing all these tricks with Kconfig, couldn't we simply
insert the bare opcodes and be done with it?



00000054 <concan_dump>:
  54: fd812120 stc2 1, cr2, [r1, #128] ; 0x80
  58: fd813121 stc2 1, cr3, [r1, #132] ; 0x84
  5c: fd818122 stc2 1, cr8, [r1, #136] ; 0x88
  60: fd819123 stc2 1, cr9, [r1, #140] ; 0x8c
  64: fd81a124 stc2 1, cr10, [r1, #144] ; 0x90
  68: fd81b125 stc2 1, cr11, [r1, #148] ; 0x94
  6c: e3120002 tst r2, #2
  70: 0a00000f beq b4 <concan_dump+0x60>
  74: edc10100 stfe f0, [r1]
  78: edc11102 stfe f1, [r1, #8]
  7c: edc12104 stfe f2, [r1, #16]
  80: edc13106 stfe f3, [r1, #24]
  84: edc14108 stfe f4, [r1, #32]
  88: edc1510a stfe f5, [r1, #40] ; 0x28
  8c: edc1610c stfe f6, [r1, #48] ; 0x30
  90: edc1710e stfe f7, [r1, #56] ; 0x38
  94: edc18110 stfp f0, [r1, #64] ; 0x40
  98: edc19112 stfp f1, [r1, #72] ; 0x48
  9c: edc1a114 stfp f2, [r1, #80] ; 0x50
  a0: edc1b116 stfp f3, [r1, #88] ; 0x58
  a4: edc1c118 stfp f4, [r1, #96] ; 0x60
  a8: edc1d11a stfp f5, [r1, #104] ; 0x68
  ac: edc1e11c stfp f6, [r1, #112] ; 0x70
  b0: edc1f11e stfp f7, [r1, #120] ; 0x78
  b4: e3300000 teq r0, #0
  b8: 012fff1e bxeq lr

000000bc <concan_load>:
  bc: edd00100 ldfe f0, [r0]
  c0: edd01102 ldfe f1, [r0, #8]
  c4: edd02104 ldfe f2, [r0, #16]
  c8: edd03106 ldfe f3, [r0, #24]
  cc: edd04108 ldfe f4, [r0, #32]
  d0: edd0510a ldfe f5, [r0, #40] ; 0x28
  d4: edd0610c ldfe f6, [r0, #48] ; 0x30
  d8: edd0710e ldfe f7, [r0, #56] ; 0x38
  dc: edd08110 ldfp f0, [r0, #64] ; 0x40
  e0: edd09112 ldfp f1, [r0, #72] ; 0x48
  e4: edd0a114 ldfp f2, [r0, #80] ; 0x50
  e8: edd0b116 ldfp f3, [r0, #88] ; 0x58
  ec: edd0c118 ldfp f4, [r0, #96] ; 0x60
  f0: edd0d11a ldfp f5, [r0, #104] ; 0x68
  f4: edd0e11c ldfp f6, [r0, #112] ; 0x70
  f8: edd0f11e ldfp f7, [r0, #120] ; 0x78
  fc: fd902120 ldc2 1, cr2, [r0, #128] ; 0x80
 100: fd903121 ldc2 1, cr3, [r0, #132] ; 0x84
 104: fd908122 ldc2 1, cr8, [r0, #136] ; 0x88
 108: fd909123 ldc2 1, cr9, [r0, #140] ; 0x8c
 10c: fd90a124 ldc2 1, cr10, [r0, #144] ; 0x90
 110: fd90b125 ldc2 1, cr11, [r0, #148] ; 0x94
 114: e3310000 teq r1, #0
 118: e3a02000 mov r2, #0
 11c: 012fff1e bxeq lr
 120: ee012110 flts f1, r2
 124: e12fff1e bx lr

> - Why does the linker have to understand it, rather than just the assembler?
>
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 66a04f6f4775..39de8fc64a73 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
> >
> >  config IWMMXT
> >         bool "Enable iWMMXt support"
> > -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> > +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
>
> I would suggest splitting it into two lines for readability:
>
>        depends on  CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
>        depends on !AS_IS_CLANG && !LD_IS_LLD
>
>     Arnd
>
> [1] http://web.archive.org/web/20191015165247/https://www.marvell.com/embedded-processors/armada/index.jsp
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
