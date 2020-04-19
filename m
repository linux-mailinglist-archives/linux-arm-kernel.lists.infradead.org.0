Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AD21AF988
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 13:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4amFcBDzgETtHoKWWkHrZTByTBCWTuJJdZDljnoy6yA=; b=EIGdgGGnw92gDV
	QSbSi2RIHkhR22VqErUjVtYYEvFV83W2RpdB+4n9yrBb/xwzFXIU/0vi00L8VpLiURUMhvXYYE6b5
	MgYlVvYzE0XWVU8sujpqkkXRbiTws0Y7RuPoThxasLAawLqvL6r5T5mOMWnCNF08cXJNuDgYcYGCB
	1GKWuGxLc4/Zz+qNZd7qP3lV21iLvuveOgW6Qr9q5Iupjc9n2wjWjVmBfES4Obv4C4YPuVIfmiGA4
	srWJLbOL4nnEEwc0z4oteQ5Tu2CR9MNhDfUyl/qbCF8kU967Mw5hPk+T7dsUQgXPi3BS/yHSFuk1e
	XLYiVe7vY/MEzBGkIZrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ7oF-0004K7-FJ; Sun, 19 Apr 2020 11:08:23 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ7o5-0004IR-Bd
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 11:08:15 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 079D45C9ADE;
 Sun, 19 Apr 2020 13:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1587294486;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a0hpRrCjohxzHvPf38IAgCtaSvu3v8WSSLh0hsDEMqw=;
 b=WmfvRi3jR7d1hRFCgk+w1SXChEMd+jClZqc2hGhn7eZqZyKobXpYwBSYbtGw+JtpTIM/pd
 bBT20gm7rLpg3P4dnoET5zVECvwL1nlC4d05IZaayjf0Q0vHxNkQpZJp474Av1riOXAIYd
 PGiZgTsTNn6hlKbpLvauWsxgKc6VTL0=
MIME-Version: 1.0
Date: Sun, 19 Apr 2020 13:08:05 +0200
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
In-Reply-To: <20200415144450.GF25745@shell.armlinux.org.uk>
References: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook>
 <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
 <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
 <20200415144450.GF25745@shell.armlinux.org.uk>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <ee12f583d2e2d4b9acdaeb213d3c4e25@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_040813_849446_E6DBA0A4 
