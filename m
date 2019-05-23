Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 722DC28535
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 19:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLJWn0h2PYjpWhnCQoGT4jIuVBbKSmTbRCaNNou6gFk=; b=e1qjuk39U95bJK
	J7iIOvqtj20f/Gw1cHxP0U7rdPDMFIy/Y7Un2kv1RufarizfoIZRSi0uZZcNMjs5zPw/3elHPPd8+
	pQ2PzqRRqaFYcZJkX2QAOyqiom3423kcIhiyz1O1Tfxiix8mnkcvrGtF07TGvYv+nOnlOPLAhzj6G
	zixtCuusoyqHumC9mcI96gMCO3AtuhqFQhU6wrekrNiXlLcogCbRMgZa7tbwQ6mm/rEg1p0aiP3gr
	L2Kaai8vwWTkXnGHLEvDMJKeWJ/aCbf4ZNqNlDijBZbkUpPLD0qedVcpjEW9JWJmlY4phgQnl7WKb
	Gf7O6NrTXmj8PyEPS8yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTrlA-0002vD-MU; Thu, 23 May 2019 17:44:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTrl2-0002uP-74
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 17:44:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38A8E374;
 Thu, 23 May 2019 10:43:59 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EE343F5AF;
 Thu, 23 May 2019 10:43:52 -0700 (PDT)
Date: Thu, 23 May 2019 18:43:46 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190523174345.6sv3kcipkvlwfmox@mbp>
References: <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
 <20190523144449.waam2mkyzhjpqpur@mbp>
 <201905230917.DEE7A75EF0@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905230917.DEE7A75EF0@keescook>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_104400_266891_AF7B432A 
X-CRM114-Status: GOOD (  41.93  )
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

On Thu, May 23, 2019 at 09:38:19AM -0700, Kees Cook wrote:
> On Thu, May 23, 2019 at 03:44:49PM +0100, Catalin Marinas wrote:
> > There is also the obvious requirement which I didn't mention: new user
> > space continues to run on new/subsequent kernel versions. That's one of
> > the points of contention for this series (ignoring MTE) with the
> > maintainers having to guarantee this without much effort. IOW, do the
> > 500K+ new lines in a subsequent kernel version break any user space out
> > there? I'm only talking about the relaxed TBI ABI. Are the usual LTP,
> > syskaller sufficient? Better static analysis would definitely help.
> 
> We can't have perfect coverage of people actively (or accidentally)
> working to trick static analyzers (and the compiler) into "forgetting"
> about a __user annotation. We can certainly improve analysis (I see
> the other sub-thread on that), but I'd like that work not to block
> this series.

I don't want to block this series either as it's a prerequisite for MTE
but at the moment I'm not confident we tracked down all the places where
things can break and what the future effort will be to analyse new
kernel changes.

We've made lots of progress since March last year (I think when the
first version was posted) by both identifying new places in the kernel
that need untagging and limiting the ranges that user space can tag
(e.g. an mmap() on a device should not allow tagged pointers). Can we
say we are done or more investigation is needed?

> What on this front would you be comfortable with? Given it's a new
> feature isn't it sufficient to have a CONFIG (and/or boot option)?

I'd rather avoid re-building kernels. A boot option would do, unless we
see value in a per-process (inherited) personality or prctl. The
per-process option has the slight advantage that I can boot my machine
normally while being able to run LTP with a relaxed ABI (and a new libc
which tags pointers). I admit I don't have a very strong argument on a
per-process opt-in.

Another option would be a sysctl control together with a cmdline option.

