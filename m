Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FED28017
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0beqIVQFy0Y4aimxCYgyfB+z61plT+qp3CUuI+RAB0=; b=tRfIQSyC/CtoHK
	MSMohAVE2/3lijqcQ3vS+T4GEKRFMguIHETHKDjnZcRbKsEMed0PAcTdl0+eAyOHHQMSao5zFfGHH
	XNV6/a3X7US2QuqDL4+T/GHkJpm2hhyoa0RjWzs8jjuXn2yQ6bBgYqOxFkyDy9gzg9aEAy/NioCbQ
	Wv+GBM7r/ABEwaNrKMn/wshiNsE+e5LP2lMNRtLt7oVGDDFOVr/SE58RrO3uWCXuFnJOquz5dh4p4
	6ZDmt9wDG/gZt7rFJEKUMlyvpssPZo6vae3NnA84Y0xBqunb+Qemdm6gnyyUxY/6I7B+qhf5fzC1y
	NMPXMhpz1E0QYGpl0TQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToy1-0002FV-6Q; Thu, 23 May 2019 14:45:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToxq-0001j0-3n
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:45:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B972A80D;
 Thu, 23 May 2019 07:44:58 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DF2A3F690;
 Thu, 23 May 2019 07:44:52 -0700 (PDT)
Date: Thu, 23 May 2019 15:44:49 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190523144449.waam2mkyzhjpqpur@mbp>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905221316.865581CF@keescook>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_074502_203325_105910A9 
X-CRM114-Status: GOOD (  34.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 01:47:36PM -0700, Kees Cook wrote:
> On Wed, May 22, 2019 at 05:35:27PM +0100, Catalin Marinas wrote:
> > The two hard requirements I have for supporting any new hardware feature
> > in Linux are (1) a single kernel image binary continues to run on old
> > hardware while making use of the new feature if available and (2) old
> > user space continues to run on new hardware while new user space can
> > take advantage of the new feature.
> 
> Agreed! And I think the series meets these requirements, yes?

Yes. I mentioned this just to make sure people don't expect different
kernel builds for different hardware features.

There is also the obvious requirement which I didn't mention: new user
space continues to run on new/subsequent kernel versions. That's one of
the points of contention for this series (ignoring MTE) with the
maintainers having to guarantee this without much effort. IOW, do the
500K+ new lines in a subsequent kernel version break any user space out
there? I'm only talking about the relaxed TBI ABI. Are the usual LTP,
syskaller sufficient? Better static analysis would definitely help.

> > For MTE, we just can't enable it by default since there are applications
> > who use the top byte of a pointer and expect it to be ignored rather
> > than failing with a mismatched tag. Just think of a hwasan compiled
> > binary where TBI is expected to work and you try to run it with MTE
> > turned on.
> 
> Ah! Okay, here's the use-case I wasn't thinking of: the concern is TBI
> conflicting with MTE. And anything that starts using TBI suddenly can't
> run in the future because it's being interpreted as MTE bits? (Is that
> the ABI concern?

That's another aspect to figure out when we add the MTE support. I don't
think we'd be able to do this without an explicit opt-in by the user.

Or, if we ever want MTE to be turned on by default (i.e. tag checking),
even if everything is tagged with 0, we have to disallow TBI for user
and this includes hwasan. There were a small number of programs using
the TBI (I think some JavaScript compilers tried this). But now we are
bringing in the hwasan support and this can be a large user base. Shall
we add an ELF note for such binaries that use TBI/hwasan?

This series is still required for MTE but we may decide not to relax the
ABI blindly, therefore the opt-in (prctl) or personality idea.

> I feel like we got into the weeds about ioctl()s and one-off bugs...)

This needs solving as well. Most driver developers won't know why
untagged_addr() is needed unless we have more rigorous types or type
annotations and a tool to check them (we should probably revive the old
sparse thread).

> So there needs to be some way to let the kernel know which of three
> things it should be doing:
> 1- leaving userspace addresses as-is (present)
> 2- wiping the top bits before using (this series)

(I'd say tolerating rather than wiping since get_user still uses the tag
in the current series)

The current series does not allow any choice between 1 and 2, the
default ABI basically becomes option 2.

> 3- wiping the top bits for most things, but retaining them for MTE as
>    needed (the future)

2 and 3 are not entirely compatible as a tagged pointer may be checked
against the memory colour by the hardware. So you can't have hwasan
binary with MTE enabled.

> I expect MTE to be the "default" in the future. Once a system's libc has
> grown support for it, everything will be trying to use MTE. TBI will be
> the special case (but TBI is effectively a prerequisite).

The kernel handling of tagged pointers is indeed a prerequisite. The ABI
distinction between the above 2 and 3 needs to be solved.

> AFAICT, the only difference I see between 2 and 3 will be the tag handling
> in usercopy (all other places will continue to ignore the top bits). Is
> that accurate?

Yes, mostly (for the kernel). If MTE is enabled by default for a hwasan
binary, it will SEGFAULT (either in user space or in kernel uaccess).
How does the kernel choose between 2 and 3?

> Is "1" a per-process state we want to keep? (I assume not, but rather it
> is available via no TBI/MTE CONFIG or a boot-time option, if at all?)

Possibly, though not necessarily per process. For testing or if
something goes wrong during boot, a command line option with a static
label would do. The AT_FLAGS bit needs to be checked by user space. My
preference would be per-process.

> To choose between "2" and "3", it seems we need a per-process flag to
> opt into TBI (and out of MTE).

Or leave option 2 the default and get it to opt in to MTE.

> For userspace, how would a future binary choose TBI over MTE? If it's
> a library issue, we can't use an ELF bit, since the choice may be
> "late" after ELF load (this implies the need for a prctl().) If it's
> binary-only ("built with HWKASan") then an ELF bit seems sufficient.
> And without the marking, I'd expect the kernel to enforce MTE when
> there are high bits.

The current plan is that a future binary issues a prctl(), after
checking the HWCAP_MTE bit (as I replied to Elliot, the MTE instructions
are not in the current NOP space). I'd expect this to be done by the
libc or dynamic loader under the assumption that the binaries it loads
do _not_ use the top pointer byte for anything else. With hwasan
compiled objects this gets more confusing (any ELF note to identify
them?).

(there is also the risk of existing applications using TBI already but
I'm not aware of any still using this feature other than hwasan)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