X-CRM114-Status: GOOD (  35.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>,
 David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Kristof Beyls <Kristof.Beyls@arm.com>, Jian Cai <caij2003@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sami Tolvanen <samitolvanen@google.com>, Luis Lozano <llozano@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Stephen Hines <srhines@google.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-15 16:44, Russell King - ARM Linux admin wrote:
> On Wed, Apr 15, 2020 at 02:58:05PM +0200, Arnd Bergmann wrote:
>> On Wed, Apr 15, 2020 at 12:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>> >
>> > On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
>> > >
>> > > I don't know if this will help, but I feel like folks might be talking
>> > > past each other a little here. I see two primary issues that are
>> > > colliding, and I just want to call them out specifically...
>> >
>> > To reiterate my point: I strongly prefer minor asm surgery over
>> > elaborate Kconfig plumbing if it means we can retain the functionality
>> > even when using LLVM tools. In particular, the use of macros to
>> > implement missing ISA support should be considered before any other
>> > solution, as these are already being used widely across architectures
>> > to fill in such gaps.
>>
>> +1
>>
>> > > What's a good middle ground here? For VLAs, I ended up getting akpm's
>> > > help by having him add -Wvla to his local builds and send nag emails
>> > > to people when they added VLAs. That's not really a thing here, but it
>> > > seems like there should be a way to avoid losing ground (in this case,
>> > > it's the erosion of attention: repeated known-issue warnings means the
>> > > CI gets ignored for the warnings on newly added issues). It does seem
>> > > to me like adding the negative depends is a reasonable first step: it
>> > > marks what hard things need fixing later without losing coverage for
>> > > things that can be more easily fixed now with available resources.
>> > >
>> > > For the specific iwmmxt.S case, perhaps the solution is the suggested
>> > > changes? I imagine it should be possible to do a binary diff to see zero
>> > > changes before/after.
>> >
>> > This code has been around since 2004. It has never been possible to
>> > assemble it with Clang's assembler. So the only thing this patch gives
>> > you is the ability to switch from a .config where IWMMXT was disabled
>> > by hand to one where it gets disabled automatically by Kconfig.
>> >
>> > So what hard-won ground are we losing here? Did IWMMXT recently get
>> > enabled in a defconfig that you care about?
>>
>> I mainly care about the build testing aspect here, it seems we are getting
>> close to having the clang integrated assembler working with all .S files
>> in the kernel (it used to work for none), and I'd like to do randconfig and
>> allmodconfig tests that include these as well. Disabling the option works
>> for me, but your suggestion with the added macros is clearly better.
> 
> However, to me it seems the approach has been "clang doesn't like X,
> the kernel has to change to suit clang" - sometimes at the expense
> of either functionality or maintainability of the kernel.

There are also quite some quirks which work around gcc/binutils
weirdness in the kernel. E.g. there are macros to make VFP support work
with older binutils versions.

I understand, Clang is the newcomer here. Breaking gcc/binutils is a
nogo, and functionality or maintainability should not suffer.

I think the important thing here is that whatever workarounds are
introduced that they are properly documented: Why is this required, how
does it work, and under what circumstances can it be removed again. This
should be in commit logs as well as inline.

> 
> Some of the changes have been good (provoking modernisation) but that's
> not true of everything - and I see nothing happening subsequently to
> rectify the situation.

And that is true with gcc/binutils work arounds which have been
introduced long time ago.

From my perspective, the kernel always tried to be very user oriented
when it comes to toolchain support: Rather than blacklist a known broken
toolchain version, work arounds have been introduced. And I think we
should treat Clang no different.

That being said, I am not saying we should hack up the kernel to make
Clang work no matter what. There are fixes made in Clang so we can avoid
introducing hacks in the kernel. There needs to be a balance.

Again, I think more important is that when we introduce work arounds in
Linux, that we make sure that such changes are properly document. This
will make cleanup a *lot* easier and therefor more likely down the road.

> 
> Had we gone down the path of disabling the build of iWMMXT, if anyone
> builds a kernel with clang for ARMv5 PXA and relies on iWMMXT, their
> userspace suddenly breaks because they used a different compiler and
> lost the necessary iWMMXT support in the kernel to allow userspace to
> operate, which isn't a nice approach.

That is actually a very good point and hasn't really been taken into
account in this discussion.

Currently the default behavior is that iWMMXT is enabled for all CPUs
supporting it. With the patch as-is, users who might try out Clang (with
integrated assembler) likely will not notice that iWMMXT is not
supported. They will be in for a surprise once they try to use user
space applications making use of iWMMXT instructions.

Avoiding such surprises would mean we either disable all iWMMXT
CPUs/architectures when using Clang's integrated assembler or make sure
they work with the integrated assembler.

Is there a nice way to print a warning at build time in this case?

> 
> Using macros is the best solution to work around clang, but should not
> be done at the expense of GNU AS which has proper support.

I guess making the macros a Clang only thing should be doable.

> 
> I'd say this: if clang wants to support building ARMv5, then it needs
> to support iWMMXT and stop forcing the kernel to adapt to Clang's
> incomplete implementations (which are no direct fault of the clang
> developers.)

So far I at least did not really look into supporting ARMv5
architectures when building with Clang. I would be fine to just disable
ARMv5 architecture when using Clang's integrated assembler, at least for
now.

However, iWMMXT is also supported by Marvell's PJ4 microarchitecture,
which is an ARMv7-A architecture. Hence this file is assembled when
building multi_v7_defconfig (since ARCH_DOVE is enabled there). So if we
consider iWMMXT mandatory to support an architecture, we would have to
disable more than "just" ARMv5.

That said, I still would prefer this patch over disabling all the
architectures. Keep in mind that integrated assembler needs to be
explicitly enabled (using LLVM_IAS=1).

While I fear that the asm macro surgery will not be that clean/trivial,
I still think its the best option. It side steps the problem of
accidentally breaking user space and ultimately allows to build more
configurations with Clang's integrated assembler.

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
