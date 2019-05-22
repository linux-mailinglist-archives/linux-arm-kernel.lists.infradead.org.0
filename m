Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0621F26178
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Y5bx5DOyyQZlCL4PM2NBzMEJdvVcCdDIkiy2IpNk6Y=; b=REvjAezHTkJAxp
	5IQWfczqhEt+9vFhQxq/8HdxWRIKkLlyjKwjJvfzp5fFluD72o+w79ZgTEJtLek4IOHcaF6AH+Owv
	m4BEEBou5lbnr5MjFmTt+FxlLd59RONsBkNwf4OIJLjIfE6ih/2VC3onqcfMWzpoHy6hKxTNw2mdr
	cLU08u2G+2ynzwWAQo9zbQSUJeMXjyeAXSoUQLs7N0qxADnfwZeKOvCZS4TRmB++zuXseDsGDB40E
	rbuIv21erL9OhRtasUX7+qwiEscBJglY9qo2kX96W5RUObHKCux6UFHyBGYnxtLlhHAiLoilzp3Ax
	sg102SLYv+yLB0XQdBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTODY-0003wb-11; Wed, 22 May 2019 10:11:28 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTODQ-0003wG-Uq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:11:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B39E341;
 Wed, 22 May 2019 03:11:20 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12BA73F575;
 Wed, 22 May 2019 03:11:13 -0700 (PDT)
Date: Wed, 22 May 2019 11:11:11 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190522101110.m2stmpaj7seezveq@mbp>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905211633.6C0BF0C2@keescook>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_031121_003260_05959795 
X-CRM114-Status: GOOD (  47.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kees,

Thanks for joining the thread ;).

On Tue, May 21, 2019 at 05:04:39PM -0700, Kees Cook wrote:
> On Tue, May 21, 2019 at 07:29:33PM +0100, Catalin Marinas wrote:
> > On Mon, May 20, 2019 at 04:53:07PM -0700, Evgenii Stepanov wrote:
> > > On Fri, May 17, 2019 at 7:49 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > > IMO (RFC for now), I see two ways forward:
> > > > [...]
> > > > 2. Similar shim to the above libc wrapper but inside the kernel
> > > >    (arch/arm64 only; most pointer arguments could be covered with an
> > > >    __SC_CAST similar to the s390 one). There are two differences from
> > > >    what we've discussed in the past:
> > > >
> > > >    a) this is an opt-in by the user which would have to explicitly call
> > > >       prctl(). If it returns -ENOTSUPP etc., the user won't be allowed
> > > >       to pass tagged pointers to the kernel. This would probably be the
> > > >       responsibility of the C lib to make sure it doesn't tag heap
> > > >       allocations. If the user did not opt-in, the syscalls are routed
> > > >       through the normal path (no untagging address shim).
> > > >
> > > >    b) ioctl() and other blacklisted syscalls (prctl) will not accept
> > > >       tagged pointers (to be documented in Vicenzo's ABI patches).
> > >
> > > The way I see it, a patch that breaks handling of tagged pointers is
> > > not that different from, say, a patch that adds a wild pointer
> > > dereference. Both are bugs; the difference is that (a) the former
> > > breaks a relatively uncommon target and (b) it's arguably an easier
> > > mistake to make. If MTE adoption goes well, (a) will not be the case
> > > for long.
> > 
> > It's also the fact such patch would go unnoticed for a long time until
> > someone exercises that code path. And when they do, the user would be
> > pretty much in the dark trying to figure what what went wrong, why a
> > SIGSEGV or -EFAULT happened. What's worse, we can't even say we fixed
> > all the places where it matters in the current kernel codebase (ignoring
> > future patches).
> 
> So, looking forward a bit, this isn't going to be an ARM-specific issue
> for long.

I do hope so.

> In fact, I think we shouldn't have arm-specific syscall wrappers
> in this series: I think untagged_addr() should likely be added at the
> top-level and have it be a no-op for other architectures.

That's what the current patchset does, so we have this as a starting
point. Kostya raised another potential issue with the syscall wrappers:
with MTE the kernel will be forced to enable the match-all (wildcard)
pointers for user space accesses since copy_from_user() would only get a
0 tag. So it has wider implications than just uaccess routines not
checking the colour.

> So given this becoming a kernel-wide multi-architecture issue (under
> the assumption that x86, RISC-V, and others will gain similar TBI or
> MTE things), we should solve it in a way that we can re-use.

Can we do any better to aid the untagged_addr() placement (e.g. better
type annotations, better static analysis)? We have to distinguish
between user pointers that may be dereferenced by the kernel (I think
almost fully covered with this patchset) and user addresses represented
as ulong that may:

a) be converted to a user pointer and dereferenced; I think that's the
   case for many overloaded ulong/u64 arguments

