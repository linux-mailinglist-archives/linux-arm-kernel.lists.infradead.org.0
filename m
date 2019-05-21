Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D7725796
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 20:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MZ/z/V9PPGoZxYW/NT0uzlz56Jy+q1i76q72xTb5Xw=; b=WqmTStkrUoxHPD
	LyI6fnMU21f/H84aV8aOTxyFmDjItiOUxG737A2LXPE3cr67FgllolRh8OlkCCFjTKpEnXIlyDOI+
	1Z7WntmLvW6gAFaA6olf90PhJO96E7kkVzfpsrnKif034NbJibyME3uXkyOHjhCJo7GTbzW6ASoLu
	UL8bCIZoIqsPJ39Mq350yQpl7zP/COufPhlsOofPBWZ3D6qktUJf1A3BA6FU2nQjOAf+fJMIcsfjq
	znWuGp/V45jXBVwJ/iHCx/kkXWI3WF4XPTiGeToMzs1+LA7J4OBkZdQfx1nHrQgjKhoX1PkX87eOP
	fylJQNKH3hP7Ut6mnCAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9WL-0001es-Ka; Tue, 21 May 2019 18:29:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9WD-0001do-Sm
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 18:29:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EE4F80D;
 Tue, 21 May 2019 11:29:42 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 294B83F5AF;
 Tue, 21 May 2019 11:29:36 -0700 (PDT)
Date: Tue, 21 May 2019 19:29:33 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Evgenii Stepanov <eugenis@google.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190521182932.sm4vxweuwo5ermyd@mbp>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_112945_937833_3D2872DA 
X-CRM114-Status: GOOD (  31.24  )
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
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
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

On Mon, May 20, 2019 at 04:53:07PM -0700, Evgenii Stepanov wrote:
> On Fri, May 17, 2019 at 7:49 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > IMO (RFC for now), I see two ways forward:
> >
> > 1. Make this a user space problem and do not allow tagged pointers into
> >    the syscall ABI. A libc wrapper would have to convert structures,
> >    parameters before passing them into the kernel. Note that we can
> >    still support the hardware MTE in the kernel by enabling tagged
> >    memory ranges, saving/restoring tags etc. but not allowing tagged
> >    addresses at the syscall boundary.
> >
> > 2. Similar shim to the above libc wrapper but inside the kernel
> >    (arch/arm64 only; most pointer arguments could be covered with an
> >    __SC_CAST similar to the s390 one). There are two differences from
> >    what we've discussed in the past:
> >
> >    a) this is an opt-in by the user which would have to explicitly call
> >       prctl(). If it returns -ENOTSUPP etc., the user won't be allowed
> >       to pass tagged pointers to the kernel. This would probably be the
> >       responsibility of the C lib to make sure it doesn't tag heap
> >       allocations. If the user did not opt-in, the syscalls are routed
> >       through the normal path (no untagging address shim).
> >
> >    b) ioctl() and other blacklisted syscalls (prctl) will not accept
> >       tagged pointers (to be documented in Vicenzo's ABI patches).
[...]
> Any userspace shim approach is problematic for Android because of the
> apps that use raw system calls. AFAIK, all apps written in Go are in
> that camp - I'm not sure how common they are, but getting them all
> recompiled is probably not realistic.

That's a fair point (I wasn't expecting it would get much traction
anyway ;)). OTOH, it allows upstreaming of the MTE patches while we
continue the discussions around TBI.

> The way I see it, a patch that breaks handling of tagged pointers is
> not that different from, say, a patch that adds a wild pointer
> dereference. Both are bugs; the difference is that (a) the former
> breaks a relatively uncommon target and (b) it's arguably an easier
> mistake to make. If MTE adoption goes well, (a) will not be the case
> for long.

It's also the fact such patch would go unnoticed for a long time until
someone exercises that code path. And when they do, the user would be
pretty much in the dark trying to figure what what went wrong, why a
SIGSEGV or -EFAULT happened. What's worse, we can't even say we fixed
all the places where it matters in the current kernel codebase (ignoring
future patches).

I think we should revisit the static checking discussions we had last
year. Run-time checking (even with compiler instrumentation and
syzkaller fuzzing) would only cover the code paths specific to a Linux
or Android installation.

> This is a bit of a chicken-and-egg problem. In a world where memory
> allocators on one or several popular platforms generate pointers with
> non-zero tags, any such breakage will be caught in testing.
> Unfortunately to reach that state we need the kernel to start
> accepting tagged pointers first, and then hold on for a couple of
> years until userspace catches up.

Would the kernel also catch up with providing a stable ABI? Because we
have two moving targets.

On one hand, you have Android or some Linux distro that stick to a
stable kernel version for some time, so they have better chance of
clearing most of the problems. On the other hand, we have mainline
kernel that gets over 500K lines every release. As maintainer, I can't
rely on my testing alone as this is on a limited number of platforms. So
my concern is that every kernel release has a significant chance of
breaking the ABI, unless we have a better way of identifying potential
issues.

> Perhaps we can start by whitelisting ioctls by driver?

This was also raised by Ruben in private but without a (static) tool to
to check, manually going through all the drivers doesn't scale. It's
very likely that most drivers don't care, just a get_user/put_user is
already handled by these patches. Searching for find_vma() was
identifying one such use-case but is this sufficient? Are there other
cases we need to explicitly untag a pointer?


The other point I'd like feedback on is 2.a above. I see _some_ value
into having the user opt-in to this relaxed ABI rather than blinding
exposing it to all applications. Dave suggested (in private) a new
personality (e.g. PER_LINUX_TBI) inherited by children. It would be the
responsibility of the C library to check the current personality bits
and only tag pointers on allocation *if* the kernel allowed it. The
kernel could provide the AT_FLAGS bit as in Vincenzo's patches if the
personality was set but can't set it retrospectively if the user called
sys_personality. By default, /sbin/init would not have this personality
and libc would not tag pointers, so we can guarantee that your distro
boots normally with a new kernel version. We could have an envp that
gets caught by /sbin/init so you can pass it on the kernel command line
(or a dynamic loader at run-time). But the default should be the current
ABI behaviour.

We can enforce the current behaviour by having access_ok() check the
personality or a TIF flag but we may relax this enforcement at some
point in the future as we learn more about the implications of TBI.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