> > Or, if we ever want MTE to be turned on by default (i.e. tag checking),
> > even if everything is tagged with 0, we have to disallow TBI for user
> > and this includes hwasan. There were a small number of programs using
> > the TBI (I think some JavaScript compilers tried this). But now we are
> > bringing in the hwasan support and this can be a large user base. Shall
> > we add an ELF note for such binaries that use TBI/hwasan?
> 
> Just to be clear, you say "disallow TBI for user" -- you mean a
> particular process, yes? i.e. there is no architectural limitation that
> says once we're using MTE nothing can switch to TBI. i.e. a process is
> either doing MTE or TBI (or nothing, but that's the same as TBI).

I may have answered this below. The architecture does not allow TBI
(i.e. faults) if MTE is enabled for a process and address range.

> > > So there needs to be some way to let the kernel know which of three
> > > things it should be doing:
> > > 1- leaving userspace addresses as-is (present)
> > > 2- wiping the top bits before using (this series)
> > 
> > (I'd say tolerating rather than wiping since get_user still uses the tag
> > in the current series)
> > 
> > The current series does not allow any choice between 1 and 2, the
> > default ABI basically becomes option 2.
> 
> What about testing tools that intentionally insert high bits for syscalls
> and are _expecting_ them to fail? It seems the TBI series will break them?
> In that case, do we need to opt into TBI as well?

If there are such tools, then we may need a per-process control. It's
basically an ABI change.

> > > 3- wiping the top bits for most things, but retaining them for MTE as
> > >    needed (the future)
> > 
> > 2 and 3 are not entirely compatible as a tagged pointer may be checked
> > against the memory colour by the hardware. So you can't have hwasan
> > binary with MTE enabled.
> 
> Right: a process must be either MTE or TBI, not both.

Indeed.

> > > I expect MTE to be the "default" in the future. Once a system's libc has
> > > grown support for it, everything will be trying to use MTE. TBI will be
> > > the special case (but TBI is effectively a prerequisite).
> > 
> > The kernel handling of tagged pointers is indeed a prerequisite. The ABI
> > distinction between the above 2 and 3 needs to be solved.
> 
> Does that need solving now or when the MTE series appears? As there is
> no reason to distinguish between "normal" and "TBI", that doesn't seem
> to need solving at this point?

We don't need to solve 2 vs 3 as long as option 3 is an explicit opt-in
(prctl) by the user. Otherwise the kernel cannot guess whether the user
is using TBI or not (and if it does and still opts in to MTE, we can say
it's a user problem ;)).

> > > To choose between "2" and "3", it seems we need a per-process flag to
> > > opt into TBI (and out of MTE).
> > 
> > Or leave option 2 the default and get it to opt in to MTE.
> 
> Given that MTE has to "start" at some point in the binary lifetime, I'm
> fine with opting into MTE. I do expect, though, this will feel redundant
> in a couple years as everything will immediately opt-in. But, okay, this
> is therefore an issue for the MTE series.

Unless Google phases out hwasan soon ;), they may live in parallel for a
while, so a choice of TBI vs MTE.

> Alright, the tl;dr appears to be:
> - you want more assurances that we can find __user stripping in the
>   kernel more easily. (But this seems like a parallel problem.)

Yes, and that we found all (most) cases now. The reason I don't see it
as a parallel problem is that, as maintainer, I promise an ABI to user
and I'd rather stick to it. I don't want, for example, ncurses to stop
working because of some ioctl() rejecting tagged pointers.

If it's just the occasional one-off bug I'm fine to deal with it. But
no-one convinced me yet that this is the case.

As for the generic driver code (filesystems or other subsystems),
without some clear direction for developers, together with static
checking/sparse, on how user pointers are cast to longs (one example),
it would become my responsibility to identify and fix them up with any
kernel release. This series is not providing such guidance, just adding
untagged_addr() in some places that we think matter.

> - we might need to opt in to TBI with a prctl()

Yes, although still up for discussion.

> - all other concerns are for the future MTE series (though it sounds
>   like HWCAP_MTE and a prctl() solve those issues too).

Indeed.

> Is this accurate? What do you see as the blockers for this series at
> this point?

Well, see my comment on your first bullet point above ;).

And thanks for summarising it.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
