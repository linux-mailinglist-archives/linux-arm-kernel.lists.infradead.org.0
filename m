Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F471A469D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 15:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEYTWdIRmwYfDWIEEShHYxle4OPSskkv8RSdBr/I6g0=; b=RCgNbWS7YeO5t1
	9y6Imva6PfMXvzGbI4wpRkMmaSr9clGch/XBV2NplZKWa+31vzoeRC/94EFUi3FEEoRUfpPveyMn0
	38Srp0njp0F9zAeGbCwbsTQ/Cvuge80kxnLU6XvTXRXBCLu5NxZaqTu7ePN9o+hALWEwOys3O8di+
	07wL8kdAQ/1pqLtUT8Wp40D/o9UkVyXKbO5DBpCVxPLlbZNqzqhsSJsvZSw1qi1iBFph7rdn5oJIr
	ZxlzzRN4Hwztew2XpMDTF8JaOVKYMhe2KXwjJvGAYDu0LSaD/ASvKjzq8J5a8uZDZjNcZBpUcD+tb
	BzxahmyqXhPmLOaXzesg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMtPe-0005CQ-SU; Fri, 10 Apr 2020 13:09:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMtPX-0005Bh-QQ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 13:09:33 +0000
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A93BD2173E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 13:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586524170;
 bh=5WEAdeZ8NM+kR6JK6kOLkmqphGERh/J8AVjGUV+iPQY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=caS+XUIlsZgEBCk0w81MRE5mbSZtdXe4yqVEt0cnPlu52QuX5bmImMK2nkajPiSo9
 YB+AH+b0GrSlS7Utesplob7Zd5ITab82QMoiOSvCGvEU/Xq2pDlmRjpATmKKQdEBKH
 2xFxh5W3oLDva3TuIdNahMQWYQ5yedELcEbj1z+s=
Received: by mail-io1-f53.google.com with SMTP id w20so1700331iob.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 06:09:30 -0700 (PDT)
X-Gm-Message-State: AGi0PuZCFj8CXc5aK6io1xh6Vs8CxnluDw6d5lePAQ87njxJ+3r5eX6g
 WrpwvlZF0tO+nJko+BOUSlvxHFPsM9Zx6nORqLU=
X-Google-Smtp-Source: APiQypJzjP70bMJVA9Led2HH6Kvs7dSVTDdgeJwjrGG2MlqETHUYaT3ZORmi/8MXQCOjZehGXh7uYslJtOjfoYtPCkM=
X-Received: by 2002:a6b:f413:: with SMTP id i19mr4216512iog.203.1586524169887; 
 Fri, 10 Apr 2020 06:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20200410123301.GX25745@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 15:09:18 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
Message-ID: <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_060931_897029_5188AC59 
X-CRM114-Status: GOOD (  29.98  )
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
 Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
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

On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Apr 10, 2020 at 01:15:08PM +0200, Ard Biesheuvel wrote:
> > On Fri, 10 Apr 2020 at 11:56, Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> > > >
> > > > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > > > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > > > kernel.
> > > >
> > > > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > >
> > > It clearly makes sense to limit the Kconfig option to compilers that
> > > can actually build it.
> > > A few questions though:
> > >
> > > - Given that Armada XP with its PJ4B was still marketed until fairly
> > > recently[1],
> > >   wouldn't it make sense to still add support for it? Is it a lot of work?
> > >
> >
> > The part of that file that the assembler chokes on hasn't been touched
> > by anyone since Nico added it 15+ years ago. It can only be built in
> > ARM mode, and it disassembles to the sequence below (the ld/st fe/fp
> > mnemonics are not document in recent versions of the ARM ARM, and
> > aren't understood by Clang either)
>
> For older CPUs, it doesn't matter what the latest ARM ARM says, the
> appropriate version of the ARM ARM is the one relevant for the CPU
> architecture.  This is a mistake frequently made, and it's been pointed
> out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> keeping older revisions is necessary if you want to be interested in
> the older architectures.
>
> However, there's an additional complication here: DEC's license from
> Arm Ltd back in the days of StrongARM allowed them to make changes to
> the architecture - that was passed over to Intel when they bought that
> part of DEC.  Consequently, these "non-Arm vendor" cores contain
> extensions that are not part of the ARM ARM.  iWMMXT is one such
> example, which first appeared in the Intel PXA270 SoC (an ARMv5
> derived CPU).
>
> In fact, several of the features found in later versions of the ARM
> architecture came from DEC and Intel enhancements.
>
> If your compiler/assembler only implements what is in the latest ARM
> ARM, then it is not going to be suitable for these older CPUs and
> alternate vendor "ARM compatible" CPUs.
>

Indeed, and I'm a bit disappointed at the willingness to leave stuff
by the wayside, especially since Clang's integrated assembler has no
other benefit to it than being built into the compiler.

> > Instead of playing all these tricks with Kconfig, couldn't we simply
> > insert the bare opcodes and be done with it?
>
> That gets close to a GPL violation; the GPL requires that source code
> be in the preferred form for making modifications. Encoding raw opcodes
> can in no way be argued to be the preferred form. Arguing that raw
> opcodes is acceptable sets a precedent that makes it acceptable for
> other "works" to do the same, which makes arguments against firmware
> supplied as a hexdump null and void.
>
> Using macros to emulate the instructions and create the appropriate
> opcodes is an alternative; we already have that for some of the VFP
> code as early toolchains had no support for the VFP instructions.
>
> So no, bare opcodes are unacceptable.
>

Fair enough.

The following set of macros appears to emit the opcodes correctly,
assuming we're willing to tweak the source code somewhat, i.e., drop
square brackets and leading # for immediate offsets. (The tmcr/tmrc
instructions are left as an exercise for the reader)


.irp b, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
.set .LwR\b, \b
.set .Lr\b, \b
.endr

.set .LwCSSF, 0x2
.set .LwCASF, 0x3
.set .LwCGR0, 0x8
.set .LwCGR1, 0x9
.set .LwCGR2, 0xa
.set .LwCGR3, 0xb

.macro wldrd, reg:req, base:req, offset:req
.inst 0xedd00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

.macro wldrw, reg:req, base:req, offset:req
.inst 0xfd900100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

.macro wstrd, reg:req, base:req, offset:req
.inst 0xedc00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

.macro wstrw, reg:req, base:req, offset:req
.inst 0xfd800100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
