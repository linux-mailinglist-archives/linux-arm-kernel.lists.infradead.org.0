Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082281AAA6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKeNMIykeVmN+VEZgboH5D0jyugeLkbe5ez/il4P8PE=; b=j9zCbtOtV7SSI2
	Dc6kcY008zmtrqYgBFwSLg5l0YqekXr/9OjvzMwF5EnNs80zWZtwA1odsf3Rm7B2UEiq1l+n5HDU/
	q7FvJcwZoypF8IEZ6cx8VLl0zDsuTbGuURGho5c+dHfKzwKW5j+k/PZkipa90033ML46qLob58fsO
	twu3BzY9g9tvCUmpBPWHNGkhX/pQeOx3nHGDg2USjLtxLVagjqWdcyuFcauZ8EmeLJiDUa9eltmwt
	WgHQY1bSpzqTb2392sSoZvSA9PJvbwubhZJKOTcyMUKeWuYo7wr3539u2OEBhvTPQO/udZ89iw0Bq
	HKqUnnxQdtNv/nuPh85w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjIj-0003SX-Tt; Wed, 15 Apr 2020 14:46:05 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjIa-0003RQ-MY
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q6y0RY1r/bsSQu1Pjhp5jZO0J0vCNZAdOGGiFado0tg=; b=ZeyHf1lpXQg+EMSv8Vfok/G9o
 ZJsoZldDhcd6jFsf4UKnLOBvEET5e+YndugH+ve6UE9kS3I6DjJnt9fQ6bFucg/hQSUbxYDgjM8L4
 RfzeXUZsn4k5GYAnWSSXOyTfqeW9tYzbrl7DusejqBnJRx9iLtpXjR8y6QbNvmEkrRIk+9zjB3/3D
 Qa96b5KO8niSZzlk9xmx46bCcUUMamdj/tYa7a1rCQAuR929SCG92lC6s4pUhsB7RgbTMkfQiUw4A
 R/ma6qh3WlWcb7GV2eZ9M0ICpTExfS2QpQFni+2bGeYsQDAwxXau45RDDpGhahCehnKArAFi5K/KK
 cYCHjcxag==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46312)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jOjHj-00071l-VP; Wed, 15 Apr 2020 15:45:04 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jOjHW-00010F-Ku; Wed, 15 Apr 2020 15:44:50 +0100
Date: Wed, 15 Apr 2020 15:44:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200415144450.GF25745@shell.armlinux.org.uk>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_074556_737856_AE4BD6AB 
X-CRM114-Status: GOOD (  27.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Luis Lozano <llozano@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Kees Cook <keescook@chromium.org>,
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

On Wed, Apr 15, 2020 at 02:58:05PM +0200, Arnd Bergmann wrote:
> On Wed, Apr 15, 2020 at 12:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > I don't know if this will help, but I feel like folks might be talking
> > > past each other a little here. I see two primary issues that are
> > > colliding, and I just want to call them out specifically...
> >
> > To reiterate my point: I strongly prefer minor asm surgery over
> > elaborate Kconfig plumbing if it means we can retain the functionality
> > even when using LLVM tools. In particular, the use of macros to
> > implement missing ISA support should be considered before any other
> > solution, as these are already being used widely across architectures
> > to fill in such gaps.
> 
> +1
> 
> > > What's a good middle ground here? For VLAs, I ended up getting akpm's
> > > help by having him add -Wvla to his local builds and send nag emails
> > > to people when they added VLAs. That's not really a thing here, but it
> > > seems like there should be a way to avoid losing ground (in this case,
> > > it's the erosion of attention: repeated known-issue warnings means the
> > > CI gets ignored for the warnings on newly added issues). It does seem
> > > to me like adding the negative depends is a reasonable first step: it
> > > marks what hard things need fixing later without losing coverage for
> > > things that can be more easily fixed now with available resources.
> > >
> > > For the specific iwmmxt.S case, perhaps the solution is the suggested
> > > changes? I imagine it should be possible to do a binary diff to see zero
> > > changes before/after.
> >
> > This code has been around since 2004. It has never been possible to
> > assemble it with Clang's assembler. So the only thing this patch gives
> > you is the ability to switch from a .config where IWMMXT was disabled
> > by hand to one where it gets disabled automatically by Kconfig.
> >
> > So what hard-won ground are we losing here? Did IWMMXT recently get
> > enabled in a defconfig that you care about?
> 
> I mainly care about the build testing aspect here, it seems we are getting
> close to having the clang integrated assembler working with all .S files
> in the kernel (it used to work for none), and I'd like to do randconfig and
> allmodconfig tests that include these as well. Disabling the option works
> for me, but your suggestion with the added macros is clearly better.

However, to me it seems the approach has been "clang doesn't like X,
the kernel has to change to suit clang" - sometimes at the expense
of either functionality or maintainability of the kernel.

Some of the changes have been good (provoking modernisation) but that's
not true of everything - and I see nothing happening subsequently to
rectify the situation.

Had we gone down the path of disabling the build of iWMMXT, if anyone
builds a kernel with clang for ARMv5 PXA and relies on iWMMXT, their
userspace suddenly breaks because they used a different compiler and
lost the necessary iWMMXT support in the kernel to allow userspace to
operate, which isn't a nice approach.

Using macros is the best solution to work around clang, but should not
be done at the expense of GNU AS which has proper support.

I'd say this: if clang wants to support building ARMv5, then it needs
to support iWMMXT and stop forcing the kernel to adapt to Clang's
incomplete implementations (which are no direct fault of the clang
developers.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