b) used for address space management, rbtree look-ups etc. where the tag
   is no longer relevant and it even gets in the way

We tried last year to identify void __user * casts to unsigned long
using sparse on the assumption that pointers can be tagged while ulong
is about address space management and needs to lose such tag. I think we
could have pushed this further. For example, get_user_pages() takes an
unsigned long but it is perfectly capable of untagging the address
itself. Shall we change its first argument to void __user * (together
with all its callers)?

find_vma(), OTOH, could untag the address but it doesn't help since
vm_start/end don't have such information (that's more about the content
or type that the user decided) and the callers check against it.

Are there any other places where this matters? These patches tracked
down find_vma() as some heuristics but we may need better static
analysis to identify other cases.

> We need something that is going to work everywhere. And it needs to be
> supported by the kernel for the simple reason that the kernel needs to
> do MTE checks during copy_from_user(): having that information stripped
> means we lose any userspace-assigned MTE protections if they get handled
> by the kernel, which is a total non-starter, IMO.

Such feedback is welcomed ;).

> As an aside: I think Sparc ADI support in Linux actually side-stepped
> this[1] (i.e. chose "solution 1"): "All addresses passed to kernel must
> be non-ADI tagged addresses." (And sadly, "Kernel does not enable ADI
> for kernel code.") I think this was a mistake we should not repeat for
> arm64 (we do seem to be at least in agreement about this, I think).
> 
> [1] https://lore.kernel.org/patchwork/patch/654481/

I tried to drag the SPARC guys into this discussion but without much
success.

> > > This is a bit of a chicken-and-egg problem. In a world where memory
> > > allocators on one or several popular platforms generate pointers with
> > > non-zero tags, any such breakage will be caught in testing.
> > > Unfortunately to reach that state we need the kernel to start
> > > accepting tagged pointers first, and then hold on for a couple of
> > > years until userspace catches up.
> > 
> > Would the kernel also catch up with providing a stable ABI? Because we
> > have two moving targets.
> > 
> > On one hand, you have Android or some Linux distro that stick to a
> > stable kernel version for some time, so they have better chance of
> > clearing most of the problems. On the other hand, we have mainline
> > kernel that gets over 500K lines every release. As maintainer, I can't
> > rely on my testing alone as this is on a limited number of platforms. So
> > my concern is that every kernel release has a significant chance of
> > breaking the ABI, unless we have a better way of identifying potential
> > issues.
> 
> I just want to make sure I fully understand your concern about this
> being an ABI break, and I work best with examples. The closest situation
> I can see would be:
> 
> - some program has no idea about MTE

Apart from some libraries like libc (and maybe those that handle
specific device ioctls), I think most programs should have no idea about
MTE. I wouldn't expect programmers to have to change their app just
because we have a new feature that colours heap allocations.

> - malloc() starts returning MTE-tagged addresses
> - program doesn't break from that change
> - program uses some syscall that is missing untagged_addr() and fails
> - kernel has now broken userspace that used to work

That's one aspect though probably more of a case of plugging in a new
device (graphics card, network etc.) and the ioctl to the new device
doesn't work.

The other is that, assuming we reach a point where the kernel entirely
supports this relaxed ABI, can we guarantee that it won't break in the
future. Let's say some subsequent kernel change (some refactoring)
misses out an untagged_addr(). This renders a previously TBI/MTE-capable
syscall unusable. Can we rely only on testing?

> The trouble I see with this is that it is largely theoretical and
> requires part of userspace to collude to start using a new CPU feature
> that tickles a bug in the kernel. As I understand the golden rule,
> this is a bug in the kernel (a missed ioctl() or such) to be fixed,
> not a global breaking of some userspace behavior.

Yes, we should follow the rule that it's a kernel bug but it doesn't
help the user that a newly installed kernel causes user space to no
longer reach a prompt. Hence the proposal of an opt-in via personality
(for MTE we would need an explicit opt-in by the user anyway since the
top byte is no longer ignored but checked against the allocation tag).

> I feel like I'm missing something about this being seen as an ABI
> break. The kernel already fails on userspace addresses that have high
> bits set -- are there things that _depend_ on this failure to operate?

It's about providing a relaxed ABI which allows non-zero top byte and
breaking it later inadvertently without having something better in place
to analyse the kernel changes.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
