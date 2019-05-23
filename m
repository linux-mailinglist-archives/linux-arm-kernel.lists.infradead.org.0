Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC541278BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvwUwSoDSoIiWMoGgPKg4/lUUiA3Nkyx79VJpfJ9hU4=; b=TwWmv7mEyq4FUo
	lLLgzsHDgwaS/iscKdWCI76os4EC55DWAyIHqse0rg5aBIIyUc/GH4ALINhZKyvsK51vRVDcEFY/U
	pNR+QCb04/oJ9m5lDOV9WOhgEySn42FNC19VcclXs7h3z7YyC3N+qCxisTQlKJlG0uBUyIvkr5aHJ
	edcVUWTCFH0LLXznIdkWyx+xGN1HW4GH6NpGV17E79W8KnRbQ6yr4GYyDXiFtc1WjeVnWWZT4GGpD
	Y4yEmiPNSfJGZssPnthYYMHnSqM7yvKk6jI/HFva8h5BUlIMybqr8ihqXYYCb44I0qzUAe6oPgu0a
	vDuNZqG1K7IjdWTUvecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjeW-0002D9-1w; Thu, 23 May 2019 09:04:44 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjeP-0002Ci-2G
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:04:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 409B2341;
 Thu, 23 May 2019 02:04:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A78AC3F575; Thu, 23 May 2019 02:04:30 -0700 (PDT)
Date: Thu, 23 May 2019 10:04:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Evgenii Stepanov <eugenis@google.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
Message-ID: <20190523090427.GA44383@arrakis.emea.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
 <20190522114910.emlckebwzv2qz42i@mbp>
 <CAFKCwrjyP+x0JJy=qpBFsp4pub3He6UkvU0qnf1UOKt6W1LPRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFKCwrjyP+x0JJy=qpBFsp4pub3He6UkvU0qnf1UOKt6W1LPRQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020437_120814_02BD3C39 
X-CRM114-Status: GOOD (  28.73  )
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
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 02:16:57PM -0700, Evgenii Stepanov wrote:
> On Wed, May 22, 2019 at 4:49 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Mon, May 06, 2019 at 06:30:51PM +0200, Andrey Konovalov wrote:
> > > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > > pass tagged user pointers (with the top byte set to something else other
> > > than 0x00) as syscall arguments.
> > >
> > > This patch allows tagged pointers to be passed to the following memory
> > > syscalls: brk, get_mempolicy, madvise, mbind, mincore, mlock, mlock2,
> > > mmap, mmap_pgoff, mprotect, mremap, msync, munlock, munmap,
> > > remap_file_pages, shmat and shmdt.
> > >
> > > This is done by untagging pointers passed to these syscalls in the
> > > prologues of their handlers.
> >
> > I'll go through them one by one to see if we can tighten the expected
> > ABI while having the MTE in mind.
> >
> > > diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
> > > index b44065fb1616..933bb9f3d6ec 100644
> > > --- a/arch/arm64/kernel/sys.c
> > > +++ b/arch/arm64/kernel/sys.c
> > > @@ -35,10 +35,33 @@ SYSCALL_DEFINE6(mmap, unsigned long, addr, unsigned long, len,
> > >  {
> > >       if (offset_in_page(off) != 0)
> > >               return -EINVAL;
> > > -
> > > +     addr = untagged_addr(addr);
> > >       return ksys_mmap_pgoff(addr, len, prot, flags, fd, off >> PAGE_SHIFT);
> > >  }
> >
> > If user passes a tagged pointer to mmap() and the address is honoured
> > (or MAP_FIXED is given), what is the expected return pointer? Does it
> > need to be tagged with the value from the hint?
> 
> For HWASan the most convenient would be to use the tag from the hint.
> But since in the TBI (not MTE) mode the kernel has no idea what
> meaning userspace assigns to pointer tags, perhaps it should not try
> to guess, and should return raw (zero-tagged) address instead.

Then, just to relax the ABI for hwasan, shall we simply disallow tagged
pointers on mmap() arguments? We can leave them in for
mremap(old_address), madvise().

> > With MTE, we may want to use this as a request for the default colour of
> > the mapped pages (still under discussion).
> 
> I like this - and in that case it would make sense to return the
> pointer that can be immediately dereferenced without crashing the
> process, i.e. with the matching tag.

This came up from the Android investigation work where large memory
allocations (using mmap) could be more efficiently pre-tagged by the
kernel on page fault. Not sure about the implementation details yet.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
